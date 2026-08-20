# Capability Matters — A Casebook for LENS

A printed casebook for the **Learning Engineering for Next-Generation Systems (LENS)** concentration in the Learning Design & Technology program at the Johns Hopkins University School of Education. **205 real cases** — a printed **main volume** (48 selected; `lib/selection.typ`) cut from a **complete standalone edition** (all 205; shared global numbering) — in which human capability was the critical system parameter — failures, paired-intervention successes, and frontier cases — organized topically in seven parts (Defense deliberately in the middle; a dedicated Disaster Prevention & Recovery part reads its cases pre → post), each split into What Fails / What Works — and the Frontier, and examined through the LENS v2.1 framing of capability as the interface between operator requirements and system impact, and agency as a design constraint on every intervention.

Built with **Typst**. One source renders the **six shipping deliverables** (see [../README.md](../README.md) "Build & versions" for the rationale): the main volume in three carriers (Lulu print interior + cover, digital on cream, and a black-on-white local-print copy with colour covers), the complete standalone edition, the **LENS Companion** (concentration documentation + crosswalks), and the **Validation & Audit** tracker (indexes + per-case references) — the last two on white digital paper.

---

## Status — print-ready, June 2026

The first edition is structurally complete and reproduces from source via `bash scripts/build.sh`.

Six deliverables, all mirrored into `../products/` (`products/print/` for the print carriers, `products/digital/` for the screen PDFs):

| Output | Carrier | Size | Pages | Notes |
|---|---|---|---|---|
| `capability-matters-print.pdf` | print | 8 × 10, grayscale, 3 mm bleed | 280 | Lulu production interior |
| `cover-print.pdf` | print | 8 × 10 wrap | — | Lulu cover, spine **17.39 mm** |
| `capability-matters-local-print.pdf` | print | US Letter, grayscale interior + colour covers | 279 | print at home / office (black on white; covers in colour) |
| `capability-matters-digital.pdf` | digital | 8 × 10, colour, cream | 277 | main volume — screen / PDF distribution |
| `capability-matters-complete.pdf` | digital | 8 × 10, colour, cream | 887 | complete standalone — every case |
| `capability-matters-lens-companion.pdf` | digital | 8 × 10, white | 50 | concentration docs + crosswalks + canonical `lens_program/` docs |
| `capability-matters-validation-audit.pdf` | digital | 8 × 10, white | 98 | audit tracker — indexes + per-case references |

These figures are hand-copied from `build/product-metrics.md`, which `scripts/build.sh`
regenerates on every build. If they disagree, the generated file is right — it is read off
the PDFs themselves. Re-run the build before quoting a spine width to a printer.


The main volume shares one measure and type size across its three carriers, so the local-print grayscale interior paginates page-for-page with the Lulu interior — what you print at home is what Lulu prints. The companion and audit tracker use the same trim on a separate white-paper visual layer.

Integrity at print: `bash scripts/check-cases.sh` reports **205 cases, 0 failures**; all cross-references in range 1–205; all slugs unique; all non-closing cases carry induced + lens + LEO anchors; no stale v1 terminology in any rendered output.

For a reflexive **case study** on how this volume was actually built through human-AI teaming — the workflow, the pros and cons, and the governance layer that made the speed safe — see [ai-workflow-case-study.tex](ai-workflow-case-study.tex) (*The Method Is the Message*; companion to the position paper `../position-paper/capability-not-content.tex`; build with `latexmk -pdf`).

For the intellectual framing behind the casebook — the capability interface, agency as a design constraint, gap attribution, the Practice Flywheel — see [METHODOLOGY.md](METHODOLOGY.md). For the running editorial history — v2.1 adoption, the chapter restructures (10-chapter competency org, then the July 2026 topical reorganization), the references validation pass, all corrections — see [AUDIT.md](AUDIT.md). For the per-case manual-review track scaffolded for the human reviewer — including the rubric, the workflow, and a 205-row table with six of seven check columns auto pre-filled — see [verification-log.md](verification-log.md).

---

## Repo layout

