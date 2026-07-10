# Project memory — LENS / Capability Matters

Loaded into every Claude Code session in this repo. Keep it short and load-bearing: layout, pointers, binding rules, current state. Detailed methodology lives in dedicated docs.

## What this repo is

The casebook, the canonical LENS program documentation, and the active v2 research and revision work, co-located so they stay in sync. As of this revision the casebook is `casebook/` (Typst sources for *Capability Matters: A Casebook*, First Edition 2026), the program of record lives in `lens_program/`, and `v2_research/` carries the outputs of the eight-pass case discovery sweep that drives v2 of the book.

## Layout

```
.
├── README.md, CLAUDE.md
├── products/digital/, products/print/      the shipping artefacts (see README "Start here")
├── casebook/         Typst sources (200 cases, 7 topical parts × fails/works, ch1a–ch7b + closing-case), build pipeline, competencies.md (induced framework), verification-log.md, METHODOLOGY.md, AUDIT.md
├── lens_program/     canonical LENS program docs (.docx of record + .md shadows for grep)
└── v2_research/      v2 case discovery + framework revision proposals; 00_case-sweep-v2-{plan,research-brief}.md
```

## Three anchor systems (all tracked per case)

- **Induced 1–8 / 32 sub-competencies** (`casebook/competencies.md`) — bottom-up induction from v1 cases. Analytic scaffold.
- **Canonical LENS 5 / Problem Types 1–6** (`lens_program/1_LENS_Five_Competencies.md`) — curriculum of record at **v2.1 (June 2026)**: Systems Analysis · Iterative Development · **Human-System Collaboration** · Test and Evaluation · Navigating Sociotechnical Constraints, with subobjectives `1.1`–`5.6`. v2.1 reordered D3 (was D5 Machine Teaming, broadened to Human-System Collaboration and moved to position 3) and added 7 named subobjectives (1.5, 2.5, 3.3, 3.4, 4.4, 4.6, 5.6). The `.docx` companion is behind v2.1 pending program-owner round-trip. Prior versions in git history; see `Change Log` in the .md.
- **CLOs** (`lens_program/2_LENS_Objectives_Course_Mapping.md`, v2.1) — five CLOs, one per competency domain (CLO-1 through CLO-5, renumbered under v2.1: CLO-3 = Human-System Collaboration; CLO-4 = Data, Measurement & Evaluation; CLO-5 = Context & Domain Fluency). The four "new CLOs" proposed in `v2_research/01_*` (gap attribution, delegation with revocation, judgment under inadequate evidence, fairness beyond omission) ship in v2.1 as **named subobjectives within the parent CLO** (4.2, 3.3, 4.4, 4.6 respectively), not as parallel top-level CLOs. Course-mapping anchor for syllabi and topic indexing.

They are close but not identical. v2 cases record all three. In the printed case header: LENS primary, induced secondary, CLO carried as the course-mapping anchor (per `v2_research/03_editor_request_memo.md`, A6).

## Canonical docs (read before doing case-level work)

- `README.md` (root) — orientation across the three subfolders
- `casebook/competencies.md` — induced framework, 8 / 32, traceable; preface names a known catastrophe-bias
- `v2_research/00_case-sweep-v2-plan.md` — v2 scoping note (dual-tier floors, binding rules originate here)
- `lens_program/1_LENS_Five_Competencies.md` — canonical five competencies and subobjectives (DO NOT EDIT — source of record; the `.docx` is canonical, the `.md` is a grep shadow)
- `lens_program/2_LENS_Objectives_Course_Mapping.md` — PLOs, CLOs, course-by-course mapping
- `v2_research/01_LENS_revised_competencies_and_CLOs.md` — PROPOSED revisions (4 new CLOs, 1 amended, 4 amended sub-competencies, reframed "decision-grade evidence"); pending program-owner review
- `v2_research/02_complete_case_list_build_reference.md` — the **build list**: ~77 verified v2 candidates with dual anchors, COI/tier/hedge flags, pairing recommendations
- `v2_research/03_editor_request_memo.md` — editor decisions and authored inputs required
- `v2_research/04..10_*.md` — per-pass research backbone
- `casebook/METHODOLOGY.md`, `casebook/AUDIT.md`, `casebook/chapters/*.typ`

## Binding rules for any case-level work

