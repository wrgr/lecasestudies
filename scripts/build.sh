#!/usr/bin/env bash
# Build the four interior PDFs (production + editorial draft, each at
# Half Letter and US Letter trim) and the Lulu cover wrap.
#
# Production PDFs (mode=print, mode=print-letter) are emitted with a
# grayscale-tuned palette, then run through ghostscript to flatten any
# remaining color literals (notably inside diagrams) so the final
# Lulu-uploaded file is true grayscale.
#
# Requires: typst (>= 0.13), ghostscript, poppler (pdfinfo).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

mkdir -p build

TYPST="typst compile --font-path fonts"

# Flatten any remaining color literals to grayscale via ghostscript.
# The named palette is already tuned for grayscale luminance; this
# step exists to catch hardcoded rgb() values inside diagrams.
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

echo "→ Compiling production Half Letter interior (grayscale)..."
$TYPST --input mode=print book.typ build/capability-matters-print-half-color.pdf
gray_flatten build/capability-matters-print-half-color.pdf build/capability-matters-print-half.pdf
rm build/capability-matters-print-half-color.pdf

echo "→ Compiling production US Letter interior (grayscale)..."
$TYPST --input mode=print-letter book.typ build/capability-matters-print-letter-color.pdf
gray_flatten build/capability-matters-print-letter-color.pdf build/capability-matters-print-letter.pdf
rm build/capability-matters-print-letter-color.pdf

echo "→ Compiling editorial draft, US Letter (11pt, 2pp/case)..."
$TYPST --input mode=draft book.typ build/capability-matters-draft-letter.pdf

echo "→ Compiling editorial draft, Half Letter (11pt, ~4pp/case)..."
$TYPST --input mode=draft-half book.typ build/capability-matters-draft-half.pdf

echo "→ Compiling screen preview (color, cream backdrop)..."
$TYPST book.typ build/capability-matters.pdf

if command -v pdfinfo >/dev/null 2>&1; then
  HALF_PAGES=$(pdfinfo build/capability-matters-print-half.pdf | awk '/^Pages:/ {print $2}')
  LETTER_PAGES=$(pdfinfo build/capability-matters-print-letter.pdf | awk '/^Pages:/ {print $2}')
else
  HALF_PAGES="?"
  LETTER_PAGES="?"
fi
echo "→ Page counts: Half Letter $HALF_PAGES · US Letter $LETTER_PAGES"

echo "→ Compiling Lulu Half Letter cover wrap..."
$TYPST --root . --input pages=$HALF_PAGES cover/cover.typ build/cover.pdf

echo "→ Compiling decomposable cover parts (front / back / spine)..."
$TYPST --root . cover/cover-front.typ build/cover-front.pdf
$TYPST --root . cover/cover-back.typ  build/cover-back.pdf
$TYPST --root . cover/cover-spine.typ build/cover-spine.pdf

# Mirror the latest PDFs to the repo root so they are easy to find / preview.
for f in capability-matters.pdf \
         capability-matters-print-half.pdf \
         capability-matters-print-letter.pdf \
         capability-matters-draft-letter.pdf \
         capability-matters-draft-half.pdf \
         cover.pdf cover-front.pdf cover-back.pdf cover-spine.pdf; do
  cp "$ROOT/build/$f" "$ROOT/$f"
done

echo
echo "✓ Output:"
echo "    build/capability-matters.pdf                 screen preview (Half Letter, color, cream backdrop)"
echo "    build/capability-matters-print-half.pdf      production interior — Half Letter (5.5×8.5), grayscale"
echo "    build/capability-matters-print-letter.pdf    production interior — US Letter (8.5×11), grayscale"
echo "    build/capability-matters-draft-letter.pdf    editorial draft — US Letter, 11pt, ~2pp/case"
echo "    build/capability-matters-draft-half.pdf      editorial draft — Half Letter, 11pt, ~4pp/case"
echo "    build/cover*.pdf                             Lulu cover wrap (Half Letter trim)"
echo
echo "Lulu workflow (Half Letter production):"
echo "  • Upload capability-matters-print-half.pdf as the interior and"
echo "    select Half Letter (5.5 × 8.5 in) with cream-paper stock."
echo "  • Upload cover.pdf as the cover wrap (Half Letter)."
echo
echo "Lulu workflow (US Letter production):"
echo "  • Upload capability-matters-print-letter.pdf as the interior and"
echo "    select US Letter (8.5 × 11 in)."
echo "  • Cover wrap for Letter trim is not yet generated — only the"
echo "    Half Letter cover is in scripts. Generate as needed."
