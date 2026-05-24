# Capability Matters — Pre-Print Status & Audit

This document is the running record of the citation audit, factual
review, editorial passes, and the punch list of remaining items
between editorial completion and press-ready proof for **Capability
Matters: A Casebook (First Edition, 2026)**.

**Current state:** 296-page interior; A5 + 3 mm bleed; both screen
(cream backdrop) and print (transparent, for Lulu cream-paper stock)
PDFs build cleanly. Five-pillar Why-LENS diagram, three new cases
(21 Summit Learning, 22 Tennessee Pre-K, 34 ACGME duty-hours),
editor bios, F1/F2 foundations, CLO competency block, and SoS /
disparate-systems language all in. Domain-reviewer findings from
defense, energy/nuclear, aviation, education/AI, healthcare,
pedagogical, legal/fair-use, copy-edit, and reference-librarian
review applied for the highest-priority items; long tail tracked
below.

---

## 2026 restructure — three 8×10 editions + 4-page cited cases (in progress)

The book is being restructured (May 2026). Two changes supersede parts
of the older record above:

1. **Editions.** One trim — **8 × 10 in** — now renders as three
   editions from a single source: `print` (grayscale, 3 mm bleed, Lulu),
   `digital` (color, cream backdrop), and `proof` (the print page
   centered on US Letter with an 8 × 10 trim outline + crop marks, for
   100% office printing). The earlier Half Letter / US Letter / draft
   trims and their covers/targets are retired. (The "A5 / 296-page"
   notes above predate this change.)

2. **4-page cited cases.** Each case is being converted from the 2-page
   spread to a 4-page structure: a five-beat sourced narrative (pages
   1–3) with inline `#cn()` citation markers and a numbered per-case
   reference list at the end of page 3, and the LE Lens on page 4.
   `make check` enforces, per converted case: exactly 4 pages, verso
   start, references on page 3, and **marker count == reference count**.

### Chapter 1 — conversion audit notes (8/8 cases converted & passing)

Cases sourced by synthesis across primary investigations + reputable
secondary reporting. Accuracy corrections and flags made during
conversion:

- **Case 1 (Fitzgerald/McCain).** Corrected the casualty split to
  **7 (Fitzgerald) / 10 (McCain)** — the prior text's "8 / 9" was wrong.
  Corrected the McCain NTSB report to **NTSB/MAR-19/01** (the prior
  "MAR-20/01" was wrong); Fitzgerald is NTSB/MAR-20/02. Added the
  touch-screen ship-control console as an interface failure.
- **Case 26 (F-35).** Replaced several unverified specifics with
  figures confirmed in GAO-23-105341 (Sept 2023): mission-capable rate
  **~55% (March 2023)**; depot turnaround **~72 days average**;
  lifecycle cost **>\$1.7T (~\$1.3T O&S)**; **10,000+** components
  awaiting repair. ⚠️ The prior text's "141-day depot turnaround,"
  "~1,000 F-35A maintainer shortfall," "24 of 68 tasks," and "depot 6
  years behind" were **not re-verified**; reinstate only with a sourced
  citation.
- **Case 33 (Fratricide).** Reframed the "2% historical baseline":
  Shrader's <2% figure (Amicicide, 1982) is **contested** — later
  analyses put the historical rate nearer 10–15%, and Shrader reportedly
  retracted it. Desert Storm figures (35/146 KIA, 24%; 72/467 wounded,
  15%) per USNI Proceedings (1994). ⚠️ Per-incident casualty counts
  (Khafji "7 Marines"; Warrior "9 British") **vary across sources**; the
  combat-ID reform paragraph is synthesized from secondary analyses.
- **Case 3 (AF447).** Removed the prior text's specific BEA
  recommendation numbers ("FRAN-2012-041/-045/-046") pending
  re-verification; cite the BEA final report's recommendations
  generally instead.
- **Quotes marked "Paraphrasing"** where verbatim wording was not
  re-confirmed against the source: iCOMPARE conclusion (Case 34), the
  GAO F-35 maintenance line (Case 26), the AAIB mental-model line
  (Case 30), and the GAO Marine Corps readiness line (Case 9).

---

## Status snapshot

