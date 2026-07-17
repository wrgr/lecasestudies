# LEO Tag Renumber: v1 → v2.1, Applied to LEN 2–10

*July 2026. Mechanical renumber against `lens_program/1_LENS_Five_Competencies.md` v2.1 and `2_LENS_Objectives_Course_Mapping.md` v2.3.*

The June 2026 syllabi for LEN 2 through LEN 10 carry v1 subobjective tags. v2.1 reordered the domains, so those tags now resolve to different competencies. This document gives the map, applies it per syllabus, and records what the map exposed.

---

## 1. The map

**Domain remap is a three-cycle, not a swap.** v1 D3 → v2.1 D4; v1 D4 → v2.1 D5; v1 D5 → v2.1 D3. The repo README describes this as "D3↔D4 swap, D5→D3," which reads as a two-way exchange. It is not: nothing moves *into* D3 from D4. Worth correcting in the README before someone applies the literal instruction.

**Subobjective remap.** Domains 1 and 2 are unchanged and gain 1.5 and 2.5. The rest:

| v1 tag | Concept | v2.1 tag |
| --- | --- | --- |
| 1.1 – 1.4 | (Systems Analysis) | **unchanged**; 1.5 added |
| 2.1 – 2.4 | (Iterative Development) | **unchanged**; 2.5 added |
| 3.1 | Ethical instrumentation | **4.1** |
| 3.2 | Gap attribution | **4.2** |
| 3.3 | Decision-grade evidence artifacts | **4.3** |
| 3.4 | Communicate evidence and uncertainty | **4.5** ← *not 4.4* |
| — | Judgment under inadequate evidence | 4.4 (new) |
| — | Fairness beyond omission | 4.6 (new) |
| 4.1 | Constraint analysis | **5.1** |
| 4.2 | HSI frameworks | **5.2** |
| 4.3 | Expert knowledge elicitation | **5.3** |
| 4.4 | Requirements across boundaries | **5.4** |
| 4.5 | Adoption and sustainment | **5.5** |
| — | Cross-regime / platform-dependency governance | 5.6 (new) |
| 5.1 | Teaming configurations; agency | **3.1** |
| 5.2 | Measured impact on human performance | **3.2** |
| 5.3 | When augmentation helps versus harms | **3.6** (restored; see §2) |
| 5.4 | Requirements for not-yet-fielded systems | **3.5** |
| — | Delegation with revocation | 3.3 (new) |
| — | Collaboration measurement | 3.4 (new) |

**The trap:** v1 3.4 goes to **4.5**, not 4.4. A naive "add one to the domain digit" renumber silently retags every communicate-uncertainty objective in LEN 4, LEN 6, LEN 9, and LEN 10 onto *judgment under inadequate evidence*, which is a different competency. This affects nine tag instances.

---

## 2. v1 5.3 restored as 3.6 — resolved

**The arithmetic that found it.** v1 had 21 subobjectives (4 + 4 + 4 + 5 + 4). v2.1 has 27 (5 + 5 + 5 + 6 + 6). Doc 1 names seven additions: 1.5, 2.5, 3.3, 3.4, 4.4, 4.6, 5.6. 21 + 7 = 28, not 27. Exactly one v1 subobjective was dropped, and mapping the rest 1:1 left v1 **5.3** — "Recommend, with evidence, when AI augmentation improves versus degrades capability outcomes and operator agency" — without a home. The concept survived in doc 2's LEO-3 prose and lost its number.

**Decision (July 2026): restore as 3.6, carried by LEN 2.** Doc 1 §Crosswalk states the scheme renumbers cleanly, so the addition costs nothing structurally. LEN 2 assesses the concept at 20% and tags it on three course objectives; the alternative was retiring an assessment that already exists and works.

**Edit required in `lens_program/1_LENS_Five_Competencies.md` (doc 1), §3:**

> 3.6  Communicate evidence-based recommendations for when system augmentation improves versus degrades capability outcomes and operator agency.

