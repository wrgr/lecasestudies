# Capability Matters — Pre-Print Status & Audit

This document is the running record of the citation audit, factual
review, editorial passes, and the punch list of remaining items
between editorial completion and press-ready proof for **Capability
Matters: A Casebook (First Edition, 2026)**.

**Current state (July 2026):** 200 cases in seven topical parts ×
{What Fails / What Works — and the Frontier}, 14 chapters + closing
case; 8 × 10 print/digital/proof editions, LENS Companion, Validation
& Audit, and both overview formats all build cleanly;
`scripts/check-cases.sh` reports 200/0. See the July 2026 stage entry
at the end of this file for the topical reorganization, the K-12
expansion (six new cases), and the PLO v2.2 program-doc sync.
Earlier entries below use pre-reorganization numbering — the running
record is historical and is not rewritten.

---

## 2026 restructure — three 8×10 editions + 3-page cited cases (COMPLETE: 100/100)

The book is being restructured (May 2026). Two changes supersede parts
of the older record above:

1. **Editions.** One trim — **8 × 10 in** — now renders as three
   editions from a single source: `print` (grayscale, 3 mm bleed, Lulu),
   `digital` (color, cream backdrop), and `proof` (the print page
   centered on US Letter with an 8 × 10 trim outline + crop marks, for
   100% office printing). The earlier Half Letter / US Letter / draft
   trims and their covers/targets are retired. (The "A5 / 296-page"
   notes above predate this change.)

2. **3-page cited cases (2 + 1).** Each case is converted from the
   2-page spread to a 3-page structure: a shaded ~130-word "In brief"
   summary plus a five-beat sourced narrative with inline `#cn()`
   citation markers fill two pages (references in two compact columns at
   the end of page 2; the case diagram sits on page 2), and the LE Lens
   on page 3. `make check` enforces, per converted case: exactly 3 pages,
   references on page 2, and **marker count == reference count**.
   *(This supersedes an earlier 4-page / 3+1 attempt.)*

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

### Chapters 3–5 — conversion notes

- **Case 11 (V-22 Osprey)** updated to the verified Dec 2025 GAO
  (GAO-26-108905) and NAVAIR review findings, the 2023 Yakushima crash
  (X-53 transmission-gear cracks), and the ~65-fatality / ~17-hull-loss
  record.
- **Case 17 (Bhopal)** death toll is given as a range (thousands
  immediate; 15,000–20,000 total estimates; ~500,000 exposed) because
  figures vary widely across sources — flagged in-text.
- **Case 37 (educational algorithmic bias)** specific magnitudes from
  the Gándara et al. predictive-model work were **not re-verified**; the
  prose was softened to the directional finding and the impact line's
  precise percentages removed. Reinstate exact figures only with a
  confirmed citation.
- Chapters 3–5 cases are otherwise sourced to primary
  investigations (NTSB, CSB, GAO, NRC, Royal Commissions, FERC-NERC,
  court records) plus reputable secondary reporting; quotes left
  verbatim are drawn from those reports, and "Paraphrasing" marks any
  attribution not re-confirmed word-for-word.

### Chapter 1 extras (ch01b, cases 43–50) — conversion notes

- All eight converted to the failure five-beat structure. Sourced to
  primary investigations: Colgan (NTSB/AAR-10/01), Asiana 214
  (NTSB/AAR-14/01), Mark 14 torpedo (Blair, _Silent Victory_; Rowland &
  Boyd), Eagle Claw (Holloway Commission; Goldwater-Nichols), Helios 522
  (Hellenic AAIASB 11/2006), AeroPerú 603 (Peru CIAA 1996), Atlas 3591
  (NTSB/AAR-20/02), TransAsia 235 (Taiwan ASC 2016).
- **AeroPerú 603 — VERIFIED.** The Peruvian civil-aviation authority's
  accident investigation board issued its final report in **December
  1996**, with NTSB/FAA/Boeing/Rolls-Royce participation; reference firmed
  up accordingly. (Agency naming varies across sources — DGAC / DGAT;
  there is no public report serial number.)
- **Atlas 3591 PRD phasing — VERIFIED.** FAA PRD final rule published
  **10 June 2021** (_Fed. Reg._); subpart B/C compliance from **June
  2022**; historical records before 2015 due, and concurrent PRIA
  compliance ending, **9 September 2024**. The "2021 → 2022 → 2024" framing
  in Case 49 is correct; the reference now states the specific dates.

### Chapter 7 (evidence gap, cases 31, 83–87) — conversion notes

- Sourced to primary documents: Makary & Daniel (_BMJ_ 2016) and
  Shojania & Dixon-Woods (_BMJ Q&S_ 2017) for medical error; DOJ/FCA
  settlements + Wheatley Review for LIBOR; the 2011 Special Investigators
  report for APS; SEC OIG-509 (2009) for Madoff; the 9/11 Commission
  Report (2004) for intelligence sharing; VIGOR (NEJM 2000) / APPROVe
  (NEJM 2005) / Graham Senate testimony for Vioxx.
- Quotes verbatim where drawn from the named report; "Paraphrasing" marks
  Wheatley, the Atlas/Madoff-adjacent lines, and the Graham testimony.

### Chapter 8 (interventions, 15 cases) — conversion notes

- Intervention five-beat structure. Sourced to primary studies: CRM/CAST
  (FAA AC 120-51E; CAST reports), Keystone (Pronovost _NEJM_ 2006), INPO
  (Rees, _Hostages of Each Other_; Kemeny Commission), WHO checklist
  (Haynes _NEJM_ 2009; Urbach _NEJM_ 2014 null result noted), Navy SWO
  reform (GAO-21-168 — evidence-of-effect explicitly flagged as
  outstanding), Korean Air (NTSB KAL 801), Andon (Liker; Spear & Bowen),
  TeamSTEPPS (AHRQ 3.0), Rickover (Polmar & Allen; GAO), GSU (Renick &
  Strom), Cognitive Tutor (Anderson et al.; RAND), Tylenol, ASRS, Bristol
  (Kennedy Inquiry), Singapore Airlines (Taiwan ASC SQ006).
- ⚠️ Andon "majority resolved within a minute" softened from the prior
  prose's specific "4.2 minutes average" (not re-verified). Several
  quote-sources are "Editors' synthesis" where no single verbatim source
  exists (CRM, TeamSTEPPS, Korean Air, Cognitive Tutor); these are
  flagged in-text and the references list the underlying primary works.

### Chapter 9 (Human-AI frontier, cases 92–100) — conversion notes

- Frontier five-beat structure (The Shift / What Is Emerging / The
  Capability Question / Early Evidence / Open Problems). Sourced to
  primary documents and peer-reviewed work: NTSB HAR-17/02 & HAR-20/01 +
  NHTSA SGO/ODI for Tesla; CPUC/DMV decisions + Quinn Emanuel report for
  Cruise; ProPublica (2016) + Chouldechova / Kleinberg-Mullainathan-
  Raghavan for COMPAS; Larrazabal (_PNAS_ 2020) & Obermeyer (_Science_
  2019) for radiology/clinical AI; JAMA editorials + Sallam for clinical
  LLMs; Lum & Isaac + Richardson-Schultz-Crawford for predictive
  policing; Jumper et al. (_Nature_ 2021) & Varadi et al. for AlphaFold;
  Peng/Pearce/Sandoval/Dell'Acqua for AI coding.
