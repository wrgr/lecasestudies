# LEN 1 — Course and Module Objective Record

*Draft, July 2026. The course tier (CLO) and module tier (MLO) beneath the documents of record.*

**Governing documents.** `lens_program/1_LENS_Five_Competencies.md` v2.1 (adopted June 2026) and `lens_program/2_LENS_Objectives_Course_Mapping.md` v2.3 (July 2026), at `github.com/wrgr/lens-concentration`. Where this document and those disagree, those win.

---

## 1. What changed, and what it broke

The repo supersedes the working assumptions the LEN 1 syllabus was built on. Four changes, in order of blast radius:

**The concentration tier is LEO, not COLO.** Doc 2 §4 fixes the hierarchy as PLO → **LEO** (LENS Educational Objective) → CLO → MLO. "COLO" was my coinage for a tier that already had a name. Retired; every tag in the syllabus now reads `[LEO x.y]`.

**The domains renumbered.** v2.1 moved Human-System Collaboration from D5 to D3 and pushed T&E to D4 and Sociotechnical Constraints to D5. Consequences for work already done:

| Concept | Old tag | v2.1 tag |
| --- | --- | --- |
| Gap attribution | 3.2 | **4.2** |
| Requirements for not-yet-fielded systems | 5.4 | **3.5** |
| Cross-boundary communication of specs | 4.4 | **5.4** |
| Adoption and sustainment | 4.5 | **5.5** |
| HSI frameworks | 4.2 | **5.2** |

Every syllabus, every casebook `lens-anchor` field, and every rubric line carrying an old tag now points somewhere else. The repo notes the casebook field remap ships with the v2.1 sync; the ten syllabi are not yet remapped. **The published casebook (pp. 16–17) still carries v1 names and ordering.**

**The 5.4 orphan resolved itself; a real orphan appeared.** LEN 2's `[5.4]` was a stale number, not an error: not-yet-fielded systems is now **3.5**, inside LEO-3, which LEN 2 owns. But v1 **5.3** ("when augmentation helps versus harms") has no v2.1 subobjective number, and LEN 2 assesses it at 20%. See `LENS_Tag_Renumber_v1_to_v21.md` §2 for the arithmetic proof and the options.

**Seven new subobjectives.** Two land in LEN 1's territory (LEO-1, LEO-2): **1.5** governance-objection diagnostic and **2.5** narrate and defend the design iteration in first person. Both are now carried, described below.

---

## 2. CLOs

LEN 1 serves **LEO-1** (Systems Analysis) and **LEO-2** (Iterative Development), and **PLO-1, PLO-2, PLO-3**, per doc 2 §5.2.

| CLO | Statement | LEO | PLO | Assessment |
| --- | --- | --- | --- | --- |
| 1 | Capability as interface; decompose system performance requirements into measurable human capability requirements | 1.1 | 1.3, 1.4 | A1 |
| 2 | Model the learning environment and its host operational system as interacting systems | 1.2 | 2.2 | A1 |
| 3 | Apply lifecycle models to locate capability development decisions | 1.3 | 1.3, 2.2 | A1 |
| 4 | Apply learning sciences principles under operational constraints | 2.1 | 1.1, 1.4, 1.5 | A2 |
| 5 | Execute one complete iteration cycle; narrate and defend it in first person | 2.2, 2.3, 2.5 | 1.5, 2.2, 3.3 | A2 |
| 6 | Analyze a documented coupling failure; brief a mixed audience | 1.4 | 3.2, **4.2 †** | Final |
| 7 | Apply the governance-objection diagnostic | 1.5 | 2.2, 2.3 | Final; Dispositions |

**† Decided (July 2026): PLO-4 is added to LEN 1's mapping.** The final briefing is delivered to a mixed technical and non-technical audience, which is PLO 4.2 on its face. Doc 2 §5.2, §6.1, and §6.3 do not list PLO-4 for LEN 1: the mapping of record described a course that does not exist. Nothing was at risk either way, since PLO-4 is carried by five other courses; this is a correctness fix. The syllabus carries PLO 4.2 with a visible dagger footnoting the divergence from doc 2 and the pending edit. The dagger comes out when doc 2 catches up. See `LENS_v21_Content_Changes.md` §7.2.

**Where 1.5 and 2.5 landed, and why.** 2.5 is unambiguous: the Iteration Cycle Report is the artifact, and "rendering iteration legible" is what the report already asked for without naming it. The assignment now specifies first person and defense of the iteration as run. 1.5 is the judgment call. LEO-1 is carried by LEN 1, 3, 6, and 10, and LEN 3 (LEO-1 + LEO-5) is the other plausible home. I put it in LEN 1 because the coupling-failure case is where a governance objection is concretely on the table, and because the standards-governance-collapse case is a worked example of the diagnostic. If LEN 3 is the better home, the cost of moving is one CLO and one paragraph of the final assignment.

---

## 3. MLOs

MLOs live in the module guide and Canvas, not the syllabus. Module grain, 2 to 4 per module.

| Module | Weeks | Title | CLOs |
| --- | --- | --- | --- |
| 1 | 1–2 | Framing Capability | 1 |
| 2 | 3–4 | Learning Sciences for Capability | 4 |
| 3 | 5–7 | Systems, Lifecycle, and HSI | 2, 3 |
| 4 | 8–10 | The Engineering Cycle | 5, 1 |
| 5 | 11–13 | Coupling, Ethics, and Domains | 6, 7 |
| 6 | 14–15 | Communication and Synthesis | 6 |

---

## 4. Readings, cases, and what the sourcing exposed

**Chapter 4 moved to Week 2.** It now pairs with capability-as-interface: Week 1 introduces the field as a process, Week 2 makes the engineering claim and immediately shows the LENS extension of it. The alternative placement is Week 5, opening Module 3, on the argument that the engineering claim only bites once students have systems vocabulary. Week 2 is the tighter pairing; Week 5 is the slower build. Easy to move.

