# Capability Matters — Casebook
# Build targets for the three 8 × 10 editions + the Lulu cover wrap.
#
#   print    — 8 × 10, grayscale, 3 mm bleed. Lulu production interior.
#   digital  — 8 × 10, color, cream backdrop. Screen / PDF edition.
#   proof    — print page centered on US Letter with 8 × 10 trim marks;
#              print at 100% on any office printer to review.
#   cover    — single 8 × 10 Lulu wrap; spine computed from page count.

ROOT      := $(shell pwd)
BUILD     := $(ROOT)/build
TYPST     := typst compile --font-path fonts
GS_GRAY   := gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
               -sProcessColorModel=DeviceGray \
               -sColorConversionStrategy=Gray -dOverrideICC \
               -dCompatibilityLevel=1.7

.PHONY: all editions print digital proof cover preview check clean fonts

# Default: full build via scripts/build.sh (handles the cover spine
# width from the live page count and mirrors PDFs to the repo root).
all:
	./scripts/build.sh

editions: print digital proof

$(BUILD):
	mkdir -p $(BUILD)

# Production interior: grayscale-tuned palette, then flattened through
# ghostscript so any remaining color literals in diagrams come out as
# true grayscale.
print: $(BUILD)
	$(TYPST) --input mode=print book.typ $(BUILD)/_print-color.pdf
	$(GS_GRAY) -o $(BUILD)/capability-matters-print.pdf $(BUILD)/_print-color.pdf
	rm $(BUILD)/_print-color.pdf

digital: $(BUILD)
	$(TYPST) --input mode=digital book.typ $(BUILD)/capability-matters-digital.pdf

# Proof carries the grayscale print content centered on US Letter, so
# it is flattened to true grayscale as well.
proof: $(BUILD)
	$(TYPST) --input mode=proof book.typ $(BUILD)/_proof-color.pdf
	$(GS_GRAY) -o $(BUILD)/capability-matters-proof.pdf $(BUILD)/_proof-color.pdf
	rm $(BUILD)/_proof-color.pdf

preview: digital

# Lulu wrap. Spine width is recomputed from the print interior page
# count using ~0.0621 mm/page on cream paper.
cover: print
	$(eval P := $(shell pdfinfo $(BUILD)/capability-matters-print.pdf 2>/dev/null | awk '/^Pages:/ {print $$2}'))
	$(eval S := $(shell awk -v p=$(P) 'BEGIN{printf "%.2f", p*0.0621}'))
	$(eval W := $(shell awk -v s=$(S) 'BEGIN{printf "%.2f", 2*203.2 + s + 2*3.175}'))
	$(eval H := $(shell awk 'BEGIN{printf "%.2f", 254 + 2*3.175}'))
	$(TYPST) --root . --input cover-w-mm=$(W) --input cover-h-mm=$(H) --input spine-mm=$(S) cover/cover.typ $(BUILD)/cover-print.pdf

# Per-case structural check: every converted (4-page) case is exactly
# four pages, starts on a verso, carries its reference list, and has
# marker count == reference-list length.
check:
	./scripts/check-cases.sh

fonts:
	./scripts/fetch-fonts.sh

clean:
	rm -rf $(BUILD)