- ⚠️ These are **live, ongoing** cases: figures (e.g. "dozens of Tesla
  Autopilot fatalities") reflect NHTSA SGO data as of conversion and will
  drift; the frontier cases should be re-checked before each printing.
  Quote-sources marked "Editors' synthesis" (radiology AI, clinical LLMs)
  paraphrase a body of work rather than one verbatim line. Case 100 is
  intentionally open/forward-looking; its "references" point to the
  discipline's literature and the volume itself rather than to an incident.

### Independent citation & quote verification pass (all 100 cases)

An independent fact-check was run across all nine chapters — every case's
direct quotes (verbatim wording + attribution), citation identifiers, and
headline statistics checked against authoritative web sources rather than
the book's own text. The pass confirmed the large majority of citations,
report numbers, and quotes as correct. The following corrections were
applied:

- **Case 10 (Healthcare.gov):** "29,000 enrollments in two months" replaced
  with the documented "~27,000 federal-marketplace enrollments in the first
  month" against a 7M first-year target.
- **Case 14 (Keystone ICU):** cost saved corrected \$75M → **~\$100M** (the
  widely reported 18-month figure; \$75M was unsupported).
- **Case 16 (INPO):** dropped the unverified attribution of "smugness" to
  the _Bulletin of the Atomic Scientists_; now attributes the pre-TMI
  "mindset" of complacency to the Kemeny Commission.
- **Case 23 (Korean Air):** KAL 801 death toll 229 → **228** (NTSB AAR-00/01).
- **Case 28 (Rickover):** the "people, not organizations… get things done"
  quote re-attributed from "Congressional testimony, 1979" to Rickover's
  **"Doing a Job," Columbia University, 1982** (its actual source; verbatim).
- **Case 33 (Fratricide):** standardized the Desert Storm KIA figure to
  **35 of 146** (USNI _Proceedings_); the impact line had said "of 148."
- **Case 37 (ed. predictive analytics):** corrected a conflated citation —
  the JPAM (2025) racial-calibration-bias paper is **Bird et al.**, while
  the **Gándara et al.** work is _AERA Open_ (2024); both now cited
  correctly. Baker & Hawn pull quote restored to its verbatim wording
  ("educational systems"), venue added (_IJAIED_ 2021).
- **Case 45 (Mark 14 torpedo):** "fifteen hits produced a single
  detonation" corrected to the accurate USS Tinosa fact — a string of
  torpedoes that **struck a stopped ship and failed to detonate** (the
  famous run of duds).
- **Case 51 (Ford Pinto):** the diagram caption no longer asserts the "\$11
  cost-benefit" story the case explicitly debunks; reframed as the myth.
- **Case 54 (Mars Climate Orbiter):** loss figure corrected \$327M / "~\$300M"
  → **~\$125M** (the orbiter; \$327.6M was the two-spacecraft program total).
- **Case 57 (Davis-Besse):** NRC OIG report re-dated 2003 → **2002**
  (Case 02-03S, Dec 2002); the "not adequate to ensure… safety" line, which
  could not be confirmed verbatim, is now paraphrased.
- **Case 62 (Northeast Blackout):** affected population 55M → **50M** to
  match the primary U.S.–Canada Task Force report.
- **Case 63 (Eastern 401):** a reference mislabeled a paraphrase as a
  verbatim NTSB quote; relabeled (paraphrased).
- **Case 65 (CrowdStrike):** Preliminary PIR re-dated August → **July 2024**
  (the August doc is the separate Root Cause Analysis); the pull quote,
  not confirmed verbatim, is now marked "Paraphrasing."
- **Case 66 (Petrov):** "five Minuteman ICBMs" corrected to **one ICBM, then
  four more** (the Oko sequence; type was not identified as Minuteman).
- **Case 68 (Post Office Horizon):** Williams Inquiry Volume 1 re-dated
  2024 → **July 2025** (the Offences Act 2024 is unchanged).
- **Case 70 (Wells Fargo):** the "foreseeable consequence of its incentive
  compensation structure" line, not found verbatim in the OCC consent
  order, is now paraphrased and tied to the regulators' and independent-
  directors' findings.
- **Case 78 (Saturn V):** NASA SP-4206 re-attributed to its real author and
  title — **Roger E. Bilstein, _Stages to Saturn_ (1980)** (was "R. Dunbar,
  _History of the Saturn V_").
- **Case 79 (Boeing Starliner):** the "significant readiness shortfalls"
  quote attributed to a non-existent "2023 GAO Commercial Crew report" is
  now an editors' synthesis; references point to real GAO products
  (GAO-20-121, GAO-19-504) and NASA reviews.
- **Case 83 (LIBOR):** total fines "more than \$10B" → **"more than \$9B"**
  (the figure supported by CFR/regulatory tallies).
- **Case 97 (predictive policing):** Lum & Isaac line was a paraphrase
  presented as a verbatim quote; relabeled "Paraphrasing."
- **Case 99 (AI coding):** corrected a misread of **Sandoval et al. (2023)**
  ("Lost at C"), which found AI assistance did **not** significantly raise
  critical-bug rates (the book had implied the opposite); the unverifiable
  _CACM_ (2024) pull quote is now an editors' synthesis, and the fifth
  reference is the apt Bainbridge, "Ironies of Automation" (1983).
- **Case 13 (WHO checklist):** the "gaps in teamwork… rich and poor" quote
  re-attributed from the NEJM paper to **Gawande (Harvard Gazette, Jan
  2009)**, its actual source.
- **Case 24 (Toyota Andon):** removed the unsupported "85% within 60
  seconds" statistic from the impact line.
- **Case 91 (Singapore Airlines):** vague "IATA OSA retrospectives"
  quote-source changed to "Editors' synthesis."

After the corrections, `make check` passes for all 100 cases (3 pages,
references on page 2, marker/reference parity), and all three editions and
the cover rebuild without Typst errors.

### Primary-source re-check of the three "could not confirm verbatim" quotes

The quotes that had been conservatively paraphrased during the verification
pass were re-checked against the primary documents themselves:

- **Case 65 (CrowdStrike):** the Preliminary Post-Incident Review (dated
  **24 July 2024**) does **not** contain the sentence the book had quoted; it
  instead commits to "implement a staggered deployment strategy for Rapid
  Response Content." Paraphrase confirmed correct.
- **Case 70 (Wells Fargo):** the OCC consent order **AA-EC-2016-66** uses
  "unsafe or unsound … sales practices," not "a foreseeable consequence of
  its incentive compensation structure." Paraphrase confirmed correct.
- **Case 57 (Davis-Besse):** the NRC OIG report PDF has been relocated
  (the old URL now redirects to an OIG listing), so the exact wording
  remained unconfirmable; the paraphrase is retained.

Conclusion: none of the three could be restored as verbatim quotes — the
original wordings do not exist as quoted in the cited sources — so the
paraphrases stand.

### About-the-editors page — photos + one-page fit

The editor page was rebuilt as a two-column **photo + bio** layout and
compacted (smaller heads, tighter leading) so the header, intro, both
biographies, and the sourcing note all fit on **one page**. Author photos
are wired via two variables at the top of `backmatter/editors.typ`
(`gray-photo`, `diamond-photo`), each defaulting to `none` (a sized
placeholder). Drop the files in `backmatter/img/` (`gray-roncal.jpg`,
`diamond.jpg`) and point the variables at them; geometry is identical, so
the one-page fit holds once the photos are added.

### Case enrichment pass (all 100 cases) + audit

Every case was enriched to fill its three-page unit: the five-beat narrative
was lengthened, an **"Approaches to Consider"** block (design-time vs
operational mitigations) was added on the Lens page, and a third reflection
question was added. Reference/sources size was reduced (8.5pt → 7.5pt) and
the narrative leading rebalanced so the longer copy fills page 2 without
overflow. `make check` is green for all 100 (3-page units, marker/ref
parity); Case 73's parity (a dropped `#cn` marker) and Case 2's length were
corrected after enrichment.

The enrichment was applied by parallel per-chapter agents under a strict
rule: **lengthen only by elaborating facts already stated/cited in the case;
introduce no new named people, dates, figures, statistics, or quotes.** A
follow-up audit (per-chapter `git diff` review of every added line against
the case's references) confirmed the rule held. The audit found the
additions overwhelmingly clean; the only factual corrections were:

- **Case 25 (EHR/CPOE):** "Spanning hundreds of institutions" overstated the
  established figure → corrected to "some two hundred hospitals."
- **Case 63 (Eastern 401):** an unsupported "twenty-cent bulb" cost →
  changed to "burned-out indicator bulb."
- **Case 10 (Healthcare.gov):** fixed an "about about" duplication.
- **Case 15 (Navy SWO):** softened a "green dashboards" image to the
  case's own "paper certifications."

No new unsupported numbers, dates, names, or quotes were introduced in any
case; live Chapter 9 figures were not changed. A residual, low-severity
style note (mild thesis-restating in some `approaches: after` items and
section closers) is left for a future human copyedit; it introduces no
inaccuracy.

### Overview "Summary Reference" — section-heading fill

The Half-Letter overview now renders one case per page as the "in brief"
summary plus a *"The full case, in five beats"* heading map (the case's
section labels) and key references + LENS note, filled with `v(1fr)` — using
the case's own structure to orient the reader and use the page. The
US-Letter overview keeps two compact callout entries per page. The Contents
index is sorted by case number.

### 4-page overflow bug — found and fixed (book back to ~3 pp/case)

The enrichment ballooned the print interior to **477 pp** because the
"Approaches to Consider" block + third reflection pushed every case's **Lens
page to overflow onto a 4th physical page** — which `check-cases.sh` did not
detect (it only verified the Lens *started* at start+2, not that it *fit* one
page). Fixes:

- Added a **`lens-end` probe** to `lib/case.typ` and a check in
  `scripts/check-cases.sh` that fails any case whose Lens page spills past one
  page. This is now a true 3-page gate.
- Compacted the Lens page so it fits one page for all 100 cases: Lens body
  10pt → 9pt; tightened inter-block gaps; compacted the Approaches block
  (8pt, tighter); and **dropped "Further Reading" from the Lens page** (the
  per-case citations now live in full on page 2 — the change removes a
  redundancy rather than losing the sources).
- Trimmed the few stubborn cases individually (21, 25 capped to three
  reflections; 28, 31 Lens prose tightened — itself part of the de-pad).

Result: **100/100 pass the stricter check**; interior **373 pp** (≈ 300 case
pages + ~73 of front matter, nine chapter dividers, and back matter), spine
back to 23.16 mm.

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
| F1 / F2 foundations + five LEO block              | done     | 0           |
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

### Five LEO competency block + LENS differentiator phrases
- §V follows the pillar callout with a paired block: **"what LENS
  graduates can do · the five competencies"**, listing LEO-1 through
  LEO-5 verbatim from the LENS Objectives doc.
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
  page count (currently **374 pp**, computed spine **23.23 mm**);
  color-profile / paper-stock verification; **8 × 10 in + 3 mm bleed**
  final spec match against Lulu's current paperback template.
- **Cover wrap proof** at the final spine width; cover-art final
  approval; barcode placement.
- **Distribution / catalog setup** if any.

---

## How to print from current source

```sh
bash scripts/build.sh
# produces (8 × 10 in, single source, three editions):
#   build/capability-matters-print.pdf    grayscale, 3 mm bleed (Lulu interior)
#   build/capability-matters-digital.pdf  color, cream backdrop (screen)
#   build/capability-matters-proof.pdf    print page on US Letter + trim marks
#   build/cover-print.pdf                 Lulu cover wrap (spine from page count)
```

With all 100 cases converted to the 3-page cited format the interior is
**374 pp** and the computed spine is **23.23 mm** (re-checked at build
time from the live page count). Upload `capability-matters-print.pdf`
as the Lulu interior and `cover-print.pdf` as the wrap; select
cream-paper stock so the physical paper provides the cream tone.
Re-run with the cover override if Lulu reports a different spine.

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

---

## Stage 3 — v2.1 anchor assignments (June 2026)

Editorial pass anchoring the 62 v1 cases that lacked `induced-anchor`, `lens-anchor`, and `leo-anchor` fields. Adopted as part of the v2.1 program sync. Closing essay (Case 194 *The Discipline We Build Next*) is intentionally left unanchored.

**Decision process.** Three parallel agents read each case's `summary`, `le-insight`, `lens-approach`, and `beats` fields and proposed (lens, LEO, induced) plus a one-line reason and a certainty rating. The brief required STRONG fit over liberal stretch and the explicit option to return UNCERTAIN. The editor (W. Gray-Roncal) reviewed all 62 assignments and made two overrides on top of the agent output: **Case 8 (ACGME duty-hours)** induced anchor set to 2.3 (transfer to high-consequence settings — FIRST/iCOMPARE tested the intervention's hypothesized gain), the agent having left it 'n/a'; **Case 32 (Fukushima)** induced anchor moved from 6.1 (institution-building) to 7.4 (multi-layer drift), since the load-bearing v1 lesson is the cumulative drift across coupled defenses rather than the missing INPO-equivalent (the institution-building lesson is secondary and lives in Case 107 INPO).

**Outcome.** 54 STRONG / 8 SOLID / 0 UNCERTAIN. SOLID flags are: 7 Military Fratricide, 14 AeroPerú 603, 30 Sago Mine, 41 TSB Bank IT Migration, 85 GIFT adoption gap, 106 Navy SWO Reform (genuine D2+D4 pair), 117 Singapore Airlines, 183 AlphaFold (genuine D4+D5 pair). The two D-pairs are the only multi-domain assignments; everywhere else a single primary D was load-bearing.

**Verification columns** (`reviewed?` and `open questions`) are placeholders for the later human-review pass. The intent is that a reader of any case can see (a) which anchor was assigned and why, (b) whether the anchor + the case as drafted has been editorially verified, and (c) what's still open. Editor guideline checks (clarity, references real, references support the claim, conclusions reasonable, no overclaim) are a separate review track that will attach here when defined.


| # | Title | lens | LEO | induced | certainty | reason (anchor rationale) | reviewed? | open questions |
|---|---|---|---|---|---|---|---|---|
| 4 | Marine Corps Training in the INDOPACOM AOR | `D1/PT1` | `LEO-1` | `1.1` | STRONG | Declared vs engineered priority — capability requirements named but not engineered | — | — |
| 5 | F-35 Sustainment & Maintainer Shortage | `D1/PT1` | `LEO-1` | `1.4` | STRONG | Sustainment-as-requirement: platform fielded ahead of capability infrastructure | — | — |
| 6 | Kegworth / British Midland 92 | `D3/PT6` | `LEO-3` | `3.3` | STRONG | Mental model from prior variant; unreadable mode/vibration display; mode/state transparency | — | — |
| 7 | Military Fratricide — Desert Storm to Afghanistan | `D1/PT1` | `LEO-1` | `1.3` | SOLID | Cross-org integration; spans D1+D4 (missing incident DB); D1 primary | — | — |
| 8 | ACGME 80-Hour Resident Duty-Hour Reform | `D2/PT3` | `LEO-2` | `2.3` | STRONG | FIRST/iCOMPARE tested the duty-hour intervention's hypothesized gain — iteration of an intervention; editor set induced 2.3 | — | — |
| 9 | Colgan Air Flight 3407 | `D4/PT2` | `LEO-4` | `2.1` | STRONG | Evidence/data-flow design: training-failure data existed but did not reach the hiring decision | — | — |
| 10 | Asiana Airlines Flight 214 | `D3/PT6` | `LEO-3` | `3.3` | STRONG | Automation surprise; autothrottle HOLD reversion not annunciated — mode/state transparency | — | — |
| 11 | Mark 14 Torpedo Failures | `D5/PT4` | `LEO-5` | `6.2` | STRONG | Operator-to-institution feedback channel; bureau insulated from operator evidence | — | — |
| 12 | Operation Eagle Claw | `D1/PT1` | `LEO-1` | `1.3` | STRONG | Cross-organizational capability requirement; no standing joint command; built USSOCOM | — | — |
| 13 | Helios Airways Flight 522 | `D3/PT3` | `LEO-3` | `3.1` | STRONG | Ambiguous cue carrying two meanings without differentiation — cue/alert design | — | — |
| 14 | AeroPerú Flight 603 | `D1/PT1` | `LEO-1` | `3.1` | SOLID | Apparent vs actual redundancy at the source; D1 primary for the redundancy-architecture lesson | — | — |
| 15 | Atlas Air Flight 3591 | `D4/PT2` | `LEO-4` | `2.4` | STRONG | Post-deployment surveillance: PRD's partial coverage as measurement-system completeness | — | — |
| 16 | TransAsia Airways Flight 235 | `D3/PT3` | `LEO-3` | `3.1` | STRONG | Wrong-engine pattern recurrence; checklist-driven verification under startle | — | — |
| 18 | Therac-25 | `D3/PT3` | `LEO-3` | `3.1` | STRONG | Safeguard removed without reassigning its load; uninformative MALFUNCTION 54 | — | — |
| 19 | Patriot Missile / Dhahran | `D1/PT1` | `LEO-1` | `1.2` | STRONG | Capability degradation under system change; load-bearing design assumption did not travel | — | — |
| 22 | Mars Climate Orbiter — Unit Mismatch | `D1/PT1` | `LEO-1` | `1.3` | STRONG | Interface-as-requirement across two organizations; boundary had no owner | — | — |
| 26 | V-22 Osprey | `D5/PT4` | `LEO-5` | `7.4` | STRONG | Multi-layer drift; three services parallel without convergence; shortfall normalized | — | — |
| 28 | Davis-Besse Reactor Head Corrosion | `D5/PT5` | `LEO-5` | `5.4` | STRONG | Regulatory capture; oversight layer adopted operator's schedule — change-control | — | — |
| 29 | Mid Staffordshire NHS Foundation Trust | `D4/PT5` | `LEO-4` | `2.1` | STRONG | Measurement-and-reality divergence; no layer verified reports against patients | — | — |
| 30 | Sago Mine Disaster | `D1/PT1` | `LEO-1` | `7.4` | SOLID | Cumulative inadequacy / multi-layer drift; D1 jointly assesses coupled defenses | — | — |
| 31 | Upper Big Branch Mine Explosion | `D4/PT2` | `LEO-4` | `2.2` | STRONG | Measurement engineered as deception (dual books); protect decision-grade evidence | — | — |
| 32 | Fukushima Daiichi | `D5/PT4` | `LEO-5` | `7.4` | STRONG | Multi-layer drift across defenses; editor set induced 7.4 (was 6.1) | — | — |
| 33 | Northeast Blackout | `D3/PT6` | `LEO-3` | `3.3` | STRONG | Silent automation failure; missing meta-monitor / mode-state transparency for grid operators | — | — |
| 35 | EHR / CPOE Implementation | `D3/PT3` | `LEO-3` | `3.1` | STRONG | Interface designed to billing, not clinical workflow; alert/default architecture | — | — |
| 36 | Uber ATG / Tempe Fatality | `D3/PT6` | `LEO-3` | `3.2` | STRONG | Defining LENS human-AI teaming case; monitoring assigned as unsupportable role | — | — |
| 37 | Eastern Air Lines Flight 401 | `D3/PT3` | `LEO-3` | `3.1` | STRONG | Attention as designable parameter; alert prioritization; CRM origin | — | — |
| 38 | Boeing 737 Rudder Hardovers | `D1/PT1` | `LEO-1` | `1.2` | STRONG | Certification process failed to surface unrecoverable failure mode | — | — |
| 39 | CrowdStrike Falcon Outage | `D5/PT4` | `LEO-5` | `5.4` | STRONG | Deployment-pipeline change-control: content treated differently than code | — | — |
| 40 | Stanislav Petrov / 1983 False Alert | `D3/PT6` | `LEO-3` | `3.4` | STRONG | Positive human-in-the-loop case; recoverability via contextual judgment | — | — |
| 41 | TSB Bank IT Migration | `D5/PT4` | `LEO-5` | `4.1` | SOLID | Schedule pressure overrode technical signal; no frontline halt authority | — | — |
| 45 | inBloom | `D5/PT4` | `LEO-5` | `5.1` | STRONG | Purest governance failure; launched without consent/stakeholder engagement | — | — |
| 46 | Healthcare.gov Launch | `D1/PT1` | `LEO-1` | `1.1` | STRONG | Capability mismatch at scale; wrong human capabilities assembled | — | — |
| 49 | Summit Learning / Personalized Learning Rollout | `D5/PT4` | `LEO-5` | `5.4` | STRONG | Pedagogy worked; deployment governance (consent, evidence, exit) not engineered | — | — |
| 50 | Tennessee Voluntary Pre-K Study | `D4/PT5` | `LEO-4` | `2.4` | STRONG | Rigorous measurement returned unwelcome finding; discipline lacked architecture to absorb | — | — |
| 51 | Algorithmic Bias in Educational Predictive Analytics | `D4/PT5` | `LEO-4` | `8.1` | STRONG | Construct-definition (what 'at-risk' means) as load-bearing equity decision | — | — |
| 52 | UK Post Office Horizon Scandal | `D3/PT6` | `LEO-3` | `3.2` | STRONG | Institutional automation bias across two decades; the computer said so | — | — |
| 53 | Theranos | `D5/PT4` | `LEO-5` | `5.3` | STRONG | Fraud exploited the seam between FDA and CLIA regimes; cross-regime governance gap | — | — |
| 58 | Hyatt Regency Walkway Collapse | `D5/PT4` | `LEO-5` | `5.4` | STRONG | Change-control / engineering-licensure review failure | — | — |
| 84 | VA Wait-Time Scandal | `D4/PT5` | `LEO-4` | `2.2` | STRONG | Canonical measurement-as-capability-failure; system gamed and protected institution | — | — |
| 85 | GIFT and the Adoption Gap | `D2/PT4` | `LEO-2` | `1.4` | SOLID | Technology and science work; missing institutional adoption pathway | — | — |
| 86 | xAPI / Total Learning Architecture — Interoperability Gap | `D5/PT4` | `LEO-5` | `5.3` | STRONG | Technical standard exists; cross-org data governance has not materialized | — | — |
| 87 | Implementation Science in Healthcare — The 17-Year Gap | `D2/PT4` | `LEO-2` | `1.4` | STRONG | Meta-case for the discipline: research-to-practice adoption/sustainment | — | — |
| 90 | Ariane 5 Flight 501 | `D1/PT1` | `LEO-1` | `7.2` | STRONG | Re-verifying reused safety-critical code against the new operating envelope | — | — |
| 97 | 9/11 Intelligence Sharing Failures | `D5/PT1` | `LEO-5` | `5.3` | STRONG | Cross-agency integration as engineerable architecture; platform-governance seams | — | — |
| 103 | Crew Resource Management & CAST | `D3/PT3` | `LEO-3` | `4.3` | STRONG | Engineered cockpit's authority gradient + communication protocol | — | — |
| 105 | Keystone ICU / Pronovost Checklist | `D3/PT3` | `LEO-3` | `4.1` | STRONG | Checklist plus institution-backed nurse stop authority | — | — |
| 106 | Navy Surface Warfare Readiness Reform | `D2+D4/PT4` | `LEO-4` | `2.3` | SOLID | Paired training/cultural reform whose teaching point is the missing measurement infrastructure | — | — |
| 107 | INPO and the Nuclear Academy | `D5/PT4` | `LEO-5` | `6.1` | STRONG | Industry-level institution built after catastrophe — cross-org capability is engineerable | — | — |
| 108 | Korean Air Safety Transformation | `D3/PT3` | `LEO-3` | `4.3` | STRONG | Redesigned cockpit authority gradient by changing linguistic medium | — | — |
| 109 | Toyota Production System / Andon Cord | `D3/PT3` | `LEO-3` | `4.1` | STRONG | Cheap artifact plus protected frontline halt authority — inseparable pair | — | — |
| 110 | TeamSTEPPS | `D5/PT4` | `LEO-5` | `6.4` | STRONG | Cross-domain capability transfer with funded implementation infrastructure | — | — |
| 111 | U.S. Nuclear Navy / Rickover Training Model | `D1/PT1` | `LEO-1` | `1.4` | STRONG | Qualification regime as a system parameter sustained across decades | — | — |
| 112 | Georgia State University Predictive Analytics | `D4/PT5` | `LEO-4` | `8.3` | STRONG | Construct definition + human-loop architecture turn prediction into support not gatekeeping | — | — |
| 113 | Cognitive Tutor / Carnegie Learning | `D2/PT5` | `LEO-2` | `2.3` | STRONG | Theory → instrument → RCT → scaled deployment; canonical LE iteration pipeline | — | — |
| 114 | Tylenol Recall | `D5/PT3` | `LEO-5` | `4.4` | STRONG | Pre-committed institutional values operational under crisis | — | — |
| 115 | Aviation Safety Reporting System (ASRS) | `D4/PT2` | `LEO-4` | `4.2` | STRONG | Confidential reporting architecture paired with credible non-punitive use | — | — |
| 116 | Bristol Heart Babies Reform | `D4/PT5` | `LEO-4` | `2.1` | STRONG | Risk-adjusted outcomes registry with publication — measuring the failure mode | — | — |
| 117 | Singapore Airlines Safety Transformation | `D5/PT4` | `LEO-5` | `1.4` | SOLID | Sustained capability investment ahead of regulatory minimums | — | — |
| 178 | Tesla Autopilot — Recurring Fatalities | `D3/PT6` | `LEO-3` | `3.2` | STRONG | Passive monitoring of good-enough automation as an unsustainable human role | — | — |
| 179 | Cruise Robotaxi — Pedestrian Drag | `D5/PT4` | `LEO-5` | `5.4` | STRONG | Pre-committed incident-disclosure governance — gap is institutional, not technical | — | — |
| 182 | Predictive Policing — PredPol | `D4/PT5` | `LEO-4` | `8.1` | STRONG | Construct gap between 'where crime occurs' and 'where arrests are recorded' | — | — |
| 183 | AlphaFold — Protein Structure Prediction | `D4+D5/PT2` | `LEO-4` | `2.1` | SOLID | Preconditions around the model — evidence + governance | — | — |

*Case 194 — The Discipline We Build Next* — closing framing essay; intentionally unanchored.



---

## Stage 4 — 10-chapter restructure (June 2026)

The book is now organized by v2.1 competency × {what fails / what works + frontier} — 10 chapters plus the closing case. Cases are placed by their `lens-anchor` primary D and `kind` field; numbering 1–194 runs in chapter order.

**Chapter sizes (post-fix):**

| Chapter | Cases |
|---|---|
| 1A Systems Analysis — what fails | 16 |
| 1B Systems Analysis — what works + frontier | 11 |
| 2A Iterative Development — the iteration gap *(small + editor essay)* | 4 |
| 2B Iterative Development — what works + frontier | 22 |
| 3A Human-System Collaboration — what fails | 16 |
| 3B Human-System Collaboration — what works + frontier | 12 |
| 4A Test and Evaluation — what fails | 25 |
| 4B Test and Evaluation — what works + frontier | 30 |
| 5A Sociotechnical Constraints — what fails | 31 |
| 5B Sociotechnical Constraints — what works + frontier | 26 |
| Closing — The Discipline We Build Next | 1 |

**Three clear-error placements fixed during the Q&A pass** (anchors corrected, cases moved chapters in the same atomic renumber):

- **Three Mile Island** — `lens-anchor` was `D4/PT4` (T&E); content is a control-room interface case with the audit's recommended `induced: 3.1` (cue/alert). Fixed to `D3/PT4`, `LEO-3, LEO-1`. Moved from 4A to 3A.
- **USS Vincennes** — `lens-anchor` was `D2/PT6` (drafted incorrectly; never corrected by the v1→v2.1 remap because D2 doesn't shift). Mode/state-transparency case. Fixed to `D3/PT6`, `LEO-3`. Moved from 2A to 3A.
- **Texas City BP** — `lens-anchor` was `D4/PT5` but induced `5.4` (change-control / disclosure) is governance, not measurement. Fixed to `D5/PT4`, `LEO-5`. Moved from 4A to 5A.

**On `induced` / `lens` cross-domain linkages** (per editor sign-off, June 2026):

The Q&A pass also surfaced 66 cases where the `induced-anchor` and `lens-anchor` point at *different* domains. This is **not a flag list** — it's the dual-anchor design working as intended: the `lens-anchor` is the primary domain (what the case engineers or fails to engineer), and the `induced-anchor` is the secondary analytic dimension the case *also* evidences. A v2 cue/alert intervention can legitimately carry `lens: D4/PT5` (because the case evaluates the alert system's outcome) and `induced: 3.1` (because the case is analytically also about cue/alert design). Both are correct.

Editor decision: **take the best-shot lens-anchor as primary and let the induced-anchor capture the secondary linkage.** The verification log's *anchor fit* check passes if the lens-anchor is defensible for what the case engineers — even when the induced points at another domain. The reviewer should mark `~` (with the alternative in notes) only if a *different* lens-anchor would be a clearly stronger fit; `✗` only if the lens-anchor is wrong.

The seven cue/alert cases that triggered the highest-volume mismatch (Deepwater 85, Anesthesia/APSF 116, EGPWS 118, TCAS 119, BCMA 120, UI Redesign 125, Alert-Fatigue 126) are kept at `lens: D4/PT5` on the editorial principle that the case teaches the *evaluation evidence* for an alert intervention, with `induced: 3.1` capturing the design-side linkage. A reviewer who reads any of these cases differently is free to mark `~` with a proposed alternative.

The categorized mismatch list is preserved below for traceability:

| Cluster | Count | Description |
|---|---|---|
| Cue/alert (induced 3.x) tagged D4 | 7 | v2 intervention cases evaluating an alert/cue system; D4 primary, D3 secondary. |
| Sociotech induced (5/6/7.x) tagged D1 | 10 | System-change / aging-asset cases analyzed through systems-analysis; D1 primary, D5 secondary. |
| Equity induced (8.x) tagged D5 | 4 | Equity / construct cases at governance scale; D5 primary, D4 secondary. |
| D2 cases with non-2.x induced | 24 | Iterative-development interventions whose analytic dimension is something else (capability req, interface, governance); D2 primary. |
| Other | 21 | Mixed; smaller clusters and one-offs. |

**Verification log artifact.** A separate file `casebook/verification-log.md` carries the per-case manual-review table with editor-guideline check columns (clarity, refs real, refs support the claim, conclusions reasonable, no overclaim, anchor fit, cross-references resolve, verified by, date, notes). The first three columns are populated from the anchor pass; the rest are placeholders. The file's *rubric* section gives the high-school reviewer operational tests + examples per check, and a workflow for reviewing one case end-to-end. Per-case progress is summarized by `scripts/verification-status.sh`.



---

## Automated references validation — pre-handover (June 2026)

Four parallel agents validated all references across the 194-case corpus
against publisher / agency / DOI sources before handing the verification
log to the human reviewer. **Issue rate 1.05% (10 ISSUE / ~951 refs)** —
no large-scale fabrication, mostly DOI typos and author-list precision
fixes on real papers.

### Cumulative

| Batch | Cases | VERIFIED | UNCERTAIN | ISSUE |
|---|---|---|---|---|
| 1 (1–48) | 48 | 180 | 43 | 2 |
| 2 (49–97) | 49 | 213 | 24 | 1 |
| 3 (98–145) | 48 | 214 | 14 | 0 |
| 4 (146–194) | 49 | ~170 | ~40 | 7 |
| **Total** | **194** | **~777** | **~121** | **10** |

### The 10 ISSUE-class items for editor fix

1. **Case 21 (MIL-STD-1472H), Ref 4** — Fitts & Jones cited as "60 pilot-error experiences"; actual paper studies **460**. Typo.
2. **Case 27 (Estonia X-Road), Ref 1** — author + year wrong. "Mission Mystique and the Hiding Hand" chapter is **Kattel & Mergel (2019)** in *Great Policy Successes* (Oxford), not Kalvet/Tiits/Hinsberg (2024).
3. **Case 31 (BlackBerry), Ref 4** — claim of **"$4.4 billion inventory write-down"** is wrong; actual Q2 FY2014 charge was ~$934M. The 4,500-layoffs figure is correct.
4. **Case 68 (Air Canada chatbot), Ref 4** — Solaiman *Computer Law & Security Review* article on the case could not be located. Real commentaries on Moffatt v. Air Canada exist (Lexology, McCarthy Tétrault); recommend swapping the cite.
5. **Case 168 (iPLEDGE), Ref 1** — PMID 21565419 is **Shin, Cheetham, Wong et al. (2011)** *JAAD* 65(6):1117–25, NOT "Brinker, Kornegay, Nourjah, Smith & Reichman" as cited. Wrong author list on a real paper.
6. **Case 169 (Data Privacy / African Continent), Ref 1** — `bjet.13226` author list is **Prinsloo & Kaliisa**, not Prinsloo/Slade/Khalil. Slade and Khalil collaborate with Prinsloo on a *different* 2022 BJET paper. Likely citation mix-up.
7. **Case 188 (Rwanda mHealth), Ref 1** — PMC6429813 lead authors are **Hategeka / Ruton / Law**, not Musabyimana/Lundeen/Sayinzoga as cited. Title and journal match — possible author-list confusion with a related Rwanda mHealth paper.
8. **Case 189 (Japan PMDA SaMD), Ref 1** — medRxiv 2025.10.02.25336333 lists **Kikuchi as lead author**, not Aoki. Author order swap.
9. **Case 191 (NYC LL 144 AEDT), Ref 2** — `doi:10.1145/3630106.3658955` actually resolves to *"Machine learning data practices through a data curation lens"* by Bhardwaj/Gujral/Wu, NOT the cited Yam & Skirpan piece. The intended paper appears to be **"Auditing Work: Exploring the NYC algorithmic bias audit regime"** at `doi:10.1145/3630106.3658959`.
10. **Case 191 (NYC LL 144 AEDT), Ref 3** — `doi:10.1007/s43681-024-00461-2` resolves to *"The mechanisms of AI hype and its planetary and social costs"* by Markelius et al., NOT the cited Wright & Brown "Auditing the auditors." DOI needs correction.

### Notable UNCERTAIN items worth a second look

- **Wachter & Brynjolfsson** JAMA piece cited as 2023 in multiple places (Cases 79, 81, 130) — paper is at JAMA vol 331 (2024 in print, online-first 2023). Pick a convention.
- **VW Dieselgate (Case 92), Ref 3** — case text says "$33B+ in penalties" from 2017 DOJ Plea Agreement; actual DOJ plea was $4.3B, total NA scandal cost ~$23B. Number needs sourcing or correction.
- **Cases 125 + 126** — both cite "Co et al. 2019, JAMIA 26(10):1141"; actual first author is **Hussain MI**. Single parsing slip propagated.
- **Case 143 (Fukushima), Ref 5** — Lochbaum/Lyman/Stranahan 2014 book is real, but first author is **David Lochbaum**, not "C. Lochbaum" as cited.
- **Cases 122, 123, 128** — author lists for Vedula, Freitas, Herodotou papers are incomplete or in wrong order.

### Per-case verification log

The auto pre-fill (June 2026) populated 6 of 7 check columns across all 193 non-closing cases. The student reviewer's primary work is now:
1. The 7th column (*conclusions reasonable*) — fully empty pending case-by-case content review.
2. The 16 `~` flags on *no overclaim* — quick check whether the absolute/counterfactual language is appropriately hedged.
3. The 10 ISSUE-class refs above — confirm + fix.
4. The remaining UNCERTAINs — tighten citation form where the editor agrees.

The 66 `~` flags on *anchor fit* are deliberate — they're the known cross-domain linkages (lens ↔ induced point at different competencies by design). They do not need student adjudication unless the reader strongly disagrees.

---

## Stage: Topical reorganization, K-12 expansion, PLO sync (July 2026)

**Scope.** Full editorial restructure requested by the editor: the book is now organized **topically in seven parts**, each split into *What Fails* / *What Works — and the Frontier*:

I. Healthcare & Patient Safety · II. Education, Training & the Learning Workforce · III. Aviation & Aerospace · **IV. Defense & National Security (deliberately the middle part)** · V. Industry, Energy & Enterprise Systems · VI. Disaster Prevention & Recovery (new area; cases read along the pre/post disaster lifecycle — prevention before the event, response and recovery after) · VII. Algorithms, Governance & Public Systems. Closing case last.

**Numbering.** Cases renumbered contiguously 1–200 in the new chapter order; **slugs remain the stable IDs**. All ~1,150 in-prose "Case N" cross-references were remapped mechanically (two passes: reorg map, then the +5/+6 K-12 insertion shift); the three "Cases 22–76" aging-transition range references were rewritten as explicit lists. `verification-log.md` re-keyed by slug to the new numbering (200 rows). `competencies.md` re-keyed by name (its numbering had drifted from the book's; parenthetical names used as ground truth; two ambiguous numeric refs in the cluster-2 preamble resolved to named cases; a genuine internal collision — dossier "84" used for both VA Wait Times and COMPAS — resolved the same way). **Entries above this one use pre-reorg numbering.** The old→new map is recoverable from git (slug → number diff of this commit).

**New cases (K-12 expansion, six).**
- 60 Houston EVAAS value-added teacher evaluation (failure, G; evidence: federal court record; the adjudicated gap-attribution case)
- 61 Science of Reading vs. balanced literacy / "Sold a Story" (failure, K+T; journalism-tier flag rendered)
- 62 Gates Intensive Partnerships / MET / Hillsborough (failure, G+K; RAND 2018 program evaluation)
- 63 LAUSD iPad / Common Core Technology Project (failure, D+H+G; journalism-tier flag rendered)
- 64 Newark / the $100M Zuckerberg gift, "The Prize" (failure, G; journalism-tier flag rendered)
- 95 PBIS implementation fidelity incl. Maryland scale-up (intervention, T+G; peer-reviewed; **shared-institution COI disclosure rendered under the title**, framing written as learning-from the implementation literature)

Each carries the three anchors, `// VERIFY:` comments in source for the remaining bibliographic re-confirmations, and hedged prose where figures are journalism-reported. inBloom corrected in place (funders now Gates **and Carnegie**; New York barred data sharing via the March 2014 budget provision; wind-down announced 21 April 2014). Atlanta and Summit were already in corpus; Illuminate breach passed over (adds no new mechanism).

**Relocations of framing apparatus.** The "iteration gap" editor's note moved from the old Iterative Development chapter to Part V *What Fails* (Kodak/BlackBerry now anchor it); a new "before and after" editor's note opens Part VI; Part VI chapters carry BEFORE/AFTER phase marks. Introduction §VI, matrix note, and overview frontmatter rewritten for the topical organization; the failure-mode taxonomy and paired-intervention threads retained as cross-part analytic threads.

**Program docs.** `lens_program/2_LENS_Objectives_Course_Mapping.md` bumped to v2.2: the LDT PLOs of record (03-06-2025) reproduced verbatim at subobjective grain (PLO-1.1–6.4); PLO-5/6 titles corrected; new §4.1 PLO ↔ LEO support map (every PLO area has primary support from ≥1 LEO). `.docx` companions for docs 1–2 regenerated from the `.md` (program-owner round-trip still open). LEO content unchanged from v2.1.

**Verification.** `scripts/check-cases.sh`: **200 cases, 0 failures** after the restructure and again after the K-12 insertion. All three book editions and both overviews rebuilt; see README for page counts.

### Addendum (July 2026): disaster prevention/relief expansion

Five cases added to Part VI on the editor's direction, completing the relief half of the pre/post arc; corpus now **205 cases**, renumbered contiguously (slugs stable):

- 167 Hurricane Katrina / FEMA (failure, response; investigation-tier — House "A Failure of Initiative," Senate "A Nation Still Unprepared," Townsend Report; the Hurricane Pam exercise as the stated-but-unengineered requirement)
- 170 West Africa Ebola delayed response (failure, response; Stocking Report, Harvard-LSHTM Lancet panel; IHR paper-compliance vs. real capability)
- 171 Hurricane Maria / Puerto Rico logistics (failure, response; FEMA's own 2017 AAR + GAO-18-472; both mortality estimates carried with methods, divergence preserved)
- 178 UN humanitarian cluster approach (intervention, recovery; HRR 2005 → IASC clusters → Transformative Agenda; evaluations' hedges preserved)
- 179 JHU COVID-19 Dashboard / Coronavirus Resource Center (intervention, recovery; peer-reviewed record + Lasker recognition; **COI disclosure rendered: an editor leads the APL group that contributed engineering support, editor not personally involved**; the sustainment-was-never-structural hedge is load-bearing)

Insertions are chronological within Part VI's post-phase arcs. Downstream renumbering: old 167→168, 168→169, 169→172, 170–174→+3, 175–200→+5 (closing case now 205). verification-log re-keyed (205 rows); competencies.md lists updated (167/170/171 → 1.1; 178 → 6.1; 179 → 2.1). `scripts/check-cases.sh`: **205 cases, 0 failures.**

### Addendum (July 2026): main-volume / digital-supplement split

Editor decision: one printed **main volume** (selected case set) plus a **digital-only supplement** (all other cases), replacing the single 846-page binding. Rationale recorded: a domain split would break the cross-domain recurrence argument; a selected set preserves the whole seven-part arc in miniature. Own-work cases are deliberately included in the main volume with their COI disclosures rendered — the ability to teach our own work outweighs the optics.

- **Selection registry:** `lib/selection.typ` (48 slugs incl. the closing case) — the printed cut is a build-layer list; editing it re-cuts the volumes. Global numbering (1–205) is shared; gaps in the printed sequence intentionally point at the supplement; the matrix marks supplement cases with ° in both editions.
- **Main volume roster:** ~5–7 per part, Part II expanded to 11 for the Education weighting (LENS's home school): I — 1, 5, 6, 19, 20, 26 · II — 45, 49, 53, 60, 61 | 68, 72, 77, 80, 93, 95 · III — 97, 102, 112, 117, 119, 120 · IV — 124, 129, 131, 133, 137, 141 · V — 144, 148, 152, 155, 157 · VI — 161, 164, 167, 173, 176, 179 · VII — 184, 185, 187, 191, 196, 199, 203 · closing 205. Coverage verified: every LEN course has multiple worked examples; delegation-with-revocation carried by 185; learning-science-at-scale by 72/77.
- **Mode-letter review:** the eleven July cases' T/D/N/H/G/K codes re-checked against the legend and the editor memo; Hurricane Maria corrected GD → **GN** (the FEMA after-action report documents known, persisting shortfalls — normalization, not design-out).
- **Apparatus disposition:** main volume keeps full introduction, how-to, full-corpus matrix (° markers), full-corpus domain/course indexes, LEO appendix, About LENS; the per-case references appendix ships only in the complete reference build and the Validation & Audit tracker. Supplement front matter is minimal: title, two-page "argument, briefly" digest, matrix.
- **Products:** print + digital main volume (259 pp; spine ≈ 16.1 mm), digital supplement (594 pp), complete reference edition kept as an internal build (846 pp). `check-cases.sh` runs on the complete build: **205 cases, 0 failures.**

### Addendum (July 2026): corpus critical-accuracy pass — Part I (Healthcare)

Running the website's critical-review prompt back across the printed corpus, one case at a time, verified against primary sources. **Part I complete** (cases 1–44: ch1a *What Fails* 1–10, ch1b *What Works* 11–44). The pass doubles as source re-confirmation — the "What Works" half alone surfaced fabricated figures, wrong author attributions, a mis-named regulatory mechanism, and one conflated-evidence "success." All fixes preserve load-bearing hedges and COI disclosures; `check-cases.sh` held at **205/0** after each wave.

Representative corrections applied: 2 EHR ($40B→$30B; "largest"→"among the largest"); 3 Watson (MD Anderson conflation → Manipal/IBM divestiture); 6 pain bias (222 *white* students; opposite-direction detail restored); 7 VA wait-time (figures + IG could-not-tie-deaths hedge); 29 BCMA (fabricated "80.3%" → transcription errors *eliminated*, 6.1%→0); 30 (Jacobs editorial re-attributed); 31 JIGSAWS ("Ishii" dropped); 33 (Co→Hussain; Russ→Patterson); 34 COMPOSER ("5.0pp readmission" was the bundle-compliance result); 35 (Obermeyer 200M = class annual reach, not one algorithm); 36 (AlphaFold 200M → 2024 DB paper); 38 iPLEDGE (Brinker→Shin; "Pinheiro 2013" fabricated → Collins 2014); 40 (N=221 registrants → 117/46 analytic); 44 Japan PMDA (mechanism is **IDATEN**, not PACMP). Anchor-typo fixes (D4+D4→D4+D3; Domain-3 LEO-4→LEO-3) folded in where they contradicted the case's own metadata.

**Cases flagged weaker / to revisit in a later pass** (editor-directed; non-blocking):

- **41 Implementation-science training — SERIOUS, revisit.** The case's spine ("programs *name* the right goals but far fewer *operationally embed* them") reads an operational-adoption gap into a survey (PMC8826009) that only coded *stated goals* — both tables are open-ended stated-goal frequencies, not adoption measurement. Per editor ruling the operational-gap thesis is retained and the indefensible "14–24%" range was corrected to the actual figures (collaboration/team science 80%; multidisc 46%; program evaluation 38%; CTR competencies 30%; experiential learning 24%; competency-based curriculum 6%). **The interpretive leap from stated goals to operational practice still needs firmer evidence or an explicit reframe.**
- **43 Rwanda mHealth — evidence now conditional/null.** Original prose mis-attributed the finding to "Musabyimana et al. (2019)"; corrected to the real record — Ruton et al. (2018) found uptake rose *only when RapidSMS was paired with added training/supervision/equipment* ("RapidSMS alone was ineffective"), and Hategeka et al. (2019, the GHRP paper the ref list already cited) found *no significant change* (ceiling effects). Reframed as a bundled-intervention case (reinforces the sociotechnical teaching point). **The `evidence-flag: "preprint-tier"` is a misnomer** — both are peer-reviewed; the honest weakness is mixed/conditional/null, not preprint status. Ruton (2018, Health Policy & Planning) should also be added to the reference list. Revisit tag + flag decision open.
- **42 Australian pharmacy technician — unverifiable operational figures.** The three clean before/after pairs (turnaround 18.5→12.3 min; throughput 220→295/shift; errors 2.1%→1.2%) are attributed to the SHPA 2016 role-redesign project, which is a qualitative/strategic White Paper, not a controlled operational audit; none of the three pairs could be located in a primary source. Case hedges heavily (`practice-synthesis-tier`), which mitigates but does not resolve the figure-vs-source-genre mismatch. Revisit for figure provenance.

**Deferred to the separate stale-ref / anchor-consistency sweep:** metadata remaps not folded here (38 `lens-anchor D5/PT5`→`D3/PT5`; 40 anchors omit the D3 the prose leans on; 42 stray induced `4.3`), and stale v2-pilot cross-reference numbers still present in ch1b reference/lens-approach fields ("(121)/(122)/(123)", "Cases 32–132", "IPE (Case 28)" vs "IPE case (122)").

**Case 32 retagged** (not weaker): the UMHC screening redesign is peer-reviewed (Pierce et al. 2020, *Applied Clinical Informatics*), so `evidence-source` moved program-report → peer-reviewed and the `practice-synthesis-tier` flag dropped; the single-institution-QI caveat is carried in prose instead.

### Addendum (July 2026): corpus critical-accuracy pass — Part II ch2a (Education, What Fails)

Cases 45–64 reviewed one at a time against primary sources (two waves; a mid-run rate limit forced a re-run of ~14 cases). Verified clean, no change: 53 inBloom, 60 Houston EVAAS, 62 Gates MET, 63 LAUSD iPad. Corrections applied (all primary-sourced):

- **Stale v2-pilot cross-reference numbers** (systemic across the education corpus): 45 Makary 1→8; 47 & 48 pulse-oximetry 106→26 and Hoffman 107→6; 52 Georgia State 39→80; 55 & 56 Gándara 138→86. (The stale "138 (Gándara)" also survives in Cases 87 and 90 per the C56 reviewer — folded into the deferred consistency sweep.)
- **Anchor typos** contradicting a case's own metadata: 49 D4+D3→D4+D5; 50 D4+D3→D4+D5.
- **Substantive factual corrections:** 50 Wisconsin DEWS — the DPI audit disaggregated accuracy by race only; the "English-learner" subgroup claim was unsupported and removed (6 fields). 56 merit-aid — the data backbone is licensed Peterson's/Common Data Set data, **not federal IPEDS** (New America states it "did not rely on IPEDS"); corrected across ~11 fields. 57 GAO OPM — **there was no 2024 rescission** of the 2011 bundled-services guidance; ED opened a review but reaffirmed the guidance (Jan 2025 DCL); corrected across 6 fields. 58 USC/2U — the wind-down was announced **November 2023**, not "2024" (6 fields). 59 2U securities — consolidated complaint filed July 30 2020 (underlying actions Aug 2019), added the 1933-Act §§11/12/15 claims, and corrected OCERS from "co-lead" to "additional named plaintiff." 54 Summit — Brooklyn protest was a walkout at the Secondary School for Journalism (not an MS 442 opt-out); enrollment 80,000→72,000. 51 Atlanta — indictment year 2013. 46 quote (see below). 61/64 title & citation pin-cites.

**Flagged weaker / to revisit in a later pass** (non-blocking; several need editor judgment):

- **46 algorithmic-bias-in-educational — misattributed marquee quote (EDITOR DECISION).** The pull-quote attributed to Baker & Hawn (2021) is verbatim from Boateng & Boateng (2025, WJARR — a low-tier venue) *summarizing* Baker & Hawn. Options: (a) reattribute the quote to Boateng & Boateng, weakening the source; (b) drop the quotation marks and present it as the casebook's own paraphrase of Baker & Hawn (recommended); (c) source a genuine verbatim Baker & Hawn sentence. Held pending editor's call — NOT yet applied.
- **54 Summit — two issues.** (i) The case reuses inBloom's diagram (`dgm.dgm-inbloom`, line ~1576) — a copy/placeholder artifact; needs a Summit-specific figure or removal. (ii) The "Kennebunk (Maine, RSU 21)" Summit withdrawal (appears 4×) could not be verified in any reporting — possible fabrication; author to confirm the source or cut.
- **58 USC/2U — "3,000 per cohort"** (impact/summary/beats) likely conflates total program enrollment with per-cohort; sources attach "per cohort" only to the earlier 300 figure. Verify against the complaint before print.
- **50 DEWS — "developed in collaboration with University of Wisconsin–Madison researchers"** (§1) not corroborated (sources describe an in-house DPI build); author to confirm or cut.
- **59 2U — non-verbatim quotation** ("intentionally misled investors about declining enrollment projections") de-quoted to a paraphrase (not traceable to the complaint); the narrative still frames the theory as §10(b)/§20(a)-only and could optionally be widened to include the 1933-Act offering claims.
- **Open `// VERIFY:` pin-cites** (source-confirmation pass, not accuracy defects): 63 exact AIR Year-1/interim report title; 63/64 LA Times (Blume) and NJ Spotlight article titles/bylines.

### Addendum (July 2026): corpus critical-accuracy pass — Part II ch2b (Education, What Works)

Cases 65–95 reviewed one at a time against primary sources (three sub-waves). Verified clean: 65, 70, 71, 73, 74, 95 (PBIS — COI intact). Corrections applied (all primary-sourced):

- **Substantive factual fixes:** 69 Duolingo — dataset ~13M traces (not "hundreds of millions"); the "14-day return" metric is fabricated → daily next-day retention (11 fields). 72 ASSISTments — 43 schools / 2,850 students / Maine (not 46 / 3,035 / "multiple states"). 84 Cognitive Tutor at scale — 147 *middle and high* schools; year-2 significance was high-schools-only. 85 OU Analyse — 15 courses (not 9; conflated with a different Herodotou 2019 paper). 91 LALA — only Chile+Ecuador (Mexico fabricated), corrected acronym, "two regimes" not three. 94 African LA — countries corrected (Morocco/Ethiopia fabricated; overwhelmingly South Africa, 10/15). 92 Norway — commission appointed 2021 (2022 is the interim-report year). 93 SkillsFuture — the 87% employment figure is a 2019 WSP survey figure, not a 2024 Year-in-Review headline.
- **Attribution fixes:** 81 Analytics4Action → Rienties et al. 2016 (not Herodotou); 82 MMALA author list (Costa/Andrade fabricated → real 7-author list); 83 SCM introduced in the 2003 book (not 2005); 88 LiveHint assesses *two* dimensions (tone, level of detail), not three; 89 African privacy → Prinsloo & Kaliisa (not Slade & Khalil).
- **Stale v2-draft cross-reference numbers** (systemic): 68 (119→78), 75 (187→88, 186→73), 76 (119/120→78/68), 77 (102→5; 20/101/118/119→20/5/68/78), 78 (Domain 5→3), 79 (113→65), 80 (35/36/37→49/191/46), 86 (105/106/107→25/26/6), 87 (138/105/106/107→86/25/26/6), 88 (25/106/107/156→6/26/25/48), 90 (GAO 159/180→57, Gándara 138→86, Bartlett 103→186), 93 (163→18). 67 minor precision (0.20→0.21 SD). 66 grammar.

**Flagged weaker / to revisit** (editor-judgment; NOT yet applied):

- **82 MMALA — model structure wrong (multi-field rewrite needed).** The case states MMALA has "four dimensions (infrastructure, human resources, ethics, pedagogy)"; the actual model has **five categories — data management, data analysis, pedagogy, ethics, privacy** — with 16 process areas and maturity levels 0–4. The drafter promoted the paper's *motivation* text into the model's dimensions and dropped data-management/data-analysis/privacy. Recurs in ~7 fields; needs a coherent rewrite pass, not inline patches.
- **80 Georgia State — causal conflation (Keystone pattern).** The 32%→54% six-year graduation rise (and gap elimination) is credited wholly to predictive advising, but 32% was 2003 and GPS Advising launched fall 2012 — most of the gain predates it, and GSU attributes it to a *bundle* (meta-majors, Panther Retention Grants, learning communities, block scheduling). Recommend an added hedge distinguishing advising's contribution from the co-occurring reforms (keep the load-bearing element, add the bundle caveat).
- **72 ASSISTments — "minority students benefited more / pre-specified equity outcome"** is not supported by the 2016 trial (which found low-prior-achievement benefited most, in a 93%-white sample); the race-moderator finding is a fragile later-study (Murphy et al. 2020) result. Reattribution spans two studies — editor adjudication.
- **84 Cognitive Tutor — residual smoothing:** sections[2], beats[1], le-insight, and the title ("Year-Two Positive") still present year-2 significance as whole-sample; decide whether to attribute significance to high schools throughout.
- **88 LiveHint — omitted result:** the paper reports "no evidence of harmful biases" alongside the differentiation finding; consider a one-clause hedge.
- **Soft flags (no edit):** 71 "instrument built to measure" overstates a longitudinal application of existing frameworks; 70 "HILS/System" acronym is the editors' framing; 82/92 name/formalization glosses; 76 section-publication venues (TOCHI vs LAK/TLT) unverified; 95 25k-school count + two prose-only citations; 94 Lemmens & Henn 2015→2016 re-confirm.

### Part II checkpoint — editor rulings applied (July 2026, "all rec")

- 82 MMALA: rewritten to the correct five categories (data management, data analysis, pedagogy, ethics, privacy; 16 process areas, levels 0–4) across all affected fields.
- 80 Georgia State: bundled-intervention hedge added to the Evidence section (advising is one component of a decade-long reform bundle; 32%→54% not cleanly attributable to it).
- 72 ASSISTments: minority-benefit finding reattributed to Murphy et al. (2020) with the "fragile in a ~93%-white sample / not powered to estimate" caveat; "pre-specified" framing dropped.
- 84 Cognitive Tutor: year-2 significance attributed to high schools (middle schools n.s.) in the residual fields.
- 88 LiveHint: "no evidence of harmful biases" hedge added.
- 46 (ch2a): misattributed quote de-quoted; kept as the casebook's paraphrase of Baker & Hawn (references "(quoted)" tag removed; quote-source relabeled).
- 54 (ch2a): unverifiable Kennebunk withdrawal cut (4×); placeholder inBloom diagram removed.

### Addendum (July 2026): corpus critical-accuracy pass — Parts III–VII COMPLETE (cases 96–205)

The one-case-per-subagent critical pass, verified against primary sources, now covers **all 205 cases**. Parts III (Aviation, ch3a/ch3b), IV (Defense, ch4a/ch4b), and V (Industry/Energy, ch5a/ch5b) were applied and committed in prior waves. Parts VI (Disaster, ch6a/ch6b) and VII (Algorithms/Governance, ch7a/ch7b/closing) completed here. `check-cases.sh` held at **205/0** after every wave. All COI blocks and evidence-flag hedges preserved verbatim; within-case anchor-code typos were reconciled only where the case's own metadata and spelled-out domain names agreed (the broader v2.1 D-code prose sweep remains a separate task).

**Applied fixes, Part VI:** 162 investigator McAtee→McAteer; 163 Deepwater Horizon quote re-attributed to BP's own (Bly) investigation report, not "government and academic reviews"; 169 Fukushima author C.→D. Lochbaum; 172 CrowdStrike 8.5M figure re-attributed to Microsoft (PIR gives no count); 174 President's Council on Y2K Conversion established Feb 1998 (EO 13073) not 1997; 177 CIRAS summary xref "117+45"→"117+119".

**Applied fixes, Part VII:** 181 pairing "79"→"181"; 183 Uber "humans tend to tune out" de-quoted and re-attributed from Chairman Sumwalt to NTSB board members (a Consumer Reports paraphrase); 185 Watson xref "67"→"3"; 186 refinance pricing "3"→"4" bps (Bartlett 3.6); 189 pairing "80"→"189"; 190 Cruise reflection xref "158"→"190"; 191 Robodebt 2019 ruling "Prygodicz"→"Amato" (Prygodicz is the 2021 settlement) + SyRI xref "155"→"189"; 192 Gándara xref "133"→"86"; 194 Estonia refs corrected (ICEGOV '21 = Jackson/Dreyling/Pappel not "Kotka et al."; Mission Mystique = Kattel & Mergel 2019 not "Kalvet 2024"; Oxford 2019); 196 pairing "150"→"196" + stale "103"→"186"; 199 CPUC xref "184"→"200"; 200 Cruise xref "158"→"190"; 203 OU Analyse "81"→"85", Gándara "133"→"86", Amazon "29"→"182", reference retitled to the correct paper (Null Compliance, FAccT 2024, DOI …658998 — prior DOI pointed to a different paper); 204 Cruise permit suspension re-attributed from CPUC to California DMV. Within-case anchor-code typos: 181,182,186,187,189,191 (ch7a); 194,200,201 (ch7b).

**Deferred to editor (require a ruling — not auto-fixed):**
- **180 HealthCare.gov — integrator direction likely inverted (SERIOUS).** Case says "CMS thought CGI was the lead integrator; CGI did not," attributed to the HHS OIG; but OIG (OEI-06-14-00350) says CMS believed *CMS itself* was the integrator while CGI reported the *absence* of a true systems integrator. Re-attribute/soften or drop the OIG citation.
- **201 Aadhaar — thesis-level attribution error (SERIOUS).** The case builds its welfare-exclusion holding on *Pragya Prasun v. Union of India* (2025 INSC 599, 30 Apr 2025), but that ruling is about **digital e-KYC accessibility for persons with disabilities**, not Aadhaar biometric authentication failure at ration shops/pension windows. Impact, summary, section 3, beats, le-insight, and lens-approach all rest on the conflation. Re-scope to what Pragya Prasun held, or anchor the welfare-exclusion thesis to the correct authority (Puttaswamy II dissent / Section-7 litigation).
- **203 NYC LL144 — citation apparatus needs one pass (SERIOUS).** (a) Co-author "Brown" is fabricated — the audit-quality paper is Wright, Muenster, Vecchione et al. (no Brown); "Wright & Brown" recurs across ~6 fields. (b) "Yam & Skirpan (2024)" is unverifiable and appears in no reference entry, yet the "bias audits without bias data" hedge rests on it. (c) literature-items venue "AI and Ethics" is wrong (paper is FAccT 2024).
- **136 (Part IV) — GAO re-anchor.** GAO-22-104533 → GAO-24-107378 (~10 fields); held for editor sign-off (carried from the IV pass).
- **161 Texas City — cost-cutting program names "1000 Day" and "Forward" unverifiable** (possible fabrication); "malfunctioned for years" overstates the CSB finding.
- **182 Amazon hiring — "never deployed" smooths a two-sided source.** Reuters also reported recruiters "looked at the recommendations." Title "Deprecated 2018" vs source's "disbanded by early 2017."
- **164 Grenfell — "grey elephant" attributed to "the inquiry"** appears to be an authorial coinage; drop the attribution or use the inquiry's language.
- **196 Coots — framing overstatement.** Body frames the study as an unawareness-vs-mitigation group-fairness-metric experiment; the paper is a profit/calibration audit.
- **Lower-priority (staleness / wording / precision):** 195 "open investigation EA22-002" closed Apr 2024; 197 "hundreds of departments" high-end for PredPol; 198 "BRAIN 2025 report (Jorgenson 2015)" conflates the 2014 ACD report with the 2015 paper; 200 "August 2024 framework was updated" was draft-for-comment; 202 LEO-anchor LEO-5 vs "fairness beyond omission" (subobj 4.6/LEO-4); 173 "62 years since 1963" → 63 to 2026; 188 "accelerated GDPR" chronology; 168/176/193 paraphrase-as-quotation confidence; 190/204 duplicate-incident (same Cruise event) — dedup or cross-link.
- **Housekeeping:** CLAUDE.md carries stale case-number pointers in the COI/evidence-flag lists (e.g., Coots, BRAIN, Watson, Johnson, JIGSAWS, Gándara) reflecting pre-July draft numbers; several `// VERIFY:` comments (170 Ebola, 171 Maria, 178 UN cluster) were confirmed by this pass and can be cleared. 177 CIRAS lacks the supplemental-tier `evidence-flag:` field the prose hedge implies.

### Part VI–VII checkpoint — editor rulings applied (July 2026)

Editor ruled on the deferred items from the Parts III–VII pass; all actioned and verified (check-cases 205/0, book compiles clean).

- **201 Aadhaar — RE-ANCHORED + REDRAFTED.** The thesis is re-grounded on *Puttaswamy II* (2018): the 4–1 majority upholding Section 7 set against Justice Chandrachud's dissent — "exclusion based on technological errors, with no fault of the individual, is a violation of dignity" (now the case's pull quote). Empirical predicate is the 2017 Jharkhand starvation record (Santoshi Kumari; ~19 of ~57 hunger deaths the Right to Food Campaign tied to card cancellation/Aadhaar) and the Drèze–Khalid–Khera–Somanchi EPW 2017 field study (~20% monthly ABBA exclusion). *Pragya Prasun* (2025) repositioned from anchor to a distinct, later Article-21 digital-access ruling (e-KYC accessibility for persons with disabilities). Title, impact, summary, sections 3–5, beats, references, quote/quote-source, le-insight, lens-approach, and literature-items all rewritten; journalism-tier flag preserved; SyRI/Horizon pairing kept.
- **180 HealthCare.gov — REATTRIBUTED.** The systems-integrator account now matches the OIG source: CMS acted as its own integrator (a role it lacked capacity for) while CGI reported no party was performing true integration. Ref "(quoted)"→"(paraphrased)".
- **203 NYC LL144 — FIXED + RE-AUDITED.** Fabricated co-author "Brown" removed (paper is Wright et al. 2024, "Null Compliance," FAccT, doi:10.1145/3630106.3658998) across all fields; fabricated "Yam & Skirpan (2024)" replaced with the real canonical source Andrus, Spitzer, Brown & Xiang (2021), FAccT, doi:10.1145/3442188.3445888; literature venue corrected FAccT (was "AI and Ethics"); enactment corrected — LL144 became law without the Mayor's signature (Council passage 10 Nov 2021; returned unsigned 13 Dec 2021), not "signed into law."
- **136 GAO — RE-ANCHORED.** GAO-22-104533 → GAO-24-107378 (2024), "Weapon System Sustainment: DOD Identified Operating and Support Cost Growth but Needs to Improve the Consistency and Completeness of Information to Congress" (Feb 29 2024) — the report whose headline IS the completeness/consistency/comparability finding. (The old number was doubly wrong: GAO-22-104533 is actually an unrelated Air Force/Navy aviation-risk report.) ~10 fields updated.
- **161 Texas City — ANCHOR + RE-AUDITED/REDRAFTED.** "Forward" cost-cutting program deleted (unverifiable in the CSB report); cost-cutting recharacterized to the two documented 25% budget targets (post-1999 Amoco merger; 2005 "challenge") plus the 2003 site "1,000 Day Goals" program the CSB faulted for measuring personal safety and cost over process safety. Level-instrumentation claim corrected — not "malfunctioned for years" but a miscalibrated transmitter (against a 1975 data sheet) reading falsely during the startup, a redundant high-level alarm that never sounded (with a ~2-year fault history), and an unreadable sight glass. Induced-anchor source comment updated.
- **196 Coots — REFRAMED.** From a "two-regime group-fairness-metric experiment" to the paper's actual profit/calibration mechanism (model miscalibrated by group under unawareness; using the protected attribute to correct calibration reduces the disparity). Teaching point (omission is not the safe default) and Bartlett pairing preserved; preprint-tier flag intact.
- **190/204 Cruise — DEDUP + CROSS-LINK.** Reciprocal cross-references added and each case's distinct scope made explicit (190 = disclosure-posture failure, Part VII What Fails; 204 = institutional/governance frontier). Not merged/renumbered (that would force a corpus-wide renumber).
- **164 Grenfell — FIXED.** "Grey elephant" no longer attributed to the inquiry (which never used the phrase); recast as an authorial framing.
- **182 Amazon — FIXED.** Two-sided Reuters sourcing surfaced (company says never used by recruiters; Reuters reported recruiters "looked at the recommendations"); year framing corrected (team disbanded by early 2017; Oct 2018 is the reporting date; title 2018→2017).
- **Low-priority applied:** 195 EA22-002 marked closed Apr 2024 (superseded by the Dec-2023 ~2M-vehicle recall); 197 "hundreds"→"scores of" jurisdictions; 198 BRAIN-2025-report (2014 NIH ACD) distinguished from the Jorgenson 2015 paper; 200 Aug-2024 CPUC action marked as draft-for-comment; 202 leo-anchor "LEO-5"→"LEO-5, LEO-4" (fairness-beyond-omission = 4.6/LEO-4); 173 "62 years"→"63 years" (1963→2026); 188 "accelerated GDPR"→"raised the salience of" (GDPR's 2018 application date predates the scandal); 168 Sago and 176 Tylenol and 193 Madoff quote-sources relabeled to mark paraphrase/composite where not verbatim.

### Housekeeping (July 2026)

- **177 CIRAS:** added the missing supplemental-tier `evidence-flag: "practice-synthesis-tier"` — the case's 45%/33% impact figures are an operating-program self-report (already flagged "(program self-report)" in the impact line), so the blue "source confidence flagged; future validation ongoing" block now renders as the prose hedge implies.
- **`// VERIFY:` comments cleared** where this pass confirmed them against primary sources: 170 West Africa Ebola (8 comments — PHEIC date, toll, Stocking/Moon/UN citations, Moon quote), 171 Hurricane Maria (2 — GWU report title, FEMA ">80%" phrasing), 178 UN cluster approach (3 — HRR authors, Pakistan 2005 cluster count, Grünewald & Binder Haiti RTE title). The Katrina (167) and JHU-dashboard (179) VERIFY markers were left in place (167 not vetted for clearance this pass; 179's most-forked and racial-data-layer-launch-month items remain open).
- **CLAUDE.md:** added a current-number crosswalk to the "Realistic drafting pace" paragraph, whose parentheticals used the pre-July v2-draft numbering (101–177). Current First-Edition numbers noted for the standing-COI and evidence-flag cases (CIRCUIT 68 & 78, BRAIN 198, Johnson 48, JIGSAWS 31, Coots 196, HBP 181, Kirkpatrick 79, Watson 3), with the reminder to resolve by slug. The binding rules (rule 5/6) were already on current numbers and verified correct; the explicitly-superseded "Historical state" section was left as the historical record.

### Addendum (July 2026): LENS-alignment quarantine — 14 cases withheld, coverage gaps flagged

Following the corpus critical-accuracy pass, a **LENS-alignment audit** (seven per-Part scans) assessed every case on: (1) is the core lesson genuinely a *capability* problem, or a fraud/finance/philanthropy/pure-mechanical story with the LENS frame bolted on; (2) audit soundness; (3) redundancy with a stronger sibling. Non-traditional evidence tiers were **not** grounds for quarantine (editor decision — less-traditional evidence is acceptable for table-stakes cases). **14 cases quarantined** (corpus 205 → 191; see `QUARANTINE.md`). None was in the printed 48-case main volume, so the printed cut is unchanged. Mechanism: `lib/quarantine.typ` + an early return in `lib/case.typ`; quarantined cases emit nothing in any build and are absent from the matrix/indexes; blocks retained in source and recoverable. `check-cases.sh` reports **191 converted, 0 failures**. Seven surviving→quarantined cross-references were repaired (124→125, 153→168 ×3, 190→204, 193→10 ×2).

**Coverage gaps opened by the quarantine — flagged for additional study / future authoring.** The audit confirmed every quarantined case's *lesson* survives elsewhere, but several carried a distinct **topical vantage or diversity anchor** now thinned. These are deliberate gaps to backfill with better-aligned material rather than restore the weak cases:

1. **Indigenous / non-Western data governance (was 202 CARE).** The corpus now has **no** Indigenous-data-sovereignty anchor and its non-Western-frameworks breadth is reduced. Seek a *deployed* case where Indigenous or community data governance changed what a system could do (e.g., an operational OCAP®/Māori-data-sovereignty implementation with an outcome), so the lesson is capability-grounded rather than a principles document.
2. **Portfolio-scale evidence architecture (was 136 GAO sustainment).** Program-scale evidence-architecture survives (F-35 126, measurement-infra 140), but the *portfolio/enterprise* scale — decision-making across a whole system-of-systems on incomplete comparability — is now unrepresented. Seek a case where a portfolio owner built (or failed to build) the decision-grade evidence layer and a capability consequence followed.
3. **Philanthropy / reform-capital at scale (was 64 Newark).** The "reform velocity outran operator and community absorption capacity" lesson at *foundation scale* is thinned (Gates 62 remains, narrower). A case where large external capital succeeded *because* absorption capacity was engineered first would be a strong positive counterpart.
4. **Securities / capital-markets oversight vantage (was 59 In re 2U).** The investor/securities-law surface on delegated systems is gone; 57 (regulator) and 55 (algorithmic) remain. Low priority — consider only if a capital-markets case with a genuine capability core appears.
5. **Structural / civil-engineering change-control (was 158 Hyatt).** Change-control-as-capability now leans on CrowdStrike (172, software) and Texas City (161, alternate anchor). A *civil/structural* change-control case with a clean capability frame (a re-derivation gate that worked, or one whose absence was decisive without the ethics-case framing) would restore the domain.
6. **Second coal-mine / cumulative-inadequacy exemplar (was 168 Sago).** UBB (162) holds the coal-mine domain (measurement integrity) and Deepwater/Grenfell/Bhopal hold multi-layer drift; the specific "marginal-everywhere is itself the hazard" framing is now carried only implicitly. Low priority.

Domains **not** weakened (verified): healthcare patient-safety, aviation human-factors, the nuclear cluster, education tutoring/analytics, algorithmic fairness (Bartlett/Coots/COMPAS/Aadhaar all retained), and every LENS competency floor — the 14 removals moved no competency×tier bucket by more than ~2, and 11 of the 14 were failures (the corpus's known surplus), so the fail/success/frontier balance improved.

### Addendum (August 2026): source-confrontation fact check — all 191 active cases

A student found a factual error in Case 155 (Andon Cord) by asking a tutor about it. Two passes followed. A **mechanism pass** (internal reasoning against the case's own text) confirmed 25 defects from 216 high-severity findings — an 11.6% survival rate under an adversarial gate. It could not have found more, because reasoning only catches a claim that contradicts something else in the case. Case 203 is the proof: fixed in July, passed the adversarial gate, passed the compression check, and its central finding was still factually wrong.

The **fact check** confronted every claim with the primary document. 48 batches of ~4 cases, each reviewer required to read the source rather than a snippet, and to end every unsourced claim as sourced, replaced, attributed, or removed — never left standing with a note. Roughly **700 corrections across 191 cases; two cases came back clean.**

**The characteristic defect is not a wrong number.** In order of frequency:

1. **A finding credited to a body that did not make it.** Case 118's entire cultural-hierarchy framing is attributed to the NTSB; NTSB/AAR-00/01 does not contain the word *culture* anywhere in 597K characters, and on why the first officer's challenges never came says it "was unable to identify" the reason.
2. **An absence of finding converted into a finding.** Case 100 asserts an attribution the NTSB explicitly declined; Case 103's thesis is a hypothesis the AAIB raised and set aside as unlikely.
3. **Inverted causation.** Case 98 says Mars Climate Orbiter had no interface specification; the MIB writes "The SIS, which was not followed" — the spec existed and verification did not. Cases 152, 50, 69, 81, 34, 162, 146, 189, 192, 200, 175 and 170 all state their source backwards.
4. **Invented hedges.** Case 34 says nine times that its mortality result is confounded by concurrent quality improvement; the authors state they had no other initiatives running.
5. **Fabricated sources and quotations.** "Tuckey & Pollack (2024)", "Carr in *Health Affairs*", GAO product numbers that 404, and a literal `[Authors (2024), …]` placeholder still in the printed reference list.

**Why nothing caught it.** `check-cases.sh` counts references and pages. `check-compression.py` tests internal consistency. The `verification-log.md` "refs real" column was auto-prefilled and never read. Every one of those passes a case whose central claim is invented, provided it is invented *consistently* and carries the right *number* of references. Worse, a count-based reference rule rewards attaching plausible citations and applies no pressure to make any given citation support any given sentence — which is exactly how Murphy et al. (2020) sat under a finding belonging to Feng et al. (2023): real paper, real authors, right topic, right count, wrong finding.

**Also fixed in this pass.** A bug in `check-compression.py` itself: it substituted number-words to digits before applying scale suffixes, so a body saying "700 million" never matched an `impact` saying "$700M" — the exact case its own code comment claimed to handle. Scaling now runs first and `trillion` is a recognised scale; 8 false positives left the drift baseline, rewritten at 15. A prose-integrity scan for replacement-seam damage (repeated five-word runs, doubled words across summary/sections/le-insight/lens-approach) found 37 candidates, 36 of them deliberate anaphora and one real: Case 53 carried both a corrected sentence and the original it replaced.

**Production consequence.** Main volume 265 → **275 pp** (spine 16.46 → **17.08 mm**); complete edition 849 → **883 pp**. `check-cases.sh` reports 191 converted / 0 failures; the compression gate reports 15 known leads, 0 new.

**Editorial decisions deferred to the program owner** are collected in `fact-check-editor-memo.md`: two COI disclosures whose institutional basis moved (Cases 48, 68), seven evidence-tier flags whose stated rationale no longer holds, the twelve remaining "cultural half" passages across five cases, and the standing recommendation to bind `#cn()` markers to specific reference entries rather than counting them.

### Addendum (August 2026): compression-field consistency, and the evidence-tier ruling

A spot check of the corrected corpus — Cases 19, 98, 154, 155 and `dgm-andon`, read in their post-sweep state — found the fact check had landed **unevenly inside each case**. The narrative bodies were corrected; the compression fields around them were not. The result was a case that argued against itself: Case 155's Evidence section said *"No study isolates the cord's marginal contribution"* over `beats` that still read *"Toyota's protected authority is the variable"*, and Case 19 admitted the trial *"could not decompose"* the bundle under a pull quote that still read *"Neither worked without the other."*

This is the original Andon defect inverted. It began as a folk claim in `impact:` wrapped around a better body; the sweep corrected the body and left the folk claim in the fields. The compression layer is a separate surface and needs its own pass.

**Fixed.** Cases 19, 98 and 155 across `summary`, `beats`, `le-insight`, `lens-approach`, `quote`, `reflection-list` and `approaches`. Case 155 also gained the two references its corrected Evidence section and `scope-limit` rest on and had been asserting without — Adler (1993) for NUMMI and the NASA/NHTSA (2011) throttle-control review — and moved to the dual anchor `D3+D4/PT3`, the instrumentation half the single anchor was dropping. Case 181's `beats[5]` lost an N-of-2 isolation claim (*"governance is the variable"*).

**Evidence-tier ruling (editor, this session): peer review removes the weak-evidence flag.** Retired on Cases 18, 44, 71, 76, 154, 194 and 202, with the caveat that actually mattered restated in prose in its own right rather than riding on a tier flag that no longer described the sourcing — and with the flag's standing *"future validation ongoing"* sentence removed alongside it. Cases 18 and 202 were found during this pass carrying `evidence-source: "peer-reviewed"` and a weak-evidence flag simultaneously. Cases 181 and 190 keep `journalism-tier`: their sourcing is documented primary record rather than peer review, so the ruling does not reach them; the memo carries that as an open question.

**New detector.** `scripts/check-compression.py --phrases` greps the whole compression set — `impact`, `summary`, `beats`, `le-insight`, `lens-approach`, `quote`, `reflection-list`, `approaches` — for the phrasings the sweep retired. Like the quantity check it produces leads, not verdicts: *"stop the line"* is correct prose in a case about stopping a line. It exists so that the next time a body is corrected, the fields that restate it are a worklist rather than a discovery. Corpus state after this pass: 7 of 191 cases flagged, every one triaged as legitimate usage.

`check-cases.sh` reports 191 converted / 0 failures.

### Addendum (August 2026): non-case matter, figure valence, print signature, and source confrontation

Six passes since the entry above, recorded together because they share a finding: **the book's
apparatus had drifted away from the book.** Every defect below is a statement made *about* the
corpus by something outside it — front matter, back matter, cover, build documentation — that the
corpus no longer supported.

**The domain index was keyed to the retired numbering.** All nineteen hand-written standout
callouts in `backmatter/domain-index.typ` still carried v1 1–100 numbers. Each resolved to a real
but unrelated live case, so the error was silent: the "Standout success" beside Toyota's andon cord
printed *Case 73*, which is The Doer Effect at Scale. Three callouts contradicted their own body
text, naming one case in the number and a different one in the prose. All nineteen re-keyed.

Seven of those callouts also asserted things the cases had been corrected to retract — the andon
cord as "any operator can stop the line" (Case 155 now says most pulls never stop it), INPO as "no
INES-level event" (the case says Level 4-or-above, and carries Davis-Besse's Level 3 explicitly),
Horizon as "at least four suicides" (the case says 13, and 900+ convictions against "hundreds"),
Challenger/Columbia crediting the Rogers Commission with Vaughan's "normalization of deviance",
and CRM's "the safety record that followed" — the decomposition claim retired earlier this month.
Robodebt's callout carried a Royal Commission quotation that appears nowhere in the case, its
references, or this log; it is replaced with what Case 191 actually carries. Two callouts claimed
"no paired-intervention success" for domains that have them (government: Case 203; autonomous
vehicles: Cases 199 and 200) — an artifact of the callouts being keyed to one domain string while
the interventions file under a neighbouring one.

**The colour legend was wrong in both places it appears.** `matrix.typ` and `domain-index.typ` both
told the reader teal marks "paired-intervention successes and the open closing case." The renderer
colours on `kind == "intervention"`, so all 27 frontier cases — the closing case among them — print
gold. Legend corrected in both. The matrix also now explains its fourteen missing numbers: withdrawn
cases keep their numbers rather than have the sequence re-flowed around them.

**The LEN course table had drifted on eight of ten counts** (LEN 7 was off by twelve, LEN 8 by
eight) while `course-index.typ`, a few leaves later, computed the same quantities live. The table is
now computed from the same `<caseinfo>` query, so the two pages cannot disagree again. Four "202
cases" claims corrected to 191 active. This change required `lens-companion.typ` to include the
chapters for metadata — under `view=companion` a case emits its metadata and renders no body, so the
companion gains the data and no pages.

**The Validation & Audit tracker was missing four chapter files.** `validation-audit.typ` included
`ch1a`–`ch5b` and the closing case under a comment reading `// METADATA EMIT: include every case`.
Parts VI and VII were absent, so the tracker's domain index, course index and references appendix
silently omitted **42 live cases** — thirteen of them in the printed 48, for which `book.typ` names
this tracker as the reader's only route to a consolidated reference list. Tracker 77 → 97 pp.

**The introduction and colophon carried the retracted claims.** The compression-layer defect class,
one level up: the case bodies were corrected and the front matter that summarises them was not.
Fixed — Makary's estimate now reads as contested (Case 8); the 17-year and 14% figures as estimates
rather than "the average, the median" (Case 13); the 83% aviation figure as a portfolio result CRM
cannot be credited with alone (Case 117); INPO as Level 4-or-above (Case 175); the WHO checklist as
1.5% → 0.8% with the null Ontario rollout beside it (Case 23); Ofqual as 39% of teacher-estimated
*grades*, withdrawn after four days, with the cause the OSR review actually found; the Navy's
CD-ROM substitution without the unsourced "sixteen-week"; and the F-35 at its stated 44% FY2025
mission-capable rate rather than "half of its design readiness in 2026." The introduction also
described the five competencies by listing six *course titles*, one of them the retired name for
LEN 2 — corrected, along with "concentration learning outcomes" → LENS Educational Objectives, and
a cross-reference to "Chapter 8" under a chapter numbering retired in July.

**The colophon's verification claim.** The line said every case "was reviewed by the editors and
hand-checked by students." Read against `verification-log.md` alone — every row of which carries
*"auto-prefill: all mechanical checks pass; human content review still needed"* — that looks like an
overstatement, and it was first rewritten as work merely "underway."

**That rewrite was wrong.** The log's seventh column tracks one specific ongoing read; it is not the
record of human review, and taking it for the whole understated a great deal of completed work — the
editor rulings applied at the Part II and Part VI–VII checkpoints, the seven per-Part LENS-alignment
scans that withdrew fourteen cases, the per-case adjudications (72 ASSISTments, 41, 201 Aadhaar,
203 NYC LL144, 161 Texas City), the evidence-tier ruling, and the standing COI decisions.

**Editor ruling, this session, and the wording of record:** every case reviewed by the editors,
iterative refinement ongoing. The colophon now states exactly that against the seven-column rubric,
without narrating the passes.

**Page structure was described wrongly in three places.** `howto.typ` said "each case occupies a
two-page spread"; the introduction said "most cases run to three pages"; both said the Lens is "the
last page." Measured from the `<cmeta>` probes: **53 cases at three pages, 128 at four, 10 at five,
none at two**, and the forced break before the Lens was removed earlier, so it begins wherever the
narrative ends. All three corrected. `howto.typ` also carried LEN 2 under its pre-v2.4 title
("Human-AI Teaming"), which the program document is explicit is a sub-pattern and not the whole;
four other titles were truncated, and all ten courses were presented as required when four are
electives.

**Orphaned references.** `backmatter/references.typ` listed 27 entries under "Cited in the
introduction"; the introduction cites 1–22. Entries 23–27 are the program-record sources that moved
to `about-lens.typ` when that section was split out. They now sit under their own heading rather
than under a claim of citation that was never true. `about-lens.typ` also described MERIT and
COMPASS as "documented in the peer-reviewed engineering-education literature" — the references say
JHU/APL whitepaper and program documentation; only CIRCUIT is peer-reviewed. Corrected. The
references-by-case appendix promised populated "Retrieved from:" lines where the renderer emits an
unconditional blank; the prose now describes it as the reviewer worksheet it is.

**Figure valence encoding completed.** The star/triangle outcome encoding shipped with two figures
marked. The introduction's figure key described it as a corpus-wide convention and told the reader
that a figure without a glyph "is not claiming it went well or badly" — which, with 33 of 35 outcome
figures unmarked, inverted the reading of a third of the book's diagrams. The remaining 32 figures
are now marked (25 triangles, 7 stars) and the key is rewritten to state the encoding without
resting meaning on absence. `dgm-inpo`'s outcome line had been clipped by its frame since it was
drawn, and is now visible. Two judgement calls stand for the editor: `dgm-teamstepps` is left
unmarked as a pathway figure, and `dgm-makary` is marked adverse beside a count the caption itself
calls contested — the triangle asserts direction, not the number.

**A live print defect and a latent build bug.** The interior is padded to a 4-page binding
signature before the spine is derived; that padding step was reached for the first time in this
build and failed under `set -e`, because its `awk printf` emitted no trailing newline and `read`
therefore returned non-zero. Fixed. `build.sh` now also writes `build/product-metrics.md` and
mirrors it to `products/`, because both READMEs had drifted on every page figure — including
README.md:126, which instructed the operator to send Lulu a **16.46 mm** spine for a book that needs
**17.39 mm**. The READMEs now name the generated file as the authority.

**Production consequence.** Main volume 275 → **277 pp**, padded to **280** for the signature (spine
17.08 → **17.39 mm**); complete edition 883 → **884 pp**; validation-audit 77 → **97 pp**; companion
**50 pp**; local-print **279 pp**.

**Source confrontation, session 2.** Batch 1 completed and batch 2 taken to 11 of 15 — 14 cases
confronted, 10 corrected; see `source-confrontation-log.md`. Two classes recur: a figure that is
*correct* but carried by no cited reference (Cases 22, 23, 25), and a case whose compression fields
contradict its own body (Cases 27, 34 — Case 34 asserted the mortality reduction was "multifactorial"
where the authors state the opposite in their limitations). Case 29 resolves the editor memo's open
BCMA follow-up item. Case 28 had two sentences printing broken mid-clause where a cross-reference
had been stripped and never replaced — a defect no gate would have caught and no reader could have
parsed.

`check-cases.sh` reports 191 converted / 0 failures; `--gate` 0 new; `--phrases` 7 triaged;
`check-diagram-palette.py` clean at 50 diagrams.

### Addendum (August 2026): the fact-and-source confrontation — 143 cases, 10 batches

The 143 complete-edition-only cases were re-confronted claim by claim. These cases had already been
through the July critical-accuracy pass; **the second pass corrected 134 of them**, which is the
finding that matters most about method: a completed pass is not evidence a case is clean.

**The brief widened mid-sweep, on editor direction.** Batches 1–2 ran as *source* confrontation —
does the document the `#cn()` marker points at carry this claim. That misses a whole class. A claim
can be sourced correctly and still be false, and it can be true and cited to nothing. From batch 3
the pass ran both checks, and the fact half immediately produced the largest single defect cluster:
**stale cross-references**, where a case number still resolved to a real but unrelated case. Nothing
sources a cross-reference, so only resolving each one against its target's title finds them. Case 40
cited Crew Resource Management for interprofessional education; Case 43 cited Aadhaar for PEPFAR;
Case 25 cited Boeing Starliner as a lending-fairness pair.

**Six fabricated or unlocatable sources.** This is the class with no automated defence at all.
Case 203 carried a fabricated co-author and a fabricated source (found in July). Case 193 cited
"Cohen & Goldsmith (1999)" — no such work is locatable. Case 130 cited a Cummings paper that does
not exist, apparently conflating an MIT course number. Cases 127 and 134 carried pseudo-quotes,
labelled as paraphrases, traceable to nothing. Case 36's pull quote was credited to the CASP14 press
release, where it does not appear, **and silently truncated mid-sentence with no ellipsis**.

**Attribution to the wrong body, or at the wrong scope**, ran through the whole sweep. Case 37 read
the MASAI trial as the validation the Haibe-Kains critique demanded of DeepMind — MASAI ran on a
different vendor's product, and the DeepMind system has never been randomised. Case 36 said two
researchers shared the Nobel for AlphaFold; they shared one half. Case 192 turned a regulator's
"did not produce evidence of discrimination" into "did not violate the law". Case 143 credited an
SEC order with a finding not in it. Case 105 gave one warning where the Board found three, and
omitted its four latent causes entirely.

**Case 175 inverted a causal order in the argument the nuclear thread rests on.** It said INPO was
founded "in the autumn of 1979, before the Kemeny Commission had reported". Kemeny reported 30
October 1979; INPO followed in December, in response to its recommendations. The case's own
lens-approach already said "eight months after TMI", which is December — the correction restored its
internal consistency. The introduction carried the same error and was corrected with it.

**The full taxonomy — twelve shapes, with the cases exhibiting each — is in the header of
`source-confrontation-log.md`.** That taxonomy is the durable output. It is what to look for when
the corpus next changes, and several shapes (a compression field asserting against its own body; a
case stopping one experiment short of its own source; a clock read off the wrong zero) were not
being looked for at all before this sweep.

**Nine cases needed no correction** — 88, 107, 109, 115, 135, 138, 153, 162 and, on facts, 171. Six
more needed only source-alignment work. That the pass returns clean results at all is what
distinguishes it from a process that finds something wherever it looks.

**Open, and not closed by this sweep: marker-to-reference alignment.** `lib/components.typ:369`
states the contract — reference text is supplied to `case-references()` **in the same order** as the
`#cn()` markers. `scripts/check-cases.sh` enforces only `markers ≤ refs`; it cannot see order. Batch
9 checked alignment systematically across its fifteen cases and found **eleven misaligned** — lists
ordered by importance rather than by marker sequence, so a reader following superscript 3 arrives at
a source that cannot carry the claim. Case 171's marker 1 carried a blackout figure and pointed at
FEMA's after-action report; Case 186's pricing paragraph pointed at Dwork's *Fairness Through
Awareness*. Those eleven were realigned. **The other 128 cases were not systematically checked on
this dimension**, and the batch-9 rate suggests most of them are misaligned. This is a discrete,
bounded pass — and unlike the fact check, it could be made checkable: a script comparing each
marker's surrounding claim against its positional reference would at least surface candidates.

**Production consequence.** Complete edition 884 → **908 pp** and the Validation & Audit tracker
97 → **102 pp**, from references added where real claims had none. The printed main volume is
unchanged at 280 pp (spine 17.39 mm) — every case in this sweep is complete-edition-only.

`check-cases.sh` 191/0; compression gate 0 new; palette clean at 50 diagrams.

### Addendum (August 2026): marker-to-reference alignment — the contract the gate could not see

`lib/components.typ:369` states it plainly: reference text is supplied to `case-references()` **in the
same order** as the `#cn()` markers, so reference *k* is the source for marker *k*. `check-cases.sh`
enforces only `markers ≤ refs`. It is structurally blind to order — which is how the corpus reached
a state where **51% of markers carrying an unambiguous anchor** (a report ID, a figure, a named
author matching exactly one reference) **pointed at the wrong reference**, while every build reported
191 converted / 0 failures.

**The printed volume was not better than the complete edition. It was marginally worse** — 58% of
anchored markers off-position against 47% — and it had never been checked, because the 143-case
fact sweep covered complete-edition cases only.

**The failure is stereotyped**, which is why a pass was worth running rather than a rewrite: tuples
ordered by **authority tier** (primary study → supporting data → theory → paired case) or **rotated
by one**. Both are recognisable in minutes once markers and references are printed side by side,
which is what `scripts/view-case-cites.py` exists to do.

**Result.** All 48 printed cases read exhaustively; complete-edition cases read where the detector
flagged them. **~100 tuples reordered, 22 confirmed correctly ordered.** Verified mechanically at
every commit: reference *text* is byte-identical throughout — only positions moved. A reorder and a
silent reword look the same in a diff summary, so this was checked rather than trusted.

Worst instances: **199 Waymo** (whole tuple rotated one; a reader following any superscript landed a
document early), **197 PredPol** (four markers each on a different document), **114 aging-aircraft**
(four of five), **173 SUBSAFE** (four of five), **176 Tylenol** (uniform rotation), **120 EGPWS** and
**121 Überlingen** (aviation cases where a superscript led to a developer history instead of an
accident report), **192 Apple Card** (marker 3 cites a March-2021 report and pointed at a
November-2019 newspaper piece — chronologically impossible).

**The measured blind spot, which is the finding worth keeping.** A detector-threshold sweep would
have shipped most of this. Of the printed cases read exhaustively, **six were defective at
sub-threshold detector scores, and four of those scored exactly zero** — including Case 173, with
four of five positions wrong, and Case 191, where a Royal Commission attribution pointed at a
settlement. Three of six low-scoring cases sampled independently were also defective. **A clean
detector score is not evidence of a clean case**, and the decision to read all 48 rather than work
the queue is what caught them.

The detector's other edge case runs the same way: its **highest-scoring case corpus-wide (124, USS
Fitzgerald / McCain) is correctly ordered.** `NTSB/MAR-19/01` legitimately occupies three slots under
the house repeat convention, and every matching marker inflated the score. Score rank is not
confidence rank.

**Two tools, deliberately different.** `scripts/check-cite-order.py` is the sweep instrument — broad,
fuzzy, ~90% precise at the top of its ranking but only 50–65% recall. `scripts/check-cite-anchors.py`
is the **commit-time gate**, now wired into CI: it checks only the subset where the answer is not a
judgement call, and it is narrow so that it can fail a build. Case-generic anchors are excluded (an
aircraft's flight number appears wherever the subject is named), identical reference text is treated
as one equivalence class (a swap inside the repeat convention reaches the right document — a
copy-edit defect, not a citation defect), and the claim window is the sentence the marker attaches to
rather than a fixed character span. Each of those three rules exists because its absence produced a
false positive during construction.

Validated against known-bad input rather than assumed: run over the pre-pass baseline it catches
**seven cases**, including Waymo, Deepwater and CPUC. Over the corpus as it stands: **zero**. It also
caught one defect the detector threshold and the agent pass both missed — **Case 81**, whose marker 3
states figures verbatim from Herodotou 2019 while pointing at a different paper. Case 81 is not
printed and never scored ≥3, so no one read it.

**What a pass does not prove, stated in the script's own docstring.** The gate sees only anchored
markers; roughly a third carry no hard anchor. And it cannot see the failure with no positional
signature at all — **a claim with no supporting reference anywhere**. Case 199's 2022 trade-secret
ruling is one: no source exists in its tuple and none could be verified, and because markers and
references are both six, correcting the rest forces an unrelated entry into position 1. A
`// NAKED CLAIM` comment marks it so a later reviewer does not "fix" it by re-rotating. Cases 144,
147, 179 and 95 carry the same defect in milder form.

**Standing editorial item.** Five cases have a marker needing a second slot of a source the tuple
carries once (48 Johnson, 20 Adams, 5 Wong, 147, 138). The house convention solves this with a repeat
entry carrying a claim-specific annotation. That is an addition, not a reorder, so no agent made it —
and it is the one editorial add worth making.

Page counts unchanged: reordering references does not reflow the page. `check-cases.sh` 191/0;
compression gate 0 new; citation anchors clean; palette clean.