**One peer-reviewed paper per week.** The Additional Reading column now carries exactly one paper per week, fifteen in total, drawn from the Learning Engineering Commons reading list (lecommons.org, 93 items) except where noted below.

**A case every week, as a slot rather than a selection.** Fifteen case slots, each specified by what the case must teach. No case is named and no identifier is used. Selection happens later; the syllabus and the Course Notes say so.

| Wk | The case must show |
| --- | --- |
| 1 | A public capability failure at launch |
| 2 | A system that required operator capability never specified or trained |
| 3 | An intervention built explicitly on learning sciences principles |
| 4 | An intervention whose transfer claim was tested at scale |
| 5 | A failure whose components and feedback loops can be modeled |
| 6 | A capability decision made at a lifecycle transition |
| 7 | HSI treated as a requirement rather than a checklist |
| 8 | A documented iteration cycle in an operational setting |
| 9 | Capability development sustained at operational tempo |
| 10 | Requirements written so they could be tested |
| 11 | A validated system that was discontinued |
| 12 | A system withdrawn under governance objection |
| 13 | One case per domain: healthcare, defense, education at scale |
| 14 | An initiative whose design argument was communicated and oversold |
| 15 | A closing case spanning all three domains |

Two of these carry design intent worth stating. **Week 12** is the governance-objection diagnostic (LEO 1.5), and the slot is written for it: a case where objections were real, so the question the diagnostic asks — could better design have dissolved them, or did they correctly signal that the system should not deploy — has a genuine answer either way. **Week 13** specifies that at least one case carries a conflict-of-interest disclosure and at least one a non-peer-reviewed evidence tier, and that both are read as part of the case. A course teaching evidence sufficiency should show students what a disclosed conflict and a thin evidence tier look like rather than curating them out.

The casebook source is already on v2.1 anchors, so slot-filling is a selection problem, not a remap problem. The published PDF still carries v1 names and ordering (repo README), which matters for the student-facing edition rather than for this table.

**A citation error propagating across the syllabi.** LEN 1 Week 9 and LEN 3 Week 9 both cite *"Wager (2024), Learning Engineering Enlightenment"* as an anchor for speed, scale, and the flywheel. The source is **Ellen Wagner (2024), "Learning Engineering Enlightenment: Think Like an Engineer," New Learning Frontier**. The author's name is misspelled, and it is an online article series, not a book. It also carries the LENS project context's key-references table, so the error has a second home. Corrected in LEN 1; LEN 3 and the context document still carry it.

Worth a second look regardless: a practitioner blog post is thin support for the flywheel, which is a load-bearing LENS concept. Weeks 9's Additional Readings now add Van Campenhout et al. (2023) and Fensie (2023), both ICLS, as the peer-reviewed evidence that iteration-at-tempo produces the effect the flywheel claims. If nothing peer-reviewed supports the flywheel directly, that is worth knowing before a reviewer asks.

**Five weeks are served below the bar the column sets, and the syllabus says so rather than presenting them as equivalent:**

| Wk | Source | Problem |
| --- | --- | --- |
| 4 | Barnett & Ceci (2002), Psychological Bulletin | Heavily cited and exactly on point, but outside the learning engineering literature; not in lecommons |
| 6 | Blake-Plock et al. (2024), I/ITSEC | Recent; little citation record; page range unconfirmed |
| 10 | Mislevy et al. (2003), ETS Research Report Series | Technical report, not a journal article; heavily cited |
| 11 | Blake-Plock et al. (2023), GIFT Users Symposium | Narrow venue; it is about GIFT rather than an analysis of the adoption failure |
| 12 | Van Campenhout (2021), HCII LNCS 12792 | Adjacent (ethics as a framework) rather than on the governance-objection diagnostic |
| 13 | Schatz et al. (2023), Journal of Military Learning | Professional journal |

Kizilcec and Lee (2022) was dropped rather than carried with an unverified venue.

**Where the field literature reaches, and where it does not.** Weeks 1, 2, 3, 5, 7, 8, 9, 14, and 15 fill cleanly with well-cited peer-reviewed work. The six weeks above do not. Read down that list: transfer, lifecycle, requirements, coupling failure, the governance-objection diagnostic, and domain fluency. Those are the LENS extensions. The gaps in the reading list are the gaps LENS claims to fill, which is a good sign for the positioning argument and a demanding one for the course, because the casebook and the course notes are carrying evidentiary weight a reading list would normally carry. They have to be good.

One consequence worth naming: Weeks 11 and 12 are the intellectual core of Module 5 and neither has a paper that analyzes what the week teaches. If LENS wants peer-reviewed anchors there, someone has to write them. That is a research agenda, not a syllabus problem.

---

## 5. Still open

1. **PLO 4.2 for LEN 1.** Program owner decision. Blocks nothing today; blocks external circulation of the syllabus.
2. **Tag renumber across LEN 2–10.** Nine syllabi carry v1 numbers. LEN 2's `[5.4]` → `[3.5]`; LEN 3, 4, 5, 6, 7, 8, 9, 10 all carry `3.2`, `4.2`, `4.4`, `4.5`, `5.x` tags that now resolve to different subobjectives. Mechanical, but it must happen before any of them circulate alongside doc 1.
3. **The published casebook is on v1 names.** README flags it. Cases tagged to LEN 1's Module 5 need the remap before they are pulled into the LMS.
4. **Three course notes cited but not written:** LENS working definition, the flywheel, the failure-code taxonomy reference.
5. **Doc 1 and doc 2 `.docx` companions await program-owner round-trip.** Noted in the repo README; the syllabus should not circulate ahead of that.