Generalized from the v1 wording: "system augmentation" rather than "AI augmentation," matching v2.1's broadening of LEO-3 from machine teaming to human-system collaboration. Doc 1's change log needs a v2.2 entry recording the restoration and noting that the v2.1 sweep dropped it without a change-log entry. Doc 2 needs no edit: its LEO-3 prose already carries the sentence.

All `3.6` markers in §3 below are now `3.6`.

## 3. Per-syllabus changes

### LEN 2 — Human-AI Teaming and Adaptive Learning Systems
Concentration mapping: LEO-3. PLO-1, 2, 4, 5.

| Location | v1 | v2.1 |
| --- | --- | --- |
| Objective 1 (teaming configurations, agency) | 5.1 | 3.1 |
| Objective 2 (measured impact; automation bias, offloading) | 5.2 | 3.2 |
| Objective 3 (when augmentation helps versus harms) | 5.3 | **3.6** |
| Objective 4 (not-yet-fielded systems) | 5.4 | **3.5** |
| Objective 5 (prototype-instrument-refine) | 2.2, 5.2 | 2.2, 3.2 |
| Objective 6 (AI risk/opportunity to non-technical) | 5.3, 3.4 | **3.6**, 4.5 |
| Wk 1, 2, 5 tags | 5.1 | 3.1 |
| Wk 3, 4, 7 tags | 5.2 | 3.2 |
| Wk 6, 8 tags | 5.1/2.2, 2.2/5.2 | 3.1/2.2, 2.2/3.2 |
| Wk 9, 11, 13 tags | 5.3, 5.2/5.3, 5.3/3.4 | 3.6, 3.2/3.6, 3.6/4.5 |
| Wk 12 tag | 5.4 | 3.5 |
| Assessment: A1 | 5.1 | 3.1 |
| Assessment: Iteration log | 2.2, 5.2 | 2.2, 3.2 |
| Assessment: A2 (recommendation memo, 20%) | 5.3, 3.4 | **3.6**, 4.5 |
| Assessment: Final portfolio | 5.1, 5.2, 5.3, 5.4 | 3.1, 3.2, **3.6**, 3.5 |

**Content changes required (decided July 2026).** LEN 2 takes **3.1 at full breadth** (role architectures, interface and alert systems, mode and state transparency, authority gradients, recoverability) and **3.4** (collaboration measured as a unit of analysis). Neither is in the current schedule. See `LENS_v21_Content_Changes.md` §2 for the week-level specification and what it displaces.

### LEN 3 — Learning Engineering Systems
Concentration mapping: LEO-1, LEO-5. PLO-2, 3, 4, 5.

| Location | v1 | v2.1 |
| --- | --- | --- |
| Objective 2 (HSI frameworks) | 4.2 | 5.2 |
| Objective 3 (regulatory/organizational constraints) | 4.1 | 5.1 |
| Objective 6 (adoption/sustainment; communicate across boundaries) | 4.5, 4.4 | 5.5, 5.4 |
| Wk 2 | 4.2 | 5.2 |
| Wk 4 | 4.1 | 5.1 |
| Wk 5, 6, 7 (domain studios) | 4.1, 4.2 | 5.1, 5.2 |
| Wk 10 | 1.3, 4.4 | 1.3, 5.4 |
| Wk 12 | 4.5 | 5.5 |
| Wk 13 | 4.4 | 5.4 |
| Assessment: Domain briefs | 4.1, 4.2 | 5.1, 5.2 |
| Assessment: Midterm | 1.2, 4.1 | 1.2, 5.1 |
| Assessment: Final | 1.3, 1.4, 4.4, 4.5 | 1.3, 1.4, 5.4, 5.5 |
| Assessment: Sustainment register | 4.5 | 5.5 |