```
.
├── book.typ                       # main entry — the casebook (edition=main | full; mode=print | digital | proof)
├── lens-companion.typ             # the LENS Companion (--input view=companion)
├── validation-audit.typ           # the Validation & Audit tracker (--input view=companion)
├── lib/
│   ├── theme.typ                  # mode/edition flags, page geometry, palette, type sizes
│   ├── components.typ             # eyebrows, domain tags, mode chips, sources, connection figure …
│   ├── case.typ                   # case template — emits metadata + body; view=companion emits metadata only
│   ├── chapter.typ                # full-bleed chapter divider
│   ├── selection.typ              # main-volume case set (the printed cut)
│   ├── quarantine.typ             # cases withheld from every build
│   └── diagrams.typ               # code-generated case diagrams (cetz); v2.1 five-competencies labels
├── frontmatter/
│   ├── title.typ                  # half-title / title / colophon
│   ├── introduction.typ           # framing-first: thesis · cost of gap · engineerable discipline · method · the analytic lens (v2.1) · how to read
│   ├── howto.typ                  # how to use this book
│   └── matrix.typ                 # dynamic 205-case matrix (queries <caseinfo>; ° marks cases outside the printed cut)
├── chapters/                      # 14 chapters, topical: 7 parts × {fails, works+frontier} — ch1a … ch7b + closing-case.typ
├── backmatter/
│   ├── domain-index.typ                 # dynamic — cases by primary domain
│   ├── course-index.typ                 # dynamic — cases by LENS course
│   ├── appendix-leo-courses.typ         # LEO + course coverage (v2.1)
│   ├── appendix-references-by-case.typ  # per-case references with Retrieved-from lines (queries <caseinfo>)
│   ├── about-lens.typ, editors.typ      # one-page program block + editor bios
│   └── references.typ                   # Introduction works-cited + broader reading list
├── cover/                         # 8 × 10 Lulu wrap (cover.typ)
├── fonts/                         # bundled Instrument Serif + DM Sans
├── scripts/
│   ├── build.sh                   # build the six shipping deliverables + cover; mirror to ../products/
│   ├── check-cases.sh             # integrity: ≤5 pages, references on page 2, marker == ref count
│   ├── verification-status.sh     # parses verification-log.md; prints reviewer progress
│   └── fetch-fonts.sh
├── verification-log.md            # per-case manual-review table (rubric + workflow + 205 rows)
├── AUDIT.md                       # editorial history (v2.1 adoption, chapter restructure, validation)
├── METHODOLOGY.md                 # methodology of record
└── Makefile
```

---

## Build

### Prerequisites

