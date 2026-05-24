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

# ---- Mirror to repo root ----
for f in capability-matters-print.pdf \
         capability-matters-digital.pdf \
         capability-matters-proof.pdf \
         cover-print.pdf; do
  cp "build/$f" "$ROOT/$f"
done

echo
echo "✓ Output:"
echo "    capability-matters-print.pdf      8 × 10 production interior (grayscale, $pages pp)"
echo "    capability-matters-digital.pdf    8 × 10 digital edition (color, cream)"
echo "    capability-matters-proof.pdf      8 × 10 on US Letter with trim marks (proof)"
echo "    cover-print.pdf                   8 × 10 Lulu wrap (spine $spine mm)"
echo
echo "Lulu workflow: upload capability-matters-print.pdf as the interior"
echo "and cover-print.pdf as the wrap (cream stock). Lulu will report the"
echo "exact spine; re-run with the cover override if it differs from $spine mm."
