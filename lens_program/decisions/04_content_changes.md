# v2.1 Content Changes: LEN 2, LEN 3, LEN 4, LEN 7, LEN 10

*July 2026. Companion to `LENS_Tag_Renumber_v1_to_v21.md`. Week-level specification of the content decisions, at 15 weeks per course.*

The renumber was mechanical. These are not. v2.1 broadened LEO-3 and added seven subobjectives; four of them had no home in a required course. Three decisions close that gap. Each costs schedule, and a 15-week term is zero-sum, so each section says what is added and what pays for it.

---

## 1. The decisions

| # | Decision | Consequence |
| --- | --- | --- |
| 1 | v1 5.3 restored as **3.6**, carried by LEN 2 | Doc 1 §3 edit; LEN 2's 20% recommendation memo survives |
| 2 | v1 3.4 renumbers to **4.5**, not 4.4 | Applied across LEN 4, 6, 9, 10 (9 instances) |
| 3 | LEN 2 takes **3.1 at full breadth**, **3.3**, and **3.4** | +3 weeks of new content in LEN 2 |
| 4 | **LEO-4 happens in LEN 4**: 4.4 and 4.6 taught and assessed | +2 weeks of new content in LEN 4 |
| 5 | LEN 7 goes deeper on 4.6 and takes **5.6** | LEN 7's LEO mapping gains LEO-4 |
| 6 | **LEN 10 assesses LEO-3**; "where present" deleted | Milestone 2 and the reproducible report gain requirements |
| 7 | **LEN 3 takes 5.6** | No mapping change; LEN 3 already carries LEO-5 |
| 8 | **PLO-4 added to LEN 1's mapping** | Doc 2 §5.2, §6.1, §6.3 edits |
| 9 | **LEN 2 retitled: "machine," not "AI"** | Title and SIS descriptor; ride the course-number assignment |
| 10 | **Framing: high-consequence domains, representative seven** | Replaces the healthcare/defense/education triad. Doc 2 §1, §4, §5.2, §5.3; README; recruitment email; LEN 3 and LEN 6 studios. See `LENS_Framing_High_Consequence_Domains.md` |

Decisions 3, 4, and 7 mean the concentration no longer defers required competencies to electives: all seven v2 additions are now taught in required courses. Decision 6 means the capstone attainment profile can honestly claim all five domains.

---

## 2. LEN 2 — Human-Machine Teaming and Adaptive Learning Systems

**LEO-3 (all of it).** LEN 2 is the only required course carrying LEO-3, so what LEN 2 omits, the program omits. Subobjectives to cover: 3.1, 3.2, 3.3, 3.4, 3.5, 3.6. All six.

**What 3.1 now demands.** v1 5.1 asked for "human-AI teaming configurations that preserve agency." v2.1 3.1 asks for *role architectures, interface and alert systems, mode and state transparency, authority gradients, and recoverability mechanisms*. That is five named design objects. The current schedule treats configuration design as a studio activity (Weeks 6 and 8) without teaching the objects. **3.1 is not a retag; it is two weeks of new material.**

**What 3.3 demands.** Design the human oversight layer for delegated work, and specify in advance the disconfirming evidence that would revoke the delegation. This is structurally the same move as 4.4 in LEN 4: name what would change your mind before you need to. It belongs with authority gradients, since delegation is an authority allocation and revocation is its reversal. **No new week; it joins Week 2.**

**What 3.4 demands.** Measuring the capability of a team or collaboration as a unit of analysis, distinct from any individual operator or system component. Nothing in the current schedule does this. Week 7 (instrumenting human performance) measures the human. **One new week.**

### Proposed 15-week schedule

