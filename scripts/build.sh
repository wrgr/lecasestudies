#!/usr/bin/env bash
# Build the three 8 × 10 editions and the Lulu cover wrap.
#
#   capability-matters-print.pdf     8 × 10, grayscale, 3 mm bleed (Lulu)
#   capability-matters-digital.pdf   8 × 10, color, cream backdrop (screen)
#   capability-matters-proof.pdf     print page centered on US Letter,
#                                    8 × 10 trim marks (office printer)
#   cover-print.pdf                  8 × 10 Lulu wrap (spine from page count)
#
# Production interior (mode=print) and the proof are emitted with the
# grayscale-tuned palette and then flattened through ghostscript so any
# remaining color literals (notably in diagrams) become true grayscale.
#
# Requires: typst (>= 0.13), ghostscript, poppler (pdfinfo).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
mkdir -p build

TYPST="typst compile --font-path fonts"

gray_flatten() {
  gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
     -sProcessColorModel=DeviceGray \
     -sColorConversionStrategy=Gray -dOverrideICC \
     -dCompatibilityLevel=1.7 \
     -o "$2" "$1"
}

# ---- Interiors ----
echo "→ Compiling print interior (8 × 10, grayscale, bleed)..."
$TYPST --input mode=print book.typ build/_print-color.pdf
gray_flatten build/_print-color.pdf build/capability-matters-print.pdf
rm build/_print-color.pdf

echo "→ Compiling digital edition (8 × 10, color, cream backdrop)..."
$TYPST --input mode=digital book.typ build/capability-matters-digital.pdf

echo "→ Compiling proof (8 × 10 centered on US Letter, trim marks)..."
$TYPST --input mode=proof book.typ build/_proof-color.pdf
gray_flatten build/_proof-color.pdf build/capability-matters-proof.pdf
rm build/_proof-color.pdf

echo "→ Compiling case overview (US Letter, two cases per page)..."
$TYPST --input view=overview overview.typ build/capability-matters-overview.pdf

echo "→ Compiling case overview (Half Letter, one case per page)..."
$TYPST --input view=overview-half overview-half.typ build/capability-matters-overview-half.pdf

echo "→ Compiling US-Letter summary proof (grayscale)..."
$TYPST --input view=overview --input mode=proof overview.typ build/_ov-proof-color.pdf
gray_flatten build/_ov-proof-color.pdf build/capability-matters-overview-proof.pdf
rm build/_ov-proof-color.pdf

echo "→ Compiling Half-Letter summary proof (on US Letter, crop marks, grayscale)..."
$TYPST --input view=overview-half --input mode=proof overview-half.typ build/_ovh-proof-color.pdf
gray_flatten build/_ovh-proof-color.pdf build/capability-matters-overview-half-proof.pdf
rm build/_ovh-proof-color.pdf

echo "→ Compiling Half-Letter summary print interior (3 mm bleed, grayscale, Lulu)..."
$TYPST --input view=overview-half --input mode=print overview-half.typ build/_ovh-print-color.pdf
gray_flatten build/_ovh-print-color.pdf build/capability-matters-overview-half-print.pdf
rm build/_ovh-print-color.pdf

# ---- Cover ----
pages=$(pdfinfo build/capability-matters-print.pdf | awk '/^Pages:/ {print $2}')
spine=$(awk -v p="$pages" 'BEGIN {printf "%.2f", p * 0.0621}')
total_w=$(awk -v s="$spine" 'BEGIN {printf "%.2f", 2*203.2 + s + 2*3.175}')
total_h=$(awk 'BEGIN {printf "%.2f", 254 + 2*3.175}')

echo "→ Print interior: $pages pp  ·  estimated spine $spine mm"
echo "→ Compiling 8 × 10 Lulu cover wrap..."
$TYPST --root . \
  --input cover-w-mm="$total_w" \
  --input cover-h-mm="$total_h" \
  --input spine-mm="$spine" \
  cover/cover.typ build/cover-print.pdf

# ---- Half-Letter summary Lulu cover wrap ----
ov_pages=$(pdfinfo build/capability-matters-overview-half-print.pdf | awk '/^Pages:/ {print $2}')
ov_spine=$(awk -v p="$ov_pages" 'BEGIN {printf "%.2f", p * 0.0621}')
ov_total_w=$(awk -v s="$ov_spine" 'BEGIN {printf "%.2f", 2*139.7 + s + 2*3.175}')
ov_total_h=$(awk 'BEGIN {printf "%.2f", 215.9 + 2*3.175}')
echo "→ Half-Letter summary: $ov_pages pp  ·  estimated spine $ov_spine mm"
echo "→ Compiling Half-Letter summary Lulu cover wrap..."
$TYPST --root . \
  --input cover-w-mm="$ov_total_w" \
  --input cover-h-mm="$ov_total_h" \
  --input spine-mm="$ov_spine" \
  cover/cover-summary.typ build/cover-overview-half.pdf

# ---- Mirror to repo root ----
for f in capability-matters-print.pdf \
         capability-matters-digital.pdf \
         capability-matters-proof.pdf \
         capability-matters-overview.pdf \
         capability-matters-overview-proof.pdf \
         capability-matters-overview-half.pdf \
         capability-matters-overview-half-proof.pdf \
         capability-matters-overview-half-print.pdf \
         cover-print.pdf \
         cover-overview-half.pdf; do
  cp "build/$f" "$ROOT/$f"
done

echo
echo "✓ Output:"
echo "    capability-matters-print.pdf      8 × 10 production interior (grayscale, $pages pp)"
echo "    capability-matters-digital.pdf    8 × 10 digital edition (color, cream)"
echo "    capability-matters-proof.pdf      8 × 10 on US Letter with trim marks (proof)"
echo "    capability-matters-overview.pdf       US Letter summary — digital/to-share (2/page)"
echo "    capability-matters-overview-proof.pdf US Letter summary — proof (grayscale)"
echo "    capability-matters-overview-half.pdf      Half Letter summary — digital/to-share (1/page)"
echo "    capability-matters-overview-half-proof.pdf Half Letter summary — proof (on Letter, crop marks)"
echo "    capability-matters-overview-half-print.pdf Half Letter summary — print interior (bleed, Lulu)"
echo "    cover-print.pdf                   8 × 10 Lulu wrap (spine $spine mm)"
echo "    cover-overview-half.pdf           Half Letter summary Lulu wrap (spine $ov_spine mm)"
echo
echo "Lulu workflow: upload capability-matters-print.pdf as the interior"
echo "and cover-print.pdf as the wrap (cream stock). Lulu will report the"
echo "exact spine; re-run with the cover override if it differs from $spine mm."
