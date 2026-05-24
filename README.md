# Capability Matters — A Casebook for LENS

A printed casebook for the **Learning Engineering for Next-Generation
Systems (LENS)** specialization in the Learning Design & Technology
program at the Johns Hopkins University School of Education. One
hundred real incidents in which human capability was the critical
system parameter — failures, successes, and frontier cases — examined
through the LENS framing of capability as the interface between
operator requirements and system impact, and agency as a design
constraint on every intervention.

Built with **Typst**. One trim — **8 × 10 in (203.2 × 254 mm)** — rendered
as three editions from a single source: a grayscale print interior for
Lulu, a color digital edition, and a proof that centers the print page
on US Letter with trim marks for office printing.

---

## Status

Three editions reproduce from source via `bash scripts/build.sh`.

| Edition | Page size | Color | Purpose |
|---|---|---|---|
| `print` | 8 × 10 in + 3 mm bleed | grayscale | Lulu production interior |
| `digital` | 8 × 10 in | color, cream backdrop | screen / PDF distribution |
| `proof` | US Letter (8 × 10 centered, trim marks) | grayscale | print at 100% to review |

All three share one measure and type size, so **proof pagination is
identical to print** — what you proof is what Lulu prints.

Cases are being converted from the legacy 2-page spread to a **3-page
cited case (2 + 1)**: a shaded ~130-word "In brief" summary plus a
five-beat sourced narrative with inline `#cn()` citation markers fill
two pages (the case diagram on page 2, references in two compact
columns at the end of page 2); the *Learning Engineering Lens* analysis
lands on page 3. Conversion is incremental — `case()` renders the
legacy 2-page layout for any case not yet converted. Run `make check`
to verify every converted case is exactly three pages, with references
on page 2 and marker count == reference-list length.

For the intellectual framing behind the casebook — the capability
interface, agency as a design constraint, gap attribution, the
Practice Flywheel — see [METHODOLOGY.md](METHODOLOGY.md).

---

## Repo layout

```
.
├── book.typ                       # main entry — interior PDF
├── lib/
│   ├── theme.typ                  # mode flags, page geometry, palette, type sizes
│   ├── components.typ             # eyebrows, domain tags, mode chips, sources …
│   ├── case.typ                   # case-spread template
│   ├── chapter.typ                # full-bleed chapter divider
│   └── diagrams.typ               # code-generated case diagrams (cetz)
├── frontmatter/
│   ├── title.typ                  # half-title / title / colophon / legal notices
│   ├── introduction.typ           # "Why Capability Matters"
│   ├── howto.typ                  # "How to use this book"
│   └── matrix.typ                 # 100-case matrix table
├── chapters/                      # ch01 … ch09 (and ch0Nb / ch0Nc extras)
├── backmatter/                    # references, editor bios
├── cover/
│   └── cover.typ                  # 8 × 10 Lulu wrap (front + spine + back)
├── fonts/                         # bundled Instrument Serif + DM Sans
├── scripts/
│   ├── build.sh                   # build all three editions + cover
│   ├── check-cases.sh             # 3-page + citation-parity check
│   └── fetch-fonts.sh             # re-download fonts if missing
└── Makefile
```

---

## Build

### Prerequisites