**Content changes required (decided July 2026).** LEN 3 takes **5.6** (cross-regime / platform-dependency governance) at Wk 10, the xAPI standards-governance week. No mapping change: LEN 3 already carries LEO-5. This closes the last elective-only gap. Wk 9's "Wager (2024)" is **Wagner (2024)**, same error as LEN 1 Wk 9. See `LENS_v21_Content_Changes.md` §3.

### LEN 4 — Evidence, Analytics, and Measurement
Concentration mapping: LEO-4. PLO-2, 4, 6.

| Location | v1 | v2.1 |
| --- | --- | --- |
| Objectives 1, 2 (ethical instrumentation; constructs) | 3.1 | 4.1 |
| Objective 3 (gap attribution) | 3.2 | 4.2 |
| Objective 4 (decision-grade artifacts) | 3.3 | 4.3 |
| Objective 5 (pipelines) | 3.3, 2.2 | 4.3, 2.2 |
| Objective 6 (communicate uncertainty) | 3.4 | **4.5** |
| Wk 1 | 3.3 | 4.3 |
| Wk 2, 3, 4, 7 | 3.1 | 4.1 |
| Wk 8, 9 | 3.2 | 4.2 |
| Wk 10 | 3.3, 2.2 | 4.3, 2.2 |
| Wk 11, 12 | 3.3 | 4.3 |
| Wk 13 | 3.4 | **4.5** |
| Assessment: A1 | 3.1 | 4.1 |
| Assessment: A2 | 3.2 | 4.2 |
| Assessment: Final | 3.3, 3.4 | 4.3, **4.5** |

**Content changes required (decided July 2026).** LEO-4 happens in LEN 4. Both v2 additions — **4.4** (judgment under inadequate evidence) and **4.6** (fairness beyond omission) — are taught and assessed here, not deferred to an elective. See `LENS_v21_Content_Changes.md` §3.

### LEN 5 — Human Capability Analysis and Requirements (elective)
Concentration mapping: LEO-1, LEO-5. PLO-1, 6.

| Location | v1 | v2.1 |
| --- | --- | --- |
| Objective 2, 5 (elicitation) | 4.3 | 5.3 |
| Objective 3 (requirements translation) | 1.1, 4.4 | 1.1, 5.4 |
| Objective 6 (communicate to teams) | 4.4 | 5.4 |
| Wk 4, 5, 6, 7, 12 | 4.3 | 5.3 |
| Wk 10 | 1.1, 4.4 | 1.1, 5.4 |
| Wk 11 (casebook cases tagged 1.1/3.2) | 3.2 | 4.2 |
| Wk 13 | 4.4 | 5.4 |
| Assessment: A1 | 4.3 | 5.3 |
| Assessment: A2 | 1.1, 4.4 | 1.1, 5.4 |
| Assessment: Final | 1.1, 1.4, 4.3, 4.4 | 1.1, 1.4, 5.3, 5.4 |

### LEN 6 — Applied Problem Solving (methods)
Concentration mapping: LEO-1, LEO-2, LEO-5. PLO-1, 3, 4, 6.

| Location | v1 | v2.1 |
| --- | --- | --- |
| Objective 2 (stakeholder analysis) | 4.1 | 5.1 |
| Objective 3 (elicit/validate with SMEs) | 4.3 | 5.3 |
| Objective 5 (requirements translation) | 4.4 | 5.4 |
| Objective 6 (communicate analyses) | 1.4, 3.4 | 1.4, **4.5** |
| Wk 2 | 4.1 | 5.1 |
| Wk 3, 5, 8, 11 | 4.3 | 5.3 |
| Wk 6, 12 | 2.2, 3.4 | 2.2, **4.5** |
| Wk 13 | 4.4 | 5.4 |
| Assessment: Framing memos | 1.1, 4.3 | 1.1, 5.3 |
| Assessment: Problem analyses | 1.2, 2.2, 3.4 | 1.2, 2.2, **4.5** |
| Assessment: Requirements translation | 4.4 | 5.4 |
| Assessment: Final portfolio | 1.4, 3.4, 4.4 | 1.4, **4.5**, 5.4 |

