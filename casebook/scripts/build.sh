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
# The printed book is the MAIN VOLUME (selected case set in
# lib/selection.typ). The full 205-case reference build and the
# digital-only supplement are compiled below.
echo "→ Compiling main-volume print interior (8 × 10, grayscale, bleed)..."
$TYPST --input mode=print --input edition=main book.typ build/_print-color.pdf
gray_flatten build/_print-color.pdf build/capability-matters-print.pdf
rm build/_print-color.pdf

echo "→ Compiling main-volume digital edition (8 × 10, color, cream backdrop)..."
$TYPST --input mode=digital --input edition=main book.typ build/capability-matters-digital.pdf

echo "→ Compiling digital supplement (8 × 10, color, cream backdrop)..."
$TYPST --input mode=digital --input edition=supplement supplement.typ build/capability-matters-supplement.pdf

echo "→ Compiling complete reference edition (8 × 10, color; internal, not mirrored)..."
$TYPST --input mode=digital book.typ build/capability-matters-complete.pdf

echo "→ Compiling main-volume proof (8 × 10 centered on US Letter, trim marks)..."
$TYPST --input mode=proof --input edition=main book.typ build/_proof-color.pdf
gray_flatten build/_proof-color.pdf build/capability-matters-proof.pdf
rm build/_proof-color.pdf

echo "→ Compiling LENS Companion (8 × 10, white, digital)..."
# Companion uses --root .. so read() can reach the canonical .md shadows
# in the sibling lens_program/ directory for Part IV (source-of-record).
$TYPST --root .. --input view=companion lens-companion.typ build/capability-matters-lens-companion.pdf

echo "→ Compiling Validation & Audit (8 × 10, white, digital)..."
$TYPST --input view=companion validation-audit.typ build/capability-matters-validation-audit.pdf

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
# Lulu binds in 4-page signatures: pad up to the next multiple of four with
# white blank leaves at the trim+bleed page size (145.7 × 221.9 mm). The blanks
# count toward the printed thickness, so the spine (computed below from the
# padded page count) stays correct.
ovh_pp=$(pdfinfo build/_ovh-print-color.pdf | awk '/^Pages:/ {print $2}')
ovh_blanks=$(( (4 - ovh_pp % 4) % 4 ))
if [ "$ovh_blanks" -gt 0 ]; then
  echo "  · $ovh_pp pp + $ovh_blanks blank leaf(s) → $((ovh_pp + ovh_blanks)) pp (multiple of 4)"
  $TYPST --input n="$ovh_blanks" --input w-mm=145.7 --input h-mm=221.9 \
    scripts/blank-leaves.typ build/_ovh-blanks.pdf
  gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
     -sProcessColorModel=DeviceGray -sColorConversionStrategy=Gray -dOverrideICC \
     -dCompatibilityLevel=1.7 \
     -o build/capability-matters-overview-half-print.pdf \
     build/_ovh-print-color.pdf build/_ovh-blanks.pdf
  rm build/_ovh-blanks.pdf
else
  gray_flatten build/_ovh-print-color.pdf build/capability-matters-overview-half-print.pdf
fi
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

echo "→ Compiling 8 × 10 cover (split: front · spine · back)..."
$TYPST --root . \
  --input cover-w-mm="$total_w" \
  --input cover-h-mm="$total_h" \
  --input spine-mm="$spine" \
  --input layout=split \
  cover/cover.typ build/cover-print-split.pdf

# The printed product with its covers attached: front cover, grayscale
# interior, back cover in one PDF — the on-screen stand-in for the bound
# book (Lulu itself still takes the interior + one-piece wrap above).
# Cover pages stay in color, as they print on the color cover stock.
echo "→ Assembling print interior with front/back cover..."
pdfseparate -f 1 -l 1 build/cover-print-split.pdf build/_cover-front.pdf
pdfseparate -f 3 -l 3 build/cover-print-split.pdf build/_cover-back.pdf
pdfunite build/_cover-front.pdf \
         build/capability-matters-print.pdf \
         build/_cover-back.pdf \
         build/capability-matters-print-with-cover.pdf
rm build/_cover-front.pdf build/_cover-back.pdf

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

echo "→ Compiling Half-Letter summary cover (split: front · spine · back)..."
$TYPST --root . \
  --input cover-w-mm="$ov_total_w" \
  --input cover-h-mm="$ov_total_h" \
  --input spine-mm="$ov_spine" \
  --input layout=split \
  cover/cover-summary.typ build/cover-overview-half-split.pdf

# ---- Mirror the eight shipping artefacts to the repo's products/ tree ----
# Only the eight artefacts the README's "Start here" table points at
# land at the repo root, split into products/digital/ (the on-screen
# PDFs) and products/print/ (the print interiors + covers). Proofs,
# screen-summary editions, and the split-format covers stay inside
# build/ for the build pipeline; they are intermediate or internal-tooling
# artefacts, not the published set.
REPO_ROOT="$(cd "$ROOT/.." && pwd)"
mkdir -p "$REPO_ROOT/products/digital" "$REPO_ROOT/products/print"
for f in capability-matters-digital.pdf \
         capability-matters-supplement.pdf \
         capability-matters-lens-companion.pdf \
         capability-matters-validation-audit.pdf; do
  cp "build/$f" "$REPO_ROOT/products/digital/$f"
done
for f in capability-matters-print.pdf \
         capability-matters-print-with-cover.pdf \
         cover-print.pdf \
         capability-matters-overview-half-print.pdf \
         cover-overview-half.pdf; do
  cp "build/$f" "$REPO_ROOT/products/print/$f"
done

echo
echo "✓ Output:"
echo "    capability-matters-print.pdf      8 × 10 MAIN VOLUME print interior (grayscale, $pages pp)"
echo "    capability-matters-print-with-cover.pdf  print interior with front/back cover attached (reading copy)"
echo "    capability-matters-digital.pdf    8 × 10 MAIN VOLUME digital edition (color, cream)"
echo "    capability-matters-supplement.pdf 8 × 10 digital supplement (all non-main cases; digital only)"
echo "    capability-matters-complete.pdf   8 × 10 complete 205-case reference edition (internal)"
echo "    capability-matters-proof.pdf      8 × 10 on US Letter with trim marks (proof)"
echo "    capability-matters-lens-companion.pdf  8 × 10 LENS companion — concentration docs + crosswalks (white, digital)"
echo "    capability-matters-validation-audit.pdf 8 × 10 Validation & Audit — domain/course indexes + per-case references (white, digital)"
echo "    capability-matters-overview.pdf       US Letter summary — digital/to-share (2/page)"
echo "    capability-matters-overview-proof.pdf US Letter summary — proof (grayscale)"
echo "    capability-matters-overview-half.pdf      Half Letter summary — digital/to-share (1/page)"
echo "    capability-matters-overview-half-proof.pdf Half Letter summary — proof (on Letter, crop marks)"
echo "    capability-matters-overview-half-print.pdf Half Letter summary — print interior (bleed, Lulu)"
echo "    cover-print.pdf                   8 × 10 Lulu wrap (spine $spine mm)"
echo "    cover-print-split.pdf             8 × 10 cover, split (front · spine · back)"
echo "    cover-overview-half.pdf           Half Letter summary Lulu wrap (spine $ov_spine mm)"
echo "    cover-overview-half-split.pdf     Half Letter summary cover, split (front · spine · back)"
echo
echo "Lulu workflow: upload capability-matters-print.pdf as the interior"
echo "and cover-print.pdf as the wrap (cream stock). Lulu will report the"
echo "exact spine; re-run with the cover override if it differs from $spine mm."
