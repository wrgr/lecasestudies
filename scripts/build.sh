#!/usr/bin/env bash
# Build the four interior PDFs (production + editorial draft, each at
# Half Letter and US Letter trim) and the matching covers.
#
# Production interiors (mode=print, mode=print-letter) are emitted
# with a grayscale-tuned palette, then run through ghostscript to
# flatten any remaining color literals (notably inside diagrams) so
# the final Lulu-uploaded file is true grayscale.
#
# Each interior has a matching cover:
#   capability-matters-print-half.pdf      → cover-print-half.pdf    (Lulu wrap)
#   capability-matters-print-letter.pdf    → cover-print-letter.pdf  (Lulu wrap)
#   capability-matters-draft-letter.pdf    → cover-draft-letter.pdf  (front face)
#   capability-matters-draft-half.pdf      → cover-draft-half.pdf    (front face)
#
# Requires: typst (>= 0.13), ghostscript, poppler (pdfinfo).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

mkdir -p build

TYPST="typst compile --font-path fonts"

# Flatten color literals to grayscale via ghostscript.
gray_flatten() {
  local src="$1"
  local dst="$2"
  gs -q -dNOPAUSE -dBATCH \
     -sDEVICE=pdfwrite \
     -sProcessColorModel=DeviceGray \
     -sColorConversionStrategy=Gray \
     -dOverrideICC \
     -dCompatibilityLevel=1.7 \
     -o "$dst" "$src"
}

# ---- Interiors ----

echo "→ Compiling production Half Letter interior (grayscale)..."
$TYPST --input mode=print book.typ build/_print-half-color.pdf
gray_flatten build/_print-half-color.pdf build/capability-matters-print-half.pdf
rm build/_print-half-color.pdf

echo "→ Compiling production US Letter interior (grayscale)..."
$TYPST --input mode=print-letter book.typ build/_print-letter-color.pdf
gray_flatten build/_print-letter-color.pdf build/capability-matters-print-letter.pdf
rm build/_print-letter-color.pdf

echo "→ Compiling editorial draft, US Letter (11pt, 2pp/case)..."
$TYPST --input mode=draft book.typ build/capability-matters-draft-letter.pdf

echo "→ Compiling editorial draft, Half Letter (11pt, ~4pp/case)..."
$TYPST --input mode=draft-half book.typ build/capability-matters-draft-half.pdf

echo "→ Compiling screen preview (color, cream backdrop)..."
$TYPST book.typ build/capability-matters.pdf

# ---- Page counts (used for spine-width estimation on Lulu wraps) ----
half_pages=$(pdfinfo build/capability-matters-print-half.pdf   | awk '/^Pages:/ {print $2}')
lett_pages=$(pdfinfo build/capability-matters-print-letter.pdf | awk '/^Pages:/ {print $2}')

# Lulu spine width on cream paper: ~0.0629 mm/page. (16.55 mm at 263 pp.)
# Override with `--input spine-mm=…` if Lulu's project-page value
# differs.
half_spine=$(awk -v p="$half_pages" 'BEGIN {printf "%.2f", p * 0.0629}')
lett_spine=$(awk -v p="$lett_pages" 'BEGIN {printf "%.2f", p * 0.0629}')

# Lulu total cover dimensions: 2 × trim + spine + 2 × 3.175 mm bleed
half_total_w=$(awk -v s="$half_spine" 'BEGIN {printf "%.2f", 2*139.7 + s + 2*3.175}')
half_total_h=$(awk             'BEGIN {printf "%.2f",   215.9 + 2*3.175}')
lett_total_w=$(awk -v s="$lett_spine" 'BEGIN {printf "%.2f", 2*215.9 + s + 2*3.175}')
lett_total_h=$(awk             'BEGIN {printf "%.2f",   279.4 + 2*3.175}')

echo "→ Interior page counts: Half Letter $half_pages  ·  US Letter $lett_pages"
echo "→ Estimated spine widths: Half $half_spine mm  ·  Letter $lett_spine mm"

# ---- Covers ----

echo "→ Compiling Half Letter production cover wrap (Lulu)..."
$TYPST --root . \
  --input cover-w-mm="$half_total_w" \
  --input cover-h-mm="$half_total_h" \
  --input spine-mm="$half_spine" \
  cover/cover.typ build/cover-print-half.pdf