### LEN 7 — Bias, Risk, and Governance (elective)
Concentration mapping: LEO-5. PLO-2, 5.

| Location | v1 | v2.1 |
| --- | --- | --- |
| Objectives 1, 2, 3, 5 (bias, risk, equity, regulation) | 4.1 | 5.1 |
| Objective 4 (governance structures) | 4.5 | 5.5 |
| Objective 6 (communicate to leadership) | 4.4, 3.4 | 5.4, **4.5** |
| Wk 2, 3, 5, 6, 7, 10 | 4.1 | 5.1 |
| Wk 8, 9, 11, 12 | 4.5 | 5.5 |
| Wk 13 | 4.4, 3.4 | 5.4, **4.5** |
| Assessment: A1 | 4.1 | 5.1 |
| Assessment: A2 | 4.5 | 5.5 |
| Assessment: Final | 4.1, 4.4, 4.5 | 5.1, 5.4, 5.5 |

**Content changes required (decided July 2026).** LEN 7 goes deeper on **4.6**, which LEN 4 now establishes, and takes **5.6** (cross-regime / platform-dependency governance). LEN 7's concentration mapping changes from LEO-5 to **LEO-4, LEO-5**, which is a doc 2 §5.5 and §6.2 edit. See `LENS_v21_Content_Changes.md` §4.

### LEN 8 — Knowledge Transfer and Organizational Learning (elective)
Concentration mapping: LEO-2, LEO-5. PLO-3, 4.

| Location | v1 | v2.1 |
| --- | --- | --- |
| Objective 1 (where knowledge lives/moves/is lost) | 4.3, 1.2 | 5.3, 1.2 |
| Objectives 3, 4 (implementation science; sustainment) | 2.4, 4.5 | 2.4, 5.5 |
| Objective 6 (communicate to leadership) | 4.4 | 5.4 |
| Wk 1, 8, 9 | 4.5 | 5.5 |
| Wk 4 | 4.3 | 5.3 |
| Wk 13 | 4.4 | 5.4 |
| Assessment: A1 | 1.2, 4.3 | 1.2, 5.3 |
| Assessment: A2 | 2.4, 4.5 | 2.4, 5.5 |
| Assessment: Final | 1.4, 2.4, 4.4 | 1.4, 2.4, 5.4 |

### LEN 9 — Computational and AI Methods (elective)
Concentration mapping: LEO-4, LEO-3. PLO-1, 4, 6.

| Location | v1 | v2.1 |
| --- | --- | --- |
| Objectives 1, 2 (NLP; ML learner modeling) | 3.1 | 4.1 |
| Objective 3 (LLM-as-judge validation) | 3.1, 5.2 | 4.1, 3.2 |
| Objective 4 (computational tools as partners) | 5.1 | 3.1 |
| Objective 5 (impact on evidence quality) | 3.3 | 4.3 |
| Objective 6 (communicate to non-technical) | 3.4 | **4.5** |
| Wk 2, 3, 5, 6, 12 | 3.1 | 4.1 |
| Wk 7 | 5.1 | 3.1 |
| Wk 9 | 3.1, 5.2 | 4.1, 3.2 |
| Wk 10 | 3.3 | 4.3 |
| Wk 11 | 3.3, 5.2 | 4.3, 3.2 |
| Wk 13 | 3.4 | **4.5** |
| Assessment: Labs, A1 | 3.1 | 4.1 |
| Assessment: A2 | 3.1, 5.2 | 4.1, 3.2 |
| Assessment: Final | 3.3, 3.4, 5.1 | 4.3, **4.5**, 3.1 |

**Also:** LEN 9 Wk 12 (fairness audit; subgroup harms) is **4.6** verbatim. Wk 7 (LLMs as creative partners, "documenting the division of labor") is adjacent to **3.3**, delegation with revocation. Both untagged.

