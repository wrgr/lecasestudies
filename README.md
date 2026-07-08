# LENS / Capability Matters — co-located project repo

The casebook, the program documentation, and the active research and revision work co-located in one repo so they stay in sync.

## Start here

The shipping artefacts sit under `products/`, split by carrier: `products/digital/` for the on-screen PDFs and `products/print/` for the Lulu-bound interiors and their cover wraps. Everything else — Typst sources, planning notes, the canonical program docs of record, the v2 research backbone — lives in `casebook/`, `lens_program/`, and `v2_research/` as described below.

| File | What it is | Read it if you want… |
|---|---|---|
| **[`products/digital/capability-matters-digital.pdf`](products/digital/capability-matters-digital.pdf)** | The casebook, digital — 205 cases, 846 pp, 8 × 10, colour on a cream backdrop | the stories, the analysis, the evidence base for the *capability is a system parameter* argument |
| **[`products/digital/capability-matters-lens-companion.pdf`](products/digital/capability-matters-lens-companion.pdf)** | LENS Companion — 43 pp, 8 × 10, white digital | the framework, end-to-end: the five v2.1 LENS competencies, the CLOs and course mapping, the induced ↔ canonical crosswalk, and the literal text of the `lens_program/` canonical docs (Docs 1–6). Travels with advisory boards, recruiting, prospective students. |
| **[`products/digital/capability-matters-validation-audit.pdf`](products/digital/capability-matters-validation-audit.pdf)** | Validation & Audit tracker — 78 pp, 8 × 10, white digital | the audit surface: every case by primary domain, every case by LENS course, and the full per-case references appendix with a *Retrieved from:* line per source. The verification-track companion to `casebook/verification-log.md`. |
| **[`products/print/capability-matters-print.pdf`](products/print/capability-matters-print.pdf)** + **[`products/print/cover-print.pdf`](products/print/cover-print.pdf)** | The casebook, print interior + Lulu cover wrap — 846 pp, 8 × 10, grayscale, 3 mm bleed; cover spine 50.98 mm | to send to Lulu for the bound first edition |
| **[`products/print/capability-matters-overview-half-print.pdf`](products/print/capability-matters-overview-half-print.pdf)** + **[`products/print/cover-overview-half.pdf`](products/print/cover-overview-half.pdf)** | The half-page summary, print interior + Lulu cover wrap — Half Letter, grayscale | to bind the summary edition (one case per page) for conferences, recruiting tables, leave-behinds |

The casebook makes the case; the LENS Companion is the orientation set someone reads to understand what LENS is; the Validation & Audit doc is the verification surface a reviewer or auditor works through. All shipping artefacts reproduce from one Typst source via `bash casebook/scripts/build.sh`. Intermediate formats (US Letter summary, screen Half-Letter summary, proof editions, the split-format cover) stay inside `casebook/build/` rather than mirroring to `products/`.

## Layout

```
.
├── README.md                              you are here
├── CLAUDE.md                              project memory (loaded by Claude Code)
│
├── products/                              shipping artefacts (the only PDFs at the repo root)
│   ├── digital/                           on-screen PDFs
│   │   ├── capability-matters-digital.pdf            the casebook (colour, cream backdrop)
│   │   ├── capability-matters-lens-companion.pdf     the LENS Companion (white)
│   │   └── capability-matters-validation-audit.pdf   the audit tracker (white)
│   └── print/                             Lulu-bound interiors + cover wraps
│       ├── capability-matters-print.pdf              casebook print interior (grayscale, bleed)
│       ├── cover-print.pdf                           casebook Lulu cover wrap
│       ├── capability-matters-overview-half-print.pdf  half-page summary print interior
│       └── cover-overview-half.pdf                   half-page summary Lulu cover wrap
│
├── casebook/                              Capability Matters: A Casebook — Typst sources and build pipeline
│   ├── book.typ                           the 8 × 10 casebook (print / digital / proof)
│   ├── lens-companion.typ                 the 8 × 10 LENS Companion — concept-facing (concentration docs + crosswalks + the canonical lens_program docs inlined; view=companion)
│   ├── validation-audit.typ               the 8 × 10 Validation & Audit tracker — domain/course indexes + per-case references (view=companion)
│   ├── overview*.typ                      the summary editions (US Letter + Half Letter)
│   ├── chapters/                          205 cases organised topically in 7 parts × {fails, works + frontier} — ch1a … ch7b + closing-case.typ
│   ├── frontmatter/, backmatter/, lib/, cover/, fonts/
│   ├── scripts/, Makefile, build/         build pipeline (the shipping seven mirror into products/; intermediates stay in build/)
│   ├── competencies.md                    induced framework — 8 competencies / 32 sub-competencies, inducted bottom-up from v1 cases
│   ├── verification-log.md                per-case verification log (205 rows, slug-keyed)
│   ├── METHODOLOGY.md, AUDIT.md, README.md
│
├── lens_program/                          canonical LENS program documents (source of record, JHU SOE LDT/LENS — MHEC PP24181)
│   ├── README.md                          orientation; what to verify before external use; status of the .docx round-trip
│   ├── 1_LENS_Five_Competencies.docx + .md (v2.1: Systems Analysis · Iterative Development · Human-System Collaboration · Test and Evaluation · Navigating Sociotechnical Constraints — change log inline)
│   ├── 2_LENS_Objectives_Course_Mapping.docx + .md (PLOs, CLOs renumbered to v2.1, course-by-course mapping, coverage matrix)
│   ├── 3_LENS_Editor_Bios.docx + .md
│   ├── 4_LENS_LECF_Crosswalk.docx + .md  (LENS ↔ IEEE ICICLE LECF nine-domain proposal)
│   ├── 5_LENS_Summary_and_PrePost_Objectives.docx + .md
│   └── 6_LENS_Recruitment_Email.docx + .md
│
└── v2_research/                           the v2 case discovery + framework revision work — outputs of an eight-pass verified-source sweep (ADOPTED; preserved as design rationale)
    ├── README.md                          orientation and ordering
    ├── 00_case-sweep-v2-plan.md           v2 scoping note (executed; preserved as methodology record)
    ├── 00_case-sweep-v2-research-brief.md the standing research brief (largely fulfilled; retained as a methodology record)
    ├── 01_LENS_revised_competencies_and_CLOs.md  ADOPTED with the v2.1 D3 reorder + subobjective-level refinement (see file's STATUS header)
    ├── 02_complete_case_list_build_reference.md  the build list that became the v2 corpus (all candidates drafted)
    ├── 03_editor_request_memo.md          decisions + inputs the editor supplied; preserved for traceability
    └── 04..11_*.md                        per-pass research backbone
```