echo "→ Compiling US Letter production cover wrap (Lulu)..."
$TYPST --root . \
  --input cover-w-mm="$lett_total_w" \
  --input cover-h-mm="$lett_total_h" \
  --input spine-mm="$lett_spine" \
  cover/cover-letter.typ build/cover-print-letter.pdf

echo "→ Compiling US Letter editorial-draft cover set (front + spine + back)..."
$TYPST --root . cover/binder-front.typ build/cover-draft-letter.pdf
$TYPST --root . cover/binder-spine.typ build/cover-draft-letter-spine.pdf
$TYPST --root . cover/binder-back.typ  build/cover-draft-letter-back.pdf

# Half Letter draft spine width tracks the actual interior thickness
# (perfect-bound assumption); Letter draft spine is the established
# 1/2" view-binder insert (cover/binder-spine.typ).
draft_half_pages=$(pdfinfo build/capability-matters-draft-half.pdf | awk '/^Pages:/ {print $2}')
draft_half_spine=$(awk -v p="$draft_half_pages" 'BEGIN {printf "%.2f", p * 0.0629}')

echo "→ Compiling Half Letter editorial-draft cover set (front + spine + back)..."
$TYPST --root . cover/draft-cover-half.typ build/cover-draft-half.pdf
$TYPST --root . --input spine-mm="$draft_half_spine" \
  cover/draft-spine-half.typ build/cover-draft-half-spine.pdf
$TYPST --root . cover/draft-back-half.typ build/cover-draft-half-back.pdf

# Decomposable production-cover parts (front/back/spine) for the
# Half Letter trim — kept for slipcase / web-preview workflows.
echo "→ Compiling decomposable Half Letter cover parts..."
$TYPST --root . cover/cover-front.typ build/cover-front-half.pdf
$TYPST --root . cover/cover-back.typ  build/cover-back-half.pdf
$TYPST --root . cover/cover-spine.typ build/cover-spine-half.pdf

# Mirror interiors + covers to the repo root for easy access.
for f in capability-matters.pdf \
         capability-matters-print-half.pdf \
         capability-matters-print-letter.pdf \
         capability-matters-draft-letter.pdf \
         capability-matters-draft-half.pdf \
         cover-print-half.pdf cover-print-letter.pdf \
         cover-draft-letter.pdf cover-draft-letter-spine.pdf cover-draft-letter-back.pdf \
         cover-draft-half.pdf   cover-draft-half-spine.pdf   cover-draft-half-back.pdf; do
  cp "$ROOT/build/$f" "$ROOT/$f"
done

echo
echo "✓ Output:"
echo "    INTERIORS:"
echo "      capability-matters.pdf                    screen preview (color, cream)"
echo "      capability-matters-print-half.pdf         Half Letter production (grayscale)"
echo "      capability-matters-print-letter.pdf       US Letter production (grayscale)"
echo "      capability-matters-draft-letter.pdf       Letter editorial draft"
echo "      capability-matters-draft-half.pdf         Half Letter editorial draft"
echo "    COVERS:"
echo "      cover-print-half.pdf                      Half Letter Lulu wrap   ($half_pages pp, spine $half_spine mm)"
echo "      cover-print-letter.pdf                    US Letter   Lulu wrap   ($lett_pages pp, spine $lett_spine mm)"
echo "      cover-draft-letter{,-spine,-back}.pdf     Letter draft set (1\"-binder insert: 0.5\" spine)"
echo "      cover-draft-half{,-spine,-back}.pdf       Half Letter draft set (perfect-bound: ~$draft_half_spine mm spine)"
echo
echo "Lulu workflow:"
echo "  Half Letter:  upload capability-matters-print-half.pdf as the"
echo "                interior, cover-print-half.pdf as the wrap."
echo "                Cream-paper stock. Lulu will report the exact"
echo "                spine width; override with --input spine-mm=… if"
echo "                it differs from $half_spine mm."
echo "  US Letter:    upload capability-matters-print-letter.pdf as the"
echo "                interior, cover-print-letter.pdf as the wrap."
echo "                Same override applies (current estimate $lett_spine mm)."