1. **Case format.** Every case is a `case(...)` Typst call with: `number`, **`slug`** (stable persistent ID — kebab-case from title; survives renumbering and re-interleaving; carried in metadata for external citation), `title`, `year`, `domains-list`, `modes-code` (T/D/N/H/G/K letters), `impact`, `kind` ("failure" | "intervention" | "frontier"), `summary`, `sections` (tuple), `beats`, `references`, `le-insight`, `lens-approach`, `reflection-list`, `approaches` (during, after), `courses` (LEN tags), and the v2 metadata fields below.
2. **Scale tag.** `scale:` is either `big` (catastrophic, news-visible — v1 default; back-filled on all v1 cases) or `small` (program-, study-, or micro-intervention-scale — v2 default).
3. **Evidence-source tag.** `evidence-source:` is one of `investigation` | `peer-reviewed` | `program-report` | `practitioner` | `dissertation` | `journalism` (the last for the weaker-evidence supplemental pass).
4. **Three anchors per case.** Every v2 case carries an `induced-anchor:` (e.g., `"2.4"`), a `lens-anchor:` (e.g., `"D3/PT5"`), and a `clo-anchor:` (e.g., `"CLO-3"`). All three sit on the `case(...)` metadata; LENS is primary in the printed header; induced is secondary as the analytic scaffold; CLO carries the course-mapping anchor for syllabi. **Under v2.1, lens-anchor and clo-anchor codes follow the v2.1 numbering** (D3/CLO-3 = Human-System Collaboration; D4/CLO-4 = T&E; D5/CLO-5 = Sociotech). v1-tagged cases are remapped mechanically (D3↔D4 swap; D5→D3; same for CLO) in the casebook-v2.1 sync.
5. **COI disclosure renders prominently under the case title.** When `coi:` is set on a `case(...)` call, the gold-bordered "Disclosure" block renders immediately under the title line, above the Impact rule. Standing COI disclosures (do not smooth away):
   - **CIRCUIT** — an editor of this volume is the senior author of the underlying study; included on the strength of the published peer-reviewed evidence with a deliberately critical editorial framing.
   - **BRAIN Initiative** — research adjacency; the critical retrospective framing is the safeguard.
   - **Johnson school-surveillance study** — shared institution (JHU SOE); included on the strength of the published peer-reviewed evidence.
