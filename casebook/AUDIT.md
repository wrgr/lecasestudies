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

Editorial pass anchoring the 62 v1 cases that lacked `induced-anchor`, `lens-anchor`, and `clo-anchor` fields. Adopted as part of the v2.1 program sync. Closing essay (Case 194 *The Discipline We Build Next*) is intentionally left unanchored.

**Decision process.** Three parallel agents read each case's `summary`, `le-insight`, `lens-approach`, and `beats` fields and proposed (lens, CLO, induced) plus a one-line reason and a certainty rating. The brief required STRONG fit over liberal stretch and the explicit option to return UNCERTAIN. The editor (W. Gray-Roncal) reviewed all 62 assignments and made two overrides on top of the agent output: **Case 8 (ACGME duty-hours)** induced anchor set to 2.3 (transfer to high-consequence settings — FIRST/iCOMPARE tested the intervention's hypothesized gain), the agent having left it 'n/a'; **Case 32 (Fukushima)** induced anchor moved from 6.1 (institution-building) to 7.4 (multi-layer drift), since the load-bearing v1 lesson is the cumulative drift across coupled defenses rather than the missing INPO-equivalent (the institution-building lesson is secondary and lives in Case 107 INPO).

**Outcome.** 54 STRONG / 8 SOLID / 0 UNCERTAIN. SOLID flags are: 7 Military Fratricide, 14 AeroPerú 603, 30 Sago Mine, 41 TSB Bank IT Migration, 85 GIFT adoption gap, 106 Navy SWO Reform (genuine D2+D4 pair), 117 Singapore Airlines, 183 AlphaFold (genuine D4+D5 pair). The two D-pairs are the only multi-domain assignments; everywhere else a single primary D was load-bearing.

**Verification columns** (`reviewed?` and `open questions`) are placeholders for the later human-review pass. The intent is that a reader of any case can see (a) which anchor was assigned and why, (b) whether the anchor + the case as drafted has been editorially verified, and (c) what's still open. Editor guideline checks (clarity, references real, references support the claim, conclusions reasonable, no overclaim) are a separate review track that will attach here when defined.


