#!/usr/bin/env bash
# Build the Capability Matters shipping set — six deliverables from one
# Typst source.
#
# Simplified July 2026 (see README "Build & versions"): the earlier
# pipeline emitted ~18 artefacts across four product families (main
# volume in five carriers, a separate digital supplement, a whole
# US-Letter / Half-Letter "summary booklet" line, plus assorted proofs
# and split covers). That sprawl meant several near-duplicate versions
# of the same content drifting out of sync. This script keeps exactly
# one interior per real destination:
#
#   products/print/   — black-on-white interiors, colour covers
#     capability-matters-print.pdf        8×10, grayscale, 3 mm bleed
#                                         → the interior you upload to Lulu
#     cover-print.pdf                     8×10 Lulu cover wrap (spine from
#                                         the interior page count)
#     capability-matters-local-print.pdf  grayscale interior + colour
#                                         covers, each 8×10 page centered on
#                                         US Letter → print at home / office
#
#   products/digital/ — on-screen PDFs
#     capability-matters-digital.pdf      8×10 main volume, colour on cream
#     capability-matters-complete.pdf     8×10 full standalone — every case,
#                                         colour on cream
#     capability-matters-lens-companion.pdf   LENS program docs + crosswalks
#                                             (white)
#     capability-matters-validation-audit.pdf audit / tracking / per-case
#                                             references (white)
#
# The main volume is the selected case set in lib/selection.typ; the
# complete standalone is every non-quarantined case (the cases the printed
# volume omits — formerly the "digital supplement" — now live here).
#
# Requires: typst (>= 0.15), ghostscript, poppler (pdfinfo/pdfunite/pdfseparate).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
mkdir -p build

TYPST="typst compile --font-path fonts"

# Flatten to true DeviceGray so any residual colour literals (notably in
# diagrams) print as real grayscale on a B&W press / laser printer.
gray_flatten() {  # $1 = colour input, $2 = grayscale output
  gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
     -sProcessColorModel=DeviceGray \
     -sColorConversionStrategy=Gray -dOverrideICC \
     -dCompatibilityLevel=1.7 \
     -o "$2" "$1"
}

# Re-center a single 8×10 page onto US Letter media without scaling, so a
# colour cover panel lines up with the Letter-carried interior pages.
center_on_letter() {  # $1 = input pdf (single page), $2 = output pdf
  local w h ox oy
  read -r w h < <(pdfinfo "$1" | awk '/^Page size:/ {print $3, $5}')
  ox=$(awk -v w="$w" 'BEGIN {printf "%.2f", (612 - w) / 2}')
  oy=$(awk -v h="$h" 'BEGIN {printf "%.2f", (792 - h) / 2}')
  gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
     -dDEVICEWIDTHPOINTS=612 -dDEVICEHEIGHTPOINTS=792 -dFIXEDMEDIA \
     -dCompatibilityLevel=1.7 -o "$2" \
     -c "<</PageOffset [$ox $oy]>> setpagedevice" \
     -f "$1"
}

# ---- Digital editions (8×10, colour, cream backdrop) ----
echo "→ Compiling main volume — digital (8×10, colour, cream)..."
$TYPST --input mode=digital --input edition=main book.typ build/capability-matters-digital.pdf

echo "→ Compiling complete standalone — every case (8×10, colour, cream)..."
$TYPST --input mode=digital book.typ build/capability-matters-complete.pdf

# ---- LENS Companion + Validation & Audit (8×10, white) ----
# The companion uses --root .. so read() can reach the canonical .md
# shadows in the sibling lens_program/ directory (source of record).
echo "→ Compiling LENS Companion (8×10, white)..."
$TYPST --root .. --input view=companion lens-companion.typ build/capability-matters-lens-companion.pdf

echo "→ Compiling Validation & Audit (8×10, white)..."
$TYPST --input view=companion validation-audit.typ build/capability-matters-validation-audit.pdf

# ---- Main volume print interior (8×10, grayscale, 3 mm bleed → Lulu) ----
echo "→ Compiling main volume — print interior (8×10, grayscale, bleed)..."
$TYPST --input mode=print --input edition=main book.typ build/_print-color.pdf
gray_flatten build/_print-color.pdf build/capability-matters-print.pdf
rm build/_print-color.pdf

# ---- Cover wrap (spine width computed from the print interior page count) ----
pages=$(pdfinfo build/capability-matters-print.pdf | awk '/^Pages:/ {print $2}')
spine=$(awk -v p="$pages" 'BEGIN {printf "%.2f", p * 0.0621}')
total_w=$(awk -v s="$spine" 'BEGIN {printf "%.2f", 2*203.2 + s + 2*3.175}')
total_h=$(awk 'BEGIN {printf "%.2f", 254 + 2*3.175}')

