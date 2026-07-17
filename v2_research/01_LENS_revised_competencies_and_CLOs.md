# LENS — Revised Competencies and Concentration Objectives (LEOs)

<!-- Terminology note (July 2026): this proposal originally called the concentration-level
objectives "Course Learning Objectives (CLOs)." They are now named **LENS Educational
Objectives (LEOs)** — held at the program level, not the course level — with "CLO" reserved
for course learning objectives and "MLO" for module learning objectives (see
lens_program/2_LENS_Objectives_Course_Mapping.md §4). This preserved proposal text uses the
LEO label throughout; the original filename is retained as a stable historical citation. -->

> **STATUS: ADOPTED (June 2026), refined to v2.1 in `lens_program/1_LENS_Five_Competencies.md`.** This proposal is preserved as the design rationale; the current canonical set lives in the program-doc directory. Two refinements went in at adoption time:
> 1. **D3 reorder + rename:** what this doc called "Domain 5 — Emerging Systems & Futures" is broadened to **Human-System Collaboration** and moved to position 3 (so the order reads as the flywheel: see the system → build → integrate humans → measure → deploy). T&E becomes D4; Sociotechnical Constraints becomes D5.
> 2. **"New LEOs" → subobjectives.** The four items below framed as "[NEW] LEO" (Gap attribution, Delegation with revocation, Judgment under inadequate evidence, Fairness beyond omission) are sub-LEO-grain teaching points and ship as **named subobjectives** within the parent LEO, not as parallel top-level LEOs. Numbering: 1.5, 2.5, 3.3, 3.4, 4.4, 4.6, 5.6 (see canonical doc for full list).

*Original proposal text follows — preserved for design rationale and case-by-case grounding.*

---

This document revises the five LENS competency domains and proposes new and amended required LEOs and sub-competencies. Every change is grounded in specific verified cases from the casebook sweep, named inline. Changes are marked **[NEW]**, **[AMENDED]**, or **[DEFERRED]**. Deferred items are named, not silently dropped.

The revision rests on one organizing recognition the casebook surfaced: **unpacking case studies is itself the method LENS teaches.** The discipline of taking a real outcome, recovering the capability question behind it, and attributing the gap to human development, system design, or organizational performance is not a study aid layered on top of the curriculum. It is the curriculum's central practice, and the casebook is its primary instrument. This reframes the Practice Flywheel from an asserted process model into an observable one: every case in the book is a Flywheel turn rendered legible.

---

## The five competency domains (revised)

### Domain 1 — Systems Thinking & Analysis
*SE principles, human-system task analysis, capability requirements translation.*
**[AMENDED]** Add the **governance-objection diagnostic** as an explicit analytical skill: distinguishing a governance objection that good design can dissolve from one that correctly signals the system should not deploy.
- Evidence: Open University consent design dissolved the objection (analytics could proceed); Dutch SyRI's objection was correct (the system was rights-violating and ineffective); the Epic Sepsis Model's objection should have been raised and wasn't.

### Domain 2 — Learning Engineering Design
*Learning sciences application, evidence-based design at scale, transfer to high-stakes environments.*
**[AMENDED]** Make explicit that design competence includes **narrating and defending the design iteration**, not only demonstrating an outcome. The casebook's own practice — unpacking how a capability was built and rebuilt — is the model. Where investigation reports cannot show iteration, scientist-and-engineer first-person process accounts supply it, treated as a distinct evidence class with their own honesty convention.
- Evidence: DARPA Digital Tutor (iterative envelope-setting), CIRCUIT (multi-cycle program redesign), and the practice of case-unpacking itself.

### Domain 3 — Data, Measurement & Evaluation
*Ethical instrumentation, learning analytics, operational performance criteria, gap attribution.*
**[AMENDED]** Add **measuring collaboration as the unit of analysis**, distinct from measuring an individual operator or a system. This is the most on-mission addition: it operationalizes the LENS claim that capability lives at the interface and that the human is the biggest variable there.
- Evidence: team-science training (validated TEAMS instrument), the interprofessional-education evidence gap, CRM and TeamSTEPPS.
**[AMENDED]** Name the **enthusiasm-evidence gap** as a canonical anti-pattern: a field instrumenting its enthusiasm (adoption, funding, marketed concordance) faster than its outcomes.
- Evidence: IPE, Watson for Oncology, Purdue Course Signals, corporate L&D stopping at Kirkpatrick Levels 1–2.

### Domain 4 — Context & Domain Fluency
*High-consequence operational contexts, HSI frameworks, interdisciplinary team engagement.*
**[AMENDED]** Add **cross-regime / platform-dependency governance**: capability deployed on platforms governed by a different regime than the one operating them.
- Evidence: African learning-analytics on extraterritorial platforms; the Epic Sepsis Model operating outside the device-oversight regime.