| Wk | Topic | Tags | Status |
| --- | --- | --- | --- |
| 1 | Human-system collaboration as a design challenge; automation changes the job rather than removing it; AI as one sub-pattern | 3.1 | revised framing |
| 2 | **Role architectures, authority gradients, and delegation with revocation**: who decides what, how authority is allocated at the boundary, what is delegated, and the disconfirming evidence that takes it back | **3.1, 3.3** | **new** |
| 3 | **Mode and state transparency, interfaces, alerts, and recoverability**: the design objects 3.1 names | **3.1** | **new** |
| 4 | AI as creative partner: generation, adaptation, evaluation; the partnership stance | 3.1 | was Wk 2 |
| 5 | Trust and automation bias; calibrated trust; misuse, disuse, abuse | 3.2 | was Wk 3 |
| 6 | Cognitive offloading, skill atrophy, and epistemic risk | 3.2 | was Wk 4 |
| 7 | Agency as a design property; compliance versus judgment | 3.1 | was Wk 5 |
| 8 | Prototype studio I: design a collaboration configuration against a capability requirement | 3.1, 2.2 | was Wk 6; **A1 due** |
| 9 | Instrumenting human performance: what the collaboration does to the human | 3.2 | was Wk 7 |
| 10 | **Measuring the collaboration as a unit**: team capability distinct from operator or component | **3.4** | **new** |
| 11 | Prototype studio II: evaluate and refine; one documented iteration | 2.2, 3.2, 3.4 | was Wk 8 |
| 12 | Equity and sociocultural dimensions: whose data, whose defaults, differential impacts | — (PLO-5) | was Wk 10 |
| 13 | When augmentation helps versus harms; complementarity; reasoning under uncertainty | 3.6 | was Wk 9 |
| 14 | Designing for systems not yet fielded; high-consequence cases | 3.5, 3.2 | merged Wks 11 + 12 |
| 15 | Communicating risk and opportunity; synthesis and portfolio | 3.6, 4.5 | merged Wks 13 + 14 |

**What paid for it.** Fourteen weeks became fifteen (+1). Three new weeks needed four. Two merges: high-consequence cases folded into Week 14 alongside not-yet-fielded systems, and the communication week folded into synthesis, whose deliverable is the briefing anyway. The same merge logic was applied in LEN 1.

**Assessment changes.**
- A1 (Teaming configuration proposal, 15%) → **Collaboration configuration proposal**. Must specify role architecture, authority gradient, mode/state transparency, and recoverability mechanism, not just an AI configuration with agency constraints. Where the configuration delegates work, it must state the revocation condition: the disconfirming evidence that would take the delegation back. Tags **3.1, 3.3**.
- Iteration log (15%) → tags 2.2, 3.2, **3.4**. Add a collaboration-level measure alongside the human-performance measure.
- A2 (Recommendation memo, 20%) → tags **3.6**, 4.5. Unchanged in substance; this is the assessment that decision 1 preserves.
- Final portfolio (30%) → tags 3.1, **3.3**, 3.2, **3.4**, 3.5, **3.6**.

**Title change (decided July 2026): "Human-AI Teaming and Adaptive Learning Systems" becomes "Human-Machine Teaming and Adaptive Learning Systems."** See §7.3.

---

## 3. LEN 3 — Learning Engineering Systems

**LEN 3 takes 5.6 (cross-regime / platform-dependency governance).** No mapping change is required: LEN 3 already carries LEO-1 and LEO-5, and 5.6 sits in LEO-5. This is the cheapest of the seven placements, and it is the one that closes the last elective-only gap.

**Why Week 10 is the right site.** Week 10 is "Integration across disparate systems: interoperability, data standards, and governance; the xAPI lesson: standards fail institutionally before they fail technically." 5.6 asks students to design the governance seam where capability is deployed on a platform governed by a different regime than the one operating it. That is the xAPI lesson stated as a design requirement rather than a cautionary tale. The week already teaches the diagnosis; 5.6 adds the deliverable.

### Changes

**New course objective.** LEN 3's sixth objective currently bundles adoption barriers with cross-boundary communication. Split it and add the seam:

> Where capability is deployed on a platform governed by a different regime than the one operating it, design the governance seam as an explicit deliverable. **[5.6]**