echo "→ Print interior: $pages pp  ·  estimated spine $spine mm"
echo "→ Compiling 8×10 Lulu cover wrap..."
$TYPST --root . \
  --input cover-w-mm="$total_w" \
  --input cover-h-mm="$total_h" \
  --input spine-mm="$spine" \
  cover/cover.typ build/cover-print.pdf

# Split cover (front · spine · back) — internal: feeds the colour cover
# panels onto the local-print copy below. Not a shipping artefact.
echo "→ Compiling 8×10 cover, split (front · spine · back)..."
$TYPST --root . \
  --input cover-w-mm="$total_w" \
  --input cover-h-mm="$total_h" \
  --input spine-mm="$spine" \
  --input layout=split \
  cover/cover.typ build/_cover-split.pdf

# ---- Local-print copy: grayscale interior + colour covers, on US Letter ----
# Each 8×10 page centered at 100% on an 8.5×11 sheet so it prints on any
# home / office printer with reasonable margins, text size and layout
# exactly those of the bound book. Interior is black-on-white (the print
# palette, grayscale-flattened); only the front/back covers stay in colour.
echo "→ Compiling local-print interior (8×10 grayscale on US Letter)..."
$TYPST --input mode=proof --input edition=main book.typ build/_local-color.pdf
gray_flatten build/_local-color.pdf build/_local-interior.pdf
rm build/_local-color.pdf

echo "→ Assembling local-print copy (grayscale interior + colour covers)..."
pdfseparate -f 1 -l 1 build/_cover-split.pdf build/_cover-front.pdf
pdfseparate -f 3 -l 3 build/_cover-split.pdf build/_cover-back.pdf
center_on_letter build/_cover-front.pdf build/_cover-front-letter.pdf
center_on_letter build/_cover-back.pdf  build/_cover-back-letter.pdf
pdfunite build/_cover-front-letter.pdf \
         build/_local-interior.pdf \
         build/_cover-back-letter.pdf \
         build/capability-matters-local-print.pdf
rm build/_cover-front.pdf build/_cover-back.pdf \
   build/_cover-front-letter.pdf build/_cover-back-letter.pdf \
   build/_local-interior.pdf build/_cover-split.pdf

# ---- Mirror the shipping set to products/ ----
# Everything the README's "Start here" table points at lands under
# products/, split by carrier. Nothing else is mirrored; build/ holds
# only these finals now.
REPO_ROOT="$(cd "$ROOT/.." && pwd)"
mkdir -p "$REPO_ROOT/products/digital" "$REPO_ROOT/products/print"
for f in capability-matters-digital.pdf \
         capability-matters-complete.pdf \
         capability-matters-lens-companion.pdf \
         capability-matters-validation-audit.pdf; do
  cp "build/$f" "$REPO_ROOT/products/digital/$f"
done
for f in capability-matters-print.pdf \
         cover-print.pdf \
         capability-matters-local-print.pdf; do
  cp "build/$f" "$REPO_ROOT/products/print/$f"
done

echo
echo "✓ Output — shipping set (mirrored to products/):"
echo "  digital/"
echo "    capability-matters-digital.pdf          8×10 main volume, colour on cream ($(pdfinfo build/capability-matters-digital.pdf | awk '/^Pages:/{print $2}') pp)"
echo "    capability-matters-complete.pdf          8×10 full standalone, every case ($(pdfinfo build/capability-matters-complete.pdf | awk '/^Pages:/{print $2}') pp)"
echo "    capability-matters-lens-companion.pdf    8×10 LENS program docs + crosswalks, white ($(pdfinfo build/capability-matters-lens-companion.pdf | awk '/^Pages:/{print $2}') pp)"
echo "    capability-matters-validation-audit.pdf  8×10 audit / tracking / references, white ($(pdfinfo build/capability-matters-validation-audit.pdf | awk '/^Pages:/{print $2}') pp)"
echo "  print/"
echo "    capability-matters-print.pdf             8×10 grayscale, 3 mm bleed — Lulu interior ($pages pp)"
echo "    cover-print.pdf                          8×10 Lulu cover wrap (spine $spine mm)"
echo "    capability-matters-local-print.pdf       grayscale interior + colour covers, on US Letter ($(pdfinfo build/capability-matters-local-print.pdf | awk '/^Pages:/{print $2}') pp)"
echo
echo "Lulu workflow: upload capability-matters-print.pdf as the interior"
echo "and cover-print.pdf as the wrap (cream stock). Lulu will report the"
echo "exact spine; re-run with the cover override if it differs from $spine mm."