## Three anchor systems

Each case is tracked under three parallel taxonomies (per CLAUDE.md):

- **Induced competency framework** (8 competencies, 32 sub-competencies in `casebook/competencies.md`) — bottom-up induction from the v1 cases. Numbered `1.1` through `8.4`. The analytic scaffold.
- **Canonical LENS framework** (5 competencies in `lens_program/1_LENS_Five_Competencies.md`, v2.1) — Systems Analysis (D1) · Iterative Development (D2) · **Human-System Collaboration (D3)** · Test and Evaluation (D4) · Navigating Sociotechnical Constraints (D5). Plus six canonical Problem Types (PT1–6). The curriculum of record.
- **CLOs** (`lens_program/2_*.md`, v2.1) — five CLOs, one per domain, with the v2-named subobjectives (gap attribution at 4.2; delegation with revocation at 3.3; judgment under inadequate evidence at 4.4; fairness beyond omission at 4.6; collaboration measurement at 3.4; governance-objection diagnostic at 1.5; narrate/defend iteration at 2.5; cross-regime governance at 5.6). The course-mapping anchor.

The induced 8 fold cleanly into the canonical 5 (D2 has no induced counterpart — the iteration *method* is threaded through cases rather than producing its own cluster). The casebook records all three anchors on every v2 case; the LENS Companion (below) makes the crosswalks explicit.

## Current state — print-ready, June 2026

The first edition is structurally complete and reproduces from source.

**Casebook** — 205 cases organised topically in seven parts (Healthcare & Patient Safety; Education, Training & the Learning Workforce; Aviation & Aerospace; Defense & National Security — the middle part; Industry, Energy & Enterprise Systems; Disaster Prevention & Recovery, read pre → post; Algorithms, Governance & Public Systems), each split into What Fails / What Works + frontier — 14 chapters, closing framing case last. All anchored to v2.1; all cross-references in range. `bash casebook/scripts/check-cases.sh` reports 205/0.

**LENS Companion** — `capability-matters-lens-companion.pdf`, 41 pp, 8 × 10 white digital. The concept-facing companion: the v2.1 five competencies, the CLOs and the course mapping, the induced-→-canonical crosswalk, and the three-anchor convention, plus the literal text of the `lens_program/` source-of-record docs (Docs 1–6) inlined verbatim. Sized to be read end-to-end; designed to travel with advisory boards, recruiting conversations, and prospective students. Built from the casebook source via `--input view=companion`.

**Validation & Audit** — `capability-matters-validation-audit.pdf`, 97 pp, 8 × 10 white digital. The audit-facing companion: cases by primary domain, cases by LENS course, and the full per-case references appendix with a *Retrieved from:* line per source. Pairs with `casebook/verification-log.md` to drive the per-case content-read pass that closes the verification track. Built from the same casebook source.

**Twelve outputs from one source** — `bash casebook/scripts/build.sh`. The seven artefacts marked ✦ mirror to the repo root; the rest stay under `casebook/build/`.