- [Typst](https://github.com/typst/typst) ≥ 0.13
- `ghostscript` — flattens any residual color literals in diagrams so
  the production interiors are true grayscale
- `poppler-utils` (`pdfinfo`) — used to compute live spine widths

Fonts ship under `./fonts/`. If they go missing, run
`./scripts/fetch-fonts.sh`.

### Commands

```bash
make all                # build all three editions + cover (via build.sh)
make editions           # print + digital + proof
make print              # grayscale 8 × 10 interior (Lulu)
make digital            # color 8 × 10 edition
make proof              # 8 × 10 on US Letter with trim marks
make cover              # 8 × 10 Lulu wrap (spine from live page count)
make preview            # alias for digital
make check              # 3-page + citation-parity check on converted cases
make clean
```

…or equivalently:

```bash
bash scripts/build.sh
```

### Build modes (Typst input flag)

```bash
typst compile --font-path fonts --input mode=<MODE> book.typ <out>.pdf
```

| `mode` | Page size | Color | Purpose |
|---|---|---|---|
| `print` | 8 × 10 in + 3 mm bleed | grayscale | Lulu production interior |
| `digital` | 8 × 10 in | color, cream backdrop | screen / PDF (default) |
| `proof` | US Letter, 8 × 10 centered + trim marks | grayscale | print at 100% to review |

All mode/trim/palette/typography decisions are centralized in
`lib/theme.typ`.

### Grayscale guarantee

Production builds use two layers:

1. The named palette swaps to L\*-tuned grays in `lib/theme.typ` so the
   case header, taxonomy chips, domain pills, eyebrows, and rules emit
   meaningful gray values from Typst directly.
2. A ghostscript pass on the production output flattens any
   hardcoded `rgb()` literals (notably inside `cetz` diagrams) to
   true grayscale via `-sProcessColorModel=DeviceGray
   -sColorConversionStrategy=Gray`.

`gs -sDEVICE=inkcov` reports 0/0/0/K coverage on every production page.

---

## Page geometry

One trim, one measure. Converted 3-page cases flow without a forced
verso start, so the 3-page units pack without blank pages. The three
editions differ only in color and carrier — never in measure or type
size — so proof and print paginate identically.

| Setting | Value |
|---|---|
| Trim | 203.2 × 254 mm (8 × 10 in) |
| Bleed (`print` only) | 3 mm |
| Margins (inner / outer / top / bottom) | 26 / 22 / 20 / 24 mm |
| Body | 10.5 pt |
| Proof carrier | US Letter (215.9 × 279.4 mm); 8 × 10 centered (6.35 mm L/R, 12.7 mm T/B inset) with trim outline + corner crop marks |

---

## Cover

A single 8 × 10 Lulu wrap — front, spine, and back on one sheet —
built from `cover/cover.typ`. The spine width is computed from the
live `print` page count (~0.0621 mm/page on cream stock) and passed in
by the build script.

To override once Lulu reports the exact spine width:

```bash
typst compile --font-path fonts --root . \
  --input cover-w-mm=<...> --input cover-h-mm=<...> --input spine-mm=<...> \
  cover/cover.typ build/cover-print.pdf
```

---

## Adding or editing a case

Cases are defined by `#case(...)` (see `lib/case.typ`). The template
has two paths, selected by whether `kind` is set.

**3-page cited case** (set `kind`) — the target structure:

| Field            | Purpose                                                                 |
|------------------|-------------------------------------------------------------------------|
| `kind`           | `"failure"`, `"intervention"`, or `"frontier"` — picks the section labels in `theme.section-sets` |
| `summary`        | shaded ~100–150 word "In brief" abstract at the top of page 1 |
| `sections`       | array of **five** content blocks, one per beat, in order; embed inline `#cn()` markers in the prose |
| `references`     | array of reference strings — **must equal the `#cn()` count** (run `make check`) |
| `le-insight`, `lens-approach`, `reflection-list`, `courses`, `quote`, `sources-list`, `literature-items` | the page-3 LE Lens, as before |

Inline citations use `#cn()`, which auto-numbers within the case
(reset per case) and renders a superscript marker; the matching text
goes in `references`, in the same order. Size the summary plus the five
sections to fill two pages so the reference list lands at the end of
page 2 and the LE Lens on page 3 — `make check` enforces this. Keep
references concise (one line each); they render in two columns.

**Legacy 2-page spread** (omit `kind`) — `number`, `title`, `year`,
`domains-list`, `modes-code`, `impact`, `diagram`, `body`, plus the LE
Lens fields above. Still renders so unconverted cases keep building.

Shared header fields (`number`, `title`, `year`, `domains-list`,
`modes-code`, `impact`, `diagram`) apply to both paths.

To add a diagram, write a `#let dgm-foo = diagram-frame(...)` in
`lib/diagrams.typ` and reference it as `dgm.dgm-foo` from the case.
Diagrams may use `cetz` for vector drawing.

---

## Failure-mode taxonomy

| Code | Failure mode                       |
|------|------------------------------------|
| T    | Training Gap                       |
| D    | Designed Out                       |
| N    | Normalization of Deviance          |
| H    | Human-System Interface             |
| G    | Governance & Trust                 |
| K    | Knowledge & Institutional Memory   |

---

## Design system

| Color (production) | Hex      | L\* | Used for                                  |
|--------------------|----------|----:|-------------------------------------------|
| Navy               | #0A1628  |  10 | chapter dividers, primary text            |
| Navy mid           | #1F2A44  |  16 | domain pills (defense / aviation / gov)   |
| Teal               | #1A8A7D  |  32 | eyebrows, failure-mode chips, accents     |
| Gold               | #D4A843  |  58 | pull-quote rule, eyebrows, accents        |
| Teal light         | #2CC4B3  |  68 | title italics, light accent               |
| Cream              | #F5F0E8  |  94 | digital-edition page backdrop             |

Each color carries a meaningful L\* and the grayscale palette is tuned
to those L\* targets, so the production black-and-white interior keeps
the visual distinctions intact.

| Typeface           | Used for                                  |
|--------------------|-------------------------------------------|
| Instrument Serif   | display, case titles, pull quotes         |
| DM Sans            | body, labels, taxonomy chips, UI elements |

---

## Reviewing

The `proof` edition is the review artifact: the grayscale print page
centered on US Letter with an 8 × 10 trim outline and corner crop
marks. Print it at 100% (no scaling) on any office printer — it
centers on the sheet and shows exactly where the production book
trims. Because proof shares print's measure and type size, its
pagination matches the Lulu interior page-for-page.

---

## Open items for production

- Case conversion to the 3-page (2+1) cited case is in progress; run
  `make check` to see which cases are converted and passing.
- The colophon currently reads `Copyright © 2026. All rights reserved.`
  pending a decision on the institutional rights-holder.
- Lulu reports an exact spine width once the page count is locked.
  Build the cover with `--input spine-mm=…` to match if it differs
  from the computed estimate.

---

## References

- Project context and methodology: [METHODOLOGY.md](METHODOLOGY.md)
- LENS positioning argument: separate document (provided to editors)
- Audit record of citations and changes: [AUDIT.md](AUDIT.md)