### LEN 10 — Learning Engineering Project (capstone)
Concentration mapping: all five LEOs. PLO-2, 3, 4, 6.

| Location | v1 | v2.1 |
| --- | --- | --- |
| Objective 2 (model context; sociotechnical constraints) | 1.2, 4.1 | 1.2, 5.1 |
| Objective 3 (intervention with instrumentation) | 2.1, 2.2, 3.1 | 2.1, 2.2, 4.1 |
| Objective 4 (gap attribution; operational impact) | 3.2, 1.4 | 4.2, 1.4 |
| Objective 5 (three signature deliverables) | 3.3 | 4.3 |
| Objective 6 (communicate; AI teaming implications) | 3.4, 4.4, 5.3 | **4.5**, 5.4, **3.6** |
| Wk 2 | 1.1, 4.1 | 1.1, 5.1 |
| Wk 4 | 1.2, 4.1, 2.1 | 1.2, 5.1, 2.1 |
| Wk 5 | 2.1, 3.1 | 2.1, 4.1 |
| Wk 6 | 3.1 | 4.1 |
| Wk 7 | 4.4 | 5.4 |
| Wk 9 | 2.2, 4.5 | 2.2, 5.5 |
| Wk 10 | 3.2 | 4.2 |
| Wk 12, 13 | 3.3, 3.4 | 4.3, **4.5** |
| Assessment: M1 | 1.1, 4.1 | 1.1, 5.1 |
| Assessment: M2 | 2.1, 3.1 | 2.1, 4.1 |
| Assessment: M3 | 4.4 | 5.4 |
| Assessment: Dashboard | 3.3 | 4.3 |
| Assessment: Reproducible report | 2.2, 3.2, 3.3 | 2.2, 4.2, 4.3 |
| Assessment: Governance plan | 3.1, 4.1 | 4.1, 5.1 |
| Assessment: Final briefing | 3.4, 4.4, 5.3 | **4.5**, 5.4, **3.6** |

**Content changes required (decided July 2026).** LEN 10 assesses LEO-3 rather than asserting it. The "where present" condition is deleted; Milestone 2 gains a human-system boundary specification (3.1) and the instrumentation plan and reproducible report gain a unit-of-analysis commitment (3.4). See `LENS_v21_Content_Changes.md` §5.

---

## 4. Summary

**Mechanical.** 87 tag instances change across nine syllabi. Nine of them (v1 3.4 → **4.5**, not 4.4) are the ones a find-and-replace gets wrong; they are applied correctly above.

**Resolved.** v1 5.3 restored as 3.6 (§2), carried by LEN 2.

**Content changes decided**, specified in `LENS_v21_Content_Changes.md`:
- LEN 2 takes 3.1 at full breadth, 3.3, and 3.4: all six LEO-3 subobjectives.
- LEO-4 happens in LEN 4: 4.4 and 4.6 taught and assessed there.
- LEN 7 goes deeper on 4.6 and takes 5.6; its LEO mapping gains LEO-4.
- LEN 10 assesses LEO-3 at Milestone 2, Milestone 3, and the reproducible report.
- LEN 3 takes 5.6 at Wk 10. All seven v2 additions are now taught in required courses.

**Also decided:** PLO-4 added to LEN 1's mapping; LEN 2 retitled "Human-Machine Teaming and Adaptive Learning Systems." Both are governance items rather than curriculum ones. See `LENS_v21_Content_Changes.md` §7.

**Still open: one fact.** Whether PP24181 filed the course titles and the PLO-to-course mapping, or only the program objectives and curriculum structure. It determines whether the §8 edit batch is a document revision or an amendment. One question for Diamond, with a large blast radius.

**Small corrections.** LEN 3 Wk 9 carries the same Wagner-misspelled-as-Wager citation as LEN 1. The repo README describes the domain remap as a "D3↔D4 swap"; it is a three-cycle (D3→D4, D4→D5, D5→D3), and the literal instruction produces a wrong result.