**Week 10** gains the seam as a produced artifact, not a discussion. The existing activity ("case analysis: an integration failure, coded with the failure taxonomy") stays; students then specify the seam the failed integration lacked. Tags **1.3, 5.4, 5.6**.

**Week 12 (adoption and sustainment)** already asks who owns the intervention. Where the owner and the platform operator sit under different regimes, the sustainment risk register must name it. Tags **5.5, 5.6**.

**Assessment changes.**
- Final: system-level design and design review (35%) → tags 1.3, 1.4, 5.4, 5.5, **5.6**. Where the design's deployment context has a cross-regime seam, the design specifies it; where it does not, the design says so and why. Same structure as LEN 10's unit-of-analysis commitment: the argument is an acceptable answer, the silence is not.
- Sustainment risk register (10%) → tags 5.5, **5.6**.
- Weights unchanged.

**Also required in LEN 3, independent of 5.6:**
- **14 weeks to 15.** The merge that produced 14 needs reversing, as in LEN 1.
- **Week 9 cites "Wager (2024)."** It is **Wagner, E. (2024), "Learning engineering enlightenment: Think like an engineer," New Learning Frontier.** Same error as LEN 1 Week 9, and the same one carried in the LENS project context's key-references table. An online article series, not a book.

---

## 4. LEN 4 — Evidence, Analytics, and Measurement for High-Consequence Domains

**LEO-4 happens here.** Subobjectives: 4.1, 4.2, 4.3, 4.4, 4.5, 4.6. Two are new to the course.

**4.6 (fairness beyond omission)** is the one with program-level consequences. Doc 2 §4.1 routes PLO-5.3 and PLO-5.4 to LEO-4 *through* 4.6. With 4.6 in an elective, PLO-5 inside the concentration rested on a discussion in LEN 2 and an embedded constraint layer in LEN 3. Putting 4.6 in LEN 4 gives PLO-5 an assessed home in a required course for the first time.

**4.4 (judgment under inadequate evidence)** carries the reframing of decision-grade evidence as a sufficiency judgment under irreducible uncertainty. That reframing is the program's signature move on its signature term. It cannot live in an elective.

**4.4 is distinct from 4.5, and from 4.3.** 4.3 constructs the artifact and states what is known, assumed, and decision-changing. 4.5 communicates the uncertainty. 4.4 *makes the call anyway* and documents the basis. The current Week 13 (communicating uncertainty) is 4.5 and does not cover 4.4.

### Proposed 15-week schedule

| Wk | Topic | Tags | Status |
| --- | --- | --- | --- |
| 1 | Decision-grade evidence as a sufficiency judgment under irreducible uncertainty; the field's evidence gap | 4.3 | reframed |
| 2 | Operationalizing capability constructs; the operator-system interface as the thing measured | 4.1 | — |
| 3 | Measurement quality: validity and reliability under operational constraint | 4.1 | narrowed |
| 4 | **Fairness beyond omission**: why dropping a protected attribute does not establish fairness; competing fairness definitions; demographic-stratified outcome evidence | **4.6** | **new** |
| 5 | Ethical instrumentation and data governance | 4.1 | was Wk 4 |
| 6 | Qualitative evidence for capability | — | was Wk 5 |
| 7 | Quantitative methods and learning analytics | — | was Wk 6 |
| 8 | Mixed methods integration | 4.1 | was Wk 7; **A1 due** |
| 9 | Gap attribution I: frameworks | 4.2 | was Wk 8 |
| 10 | Gap attribution II: applied diagnosis | 4.2 | was Wk 9 |
| 11 | Evidence pipelines at speed and scale | 4.3, 2.2 | was Wk 10 |
| 12 | Decision-grade artifacts: dashboards and reproducible reports | 4.3 | was Wk 11 |
| 13 | Linking learning to operational impact; impact pathways; the limits of causal claims | 4.3 | was Wk 12; **A2 due** |
| 14 | **Judgment under inadequate evidence**: justify a consequential decision on incomplete and contested evidence; document the basis; name what would change it | **4.4** | **new** |
| 15 | Communicating uncertainty; synthesis: the evidence package | 4.5 | merged Wks 13 + 14 |