| Output | Size | Pages | Notes |
|---|---|---|---|
| ✦ `capability-matters-print.pdf` | 8 × 10, grayscale, 3 mm bleed | 783 | Lulu production interior |
| ✦ `capability-matters-digital.pdf` | 8 × 10, color, cream | 783 | screen / PDF |
| `capability-matters-proof.pdf` | 8 × 10 on US Letter, trim marks | 783 | office-printer proof |
| ✦ `capability-matters-lens-companion.pdf` | 8 × 10, white | 41 | concept companion — concentration docs + crosswalks + canonical lens_program/ docs |
| ✦ `capability-matters-validation-audit.pdf` | 8 × 10, white | 97 | audit tracker — indexes + per-case references |
| `capability-matters-overview.pdf` (+ proof) | US Letter, 2/page | 113 | summary edition |
| `capability-matters-overview-half.pdf` (+ proof) | Half Letter, 1/page | 316 | summary edition |
| ✦ `capability-matters-overview-half-print.pdf` | Half Letter, 1/page, bleed | 316 | Half Letter summary print interior |
| ✦ `cover-print.pdf` | 8 × 10 wrap | — | Lulu cover, spine 48.62 mm |
| ✦ `cover-overview-half.pdf` | Half Letter wrap | — | Half Letter summary cover, spine 19.62 mm |
| `cover-overview-half-split.pdf` | Half Letter, split | — | front · spine · back, alt format |

**v2.1 framework adoption (June 2026)** — Per program-owner sign-off:
- D3 reorder + rename: what was D5 *Machine Teaming and Adaptation* is broadened to **Human-System Collaboration** and moved to position 3. T&E moves to D4; Sociotechnical Constraints to D5. The order reads as the flywheel: see → build → integrate humans → measure → deploy.
- 7 new named subobjectives (1.5, 2.5, 3.3, 3.4, 4.4, 4.6, 5.6) plus 4.2 renamed *gap attribution* and decision-grade evidence reframed as judgment under irreducible uncertainty.
- Casebook lens/CLO fields and `lens-approach` prose remapped to v2.1 across all cases.

**Editorial passes folded in** — Stage-3 anchoring of 62 previously-unanchored v1 cases (54 STRONG / 8 SOLID, decisions logged in `AUDIT.md`); 10-chapter restructure with single atomic renumber; three wrong-placement fixes (TMI, Vincennes, Texas City BP) caught during Q&A; automated references validation across ~951 references (10 ISSUE-class items all resolved in source).

**Verification log handoff** — `casebook/verification-log.md` is a 205-row table with six of seven check columns auto pre-filled. The seventh (*conclusions reasonable*) is intentionally empty pending a human case-by-case content read. The rubric defines a 5–15 min two-pass review workflow (quality, then content) with a worked example on Case 1. `bash casebook/scripts/verification-status.sh` parses the log and prints overall + per-chapter progress + open issues.

## How to find the next thing to do

- **For the case-by-case verification pass** (the only remaining quality gate before press): `casebook/verification-log.md` for the rubric and the table; `casebook/scripts/verification-status.sh` for progress.
- **For the pre-press handoff to Lulu**: upload `capability-matters-print.pdf` (783 pp) and `cover-print.pdf` (spine 48.62 mm); Lulu may quote-back ±1 mm — the spine-override flag in `casebook/scripts/build.sh` handles a re-cut.
- **For program-doc updates** (CLOs, course mapping, recruiting copy): `lens_program/` is the source of record; change logs are inline at the bottom of docs 1 and 2.
- **For framework rationale or research backbone**: `v2_research/` is preserved for traceability; the proposal (`01_*`) carries an ADOPTED status header naming the two adoption-time refinements.

## Working conventions

See `CLAUDE.md` for the binding rules. Key conventions:

- Develop on a topic branch under `claude/` (e.g. `claude/<short-topic-slug>`); push and open a PR. The editor decides when to merge to `main`. Don't push directly to `main`.
- Every case carries `scale:` (`big` | `small`), `evidence-source:` (`investigation` | `peer-reviewed` | `program-report` | `practitioner` | `dissertation` | `journalism`), and three anchors (induced, lens, CLO).
- COI / evidence-tier / hedge flags from the v2 build list survive into print: gold-bordered "Disclosure" block for COI cases (CIRCUIT, BRAIN, Johnson, JIGSAWS); blue-bordered "Evidence tier" block for journalism-tier / preprint-tier / practice-synthesis-tier / thesis-pending / internal-pm.
- Don't pad citations. Three real sources beat eight stretched ones. (The references validation pass came in at 1.05% ISSUE rate; the bar is the bar.)
- Don't edit `lens_program/.docx` files directly — they need a program-owner round-trip from the `.md`. The `.md` is the working canonical between round-trips.
