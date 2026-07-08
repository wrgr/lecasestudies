# Capability Matters — A Casebook for LENS

A printed casebook for the **Learning Engineering for Next-Generation Systems (LENS)** specialization in the Learning Design & Technology program at the Johns Hopkins University School of Education. **205 real cases** in which human capability was the critical system parameter — failures, paired-intervention successes, and frontier cases — organized topically in seven parts (Defense deliberately in the middle; a dedicated Disaster Prevention & Recovery part reads its cases pre → post), each split into What Fails / What Works — and the Frontier, and examined through the LENS v2.1 framing of capability as the interface between operator requirements and system impact, and agency as a design constraint on every intervention.

Built with **Typst**. One source renders **eleven outputs**: the 8 × 10 casebook in three editions (print / digital / proof), the new **8 × 10 LENS Companion** (concentration documentation + crosswalks + per-case references on white digital paper), two summary editions (US Letter + Half-Letter), and the Lulu cover wraps.

---

## Status — print-ready, June 2026

The first edition is structurally complete and reproduces from source via `bash scripts/build.sh`.

| Output | Size | Pages | Notes |
|---|---|---|---|
| `capability-matters-print.pdf` | 8 × 10, grayscale, 3 mm bleed | **915** | Lulu production interior |
| `capability-matters-digital.pdf` | 8 × 10, color, cream | 915 | screen / PDF distribution |
| `capability-matters-proof.pdf` | 8 × 10 on US Letter, trim marks | 915 | office-printer proof, paginates identically to print |
| **`capability-matters-lens-companion.pdf`** | **8 × 10, white** | **139** | concentration docs + crosswalks + per-case references |
| `capability-matters-overview.pdf` (+ proof) | US Letter, 2/page | 115 | summary edition |
| `capability-matters-overview-half.pdf` (+ proof + print interior) | Half Letter, 1/page | 215 | summary edition |
| `cover-print.pdf` | 8 × 10 wrap | — | Lulu cover, spine **56.82 mm** |
| `cover-overview-half.pdf` (+ split) | Half Letter wrap | — | summary covers, spine 13.41 mm |

All editions share one measure and type size, so **proof pagination is identical to print** — what you proof is what Lulu prints. The companion uses the same trim and a separate white-paper visual layer; on the shelf the two stack as a matched pair.

Integrity at print: `bash scripts/check-cases.sh` reports **205 cases, 0 failures**; all cross-references in range 1–205; all slugs unique; all non-closing cases carry induced + lens + CLO anchors; no stale v1 terminology in any rendered output.

For the intellectual framing behind the casebook — the capability interface, agency as a design constraint, gap attribution, the Practice Flywheel — see [METHODOLOGY.md](METHODOLOGY.md). For the running editorial history — v2.1 adoption, the chapter restructures (10-chapter competency org, then the July 2026 topical reorganization), the references validation pass, all corrections — see [AUDIT.md](AUDIT.md). For the per-case manual-review track scaffolded for the human reviewer — including the rubric, the workflow, and a 205-row table with six of seven check columns auto pre-filled — see [verification-log.md](verification-log.md).

---

## Repo layout