**What paid for it.** Fourteen weeks became fifteen (+1). Two new weeks needed two. Week 3 narrows: fairness moves out of "validity, reliability, and fairness" into its own Week 4, which is where it belonged once 4.6 named what it requires. The communicating-uncertainty week merges into synthesis, whose deliverable is the briefing that states uncertainty.

**Assessment changes.**
- A1 (Instrumentation strategy, 20%) → tags 4.1, **4.6**. Add a fairness argument: which fairness definition the instrumentation assumes, what stratified evidence would test it, and why omitting the attribute would not settle it.
- A2 (Gap attribution analysis, 20%) → tags 4.2. Unchanged.
- Final (Evidence package, 40%) → tags 4.3, **4.4**, 4.5. Add a **decision memo** to the package: a consequential recommendation justified on the evidence actually available, with the basis documented and the disconfirming evidence named. This is 4.4's assessment and it belongs in the package rather than as a separate assignment, since the point is that the decision comes from the same evidence base.

**Weights unchanged.** Labs and discussions 20%, A1 20%, A2 20%, Final 40%.

---

## 5. LEN 7 — Bias, Risk, and Governance in Learning System Design (elective)

**LEN 7 goes deeper, and its mapping changes.** LEN 4 establishes 4.6; LEN 7 takes it further. LEN 7 also takes 5.6, which currently sits in no course.

**Doc 2 edits required.** §5.5: LEN 7's concentration objectives become **LEO-4, LEO-5** (was LEO-5). §6.2: add an elective mark in the LEO-4 column for LEN 7. Its PLO mapping (PLO-2, PLO-5) is unchanged and is in fact better supported now, since 4.6 is the LEO-4 route to PLO-5.3 and 5.4.

**Week-level changes, minimal.** LEN 7 already teaches this material; it was not tagged because the tags did not exist.

| Wk | Topic | Tag change |
| --- | --- | --- |
| 2 | Algorithmic bias: sources and mechanisms; formal fairness notions and their conflicts | 5.1 → **5.1, 4.6** |
| 7 | Regulated environments: FERPA, HIPAA, federal and defense data constraints | 5.1 → **5.1, 5.6** |
| 10 | Equity impact evaluation; measurable equity claims | 5.1 → **5.1, 4.6** |
| 11 | AI-specific governance; governing adaptive systems that change after deployment | 5.5 → **5.5, 5.6** |

**One content addition.** 5.6 is specifically about *cross-regime* deployment: capability running on a platform governed by a different regime than the one operating it, with the governance seam as an explicit deliverable. Week 11 governs adaptive systems but does not name the seam. Add the seam as a required element of the Week 12 governance plan studio and of the Assignment 2 governance plan.

**Assessment changes.**
- A1 (Risk assessment, 20%) → tags 5.1, **4.6**. The affected-population analysis becomes a stratified-outcome analysis.
- A2 (Draft governance plan, 20%) → tags 5.5, **5.6**. Add the cross-regime governance seam where the deployment context has one.
- Final (Governance package, 40%) → tags 5.1, 5.4, 5.5, **4.6**, **5.6**.

**Prerequisite note.** LEN 7 currently recommends F2 first. If LEN 7 now deepens 4.6 rather than introducing it, **LEN 4 should be recommended as well**, or the depth has nothing to sit on for students who take LEN 7 early.

---

## 6. LEN 10 — Learning Engineering Project (capstone)

**The problem the fix closes.** Doc 2 §6.2 marks LEN 10 as covering **LEO-3**; the catalog says the capstone "integrates all five competency domains"; the Course Notes say the attainment profile "aggregates them across all five domains and is offered as evidence toward validation of the field competency framework in development with the IEEE ICICLE community." The syllabus contains exactly one LEO-3 reference: a trailing clause on a communication objective, "including human-AI teaming implications where present." No milestone requires it, no deliverable requires it, no rubric line scores it. The one tag landing in LEO-3 is 3.6, the *communicate a recommendation* subobjective, attached to a *communication* objective.