### Domain 5 — Emerging Systems & Futures
*Human-AI teaming, capability development for not-yet-fielded systems, adaptive learning at scale.*
**[AMENDED]** Distinguish **designing and sustaining human oversight of automated output** from human-AI teaming generally. The verification/correction layer is its own designed capability.
- Evidence: CIRCUIT human-in-the-loop proofreading of automated brain-map segmentation; TREWS (oversight that worked because clinicians engaged); Epic Sepsis Model alert burden (oversight that collapsed).

---

## The six canonical problem types (unchanged in number; coverage confirmed)
All six remain. The sweep confirmed each is now elucidable from verified cases. The one structural note for the program: Problem Type 6 (Human-AI teaming) was, before the AI-delegation case set, teachable only through failures. The TREWS positive case is what makes it teachable as something other than a warning.

---

## New and amended required LEOs

### [NEW] LEO — Gap attribution
*Distinguish capability gaps attributable to human development, system design, and organizational performance, and select measurement that isolates the intended cause.*
- Home: Domain 3. Motivating cases: racial bias in pain assessment (the gap traced to a specific false-belief construct, not diffuse bias); Purdue Course Signals (a retention gap that was a selection artifact); school surveillance and student outcomes (the infrastructure, not the students, drove a measured share of the gap).

### [NEW] LEO — Delegation with revocation
*Evaluate when to delegate authority to an automated system, design the human oversight layer, and specify in advance the disconfirming evidence that would revoke the delegation.*
- Home: Domain 5. Motivating cases: the delegation typology — TREWS (worked, with oversight), Epic Sepsis Model (delegated without validation), Dutch SyRI (delegation halted on rights grounds), Watson for Oncology (delegation driven by marketing ahead of capability).

### [NEW] LEO — Judgment under inadequate evidence
*Justify a consequential decision on incomplete and contested evidence: state what is known, what is assumed, and what would change the decision.*
- Home: Domain 3, threaded to all. This LEO carries the revised understanding of decision-grade evidence (below). Motivating cases: nearly every intervention in the corpus was decided on sub-complete evidence — Course Signals, Epic Sepsis, IPE, the BRAIN Initiative launch.

### [NEW] LEO — Fairness beyond omission
*Demonstrate that omitting a protected attribute does not establish fairness, and analyze competing fairness definitions using demographic-stratified outcome evidence.*
- Home: Domain 3 (equity, threaded). Motivating cases: algorithmic mortgage lending (omitting race preserved pricing disparity); the fintech fairness audit (including race could reduce disparity — fairness definitions conflict); eGFR race-coefficient removal.

### [AMENDED] LEO — Collaboration measurement
*Measure the capability of a team or collaboration as a unit, distinct from the capability of any individual member.*
- Home: Domain 3. Motivating cases: team-science training, interprofessional education.

---

## Reframing "decision-grade evidence" (per program-lead direction)

**Prior framing:** "decision-grade evidence" implied a bar the evidence clears — precise, resonant, and slightly misleading, because it suggests the bar is usually reachable.

**Revised definition (adopted):** *Decision-grade evidence is the evidence we need to justify a decision. But we seldom — arguably never — have complete information or full agreement. Judgment is therefore a critical capability.*

**Curricular consequence:** "decision-grade" is taught not as a fixed threshold but as a **sufficiency judgment under irreducible uncertainty.** The practitioner's task is to assess how far below complete information they stand, decide anyway, document the basis, and name what would change the decision. This converts a potential overclaim into the new "judgment under inadequate evidence" LEO above. The casebook supports this directly: across the corpus, the consequential decisions were made on incomplete and contested evidence, and the skilled actors were the ones who knew it and decided well regardless.

---

## Deferred to future iteration (named, not dropped)

- **[DEFERRED] Dual-audience rebalancing.** The casebook corpus tilts toward high-consequence physical systems; the everyday education/L&D practitioner is comparatively under-served. The corporate-L&D additions this pass (Kirkpatrick chain-of-evidence, training-transfer meta-analysis, CIRCUIT) begin the rebalancing, but full parity is a multi-edition project. Note honestly in front matter; do not overclaim dual accessibility until the corpus earns it.
- **[DEFERRED] Threaded-equity tension.** The principle is "thread equity throughout, no dedicated module." The evidence sits in mild tension with it: the equity *wins* (eGFR, pulse oximetry, the pain-bias curricular response) came from *dedicated, named* efforts, not diffuse threading. Threading without a named owner risks reproducing the deferred-commitment problem. Flag for program-owner discussion; do not resolve unilaterally.
- **[DEFERRED] Full collaboration-measurement methods toolkit.** Naming the sub-competency is a v2 move; building out its instruments is later work.

---

## One-line summary of the revision
LENS gains four new LEOs (gap attribution; delegation with revocation; judgment under inadequate evidence; fairness beyond omission), one amended LEO (collaboration measurement), four amended sub-competencies (governance-objection diagnostic; human oversight of automated output; cross-regime platform governance; collaboration-as-unit), and a reframed core term (decision-grade evidence as judgment under irreducible uncertainty) — each grounded in verified cases, with three items deliberately deferred.