6. **Evidence-tier flag renders the "future validation ongoing" language.** When `evidence-flag:` is set (`journalism-tier`, `preprint-tier`, `practice-synthesis-tier`, `thesis-pending`, `internal-pm`), a blue-bordered "Evidence tier" block renders under the title with the standing language *"source confidence flagged; future validation ongoing."* Watson (journalism), Coots (preprint), Human Brain Project (journalism), Kirkpatrick (practice-synthesis) carry these flags. Never smooth.
7. **Causal hedges listed in `v2_research/02_*` must survive into drafting.** "Inconsistent measurement," "outcome remains unknown," "RCTs pending," "pricing vs acceptance differ," etc. — never softened.
8. **Dual-tier floors per competency, binding for the v2 sweep.** In *each* of the two scale tiers (`big`, `small`): ≥15 cases AND ≥30% `kind: intervention`. The sweep is not done until every competency meets both floors in both tiers.
7. **Don't edit `lens_program/`.** Those are the canonical source of record. Revisions live in `v2_research/01_*` until adopted, at which point the program owner updates `lens_program/` directly.
8. **No merges to `main` without editor review.** Push to a topic branch under `claude/` (name it `claude/<short-topic-slug>` for the current session's scope) and open a PR; the editor decides when to merge. Don't push directly to `main`.
9. **Induction rule (for any framework re-induction).** Clusters retained only when ≥10 distinct cases support a top-level and ≥3 support a sub. The framework is induced from cases, not anchored to LEN 1–10 or T/D/N/H/G/K modes. (Anchoring of *new candidate cases* to the existing induced framework is expected; anchoring of the framework itself to LEN/modes is not.)

## Current state

- **First Edition, topical organization (July 2026):** **205 cases**, numbered contiguously 1–205 in book order; slugs are the stable IDs. Seven topical parts, each split into *What Fails* / *What Works — and the Frontier* (chapters `ch1a`–`ch7b` + `closing-case.typ`): I Healthcare & Patient Safety · II Education, Training & the Learning Workforce · III Aviation & Aerospace · **IV Defense & National Security (deliberately the middle part)** · V Industry, Energy & Enterprise Systems · **VI Disaster Prevention & Recovery (new area; ordered pre → post: prevention, then response/recovery, with BEFORE/AFTER phase marks)** · VII Algorithms, Governance & Public Systems. `scripts/check-cases.sh` reports 205/0. All cross-references, `verification-log.md` (slug-keyed), and `competencies.md` (name-keyed) re-keyed to this numbering; AUDIT.md July 2026 stage entry is the change record.
- **Edition split (July 2026):** printed **main volume** = 48 selected cases (registry: `casebook/lib/selection.typ`; edit the slug list to re-cut) + **digital-only supplement** (everything else; entry `casebook/supplement.typ`). Global numbering shared; matrix marks supplement cases with °; per-case references appendix ships only in the complete reference build (`book.typ`, edition=full — also what `check-cases.sh` validates) and the Validation & Audit tracker. Products: main print/digital 257 pp (spine ≈16 mm), supplement 594 pp, complete 844 pp internal. Own-work COI cases (CIRCUIT 68, PBIS 95, JHU dashboard 179) are in the main volume by editor decision — disclosures rendered. Maria's modes corrected GD→GN.
- **Covers + front-matter pagination (July 2026):** printed product also ships as `products/print/capability-matters-print-with-cover.pdf` — color front cover + grayscale interior + color back cover, assembled in `build.sh` from a new `layout=split` mode in `cover/cover.typ`. Front matter carries roman folios (vii–xxviii); folios restart at arabic 1 on the Part I divider via `folio-reset: true` on ch1a's `chapter-divider` — the counter/state updates live INSIDE that divider page (flow-level updates between pages silently occupy the next fresh page and flip recto/verso parity book-wide). Front-matter blank leaves are true blanks (`clear-to-recto`/`clear-to-verso` in `lib/components.typ`; front matter only — the cases' trailing `<cmeta>` probes destabilize the parity probe in the main matter). How-to opens on a verso as a facing spread; matrix opens on the next verso; main volume 259→257 pp. Also ships `capability-matters-digital-with-cover-letter.pdf` — the color edition + covers with every 8×10 page centered at 100% on US Letter (new `mode=proof-digital` in `lib/theme.typ`: Letter carrier, color, cream painted on the trim block) for 8.5×11 home printing with accurate text size/layout.
- **Disaster prevention/relief expansion (July 2026):** five cases added to Part VI, completing the relief half of the pre/post arc — 167 Katrina/FEMA, 170 West Africa Ebola response, 171 Hurricane Maria logistics (fails, response phase); 178 UN cluster approach, 179 JHU COVID dashboard (works, recovery phase; **COI rendered: editor leads the APL group that contributed engineering support, editor not personally involved**). `// VERIFY:` comments flag remaining bibliographic re-confirmations.
- **K-12 expansion (July 2026):** six new cases — 60 Houston EVAAS (adjudicated gap-attribution failure), 61 Science of Reading / "Sold a Story" (journalism-tier), 62 Gates Intensive Partnerships / MET, 63 LAUSD iPad CCTP (journalism-tier), 64 Newark / The Prize (journalism-tier), 95 PBIS implementation fidelity (intervention; **shared-institution COI disclosure rendered**; framing is learning-from the implementation literature, never correcting it). `// VERIFY:` comments in source flag remaining bibliographic re-confirmations. inBloom corrected (Gates **and Carnegie** funding; NY March-2014 budget bar; 21 April 2014 wind-down).
- **Program docs (July 2026):** `lens_program/2_*` at **v2.2** — LDT PLOs of record (03-06-2025) verbatim at subobjective grain (PLO-1.1–6.4), PLO-5/6 titles corrected, new §4.1 PLO ↔ CLO support map. `.docx` for docs 1–2 regenerated from `.md` via pandoc; program-owner round-trip of v2.1/v2.2 still open. CLO content unchanged from v2.1.

### Historical state (pre-July-2026, superseded by the above)