```
.
├── book.typ                       # main entry — the casebook (print / digital / proof)
├── lens-companion.typ             # the LENS Companion (--input view=companion)
├── overview.typ / overview-half.typ  # the summary editions
├── lib/
│   ├── theme.typ                  # mode flags, page geometry, palette, type sizes
│   ├── components.typ             # eyebrows, domain tags, mode chips, sources, overview-entry …
│   ├── case.typ                   # case template — emits metadata + body; view=companion mode emits metadata only
│   ├── chapter.typ                # full-bleed chapter divider
│   └── diagrams.typ               # code-generated case diagrams (cetz); v2.1 five-competencies labels
├── frontmatter/
│   ├── title.typ                  # half-title / title / colophon
│   ├── introduction.typ           # framing-first: thesis · cost of gap · engineerable discipline · method · the analytic lens (v2.1) · how to read
│   ├── howto.typ                  # how to use this book
│   └── matrix.typ                 # dynamic 205-case matrix (queries <caseinfo>)
├── chapters/                      # 14 chapters, topical: 7 parts × {fails, works+frontier} — ch1a … ch7b + closing-case.typ
├── backmatter/
│   ├── domain-index.typ                 # dynamic — cases by primary domain
│   ├── course-index.typ                 # dynamic — cases by LENS course
│   ├── appendix-clo-courses.typ         # CLO + course coverage (v2.1)
│   ├── appendix-references-by-case.typ  # per-case references with Retrieved-from lines (queries <caseinfo>)
│   ├── about-lens.typ, editors.typ      # one-page program block + editor bios
│   └── references.typ                   # Introduction works-cited + broader reading list
├── cover/                         # 8 × 10 Lulu wrap + Half-Letter summary wrap
├── fonts/                         # bundled Instrument Serif + DM Sans
├── scripts/
│   ├── build.sh                   # build all 11 outputs + covers
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

- [Typst](https://github.com/typst/typst) ≥ 0.13
- `ghostscript` — flattens any residual color literals so production interiors are true grayscale
- `poppler-utils` (`pdfinfo`) — used to compute live spine widths

Fonts ship under `./fonts/`. If they go missing, run `./scripts/fetch-fonts.sh`.

### Commands

```bash
bash scripts/build.sh         # all 11 outputs + covers (the canonical full build)
make print                    # 8 × 10 grayscale interior (Lulu)
make digital                  # 8 × 10 color edition
make proof                    # 8 × 10 on US Letter with trim marks
make cover                    # 8 × 10 Lulu wrap (spine computed from live page count)
make check                    # case-integrity check (page count, citation parity)
make clean
```

### Build modes (Typst input flag)

```bash
typst compile --font-path fonts --input mode=<MODE> book.typ <out>.pdf
typst compile --font-path fonts --input view=<VIEW> <entry>.typ <out>.pdf
```

| `mode` | Page size | Color | Purpose |
|---|---|---|---|
| `print` | 8 × 10 + 3 mm bleed | grayscale | Lulu production interior |
| `digital` | 8 × 10 | color, cream backdrop | screen / PDF (default) |
| `proof` | US Letter, 8 × 10 centered + trim marks | grayscale | print at 100% to review |

| `view` | Entry file | Purpose |
|---|---|---|
| `book` (default) | `book.typ` | full casebook |
| `companion` | `lens-companion.typ` | LENS Companion — case bodies suppressed; metadata-driven indexes + crosswalks render |
| `overview` | `overview.typ` | US Letter, two cases per page |
| `overview-half` | `overview-half.typ` | Half Letter, one case per page |

All mode/trim/palette/typography decisions are centralised in `lib/theme.typ`. The `view=companion` branch is in `lib/case.typ` — each case emits its metadata block and skips the body so the companion's indexes and per-case references appendix render against the same source as the book.

### Grayscale guarantee

Production builds use two layers:

1. The named palette swaps to L\*-tuned grays in `lib/theme.typ` so the case header, taxonomy chips, domain pills, eyebrows, and rules emit meaningful gray values from Typst directly.
2. A ghostscript pass on the production output flattens any hardcoded `rgb()` literals (notably inside `cetz` diagrams) to true grayscale via `-sProcessColorModel=DeviceGray -sColorConversionStrategy=Gray`.

`gs -sDEVICE=inkcov` reports 0/0/0/K coverage on every production page.

---

## Cover

A single 8 × 10 Lulu wrap — front, spine, and back on one sheet — built from `cover/cover.typ`. The spine width is computed from the live `print` page count (~0.0621 mm/page on cream stock) and passed in by `scripts/build.sh`. The 915-page interior produces a **56.82 mm** spine; Lulu may quote-back ±1 mm.

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
- **v2 metadata**: `scale` (`big` | `small`), `evidence-source` (`investigation` | `peer-reviewed` | `program-report` | `practitioner` | `dissertation` | `journalism`), the three anchors (`lens-anchor` like `"D3/PT5"`; `induced-anchor` like `"3.1"`; `clo-anchor` like `"CLO-3"`), `courses` (LEN-course tags surface in the back-matter course index), `coi` (optional — renders a gold "Disclosure" block under the title), `evidence-flag` (optional — renders a blue "Evidence tier" block with the standing "future validation ongoing" language).

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

The `proof` edition is the review artifact: the grayscale print page centered on US Letter with an 8 × 10 trim outline and corner crop marks. Print it at 100% (no scaling) on any office printer — it centers on the sheet and shows exactly where the production book trims. Because proof shares print's measure and type size, its pagination matches the Lulu interior page-for-page.

---

## Open items for production

- The colophon currently reads `Copyright © 2026. All rights reserved.` pending a decision on the institutional rights-holder.
- Lulu reports an exact spine width once the page count is locked. Build the cover with `--input spine-mm=…` to match if it differs from the computed 56.82 mm.
- ISBN assignment + copyright registration sit outside the source.
- The human-reviewer verification pass against the rubric in [verification-log.md](verification-log.md) is a quality gate, not a print blocker — it can run in parallel with the Lulu pre-press proof.

---

## References

- Project context and methodology: [METHODOLOGY.md](METHODOLOGY.md)
- Editorial history and audit record: [AUDIT.md](AUDIT.md)
- Per-case verification log: [verification-log.md](verification-log.md)
- LENS Companion source: [lens-companion.typ](lens-companion.typ)
- LENS positioning argument and program docs: `../lens_program/` (v2.1)