**Why the condition has to go.** Under v1, LEO-3 was Machine Teaming and Adaptation; a capstone with no AI component genuinely had no machine teaming, so "where present" was a reasonable hedge. Under v2.1, LEO-3 is Human-System Collaboration, and doc 1 states that human-AI teaming is "one sub-pattern within it, not a separate domain." Every capability intervention in a partner organization has a human-system boundary. There is no capstone where LEO-3 is absent. The condition is a leftover from the narrow framing.

**Why the broadening makes the fix cheap.** Because LEO-3 now covers human-system collaboration generally, the capstone requirement can be generic. It does not need an AI component to bite. It asks about a boundary every project already has.

### Changes

**Objective 2** gains the boundary:

> Model the project context as interacting systems, specify the human-system boundary within it, and analyze the sociotechnical constraints that govern what can be built and sustained there. **[1.2, 3.1, 5.1]**

**Objective 6** loses the condition:

> Communicate findings, uncertainty, and recommendations to the partner organization and to technical and non-technical audiences, ~~including human-AI teaming implications where present~~. **[4.5, 5.4, 3.6]**

**Week 4 (system framing, constraints, and theory of change).** The system model must specify the human-system boundary in the partner context: who holds which role, how authority is allocated across the boundary, and what recovers the system when the collaboration fails. Tags **3.1**. This is a required element of the deliverable, not a prompt.

**Week 6 (instrumentation plan).** The plan must state its unit of analysis and defend it: at least one collaboration-level measure, or an argument that the individual operator is the correct unit for this context. Tags **3.4**. The argument is an acceptable answer; the silence is not.

**Week 14 (reproducible report and governance plan).** The report carries whichever the Week 6 plan committed to: the collaboration-level measure and what it showed, or the defense of the individual as the unit, tested against what the data revealed. Tags **3.4**.

### Proposed 15-week schedule

| Wk | Topic | Change |
| --- | --- | --- |
| 1 | Project scoping; site selection; feasibility within **15** weeks | text |
| 2 | Problem framing and stakeholder mapping — **M1: project charter** | — |
| 3 | Capability requirements definition | — |
| 4 | System framing, constraints, and theory of change | **+ human-system boundary spec [3.1]** |
| 5 | Design proposal and governance scoping — **M2: design proposal** | M2 now carries the boundary spec |
| 6 | Instrumentation plan | **+ unit-of-analysis commitment [3.4]** |
| 7 | Midpoint design review — **M3** | — |
| 8 | Implementation and data collection I | — |
| 9 | Implementation and data collection II | — |
| 10 | **Implementation and data collection III** | **new** (the free week from 14 → 15) |
| 11 | Analysis and gap attribution | was Wk 10 |
| 12 | Refine: close the iteration | was Wk 11 |
| 13 | Evidence dashboard | was Wk 12 |
| 14 | Reproducible report and governance plan | was Wk 13; **+ collaboration measure [3.4]** |
| 15 | Final briefing and portfolio | was Wk 14 |

**Where the free week went.** Implementation and data collection was two weeks in a course whose entire premise is executing in a real partner organization. Partner scheduling slips; IRB determinations land late; data quality problems surface in week two of collection and leave no room to respond. A third implementation week is the least speculative use of the fifteenth week, and it does not compete with the LEO-3 additions, which are requirements inside existing deliverables rather than new sessions.

**Assessment changes.**
- M2 (Design proposal, 10%) → tags 2.1, **3.1**, 4.1.
- Instrumentation is assessed within M3 (Midpoint design review, 15%) → tags 5.4, **3.4**.
- Reproducible report (25%) → tags 2.2, **3.4**, 4.2, 4.3.
- Final briefing (15%) → tags **3.6**, 4.5, 5.4.
- Weights unchanged. Milestone 1, dashboard, and governance plan unchanged.