- **v1 casebook:** 100 cases, all `big`. Case 74 (Hyatt Regency Walkway Collapse) present in Typst source (`casebook/chapters/ch05b-governance-extras.typ`) but reportedly missing from the latest PDF build — resolve at the build layer before v2 numbering. (Editor memo A1: open.)
- **v2 sweep:** **executed.** ~77 verified candidates in `v2_research/02_*`. The supplemental weaker-evidence pass added 21 candidates in `v2_research/11_*`, **all 21 accepted by editor** (June 2026) for v2 drafting with their `evidence-flag` rendered in print. Total v2 corpus: ~98 candidates against the original ~108 target.
- **Framework revisions:** drafted and grounded in named cases (`v2_research/01_*`). **Adopted for v2** — Will (editor) and Jim Diamond (program owner) aligned. The four new CLOs (gap attribution; delegation with revocation; judgment under inadequate evidence; fairness beyond omission), the amended collaboration-measurement CLO, the four amended sub-competencies, and the reframed "decision-grade evidence" all ship with v2. (Editor memo A5: resolved.)
- **v2 drafting:** **complete at first-draft quality.** All 77 v2 cases drafted at v1 cadence through June 2026 — numbered 101–177 contiguous. Paired-first batch (101–113): TREWS, Epic Sepsis, Bartlett, Coots (preprint-tier), eGFR, pulse oximetry, Hoffman, BRAIN (COI), HBP (journalism-tier), OU, SyRI, Kirkpatrick (practice-synthesis-tier), Blume. Pass-3 physical/medical safety (114–118): SUBSAFE, California nurse ratios, Anesthesia/APSF, CIRAS, iPLEDGE. Pass-4 CIRCUIT + multidisciplinary translation (119–123, 119/120 carry CIRCUIT COI; 119 internal-pm): CIRCUIT proofreading, CIRCUIT workforce, Colorado CTSA, IPE, Impl-sci training. Pass-1 aerospace + standards + transitions + equity (124–139). Pass-2 small-tier (140–149). JIGSAWS + non-US governance + Watson (journalism-tier) + Johnson (standing COI) (150–156). Supplemental 21 (157–177) — all carry evidence-flag rendering "future validation ongoing" under titles. All 77 cases compile together (2.8 MB PDF, ~270 pages); v1 book continues to recompile unchanged. **Next:** wire pilot files into `book.typ`, `overview.typ`, `overview-half.typ`; build all three editions; verify.

## Editor decisions — resolution log

- **A1 — Case 74 numbering baseline.** OPEN. Case 74 is in Typst source; missing from latest PDF build. Resolve at build layer before v2 numbering.
- **A2 — v2 target count.** RESOLVED. Will + Jim aligned: draft all verified candidates plus the accepted supplemental tier.
- **A3 — Watson + Coots evidence-tier handling.** RESOLVED. Include with explicit `evidence-flag` rendered under the title; standing "future validation ongoing" language is part of the render. Coots is drafted (Case 104).
- **A4 — COI disclosure language.** RESOLVED. Standing COI text adopted for CIRCUIT (editor is senior author), BRAIN (research adjacency — drafted in Case 108), Johnson (shared institution). Each renders as a gold-bordered "Disclosure" block under the title.
- **A5 — Framework revisions ship with v2 or precede.** RESOLVED. Ship with v2; program-owner alignment achieved.
- **A6 — Anchor convention in printed header.** RESOLVED, with extension. LENS primary, induced secondary, **CLO carried as a third anchor** for course mapping. All three live in the `case(...)` metadata.
- **B1 — First-person Practice Flywheel accounts.** TODO. To be authored by Will + Jim (not researched). 2–3 accounts targeted for v2; CIRCUIT and ERKS-class efforts are natural sources. Paired with the front-matter "unpacking is the method" reframing.

## Next-phase tasks

0. **TODO — K-12 case source re-confirmation.** Resolve the `// VERIFY:` comments in the six new K-12 case blocks (exact AIR CCTP report titles, LA Times article titles, SET author list, PBIS school count, NYT Newark byline, Hard Words date, opinion pin-cites) and fill their `refs real` / `refs support` columns in `verification-log.md`.