- [Typst](https://github.com/typst/typst) ≥ 0.15 (CI pins 0.15.0)
- `ghostscript` — flattens any residual colour literals so production interiors are true grayscale
- `poppler-utils` (`pdfinfo`, `pdfunite`, `pdfseparate`) — spine widths + local-print cover assembly

Fonts ship under `./fonts/`. If they go missing, run `./scripts/fetch-fonts.sh`.

### Commands

```bash
bash scripts/build.sh         # the six shipping deliverables + cover, mirrored to ../products/ (canonical full build)
make digital                  # main volume, 8 × 10 colour on cream
make complete                 # full standalone, every case
make print                    # main volume, 8 × 10 grayscale interior (Lulu)
make local                    # main volume, grayscale, on US Letter (interior only; build.sh attaches covers)
make companion                # LENS Companion + Validation & Audit (white)
make check                    # case-integrity check (page count, citation parity)
make clean
```

The `make` targets compile individual editions into `build/` for quick iteration; they do not build the covers or mirror to `../products/`. Use `bash scripts/build.sh` for a release.

### Build modes (Typst input flags)

```bash
typst compile --font-path fonts --input mode=<MODE> --input edition=<EDITION> book.typ <out>.pdf
typst compile --font-path fonts --input view=<VIEW> <entry>.typ <out>.pdf
```

| `mode` | Page size | Colour | Purpose |
|---|---|---|---|
| `print` | 8 × 10 + 3 mm bleed | grayscale | Lulu production interior |
| `digital` | 8 × 10 | colour, cream backdrop | screen / PDF (default) |
| `proof` | US Letter, 8 × 10 centered + trim marks | grayscale | local-print interior (print at 100%) |

| `edition` | Cases rendered | Used for |
|---|---|---|
| `full` (default) | all 205 | the complete standalone edition |
| `main` | the 48 in `lib/selection.typ` | the printed main volume (print / digital / local) |

| `view` | Entry file | Purpose |
|---|---|---|
| `book` (default) | `book.typ` | the casebook (full case narratives) |
| `companion` | `lens-companion.typ`, `validation-audit.typ` | case bodies suppressed; metadata-driven indexes + crosswalks render |

All mode/edition/trim/palette/typography decisions are centralised in `lib/theme.typ`. The `view=companion` branch is in `lib/case.typ` — each case emits its metadata block and skips the body so the companion's and audit tracker's indexes and per-case references appendix render against the same source as the book. (`mode=proof-digital` — the colour proof carrier — still exists in `theme.typ` but is not part of the shipping set.)

### Grayscale guarantee

Production builds use two layers:

1. The named palette swaps to L\*-tuned grays in `lib/theme.typ` so the case header, taxonomy chips, domain pills, eyebrows, and rules emit meaningful gray values from Typst directly.
2. A ghostscript pass on the production output flattens any hardcoded `rgb()` literals (notably inside `cetz` diagrams) to true grayscale via `-sProcessColorModel=DeviceGray -sColorConversionStrategy=Gray`.

`gs -sDEVICE=inkcov` reports 0/0/0/K coverage on every production page.

---

## Cover

A single 8 × 10 Lulu wrap — front, spine, and back on one sheet — built from `cover/cover.typ`. The spine width is computed from the live `print` page count (~0.0621 mm/page on cream stock) and passed in by `scripts/build.sh`. The 280-page main-volume interior (277 pages padded to a 4-page signature) produces a **17.39 mm** spine; Lulu may quote-back ±1 mm. `build.sh` also emits a split cover (front · spine · back) as an internal intermediate — its colour front/back panels are attached to the local-print copy.

To override once Lulu reports the exact spine width:

```bash
typst compile --font-path fonts --root . \
  --input cover-w-mm=<...> --input cover-h-mm=<...> --input spine-mm=<...> \
  cover/cover.typ build/cover-print.pdf
```

---

## Adding or editing a case

Cases are defined by `#case(...)` in `lib/case.typ`. A v2 case carries:

- **Identity**: `number`, `slug` (stable kebab-case ID — survives renumbering), `title`, `year`, `domains-list`, `modes-code`, `impact`, `kind` (`failure` | `intervention` | `frontier`), `diagram`.
- **Body**: `summary` (~130-word "In brief"), `sections` (five content blocks in the order set by `kind` — e.g. for `failure`: Background · What Happened · The Investigation · The Capability Gap · Aftermath & Reform), `beats` (5 one-line beats for the summary editions), `references` (numbered list of sources matching the body's `#cn()` markers).
- **LE Lens** (page 4): `le-insight`, `lens-approach`, `approaches.during` + `approaches.after`, `reflection-list`, `team-block`, `sources-list`, `literature-items`.
- **v2 metadata**: `scale` (`big` | `small`), `evidence-source` (`investigation` | `peer-reviewed` | `program-report` | `practitioner` | `dissertation` | `journalism`), the three anchors (`lens-anchor` like `"D3/PT5"`; `induced-anchor` like `"3.1"`; `leo-anchor` like `"LEO-3"`), `courses` (LEN-course tags surface in the back-matter course index), `coi` (optional — renders a gold "Disclosure" block under the title), `evidence-flag` (optional — renders a blue "Evidence tier" block with the standing "future validation ongoing" language).

**Compression fields are derived.** `impact`, `le-insight`, `quote`, `title` and `beats` are compressions of `summary` + `sections`; write them last, from the finished body, and never let them assert what the body does not carry. `make check` runs `scripts/check-compression.py --gate`, which fails when a quantity appears in `impact` or `le-insight` with no counterpart in the body. See METHODOLOGY.md for why this rule exists.

Inline citations use `#cn()`, which auto-numbers within the case (reset per case) and renders a superscript marker; the matching text goes in `references`, in the same order. `scripts/check-cases.sh` enforces marker == reference count and the 3–5 page envelope.

Diagrams: write `#let dgm-foo = diagram-frame(...)` in `lib/diagrams.typ` and reference as `dgm.dgm-foo`. Diagrams may use `cetz` for vector drawing.

---

## Failure-mode taxonomy

`modes-code` is a contiguous string of letters. Used in the case header and the case matrix.

| Code | Failure mode                       |
|------|------------------------------------|
| T    | Training Gap                       |
| D    | Designed Out                       |
| N    | Normalization of Deviance          |
| H    | Human-System Interface             |
| G    | Governance & Trust                 |
| K    | Knowledge & Institutional Memory   |

The taxonomy is descriptive — what went wrong — and serves the matrix and the cross-reference lens. The **analytic** lens the book teaches is the five v2.1 LENS competencies; see [METHODOLOGY.md](METHODOLOGY.md) and the LENS Companion.

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

Each color carries a meaningful L\* and the grayscale palette is tuned to those L\* targets, so the production black-and-white interior keeps the visual distinctions intact.

| Typeface           | Used for                                  |
|--------------------|-------------------------------------------|
| Instrument Serif   | display, case titles, pull quotes         |
| DM Sans            | body, labels, taxonomy chips, UI elements |

---

## Verification track

`verification-log.md` is the per-case manual-review artefact. It carries:

- A **two-pass rubric** (quality scan + content scan, 5–15 min/case target) with a worked example on Case 1.
- A 205-row table with seven check columns: `clarity`, `refs real`, `refs support`, `conclusions reasonable`, `no overclaim`, `anchor fit`, `x-refs`. Six are auto pre-filled with mechanical detections (reviewer = `auto-prefill`); `conclusions reasonable` is intentionally empty pending a human case-by-case content read.
- The status legend: `—` not reviewed; `✓` passed; `~` passed with a note; `✗` issue found; `?` outside expertise — flag for an editor.
- The case-to-chapter map and the tool list (Google Scholar, DOI.org, agency websites, arxiv, Wayback Machine).

`bash scripts/verification-status.sh` parses the log and prints overall + per-chapter progress, per-check status counts, and the open-issue list. Run it before / after every review session.

The automated references validation pass before handover yielded **~777 VERIFIED / ~121 UNCERTAIN / 10 ISSUE** across ~951 references (1.05% issue rate). All 10 ISSUE-class items are resolved in source; the full record is in [AUDIT.md](AUDIT.md).

---

## Reviewing

The local-print copy (`mode=proof`, grayscale interior) is the review artifact: the grayscale print page centered on US Letter with an 8 × 10 trim outline and corner crop marks, then wrapped with the colour covers. Print it at 100% (no scaling) on any office printer — it centers on the sheet and shows exactly where the production book trims. Because it shares print's measure and type size, its interior pagination matches the Lulu interior page-for-page.

---

## Open items for production

- The colophon currently reads `Copyright © 2026. All rights reserved.` pending a decision on the institutional rights-holder.
- Lulu reports an exact spine width once the page count is locked. Build the cover with `--input spine-mm=…` to match if it differs from the computed 17.39 mm.
- ISBN assignment + copyright registration sit outside the source.
- The human-reviewer verification pass against the rubric in [verification-log.md](verification-log.md) is a quality gate, not a print blocker — it can run in parallel with the Lulu pre-press proof.

---

## References

- Project context and methodology: [METHODOLOGY.md](METHODOLOGY.md)
- Editorial history and audit record: [AUDIT.md](AUDIT.md)
- Per-case verification log: [verification-log.md](verification-log.md)
- LENS Companion source: [lens-companion.typ](lens-companion.typ)
- LENS positioning argument and program docs: `../lens_program/` (v2.1)