| Category                                          | Resolved | Outstanding |
|---------------------------------------------------|---------:|------------:|
| Quotes confirmed verbatim                         | 27       | 0           |
| Quotes reworded as paraphrase                     | 47       | 0           |
| Bibliographic corrections                         | 8        | 0           |
| NTSB / GAO report numbers                         | 21       | 1 (scope)   |
| Named inquiry citations                           | 16       | 0           |
| In-body quoted phrases                            | 13       | 0           |
| References with DOI / URL / ISBN                  | 50       | ~16 trade   |
| 9 expert reviews dispatched + findings applied    | 9        | partial tail|
| Five-pillar framework + Why-LENS diagram          | done     | 0           |
| Three new cases (21 / 22 / 34)                    | done     | 0           |
| Editor bios (both verified, single-paragraph)     | done     | 0           |
| F1 / F2 foundations + five CLO block              | done     | 0           |
| Legal protective blocks in colophon               | done     | 0           |
| Copyright 2026                                    | done     | 0           |
| Lulu cream-paper workflow (dual PDF build)        | done     | 0           |
| §VI JHU/SoE ecosystem expanded                    | done     | 0           |

---

## Resolved in this iteration

### Five-pillar / "Why LENS" framework
- §V section retitled "Why LENS · the five pillars".
- New cetz Why-LENS diagram with outline icons (target reticle,
  building, node graph in orange, bullseye, circular arrow) at the
  top of §V. Mirrors the editors' canonical slide.
- Five pillars: **Mission Literacy · JHU Ecosystem · Intersectional
  Expertise · Capability Focus · Flywheel Iteration**.
- The methodology itself remains named "the Practice Flywheel"
  wherever the cycle Identify → Activate → Prototype → Analyze →
  Transition is described.

### Five CLO competency block + LENS differentiator phrases
- §V follows the pillar callout with a paired block: **"what LENS
  graduates can do · the five competencies"**, listing CLO-1 through
  CLO-5 verbatim from the LENS Objectives doc.
- Three differentiator phrases surfaced in bold once each: *within
  and across disparate systems*, *speed and scale*, *decision-grade
  evidence*, *gap attribution between learning, system design, and
  organizational performance problems*.

