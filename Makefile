# Capability Matters — Casebook
# Build targets for Typst interiors + covers.

ROOT      := $(shell pwd)
BUILD     := $(ROOT)/build
TYPST     := typst compile --font-path fonts
GS_GRAY   := gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
               -sProcessColorModel=DeviceGray \
               -sColorConversionStrategy=Gray -dOverrideICC \
               -dCompatibilityLevel=1.7

.PHONY: all production draft covers preview clean fonts \
        print-half print-letter draft-letter draft-half \
        cover-print-half cover-print-letter \
        cover-draft-letter cover-draft-half \
        share share-letter share-half

# Default: full build via scripts/build.sh (handles spine widths,
# mirroring to root, etc.)
all:
	./scripts/build.sh

production: print-half print-letter

draft: draft-letter draft-half

covers: cover-print-half cover-print-letter cover-draft-letter cover-draft-half

# `make share` assembles a single dated share PDF for reviewers:
#   front cover + BLANK + dated draft interior + BLANK + back cover.
# The blank pages put each cover on its own leaf so that, printed
# double-sided, no case study lands on the back of a cover.
# Defaults to the Letter draft (wider margins, easier to annotate).
# `make share-half` does the same on the Half Letter trim.
TODAY := $(shell date -I)

share: share-letter

share-letter: cover-draft-letter cover-draft-half $(BUILD)
	$(TYPST) --root . --input trim=letter cover/blank-page.typ $(BUILD)/_blank-letter.pdf
	$(TYPST) --input mode=draft --input date=$(TODAY) book.typ $(BUILD)/_share-letter-interior.pdf
	pdfunite $(BUILD)/cover-draft-letter.pdf $(BUILD)/_blank-letter.pdf $(BUILD)/_share-letter-interior.pdf $(BUILD)/_blank-letter.pdf $(BUILD)/cover-draft-letter-back.pdf $(BUILD)/capability-matters-toshare-$(TODAY).pdf
	rm $(BUILD)/_share-letter-interior.pdf $(BUILD)/_blank-letter.pdf
	cp $(BUILD)/capability-matters-toshare-$(TODAY).pdf $(ROOT)/capability-matters-toshare-$(TODAY).pdf

share-half: cover-draft-half $(BUILD)
	$(TYPST) --root . --input trim=half cover/blank-page.typ $(BUILD)/_blank-half.pdf
	$(TYPST) --input mode=draft-half --input date=$(TODAY) book.typ $(BUILD)/_share-half-interior.pdf
	pdfunite $(BUILD)/cover-draft-half.pdf $(BUILD)/_blank-half.pdf $(BUILD)/_share-half-interior.pdf $(BUILD)/_blank-half.pdf $(BUILD)/cover-draft-half-back.pdf $(BUILD)/capability-matters-toshare-half-$(TODAY).pdf
	rm $(BUILD)/_share-half-interior.pdf $(BUILD)/_blank-half.pdf
	cp $(BUILD)/capability-matters-toshare-half-$(TODAY).pdf $(ROOT)/capability-matters-toshare-half-$(TODAY).pdf

$(BUILD):
	mkdir -p $(BUILD)

# Production PDFs are emitted with a grayscale-tuned palette, then
# flattened through ghostscript so any remaining color literals in
# diagrams come out as true grayscale.
print-half: $(BUILD)
	$(TYPST) --input mode=print book.typ $(BUILD)/_print-half-color.pdf
	$(GS_GRAY) -o $(BUILD)/capability-matters-print-half.pdf $(BUILD)/_print-half-color.pdf
	rm $(BUILD)/_print-half-color.pdf

print-letter: $(BUILD)
	$(TYPST) --input mode=print-letter book.typ $(BUILD)/_print-letter-color.pdf
	$(GS_GRAY) -o $(BUILD)/capability-matters-print-letter.pdf $(BUILD)/_print-letter-color.pdf
	rm $(BUILD)/_print-letter-color.pdf

draft-letter: $(BUILD)
	$(TYPST) --input mode=draft book.typ $(BUILD)/capability-matters-draft-letter.pdf

draft-half: $(BUILD)
	$(TYPST) --input mode=draft-half book.typ $(BUILD)/capability-matters-draft-half.pdf

preview: $(BUILD)
	$(TYPST) book.typ $(BUILD)/capability-matters.pdf

# Lulu wraps. Spine widths are recomputed from the interior page count
# using ~0.0621 mm/page on cream paper (calibrated against Lulu's
# reported 19.2 mm spine at 309 pp Half Letter, May 2026).
cover-print-half: print-half
	$(eval P := $(shell pdfinfo $(BUILD)/capability-matters-print-half.pdf 2>/dev/null | awk '/^Pages:/ {print $$2}'))
	$(eval S := $(shell awk -v p=$(P) 'BEGIN{printf "%.2f", p*0.0621}'))
	$(eval W := $(shell awk -v s=$(S) 'BEGIN{printf "%.2f", 2*139.7 + s + 2*3.175}'))
	$(eval H := $(shell awk 'BEGIN{printf "%.2f", 215.9 + 2*3.175}'))
	$(TYPST) --root . --input cover-w-mm=$(W) --input cover-h-mm=$(H) --input spine-mm=$(S) cover/cover.typ $(BUILD)/cover-print-half.pdf

cover-print-letter: print-letter
	$(eval P := $(shell pdfinfo $(BUILD)/capability-matters-print-letter.pdf 2>/dev/null | awk '/^Pages:/ {print $$2}'))
	$(eval S := $(shell awk -v p=$(P) 'BEGIN{printf "%.2f", p*0.0621}'))
	$(eval W := $(shell awk -v s=$(S) 'BEGIN{printf "%.2f", 2*215.9 + s + 2*3.175}'))
	$(eval H := $(shell awk 'BEGIN{printf "%.2f", 279.4 + 2*3.175}'))
	$(TYPST) --root . --input cover-w-mm=$(W) --input cover-h-mm=$(H) --input spine-mm=$(S) cover/cover-letter.typ $(BUILD)/cover-print-letter.pdf

cover-draft-letter: $(BUILD)
	$(TYPST) --root . cover/binder-front.typ $(BUILD)/cover-draft-letter.pdf

cover-draft-half: $(BUILD)
	$(TYPST) --root . cover/draft-cover-half.typ $(BUILD)/cover-draft-half.pdf

fonts:
	./scripts/fetch-fonts.sh

clean:
	rm -rf $(BUILD)