| # | Title | lens | CLO | induced | certainty | reason (anchor rationale) | reviewed? | open questions |
|---|---|---|---|---|---|---|---|---|
| 4 | Marine Corps Training in the INDOPACOM AOR | `D1/PT1` | `CLO-1` | `1.1` | STRONG | Declared vs engineered priority — capability requirements named but not engineered | — | — |
| 5 | F-35 Sustainment & Maintainer Shortage | `D1/PT1` | `CLO-1` | `1.4` | STRONG | Sustainment-as-requirement: platform fielded ahead of capability infrastructure | — | — |
| 6 | Kegworth / British Midland 92 | `D3/PT6` | `CLO-3` | `3.3` | STRONG | Mental model from prior variant; unreadable mode/vibration display; mode/state transparency | — | — |
| 7 | Military Fratricide — Desert Storm to Afghanistan | `D1/PT1` | `CLO-1` | `1.3` | SOLID | Cross-org integration; spans D1+D4 (missing incident DB); D1 primary | — | — |
| 8 | ACGME 80-Hour Resident Duty-Hour Reform | `D2/PT3` | `CLO-2` | `2.3` | STRONG | FIRST/iCOMPARE tested the duty-hour intervention's hypothesized gain — iteration of an intervention; editor set induced 2.3 | — | — |
| 9 | Colgan Air Flight 3407 | `D4/PT2` | `CLO-4` | `2.1` | STRONG | Evidence/data-flow design: training-failure data existed but did not reach the hiring decision | — | — |
| 10 | Asiana Airlines Flight 214 | `D3/PT6` | `CLO-3` | `3.3` | STRONG | Automation surprise; autothrottle HOLD reversion not annunciated — mode/state transparency | — | — |
| 11 | Mark 14 Torpedo Failures | `D5/PT4` | `CLO-5` | `6.2` | STRONG | Operator-to-institution feedback channel; bureau insulated from operator evidence | — | — |
| 12 | Operation Eagle Claw | `D1/PT1` | `CLO-1` | `1.3` | STRONG | Cross-organizational capability requirement; no standing joint command; built USSOCOM | — | — |
| 13 | Helios Airways Flight 522 | `D3/PT3` | `CLO-3` | `3.1` | STRONG | Ambiguous cue carrying two meanings without differentiation — cue/alert design | — | — |
| 14 | AeroPerú Flight 603 | `D1/PT1` | `CLO-1` | `3.1` | SOLID | Apparent vs actual redundancy at the source; D1 primary for the redundancy-architecture lesson | — | — |
| 15 | Atlas Air Flight 3591 | `D4/PT2` | `CLO-4` | `2.4` | STRONG | Post-deployment surveillance: PRD's partial coverage as measurement-system completeness | — | — |
| 16 | TransAsia Airways Flight 235 | `D3/PT3` | `CLO-3` | `3.1` | STRONG | Wrong-engine pattern recurrence; checklist-driven verification under startle | — | — |
| 18 | Therac-25 | `D3/PT3` | `CLO-3` | `3.1` | STRONG | Safeguard removed without reassigning its load; uninformative MALFUNCTION 54 | — | — |
| 19 | Patriot Missile / Dhahran | `D1/PT1` | `CLO-1` | `1.2` | STRONG | Capability degradation under system change; load-bearing design assumption did not travel | — | — |
| 22 | Mars Climate Orbiter — Unit Mismatch | `D1/PT1` | `CLO-1` | `1.3` | STRONG | Interface-as-requirement across two organizations; boundary had no owner | — | — |
| 26 | V-22 Osprey | `D5/PT4` | `CLO-5` | `7.4` | STRONG | Multi-layer drift; three services parallel without convergence; shortfall normalized | — | — |
| 28 | Davis-Besse Reactor Head Corrosion | `D5/PT5` | `CLO-5` | `5.4` | STRONG | Regulatory capture; oversight layer adopted operator's schedule — change-control | — | — |
| 29 | Mid Staffordshire NHS Foundation Trust | `D4/PT5` | `CLO-4` | `2.1` | STRONG | Measurement-and-reality divergence; no layer verified reports against patients | — | — |
| 30 | Sago Mine Disaster | `D1/PT1` | `CLO-1` | `7.4` | SOLID | Cumulative inadequacy / multi-layer drift; D1 jointly assesses coupled defenses | — | — |
| 31 | Upper Big Branch Mine Explosion | `D4/PT2` | `CLO-4` | `2.2` | STRONG | Measurement engineered as deception (dual books); protect decision-grade evidence | — | — |
| 32 | Fukushima Daiichi | `D5/PT4` | `CLO-5` | `7.4` | STRONG | Multi-layer drift across defenses; editor set induced 7.4 (was 6.1) | — | — |
| 33 | Northeast Blackout | `D3/PT6` | `CLO-3` | `3.3` | STRONG | Silent automation failure; missing meta-monitor / mode-state transparency for grid operators | — | — |
| 35 | EHR / CPOE Implementation | `D3/PT3` | `CLO-3` | `3.1` | STRONG | Interface designed to billing, not clinical workflow; alert/default architecture | — | — |
| 36 | Uber ATG / Tempe Fatality | `D3/PT6` | `CLO-3` | `3.2` | STRONG | Defining LENS human-AI teaming case; monitoring assigned as unsupportable role | — | — |
| 37 | Eastern Air Lines Flight 401 | `D3/PT3` | `CLO-3` | `3.1` | STRONG | Attention as designable parameter; alert prioritization; CRM origin | — | — |
| 38 | Boeing 737 Rudder Hardovers | `D1/PT1` | `CLO-1` | `1.2` | STRONG | Certification process failed to surface unrecoverable failure mode | — | — |
| 39 | CrowdStrike Falcon Outage | `D5/PT4` | `CLO-5` | `5.4` | STRONG | Deployment-pipeline change-control: content treated differently than code | — | — |
| 40 | Stanislav Petrov / 1983 False Alert | `D3/PT6` | `CLO-3` | `3.4` | STRONG | Positive human-in-the-loop case; recoverability via contextual judgment | — | — |
| 41 | TSB Bank IT Migration | `D5/PT4` | `CLO-5` | `4.1` | SOLID | Schedule pressure overrode technical signal; no frontline halt authority | — | — |
| 45 | inBloom | `D5/PT4` | `CLO-5` | `5.1` | STRONG | Purest governance failure; launched without consent/stakeholder engagement | — | — |
| 46 | Healthcare.gov Launch | `D1/PT1` | `CLO-1` | `1.1` | STRONG | Capability mismatch at scale; wrong human capabilities assembled | — | — |
| 49 | Summit Learning / Personalized Learning Rollout | `D5/PT4` | `CLO-5` | `5.4` | STRONG | Pedagogy worked; deployment governance (consent, evidence, exit) not engineered | — | — |
| 50 | Tennessee Voluntary Pre-K Study | `D4/PT5` | `CLO-4` | `2.4` | STRONG | Rigorous measurement returned unwelcome finding; discipline lacked architecture to absorb | — | — |
| 51 | Algorithmic Bias in Educational Predictive Analytics | `D4/PT5` | `CLO-4` | `8.1` | STRONG | Construct-definition (what 'at-risk' means) as load-bearing equity decision | — | — |
| 52 | UK Post Office Horizon Scandal | `D3/PT6` | `CLO-3` | `3.2` | STRONG | Institutional automation bias across two decades; the computer said so | — | — |
| 53 | Theranos | `D5/PT4` | `CLO-5` | `5.3` | STRONG | Fraud exploited the seam between FDA and CLIA regimes; cross-regime governance gap | — | — |
| 58 | Hyatt Regency Walkway Collapse | `D5/PT4` | `CLO-5` | `5.4` | STRONG | Change-control / engineering-licensure review failure | — | — |
| 84 | VA Wait-Time Scandal | `D4/PT5` | `CLO-4` | `2.2` | STRONG | Canonical measurement-as-capability-failure; system gamed and protected institution | — | — |
| 85 | GIFT and the Adoption Gap | `D2/PT4` | `CLO-2` | `1.4` | SOLID | Technology and science work; missing institutional adoption pathway | — | — |
| 86 | xAPI / Total Learning Architecture — Interoperability Gap | `D5/PT4` | `CLO-5` | `5.3` | STRONG | Technical standard exists; cross-org data governance has not materialized | — | — |
| 87 | Implementation Science in Healthcare — The 17-Year Gap | `D2/PT4` | `CLO-2` | `1.4` | STRONG | Meta-case for the discipline: research-to-practice adoption/sustainment | — | — |
| 90 | Ariane 5 Flight 501 | `D1/PT1` | `CLO-1` | `7.2` | STRONG | Re-verifying reused safety-critical code against the new operating envelope | — | — |
| 97 | 9/11 Intelligence Sharing Failures | `D5/PT1` | `CLO-5` | `5.3` | STRONG | Cross-agency integration as engineerable architecture; platform-governance seams | — | — |
| 103 | Crew Resource Management & CAST | `D3/PT3` | `CLO-3` | `4.3` | STRONG | Engineered cockpit's authority gradient + communication protocol | — | — |
| 105 | Keystone ICU / Pronovost Checklist | `D3/PT3` | `CLO-3` | `4.1` | STRONG | Checklist plus institution-backed nurse stop authority | — | — |
| 106 | Navy Surface Warfare Readiness Reform | `D2+D4/PT4` | `CLO-4` | `2.3` | SOLID | Paired training/cultural reform whose teaching point is the missing measurement infrastructure | — | — |
| 107 | INPO and the Nuclear Academy | `D5/PT4` | `CLO-5` | `6.1` | STRONG | Industry-level institution built after catastrophe — cross-org capability is engineerable | — | — |
| 108 | Korean Air Safety Transformation | `D3/PT3` | `CLO-3` | `4.3` | STRONG | Redesigned cockpit authority gradient by changing linguistic medium | — | — |
| 109 | Toyota Production System / Andon Cord | `D3/PT3` | `CLO-3` | `4.1` | STRONG | Cheap artifact plus protected frontline halt authority — inseparable pair | — | — |
| 110 | TeamSTEPPS | `D5/PT4` | `CLO-5` | `6.4` | STRONG | Cross-domain capability transfer with funded implementation infrastructure | — | — |
| 111 | U.S. Nuclear Navy / Rickover Training Model | `D1/PT1` | `CLO-1` | `1.4` | STRONG | Qualification regime as a system parameter sustained across decades | — | — |
| 112 | Georgia State University Predictive Analytics | `D4/PT5` | `CLO-4` | `8.3` | STRONG | Construct definition + human-loop architecture turn prediction into support not gatekeeping | — | — |
| 113 | Cognitive Tutor / Carnegie Learning | `D2/PT5` | `CLO-2` | `2.3` | STRONG | Theory → instrument → RCT → scaled deployment; canonical LE iteration pipeline | — | — |
| 114 | Tylenol Recall | `D5/PT3` | `CLO-5` | `4.4` | STRONG | Pre-committed institutional values operational under crisis | — | — |
| 115 | Aviation Safety Reporting System (ASRS) | `D4/PT2` | `CLO-4` | `4.2` | STRONG | Confidential reporting architecture paired with credible non-punitive use | — | — |
| 116 | Bristol Heart Babies Reform | `D4/PT5` | `CLO-4` | `2.1` | STRONG | Risk-adjusted outcomes registry with publication — measuring the failure mode | — | — |
| 117 | Singapore Airlines Safety Transformation | `D5/PT4` | `CLO-5` | `1.4` | SOLID | Sustained capability investment ahead of regulatory minimums | — | — |
| 178 | Tesla Autopilot — Recurring Fatalities | `D3/PT6` | `CLO-3` | `3.2` | STRONG | Passive monitoring of good-enough automation as an unsustainable human role | — | — |
| 179 | Cruise Robotaxi — Pedestrian Drag | `D5/PT4` | `CLO-5` | `5.4` | STRONG | Pre-committed incident-disclosure governance — gap is institutional, not technical | — | — |
| 182 | Predictive Policing — PredPol | `D4/PT5` | `CLO-4` | `8.1` | STRONG | Construct gap between 'where crime occurs' and 'where arrests are recorded' | — | — |
| 183 | AlphaFold — Protein Structure Prediction | `D4+D5/PT2` | `CLO-4` | `2.1` | SOLID | Preconditions around the model — evidence + governance | — | — |

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