### Three new cases — closing the 21 / 22 / 34 numbering gap
The book now contains 100 cases:
- **Case 21 — Summit Learning / Personalized Learning Rollout** (Ch 5).
- **Case 22 — Tennessee Voluntary Pre-K Study** (Ch 5; Lipsey et al.
  RCT and the field's failure to absorb the finding).
- **Case 34 — ACGME 80-Hour Resident Duty-Hour Reform** (Ch 1;
  FIRST + iCOMPARE trials, capping the input vs. engineering the
  capability).

### Editor bios (both now verified)
- **Will**: verbatim user-provided bio.
- **Jim**: verified via primary sources (JHU SoE directory, EDC CV,
  CCT project pages); replaces the placeholder version.
- About-the-editors page tied to the five pillars.

### LDT / SoE record in §VI
- New "the record at Johns Hopkins" subsection leads with SoE,
  names CTY, CRRE, IEP, LDT program lineage; APL framed as
  collaborator providing operational proving grounds; closes with
  the SoE-and-applied duality embodied in the editors.
- Adjacent-Hopkins paragraph names Armstrong Institute, BSPH,
  Whiting, Krieger Cognitive Science, Berman Institute as part of
  the institutional environment (no formal partnership claimed).

### Communication, translation, and integration within and across disparate systems
- §III new subsection with case examples (Mars Climate Orbiter 54,
  Tenerife 12, Patriot 19, Eagle Claw 46, 9/11 86, 737 MAX 2 as an
  integration case; AlphaFold 98, MICrONS, CRM, Keystone as
  disciplined-translation successes).
- Threading commitments updated to include both this and the new
  "technology aids" thread (XR, LMS, adaptive platforms, ITS, xAPI,
  game-based learning, LLM tutors, high-fidelity simulators).

### Domain-reviewer factual fixes applied
- **TMI (5)**: B&W PWR; PORV command-vs-position clarified; HPI
  throttling; minimal off-site dose.
- **F-35 (26)**: ~1,000 F-35A maintainers per GAO-23-105341;
  ~$1.58T per CAPE 2023.
- **Fratricide (33)**: replaced misattributed figures with DoD
  report numbers; Khafji LAV-25 (7 Marines); Qala-i-Jangi B-52 (3);
  2014 B-1 (5).
- **Mark 14 (45)**: Lockwood as COMSUBPAC; Kahoolawe cliff test;
  Tinosa / Tonan Maru fifteen-hits test.
- **Eagle Claw (46)**: Holloway → JSOC → Nunn-Cohen → USSOCOM
  lineage; Goldwater-Nichols disentangled.
- **Patriot (19)**: 14th Quartermaster Detachment named.
- **Davis-Besse (57)**: "successfully lobbied" softened to OIG's
  actual finding; LOCA characterization moderated.
- **Fukushima (61)**: Hatamura + IAEA reports added alongside
  NAIIC; Jōgan tsunami (869 CE) named.
- **UK A-Level (35)**: grades vs. students; "twice as likely"
  replaced with school-prior mechanism.
- **Robodebt (36)**: notice counts disambiguated; A$1.8B clarified
  as Prygodicz class action; suicide attribution rephrased to RC
  actual framing.
- **INPO (16)**: "before official accident report" removed;
  utility-funded / no statutory authority noted.
- **INDOPACOM (9)**: retitled "USMC INDOPACOM Training".
- **Sago (59)**: 12 dead / McCloy survived corrected.
- **Upper Big Branch (60)**: Blankenship misdemeanor + felony
  acquittal noted.
- **Texas grid freeze (77)**: 246 official / 700–1,000 academic
  range; gas-fired generation majority.
- **Tenerife (12)**: KLM flight engineer (not first officer).
- **Asiana 214 (44)**: FLCH SPD as autopilot pitch mode; HOLD
  reversion.
- **COMPAS (94)**: ProPublica 23.5% / 44.7% FPRs; Chouldechova +
  Kleinberg impossibility result.
- **AeroPerú (48)**: DGTA → DGAC corrected.
- **Atlas Air 3591 (49)**: Conrad Aska named; PRD timing
  corrected; somatogravic illusion mechanism.
- **TransAsia 235 (50)**: "taxi" → "taxicab on Huandong Viaduct".

### Copy-edit findings applied
- "an edge-case" typo fixed.
- All "(uncited)" / "(uncited; flag for citation)" parentheticals
  removed; "Author summary of X" → "Editors' synthesis of X".
- "(section heading)" parenthetical removed.
- "ACM Communications" → "Communications of the ACM".
- PISTA §V / §VII cohort numbers reconciled (44 + 9).
- "_NYT_" → "_New York Times_".
- Matrix year "1991, 94" → "1991, 1994".
- Date formats normalized ("18 November 2004" → "November 2004";
  "16 June 2020" → "(2020)").
- §III translation paragraph renamed to official LENS phrasing
  ("communication, translation, and integration within and across
  disparate systems").

### Reference / bibliographic
- MICrONS Consortium corrected to *Nature* 640 (2025), 167–179,
  doi:10.1038/s41586-025-08790-w; Gray-Roncal 2026 commentary
  marked "in press".
- Cervantes editorial aside trimmed.

### Production / cover-flow
- Lulu cream-paper workflow: `scripts/build.sh` produces both
  `capability-matters.pdf` (cream backdrop) and
  `capability-matters-print.pdf` (transparent for Lulu cream stock).
- Copyright © 2026 Johns Hopkins University in colophon.
- Three legal protective blocks (public-record disclaimer, fair-use
  § 107 statement, errata channel).
- Practice-Flywheel diagram label overflow fixed (labels outside
  the node dots).
- `why-lens.jpg` exported at 300 dpi for slide / web use.

---

## Outstanding — could be closed inside this print run

### Domain-reviewer tail — RESOLVED this iteration
- **Texas City (56)**: replaced "introduced the concept of process
  safety" with "elevated the distinction... developed over decades
  in the CCPS literature and codified in OSHA's 1992 PSM standard."
- **Boeing Starliner (79)** and **Ariane 5 (80)**: domain tag
  changed from `aviation` to new `space` domain (added to
  theme.typ alongside existing tags). **Challenger & Columbia (6)**
  and **Mars Climate Orbiter (54)** also retagged `space`.
- **GAO-24-107463 scope clarification**: one sentence added to
  Case 9 noting the report covers all services, with the case
  focusing on the Marine Corps strand.
- **Helios 522 (47)**: horn wording made precise (cabin altitude
  >10,000 ft trigger; pressurization selector left in "manual"
  after leak check).
- **Singapore Airlines (91)**: SQ006 framing softened to the
  literal accident facts (closed runway 05R at Taipei Taoyuan
  during Typhoon Xangsane; 83 fatalities).
- **Eagle Claw (46)**: RH-53D selection rationale corrected to
  "range and minesweeping cover story (deniability) rather than
  for their suitability to a desert-rescue mission."

### Healthcare review tail — RESOLVED this iteration
- **EHR/CPOE (25)**: HITECH figure corrected to ~$30B incentive
  payments (was $40B); Han 2005 single-institution caveat added;
  University of Utah / Leapfrog citation replaced with KLAS Arch
  Collaborative (2023).
- **Keystone ICU (14)**: CLABSI (central-line-associated
  bloodstream infections) nomenclature added; tildes added to
  "1,500 lives" and "$75M".
- **WHO Surgical Checklist (13)**: Urbach et al. 2014 NEJM Ontario
  replication caveat added — no statistically significant mortality
  reduction post-mandate; implementation-fidelity framing applied.
- **Medical Errors / Makary (31)**: Shojania & Dixon-Woods (BMJ
  Q&S 2017) methodological critique added; figure framed as
  "anchor evidence for scale" with explicit acknowledgement of the
  ongoing methodological debate; serves as a worked example of
  the gap-attribution problem.
- **Vioxx (88-ish)**: VIGOR (2000) and APPROVe (2004) timing made
  explicit; naproxen-protective-effect misinterpretation framed.
- **Bristol Heart (90)**: year range corrected to "1984 – present"
  to match Kennedy Inquiry coverage (1984–1995 incident period).
- **Radiology AI (95)**: Obermeyer (Science 2019) and Larrazabal
  (PNAS 2020) cross-citation harmonized in body prose.

### Other polish — RESOLVED this iteration
- **Cervantes ASEE editorial flag**: removed per editor
  confirmation of senior-author attribution.

### Still outstanding
- **Mid Staffordshire (58)** framing nit — reviewer comment was
  general; no specific fix identified, current text reads cleanly.
- ~16 trade-book references without DOI (publisher policy; no
  action needed — ISBN serves as identifier).
- Spot pass on British vs. American spelling (manoeuvre vs
  maneuver — context-dependent, OK to leave).
- Widow / orphan control across 100 case spreads (designer pass).

---

## External / administrative (must be done outside the source)

These are not source-editable in the Typst project; they belong to
the pre-press production pipeline:

- **ISBN assignment + copyright registration** (Library of Congress).
- **Lulu pre-press proof**: spine width recalc for the actual final
  page count (currently 296); color-profile / paper-stock
  verification; A5 + 3 mm bleed final spec match against Lulu's
  current paperback template.
- **Cover wrap proof** at the final spine width; cover-art final
  approval; barcode placement.
- **Distribution / catalog setup** if any.

---

## How to print from current source

```sh
bash scripts/build.sh
# produces:
#   build/capability-matters.pdf        screen (cream backdrop)
#   build/capability-matters-print.pdf  print (transparent backdrop)
#   build/cover.pdf                     cover wrap for current page count
# mirrored to repo root
```

Upload `capability-matters-print.pdf` to Lulu, select cream-paper
stock so the physical paper provides the cream tone; the cover
wrap auto-sizes to the current 296-page spine via
`cover/cover.typ`.

---

## Process notes

The casebook was assembled and audited using AI tools as part of an
iterative learning-engineering process. Three batched verification
passes were performed against primary sources, then nine domain /
discipline expert reviews were dispatched in parallel and their
findings applied. The colophon documents this methodology and the
commitment to continuing iteration as feedback arrives. This file
is the persistent record of that process and the punch list for
subsequent printings.
