#!/usr/bin/env bash
# Build the interior PDF and the Lulu cover wrap.
# Requires: typst (>= 0.13), poppler (pdfinfo) for page count.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

mkdir -p build

echo "→ Compiling screen interior (cream backdrop, for on-screen viewing)..."
typst compile --font-path fonts book.typ build/capability-matters.pdf

echo "→ Compiling print interior (transparent/white backdrop, for Lulu cream-paper stock)..."
typst compile --font-path fonts --input mode=print book.typ build/capability-matters-print.pdf

# Page count is reported but the cover dimensions are pinned to Lulu's
# spec for this project (362.84 × 254.51 mm / 22.22 mm spine — 265-page
# cream-paper paperback). Override via --input cover-w-mm=…,
# cover-h-mm=…, spine-mm=… on the cover compile if Lulu's project-page
# spec ever changes.
if command -v pdfinfo >/dev/null 2>&1; then
  PAGES=$(pdfinfo build/capability-matters.pdf | awk '/^Pages:/ {print $2}')
else
  PAGES="?"
fi
echo "→ Interior page count: $PAGES"

echo "→ Compiling cover wrap (cover/cover.typ)..."
typst compile --font-path fonts --root . \
  cover/cover.typ build/cover.pdf

echo "→ Compiling decomposable cover parts (front / back / spine)..."
typst compile --font-path fonts --root . cover/cover-front.typ build/cover-front.pdf
typst compile --font-path fonts --root . cover/cover-back.typ  build/cover-back.pdf
typst compile --font-path fonts --root . cover/cover-spine.typ build/cover-spine.pdf

# Mirror the latest PDFs to the repo root so they are easy to find / preview.
cp "$ROOT/build/capability-matters.pdf" "$ROOT/capability-matters.pdf"
cp "$ROOT/build/capability-matters-print.pdf" "$ROOT/capability-matters-print.pdf"
cp "$ROOT/build/cover.pdf" "$ROOT/cover.pdf"
cp "$ROOT/build/cover-front.pdf" "$ROOT/cover-front.pdf"
cp "$ROOT/build/cover-back.pdf" "$ROOT/cover-back.pdf"
cp "$ROOT/build/cover-spine.pdf" "$ROOT/cover-spine.pdf"

echo
echo "✓ Output:"
echo "    build/capability-matters.pdf        screen interior — cream backdrop"
echo "    build/capability-matters-print.pdf  print interior — transparent/white backdrop for cream paper stock"
echo "    build/cover.pdf                     full Lulu wrap — 292.30 × 222.25 mm, ~16.55 mm spine (for $PAGES pages, Half Letter)"
echo "    build/cover-front.pdf               front face only — Half Letter trim (139.7 × 215.9 mm)"
echo "    build/cover-back.pdf                back face only — Half Letter trim (139.7 × 215.9 mm)"
echo "    build/cover-spine.pdf               spine only — ~16.55 × 215.9 mm"
echo "    {root}/*.pdf                        (same, mirrored to repo root for easy access)"
echo
echo "Lulu workflow:"
echo "  • Upload capability-matters-print.pdf as the interior and select"
echo "    Half Letter trim with cream-paper stock — the physical paper"
echo "    provides the cream tone."
echo "  • Upload cover.pdf as the cover wrap. Cover defaults assume"
echo "    Half Letter trim (5.5 × 8.5 in) with an estimated 16.55 mm"
echo "    spine for $PAGES pages on cream paper. Lulu will report the"
echo "    exact spine width on the project page — override on the cover"
echo "    compile with --input cover-w-mm=… --input cover-h-mm=…"
echo "    --input spine-mm=… if it differs."
echo
echo "Binder / standalone workflow:"
echo "  • cover-front.pdf, cover-back.pdf, cover-spine.pdf are"
echo "    decomposed Half Letter / spine-strip pages for printing into a"
echo "    binder, slipcase, or web preview. Each is single-page and"
echo "    self-contained."