- **Three Mile Island** — `lens-anchor` was `D4/PT4` (T&E); content is a control-room interface case with the audit's recommended `induced: 3.1` (cue/alert). Fixed to `D3/PT4`, `CLO-3, CLO-1`. Moved from 4A to 3A.
- **USS Vincennes** — `lens-anchor` was `D2/PT6` (drafted incorrectly; never corrected by the v1→v2.1 remap because D2 doesn't shift). Mode/state-transparency case. Fixed to `D3/PT6`, `CLO-3`. Moved from 2A to 3A.
- **Texas City BP** — `lens-anchor` was `D4/PT5` but induced `5.4` (change-control / disclosure) is governance, not measurement. Fixed to `D5/PT4`, `CLO-5`. Moved from 4A to 5A.

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

**Program docs.** `lens_program/2_LENS_Objectives_Course_Mapping.md` bumped to v2.2: the LDT PLOs of record (03-06-2025) reproduced verbatim at subobjective grain (PLO-1.1–6.4); PLO-5/6 titles corrected; new §4.1 PLO ↔ CLO support map (every PLO area has primary support from ≥1 CLO). `.docx` companions for docs 1–2 regenerated from the `.md` (program-owner round-trip still open). CLO content unchanged from v2.1.

**Verification.** `scripts/check-cases.sh`: **200 cases, 0 failures** after the restructure and again after the K-12 insertion. All three book editions and both overviews rebuilt; see README for page counts.

### Addendum (July 2026): disaster prevention/relief expansion

Five cases added to Part VI on the editor's direction, completing the relief half of the pre/post arc; corpus now **205 cases**, renumbered contiguously (slugs stable):

- 167 Hurricane Katrina / FEMA (failure, response; investigation-tier — House "A Failure of Initiative," Senate "A Nation Still Unprepared," Townsend Report; the Hurricane Pam exercise as the stated-but-unengineered requirement)
- 170 West Africa Ebola delayed response (failure, response; Stocking Report, Harvard-LSHTM Lancet panel; IHR paper-compliance vs. real capability)
- 171 Hurricane Maria / Puerto Rico logistics (failure, response; FEMA's own 2017 AAR + GAO-18-472; both mortality estimates carried with methods, divergence preserved)
- 178 UN humanitarian cluster approach (intervention, recovery; HRR 2005 → IASC clusters → Transformative Agenda; evaluations' hedges preserved)
- 179 JHU COVID-19 Dashboard / Coronavirus Resource Center (intervention, recovery; peer-reviewed record + Lasker recognition; **COI disclosure rendered: an editor leads the APL group that contributed engineering support, editor not personally involved**; the sustainment-was-never-structural hedge is load-bearing)

Insertions are chronological within Part VI's post-phase arcs. Downstream renumbering: old 167→168, 168→169, 169→172, 170–174→+3, 175–200→+5 (closing case now 205). verification-log re-keyed (205 rows); competencies.md lists updated (167/170/171 → 1.1; 178 → 6.1; 179 → 2.1). `scripts/check-cases.sh`: **205 cases, 0 failures.**