**Course Notes.** The attainment-profile sentence can now stand as written: with LEO-3 assessed at M2, M3, and the report, the profile aggregates rubric lines across all five domains and the LECF validation claim has evidence under every one.

---

## 7. The last two items — decided

Both are decided. Neither is a curriculum question; both are governance items, and both are settled below. One question remains for discussion with the program owner. It does not gate the edits.

### 7.1 For discussion with Diamond, not a gate

Doc 2 §2 says: "Program structure is fixed by MHEC approval. The total number of courses (10) and the number of concentration-specific courses (3) are not subject to change within the next two to three years. Course content within the concentration, methods, capstone, and elective slots is shapeable."

That tells us the *counts* are filed and the *content* is not. It is silent on the two things in between: **course titles** and the **PLO-to-course mapping**.

**Flag for discussion:** *does PP24181 contain the course titles and the PLO-to-course mapping, or only the program-level objectives and curriculum structure?*

The answer changes the *filing route* for the §8 mapping edits — a doc revision if they are internal assessment documentation, an amendment if they are filed — and it changes nothing about the edits themselves. Draft them either way. If the answer turns out to be "filed," the mapping rows batch into one amendment rather than going separately.

### 7.2 PLO 4.2 for LEN 1 — decided: add it

**Decision (July 2026): PLO-4 is added to LEN 1's mapping.** LEN 1's final assessment is a recorded briefing to a mixed technical and non-technical audience. That is PLO 4.2 ("Articulate and justify pedagogical, design, and development decisions to diverse audiences") on its face. Doc 2 §5.2 lists LEN 1 as PLO-1, 2, 3; §6.1's matrix has no PLO-4 check for LEN 1; §6.3 names PLO-4's carriers as LEN 2, 3, 4, 6, and 10.

Nothing was at risk either way: PLO-4 is carried by five other courses, so no coverage gap existed. This was a correctness fix. The mapping of record described a course that does not exist, and a crosswalk whose only job is accuracy should be accurate. The alternative — removing the briefing — would have cost the strongest assessment in the course and the only home for CLO 6.

**In the syllabus now.** The alignment table carries `PLO 3.2; PLO 4.2 †`, with the dagger footnoted:

> † PLO 4.2 is carried by this course's final briefing, which is delivered to a mixed technical and non-technical audience. LEN 1 is listed as PLO-1, PLO-2, PLO-3 in the course mapping of record (v2.3, §5.2, §6.1, §6.3); PLO-4 is added here, and the corresponding edit to that document is pending in the open program-owner round-trip.

The dagger stays until doc 2 catches up, then comes out. It records a divergence from the document of record rather than hiding one.

**Doc 2 edits:** §5.2 table (LEN 1 → PLO-1, PLO-2, PLO-3, **PLO-4**); §6.1 matrix (PLO-4 check for LEN 1); §6.3 prose (PLO-4 carriers gain LEN 1).

**Filing route** depends on §7.1 and the outcome does not. If mappings are internal documentation, this rides the open round-trip. If they are filed, nothing turns on it for coverage, so an amendment is hard to justify alone and it batches with the other §8 mapping edits (LEN 7 gaining LEO-4, LEN 10's LEO-3, LEN 3's description).

### 7.3 LEN 2's title — decided: machine, not AI

**Decision (July 2026): "Human-AI Teaming and Adaptive Learning Systems" becomes "Human-Machine Teaming and Adaptive Learning Systems."**

One word, and it does most of the work. The course now teaches six LEO-3 subobjectives, and two of the three new weeks are not about AI: role architectures and authority gradients, delegation with revocation, collaboration measurement. Those apply to any machine the operator works with, whether or not it learns anything. "Machine" covers automation, control systems, interfaces, and alerting as well as AI; "AI" covers one of them. The parallel structure of the title survives, the register stays recruitable, and it echoes v1's own name for the domain, Machine Teaming and Adaptation.