1. **Schema and v1 back-fill — DONE.** `casebook/lib/case.typ` accepts `scale`, `evidence-source`, `lens-anchor`, `induced-anchor`, `clo-anchor`, `coi`, `evidence-flag`. All 100 v1 cases tagged `scale: "big"`; 43 tagged `evidence-source: "investigation"` via the references heuristic; 57 left unflagged for editor judgment.
2. **All 77 v2 cases drafted — DONE** at v1 cadence. Files in `casebook/chapters/v2-pilot*.typ` (15 files). Cases 101–177 contiguous. Numbering is placeholder pending editor decision A1 baseline confirmation.
3. **All five outputs include v2 — DONE.** `book.typ`, `overview.typ`, `overview-half.typ` each carry a Part IV (book) / appended section (overview) of 15 v2 pilot includes in case-number order. Builds verified: print 709pp, digital 709pp, proof 709pp, overview 559pp, overview-half 952pp. v1 cases continue to render and pass integrity checks unchanged.
4. **TODO — v2 case-format integrity reconciliation.** `scripts/check-cases.sh` reports 77 failures across the v2 corpus: each v2 case has 5 inline citation markers (`#cn()`) but most have 4 references (5/4 mismatch), and the v2 prose is dense enough that the LE-Lens insert lands on unit page 4 instead of page 3 (the v1 3-page format constraint). Builds are clean; the failures are format-discipline flags, not compile errors. Two reasonable resolutions, editor's call: (a) tighten each v2 case to the v1 3-page format and add a 5th reference where needed (substantial editing across 77 cases); or (b) update `scripts/check-cases.sh` to allow 4-page cases for v2 (`number ≥ 101` or `scale == "small"`) and add a 5th reference per case (mechanical, scriptable). Option (b) is recommended unless the v1 cadence is a hard print constraint.
5. **TODO — Source re-confirmation pass on flagged items** (per editor memo `v2_research/03_*`):
   - Pass-1 citations v2-101..116 (cases 124–139): editor memo flagged the entire pass-1 set for draft-time re-check. Specific items the subagents flagged: Bateman 1999 paper title/venue (Case 129 EGPWS); PMC12515027 (Case 131 sterile-cockpit); Gándara JPAM exact title/DOI (Case 138); Yu/Lee/Kizilcec exact venue (Case 139).
   - FDA pulse-oximetry 2025 draft guidance (Case 106).
   - BCMA harm-reduction follow-up figure (Case 142).
6. **DEFERRED — First-person Practice Flywheel accounts** (2–3 for v2): authored by Will + Jim, not researched. CIRCUIT, ERKS-class efforts, and the APL-CSSE COVID-dashboard pipeline build (Case 179) are natural sources. Paired with the front-matter "unpacking is the method" reframing.
7. **DEFERRED — Front-matter "unpacking is the method" reframing.** Will to author. Paired with task 6.
8. **A1 — Case 74 build issue — RESOLVED.** Case 74 (Hyatt Regency Walkway Collapse) is in `casebook/chapters/ch05b-governance-extras.typ` and verified to build correctly: `scripts/check-cases.sh` reports 6 refs, 3 pages, pass. The editor memo's "missing from PDF build" was a historical observation; the current build state is intact.

## Realistic drafting pace

77 v2 cases drafted at v1 cadence (about 5 sections + beats + approaches + references + 3 anchors + flags + lens-approach + reflection list per case) via a parallel-subagent strategy. The remaining work is editorial — placement, source re-confirmation, first-person Flywheel commissions, build-pipeline wiring — not drafting. Quality discipline preserved: every case carries the three anchors; standing COI text appears under the title for CIRCUIT (119, 120), BRAIN (108), Johnson (156), JIGSAWS (150, lighter affiliation); evidence-tier flags render for Coots (104, preprint), HBP (109, journalism), Kirkpatrick (112, practice-synthesis), CIRCUIT proofreading (119, internal-pm), Watson (155, journalism), and all 21 supplemental cases (157–177); load-bearing hedges from `v2_research/02_*` preserved verbatim across drafting.

## Useful operations

- **Extract case dossier** (for re-induction or per-tier analysis): Python pattern in session history reads `casebook/chapters/*.typ`, finds balanced `case(...)` blocks, writes `/tmp/case-dossier.md`.
- **Read .docx program docs** via the `.md` shadows in `lens_program/` (kept in sync with the `.docx` when those are edited).
- **Per-tier lift audit:** parse `casebook/competencies.md` for `Cases:` lines under each `### N.N`, cross-reference `kind:` / `scale:` from `casebook/chapters/*.typ`, recompute against the dual floor.

## Things not to do

- Don't edit files in `lens_program/`. Source of record.
- Don't smooth away the load-bearing hedges or COI flags listed in `v2_research/02_*`.
- Don't pad citation lists. Three real sources beat eight stretched ones.
- Don't auto-merge to `main`. Even a clean diff goes to the editor first.
- Don't write planning / analysis / summary documents unless asked. Working from conversation context is the default; intermediate `.md` files only when they have a durable use.
