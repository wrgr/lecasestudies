# Capability Matters — Casebook
# Build targets for Typst interiors + Lulu cover wrap.

ROOT      := $(shell pwd)
BUILD     := $(ROOT)/build
TYPST     := typst compile --font-path fonts
GS_GRAY   := gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
               -sProcessColorModel=DeviceGray \
               -sColorConversionStrategy=Gray -dOverrideICC \
               -dCompatibilityLevel=1.7

.PHONY: all production draft cover preview clean fonts binder \
        print-half print-letter draft-letter draft-half

# Default build: all four interiors + the Half Letter cover wrap.
all: production draft cover

production: print-half print-letter

draft: draft-letter draft-half

$(BUILD):
	mkdir -p $(BUILD)

# Production PDFs are emitted with a grayscale-tuned palette, then
# flattened through ghostscript so any remaining color literals in
# diagrams come out as true grayscale.
print-half: $(BUILD)
	$(TYPST) --input mode=print book.typ $(BUILD)/_cm-print-half-color.pdf
	$(GS_GRAY) -o $(BUILD)/capability-matters-print-half.pdf $(BUILD)/_cm-print-half-color.pdf
	rm $(BUILD)/_cm-print-half-color.pdf

print-letter: $(BUILD)
	$(TYPST) --input mode=print-letter book.typ $(BUILD)/_cm-print-letter-color.pdf
	$(GS_GRAY) -o $(BUILD)/capability-matters-print-letter.pdf $(BUILD)/_cm-print-letter-color.pdf
	rm $(BUILD)/_cm-print-letter-color.pdf

draft-letter: $(BUILD)
	$(TYPST) --input mode=draft book.typ $(BUILD)/capability-matters-draft-letter.pdf

draft-half: $(BUILD)
	$(TYPST) --input mode=draft-half book.typ $(BUILD)/capability-matters-draft-half.pdf

# Half Letter screen preview (color, cream backdrop).
preview: $(BUILD)
	$(TYPST) book.typ $(BUILD)/capability-matters.pdf

cover: print-half
	$(eval PAGES := $(shell pdfinfo $(BUILD)/capability-matters-print-half.pdf 2>/dev/null | awk '/^Pages:/ {print $$2}'))
	$(TYPST) --root . --input pages=$(PAGES) cover/cover.typ $(BUILD)/cover.pdf

# Three-piece cover insert for a standard 1" view binder
# (Avery-style: 8.5x11 front + 1x11 spine + 8.5x11 back).
binder: $(BUILD)
	$(TYPST) --root . cover/binder-front.typ $(BUILD)/binder-front.pdf
	$(TYPST) --root . cover/binder-spine.typ $(BUILD)/binder-spine.pdf
	$(TYPST) --root . cover/binder-back.typ  $(BUILD)/binder-back.pdf

fonts:
	./scripts/fetch-fonts.sh

clean:
	rm -rf $(BUILD)