**One thing it does not fix, stated once.** LEO-3 is *Human-System* Collaboration, and a system is broader than a machine. Crew resource management is human-human coordination inside a technical system and is anchored to D3 in the casebook; so is control-room work where the coordination that matters is between operators. "Human-Machine Teaming" narrows that. The gap is much smaller than "AI" left, and closing it entirely would mean "Human-System Collaboration," which reads as a systems-engineering course title rather than something a prospective LDT student recognizes. Machine is the right trade. The residual is worth knowing rather than acting on.

**What has to happen.**

1. **Confirm whether the title is filed** (§7.1) — a discussion item, not a prerequisite for deciding.
2. **If not filed:** change it through the SOE curriculum process, **together with the course-number assignment**. Numbers are still `ED.XXX.XXX (pending SOE assignment)`. Title and number should move through one process rather than two; waiting means reopening a settled record.
3. **If filed:** the case for an amendment is weaker here than for 7.2 — a title that undersells a course is a recruiting problem, not an integrity problem. Batch it or carry it.
4. **Update the SIS descriptor either way.** The catalog description is a separate artifact from doc 2 §5.2 and is generated from what is filed. The descriptor should keep "AI" in the body text: prospective students search on it, and the course does teach it as the sub-pattern.

**Timing.** LEN 2 is sequential after LEN 1, so no student takes it in the first term. The forcing function is the course-number assignment, not the launch. Decide before that lands.

---

## 8. Edits to the documents of record

| Doc | Section | Edit |
| --- | --- | --- |
| 1 (`1_LENS_Five_Competencies.md`) | §3 | Add 3.6: "Communicate evidence-based recommendations for when system augmentation improves versus degrades capability outcomes and operator agency." |
| 1 | Change Log | v2.2 entry: 3.6 restored; note that the v2.1 sweep dropped v1 5.3 without a change-log entry |
| 1 | Crosswalk note | Update the count: seven v2 additions plus one restoration; 28 subobjectives |
| 2 (`2_LENS_Objectives_Course_Mapping.md`) | §5.5 | LEN 7 concentration objectives: LEO-4, LEO-5 |
| 2 | §6.2 | LEN 7 gains an elective mark in the LEO-4 column |
| 2 | §1 | Framing: high-consequence domains, the criterion, the representative seven, education as both domain and home. See `LENS_Framing_High_Consequence_Domains.md` |
| 2 | §4 LEO-5 | "in healthcare, defense, or education contexts" → "in a given high-consequence domain" |
| 2 | §5.2 | LEN 1 mapping: add PLO-4. LEN 2: retitle to Human-Machine Teaming and Adaptive Learning Systems; description reframed to human-machine collaboration with AI as one sub-pattern. LEN 3 description: add the cross-regime governance seam; drop the co-equal-domains sentence |
| 2 | §6.1 | PLO-4 check for LEN 1 |
| 2 | §6.3 | PLO-4 carriers gain LEN 1 |
| 2 | §5.3 | LEN 4 description: add judgment under inadequate evidence and fairness beyond omission. LEN 6 description: problem cycles drawn from the representative seven |
| 2 | §5.4 | LEN 10 description: the capstone specifies the human-system boundary in the project context. §6.2 LEO-3 mark now supported. See §6 |
| 6 (`6_LENS_Recruitment_Email.md`) | Body, verify note | Three triad references; retire the one-of-three convention |
| repo `README.md` | Open items | Defense is one of seven; the convention is now structural |
| repo `README.md` | Final competency names | "D3↔D4 swap" is wrong; the remap is a three-cycle (D3→D4, D4→D5, D5→D3) |

Docs 1 and 2 both note that the program-owner round-trip on v2.1/v2.2/v2.3 is still open. These edits should go into that same round-trip rather than a separate one.

**Sequence.** Draft the table above now; §7.1 is a discussion item that changes the filing route, not the content. If course-level mappings are internal documentation, this is one doc revision. If they are filed, the mapping rows batch into a single amendment rather than going one at a time, and the LEN 2 title rides with them or waits for the course-number assignment.
