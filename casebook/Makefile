# Capability Matters — Casebook
# `make all` builds the full shipping set (six deliverables) via
# scripts/build.sh and mirrors them into ../products/. The targets below
# compile individual editions into build/ for quick iteration; they do NOT
# mirror to products/ or build the covers — use `make all` for a release.
#
#   digital   — main volume, 8 × 10, colour on cream (screen).
#   complete  — full standalone, every case, 8 × 10, colour on cream.
#   print     — main volume, 8 × 10, grayscale, 3 mm bleed (Lulu interior).
#   local     — main volume, grayscale, centered on US Letter (home print,
#               interior only — `make all` adds the colour covers).
#   companion — LENS Companion + Validation & Audit (8 × 10, white).

ROOT      := $(shell pwd)
BUILD     := $(ROOT)/build
TYPST     := typst compile --font-path fonts
GS_GRAY   := gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
               -sProcessColorModel=DeviceGray \
               -sColorConversionStrategy=Gray -dOverrideICC \
               -dCompatibilityLevel=1.7

.PHONY: all editions digital complete print local companion check clean fonts

# Default: full release build (cover spine from live page count; mirrors
# the shipping set into ../products/).
all:
	./scripts/build.sh

editions: digital complete print local companion

$(BUILD):
	mkdir -p $(BUILD)

digital: $(BUILD)
	$(TYPST) --input mode=digital --input edition=main book.typ $(BUILD)/capability-matters-digital.pdf

complete: $(BUILD)
	$(TYPST) --input mode=digital book.typ $(BUILD)/capability-matters-complete.pdf

# Production interior: grayscale-tuned palette, then flattened through
# ghostscript so any remaining colour literals in diagrams come out true gray.
print: $(BUILD)
	$(TYPST) --input mode=print --input edition=main book.typ $(BUILD)/_print-color.pdf
	$(GS_GRAY) -o $(BUILD)/capability-matters-print.pdf $(BUILD)/_print-color.pdf
	rm $(BUILD)/_print-color.pdf

# Grayscale interior centered on US Letter (the covers are attached by
# `make all`; this target is the bare interior for review).
local: $(BUILD)
	$(TYPST) --input mode=proof --input edition=main book.typ $(BUILD)/_local-color.pdf
	$(GS_GRAY) -o $(BUILD)/capability-matters-local-print.pdf $(BUILD)/_local-color.pdf
	rm $(BUILD)/_local-color.pdf

companion: $(BUILD)
	$(TYPST) --root .. --input view=companion lens-companion.typ $(BUILD)/capability-matters-lens-companion.pdf
	$(TYPST) --input view=companion validation-audit.typ $(BUILD)/capability-matters-validation-audit.pdf

# Per-case structural + citation-integrity check across the full corpus.
check:
	./scripts/check-cases.sh
	python3 ./scripts/check-compression.py --gate

fonts:
	./scripts/fetch-fonts.sh

clean:
	rm -rf $(BUILD)
