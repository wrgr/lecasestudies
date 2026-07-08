// ============================================================
// LENS COMPANION — Concentration docs + casebook crosswalks
//
// 8 × 10, white background. The concept-facing companion to
// *Capability Matters: A Casebook*: program-of-record documentation
// (the v2.1 five competencies, the CLOs, the course mapping) plus
// the casebook's induced → canonical crosswalk and the three-anchor
// convention every case carries. Intended to travel with advisory
// boards, prospective students, recruiting conversations, and program
// reviews; sized to be read end-to-end in one sitting.
//
// The auditor-facing surfaces — cases by domain, cases by LENS course,
// the per-case references appendix with retrieval lines — now live in
// a separate document: `validation-audit.typ`. The split keeps this
// companion focused on what LENS *is* rather than what the casebook
// *contains*; the same casebook source still feeds both.
//
// Build:
//   typst compile --font-path fonts --input view=companion \
//     lens-companion.typ build/capability-matters-lens-companion.pdf
// ============================================================

#import "lib/theme.typ": *
#import "lib/components.typ": *
#import "lib/md-render.typ": render-md

#set document(
  title: "LENS Companion — Concentration documents, crosswalks, references",
  author: "LDT / LENS · Johns Hopkins University School of Education",
)

#set page(
  width:  8in,
  height: 10in,
  margin: (x: 18mm, top: 18mm, bottom: 16mm),
  fill: white,
  header: context {
    let p = counter(page).get().first()
    if p > 1 [
      #set text(font: sans, size: 7.5pt, fill: text-muted, tracking: 1pt)
      #grid(columns: (1fr, auto), upper("LENS Companion · v2.1"), str(p))
      #v(-4pt)
      #line(length: 100%, stroke: 0.3pt + rule-soft)
    ]
  },
)

#set text(font: sans, size: 10pt, fill: text-dark, lang: "en")
#set par(leading: 0.62em, justify: false)

// ---- Local helpers ----
#let h1(title) = block(width: 100%, above: 18pt, below: 8pt, {
  text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Section"))
  v(3pt)
  line(length: 26mm, stroke: 0.7pt + gold)
  v(6pt)
  text(font: serif, size: 22pt, fill: navy, title)
})

#let h2(title) = block(width: 100%, above: 14pt, below: 6pt, {
  text(font: sans, size: 8.5pt, tracking: 1.4pt, fill: teal, upper(title))
  v(2pt)
  line(length: 18mm, stroke: 0.5pt + gold)
})

#let h3(title) = block(width: 100%, above: 10pt, below: 3pt, {
  text(font: sans, size: 11pt, weight: "bold", fill: navy, title)
})

#let competency(num, name, tagline, formal, main, subs) = {
  block(width: 100%, above: 12pt, below: 4pt, {
    grid(
      columns: (auto, 1fr, auto),
      column-gutter: 10pt,
      align: (left + horizon, left + horizon, right + horizon),
      text(font: serif, size: 28pt, fill: navy, weight: "bold", str(num)),
      box[
        #text(font: serif, size: 14pt, fill: navy, weight: "bold", name)
        #v(-2pt)
        #text(font: serif, size: 11pt, fill: teal, style: "italic", tagline)
      ],
      text(font: sans, size: 7pt, tracking: 1.2pt, fill: text-muted, upper(formal)),
    )
  })
  block(width: 100%, inset: (left: 18pt), {
    text(font: sans, size: 9.5pt, fill: text-dark, style: "italic")[*Main objective.* #main]
  })
  v(4pt)
  for s in subs {
    block(width: 100%, inset: (left: 18pt, top: 2pt, bottom: 2pt), {
      grid(
        columns: (24pt, 1fr),
        column-gutter: 4pt,
        text(font: sans, size: 9pt, weight: "bold", fill: teal, s.at(0)),
        text(font: sans, size: 9.5pt, fill: text-dark, s.at(1)),
      )
    })
  }
  v(6pt)
}

// ============================================================
// TITLE PAGE
// ============================================================
#v(2fr)

#align(center)[
  #text(font: sans, size: 8pt, tracking: 2.4pt, fill: teal, upper("Companion to"))
  #v(8pt)
  #text(font: serif, size: 14pt, fill: navy, style: "italic", "Capability Matters: A Casebook")
  #v(40pt)
  #text(font: serif, size: 48pt, fill: navy, "LENS Companion")
  #v(8pt)
  #text(font: sans, size: 11pt, tracking: 2pt, fill: gold, upper("Concentration · crosswalks · references"))
  #v(20pt)
  #line(length: 80mm, stroke: 1pt + gold)
  #v(14pt)
  #text(font: sans, size: 7pt, tracking: 1.6pt, fill: teal, upper("Edited by"))
  #v(3pt)
  #text(font: serif, size: 11pt, fill: navy, "William Gray-Roncal, PhD")
  #linebreak()
  #text(font: serif, size: 11pt, fill: navy, "James Diamond, PhD")
  #v(14pt)
  #text(font: sans, size: 9.5pt, fill: text-muted)[
    Learning Engineering for Next-Generation Systems · v2.1
  ]
  #v(2pt)
  #text(font: sans, size: 8pt, tracking: 1.4pt, fill: text-muted, upper("Edition · 15 June 2026"))
]

#v(3fr)

#align(center)[
  #text(font: sans, size: 8.5pt, tracking: 1.4pt, fill: text-muted, upper("LDT · School of Education · Johns Hopkins University"))
]

#pagebreak()

// ============================================================
// HOW TO USE THIS COMPANION
// ============================================================
#h1("How to use this companion")

#text(font: sans, size: 10pt, fill: text-dark)[
  The LENS Companion is the concept-facing reference for the LENS
  specialisation: what LENS is, what it teaches, and how the casebook's
  cases line up with the curriculum. It travels with advisory boards,
  prospective students, recruiting conversations, and program reviews —
  anyone for whom the question is *what is this concentration?* rather
  than *where in the casebook is case 137?*.
]

#v(8pt)

#text(font: sans, size: 10pt, fill: text-dark)[
  The companion is in four parts:
]

#v(4pt)

#block(width: 100%, inset: (left: 14pt), {
  set par(leading: 0.58em)
  text(font: sans, size: 9.5pt, fill: text-dark)[
    *I.* The Five LENS Competencies — formal names, taglines, main
    objectives, and the v2.1 subobjective set (1.1 – 5.6). The
    organising layer over the formal CLOs.

    *II.* The CLOs and the Course Mapping — the five concentration
    learning objectives, the LDT / LENS course descriptions, the
    course-to-CLO coverage matrix, and the LEN course list with
    per-course case counts.

    *III.* Crosswalks — the casebook's induced framework mapped to the
    canonical five competencies, plus the three-anchor convention every
    v2 case carries.

    *IV.* The canonical program documents — the literal text of the
    `lens_program/` source-of-record `.md` shadows, inlined verbatim
    (status banners and change logs preserved). Included so the
    companion can travel with advisory boards, prospective students,
    and external reviewers carrying the authoritative wording in hand.
  ]
})

#v(8pt)

#block(
  width: 100%,
  fill: rgb("#F0F7F5"),
  inset: 10pt,
  stroke: (left: 2pt + teal),
  {
    set par(leading: 0.55em)
    text(font: sans, size: 8.5pt, fill: text-dark)[
      *For auditors and reviewers.* The casebook's indexes — every case
      by primary domain, every case by LENS course — and the full
      per-case references appendix live in a separate document:
      *Validation and Audit* (`validation-audit.typ` in the casebook
      source; `capability-matters-validation-audit.pdf` in the build).
      That document is built from the same casebook source as the
      companion, so the two stay in sync; it is the place for the
      verification and accreditation track.
    ]
  }
)

#v(8pt)

#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 10pt,
  stroke: (left: 2pt + gold),
  {
    set par(leading: 0.55em)
    text(font: sans, size: 8.5pt, fill: text-muted)[
      *On versioning.* This companion documents the *v2.1* program
      state (June 2026), in which D3 is renamed *Human-System
      Collaboration* and moved from position 5; T&E moves to D4;
      Sociotechnical Constraints moves to D5. The order now reads as
      the flywheel: see the system → build → integrate humans → measure
      → deploy. Prior versions are preserved in the program docs'
      change logs (`lens_program/1_LENS_Five_Competencies.md`).
    ]
  }
)

#pagebreak()

// ============================================================
// THE THESIS — salient framing from the casebook introduction
// (condensed for the companion; the full argument lives in the
// casebook's introduction proper)
// ============================================================
#h1("Why a companion — the thesis in brief")

#text(font: sans, size: 11pt, fill: text-dark)[
  Learning engineering is a toolbox, not a single tool. At its centre is
  a dialogue between two traditions — the engineering disciplines that
  design, build, and sustain complex systems, and the learning sciences
  and education that study how people come to know and do. Around that
  dialogue gather many other fields: cognitive and human-factors
  engineering, measurement, implementation science, design, data and
  computation, and the operational domains themselves. The work is
  plural by design.
]

#v(8pt)

#text(font: serif, size: 22pt, fill: navy, "Capability is a system parameter.")

#v(4pt)

#text(font: serif, size: 11pt, style: "italic", fill: teal)[
  Every complex system depends on what people can do inside it. That
  dependency is measurable, designable, and too important to leave to
  chance.
]

#v(8pt)

#block(
  width: 100%,
  inset: (left: 12pt, top: 6pt, bottom: 6pt),
  stroke: (left: 1.5pt + gold),
  {
    set par(leading: 0.6em)
    text(font: sans, size: 9pt, fill: navy)[
      *01.* Systems don't fail because the technology breaks. They fail because someone couldn't do what the system required. #parbreak()
      *02.* We engineer every parameter of a system except the people. #parbreak()
      *03.* Capability is not a soft problem. It is a systems engineering problem. #parbreak()
      *04.* Decision-grade evidence. Not opinions about training. #parbreak()
      *05.* Capability without agency is automation. The goal is operators who can perform, adapt, and lead — not comply. #parbreak()
      *06.* Sometimes the constraints make the goal unreachable. Saying so early is a result, not a failure.
    ]
  }
)

#v(10pt)

#text(font: sans, size: 10pt, fill: text-dark)[
  Capability lives at the *interface* between what a system requires of
  its operators and the impact the system has to deliver. When that
  interface is wrong, the gap may originate in human development, in
  system design, in organisational performance, or in the interaction
  among them. Distinguishing which is itself a measurement and
  engineering problem; the casebook calls it *gap attribution*, and
  treats it as the diagnostic move that the rest of the discipline
  depends on.
]

#v(6pt)

#text(font: sans, size: 10pt, fill: text-dark)[
  The premise of the Johns Hopkins School of Education's Learning Design
  & Technology program — and of the Learning Engineering for
  Next-Generation Systems specialisation that has grown out of it — is
  that the capability parameter is engineerable. Not by accident. Not by
  declaration. By the same kind of evidence-grounded, methods-grounded,
  cross-domain discipline that built modern reliability engineering,
  modern epidemiology, and modern systems safety. The discipline does
  not yet exist at the scale the evidence demands. LDT and LENS are
  organised to help build it.
]

#v(8pt)

#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 10pt,
  stroke: (left: 2pt + gold),
  {
    set par(leading: 0.55em)
    text(font: sans, size: 8.5pt, fill: text-muted)[
      *The casebook's method, in one sentence.* Each case is an *unpacking*:
      take a real outcome, recover the capability question behind it,
      and attribute the gap to human development, system design, or
      organisational performance. The discipline of unpacking is what
      LENS teaches; the casebook is its primary instrument. The
      framework that follows is the analytic lens the unpacking method
      uses — five competencies, each a way of asking what the work the
      system requires actually is, and whether the people inside it can
      do it.
    ]
  }
)

#pagebreak()

// ============================================================
// PART I — THE FIVE LENS COMPETENCIES (v2.1)
// ============================================================
#h1("The Five LENS Competencies — v2.1")

#text(font: sans, size: 10pt, fill: text-dark)[
  Organising layer over the formal CLOs. Formal names carry program
  documentation; taglines carry recruiting and the site. Subobjective
  numbers (1.1, 3.2, …) are stable tags for case studies, course
  modules, and capstone rubrics. The CLO language in the program
  documentation remains the language of record.
]

#v(10pt)

#competency(
  "1", "Systems Analysis", "see the whole system",
  "Systems Thinking and Analysis (CLO-1)",
  [Trace how human capability and system performance depend on each
   other, so interventions target the real problem.],
  (
    ("1.1", [Decompose system performance requirements into measurable
              human capability requirements: define what the system
              demands of its operators and the impact it must deliver.]),
    ("1.2", [Model learning environments and their host operational
              systems as interacting systems, with defined components,
              interfaces, and feedback loops.]),
    ("1.3", [Apply systems engineering lifecycle models to scope,
              sequence, and evaluate capability interventions within
              and across disparate systems.]),
    ("1.4", [Analyze and communicate human-system interdependencies to
              identify capability gaps and predict operational impact at
              scale.]),
    ("1.5", [*Governance-objection diagnostic.* Distinguish a governance
              objection that good design can dissolve from one that
              correctly signals the system should not deploy. _\[v2\]_]),
  )
)

#competency(
  "2", "Iterative Development", "build, test, refine",
  "Learning Engineering Design and Implementation (CLO-2)",
  [Design capability interventions through iterative engineering
   cycles that survive contact with real operational environments.],
  (
    ("2.1", [Design interventions that integrate learning sciences
              principles with measurable outcomes and system design
              constraints.]),
    ("2.2", [Run the iteration cycle: design, instrument, evaluate,
              refine, and revise the problem framing as evidence
              accumulates.]),
    ("2.3", [Evaluate evidence-based design strategies for transfer to
              high-consequence settings at operational speed and scale.]),
    ("2.4", [Construct implementation plans that address adoption,
              sustainment, and lifecycle integration across organizational
              and system boundaries.]),
    ("2.5", [*Narrate and defend the design iteration in first person.*
              Design competence includes not only producing an outcome
              but rendering the iteration legible. _\[v2\]_]),
  )
)

#competency(
  "3", "Human-System Collaboration", "work together",
  "Human-System Collaboration and Adaptive Systems (CLO-3)",
  [Design human-system partnerships — including but not limited to
   human-AI — that make people more capable while preserving human
   agency and the recoverability of the system.],
  (
    ("3.1", [Design role architectures, interface and alert systems,
              mode/state transparency, authority gradients, and
              recoverability mechanisms that engineer collaborative
              capability at the human-system boundary.]),
    ("3.2", [Evaluate the measured impact of system-mediated work on
              human performance: the gains the system enables and the
              risks it introduces — automation bias, cognitive offloading,
              skill atrophy.]),
    ("3.3", [*Delegation with revocation.* Design the human oversight
              layer for delegated work; specify in advance the
              disconfirming evidence that would revoke the delegation.
              _\[v2\]_]),
    ("3.4", [*Collaboration measurement.* Measure the capability of a
              team or collaboration as a unit of analysis, distinct from
              any individual operator or any individual system component.
              _\[v2\]_]),
    ("3.5", [Specify learning and capability requirements for systems not
              yet fielded, working from design artifacts rather than
              operational experience.]),
  )
)

#competency(
  "4", "Test and Evaluation", "show what works",
  "Data, Measurement, and Evaluation (CLO-4)",
  [Produce decision-grade evidence linking learning to operational
   impact — where decision-grade is a sufficiency judgment under
   irreducible uncertainty — and tell a learning gap from a system gap.],
  (
    ("4.1", [Design ethical instrumentation strategies that measure
              capability at the speed and scale operations require.]),
    ("4.2", [*Gap attribution.* Diagnose the gap: differentiate
              capability shortfalls rooted in human development from
              those rooted in system design or organizational performance.]),
    ("4.3", [Construct decision-grade evidence artifacts under
              irreducible uncertainty: state what is known, what is
              assumed, and what would change the decision.]),
    ("4.4", [*Judgment under inadequate evidence.* Justify a consequential
              decision on incomplete and contested evidence; document the
              basis; name what would change it. _\[v2\]_]),
    ("4.5", [Communicate evidence honestly to technical and non-technical
              stakeholders, including uncertainty and limits of inference.]),
    ("4.6", [*Fairness beyond omission.* Demonstrate that omitting a
              protected attribute does not establish fairness; analyze
              competing fairness definitions using demographic-stratified
              outcome evidence. _\[v2\]_]),
  )
)

#competency(
  "5", "Navigating Sociotechnical Constraints", "make it work in the real world",
  "Context and Domain Fluency (CLO-5)",
  [Integrate capability interventions into the sociotechnical systems
   they must live in: the regulatory, organizational, cultural, and
   technical realities that determine whether good designs survive.],
  (
    ("5.1", [Analyze the regulatory, organizational, cultural, and
              technical constraints that shape what can be built,
              deployed, and sustained in a given context.]),
    ("5.2", [Apply human systems integration frameworks to fit capability
              interventions to operational environments.]),
    ("5.3", [Leverage prior domain expertise, and respect for others', to
              elicit and validate specialist knowledge that surfaces
              constraints early.]),
    ("5.4", [Translate constraints and stakeholder requirements across
              disciplinary and institutional boundaries into coherent
              design specifications.]),
    ("5.5", [Anticipate adoption and sustainment barriers, and design
              interventions that survive them.]),
    ("5.6", [*Cross-regime / platform-dependency governance.* Where
              capability is deployed on a platform governed by a
              different regime than the one operating it, design the
              governance seam as an explicit deliverable. _\[v2\]_]),
  )
)

#v(10pt)

#align(center, text(font: serif, size: 12pt, fill: navy, style: "italic")[
  See the whole system. Build, test, refine. Work together. Show what works. Make it work in the real world.
])

#pagebreak()

// ============================================================
// PART II — CLOs + COURSE MAPPING
// ============================================================
#h1("CLOs and Course Mapping — v2.1")

#text(font: sans, size: 10pt, fill: text-dark)[
  The LDT M.Ed. is a 10-course, 30-credit, online/asynchronous master's
  degree in the School of Education. LDT comprises three concentrations:
  Learning Experience Design (LXD, currently operating), AI Leadership
  in Education (AILE, launching August 2026), and Learning Engineering
  (LENS, launching August 2026). LENS graduates demonstrate competency
  across five domains; the CLOs below are the assessable form.
]

#v(8pt)

#h2("The Five CLOs")

#block(width: 100%, fill: rgb("#FAFAFA"), inset: 8pt, stroke: 0.3pt + rule-soft, {
  set par(leading: 0.55em)
  text(font: sans, size: 9pt, fill: text-dark)[
    *CLO-1 · Systems Thinking and Analysis.* Decompose system
    performance requirements into measurable human capability
    requirements. Apply systems engineering lifecycle models. Analyze
    interdependencies between human and system performance to identify
    gaps and predict operational impact at scale.

    *CLO-2 · Learning Engineering Design and Implementation.* Design
    capability development interventions through iterative engineering
    cycles. Evaluate evidence-based design strategies for transfer to
    high-consequence settings. Construct and communicate implementation
    plans.

    *CLO-3 · Human-System Collaboration and Adaptive Systems.* Design
    human-system partnerships that make people more capable while
    preserving human agency. Specify delegation with revocation.
    Measure collaboration as a unit of analysis.

    *CLO-4 · Data, Measurement, and Evaluation.* Design ethical
    instrumentation. Construct decision-grade evidence under
    irreducible uncertainty. Apply gap attribution. Demonstrate
    fairness beyond omission.

    *CLO-5 · Context and Domain Fluency.* Integrate capability
    interventions into regulatory, organizational, cultural, and
    technical realities. Synthesize across boundaries. Anticipate
    adoption and sustainment barriers, including cross-regime /
    platform-dependency governance.
  ]
})

#v(8pt)

#h2("Course-to-CLO coverage")

#table(
  columns: 6,
  align: (left, center, center, center, center, center),
  stroke: 0.3pt + rule-soft,
  inset: 5pt,
  [*Course*], [*CLO-1*], [*CLO-2*], [*CLO-3*], [*CLO-4*], [*CLO-5*],
  [LDT F1 (Learning Sciences Studio)], [], [✘], [], [], [],
  [LDT F2 (Critical Perspectives)], [], [], [], [], [✘],
  [LEN 1 (Principles of LE for Complex Systems)], [✘], [✘], [], [], [],
  [LEN 2 (Human-AI Teaming and Adaptive Learning)], [], [], [✘], [], [],
  [LEN 3 (Learning Engineering Systems)], [✘], [], [], [], [✘],
  [LEN 4 (Evidence, Analytics, Measurement)], [], [], [], [✘], [],
  [LEN 6 (Applied Problem Solving in LE)], [✘], [✘], [], [], [✘],
  [LEN 10 (Capstone)], [✘], [✘], [✘], [✘], [✘],
  [LEN 5 (Human Capability Analysis, elec.)], [○], [], [], [], [○],
  [LEN 7 (Bias, Risk, Governance, elec.)], [], [], [], [], [○],
  [LEN 8 (Knowledge Transfer & Org Learning, elec.)], [], [○], [], [], [○],
  [LEN 9 (Computational and AI Methods, elec.)], [], [], [○], [○], [],
)
#text(font: sans, size: 8pt, fill: text-muted)[
  ✘ = required course; ○ = elective. Foundations + concentration +
  methods + capstone = 8 required courses (24 credits); 2 electives
  complete the 30-credit degree.
]

#pagebreak()

// ============================================================
// PART III — CROSSWALKS
// ============================================================
#h1("Crosswalks")

#h2("Induced 8 (casebook scaffold) → Canonical 5 (program of record)")

#text(font: sans, size: 10pt, fill: text-dark)[
  The casebook induces an 8-cluster analytic scaffold from its 205 cases
  (full account: `casebook/competencies.md`). Those eight cluster cleanly into
  the canonical five LENS competencies — except for D2 Iterative
  Development, which is the iteration *method* threaded through the
  cases rather than its own cluster. The gap is what the
  editor-commissioned first-person Practice Flywheel accounts will
  close in the next edition.
]

#v(6pt)

#table(
  columns: 3,
  align: (left, center, left),
  stroke: 0.3pt + rule-soft,
  inset: 5pt,
  [*Induced cluster (casebook)*], [*Canonical D*], [*Notes*],
  [#1 Capability requirements under operational reality], [D1], [Engineered vs. stated requirements; sustainment-as-requirement.],
  [#2 Evidence architecture the institution cannot deceive itself with], [D4], [Measurement gaming; post-deployment surveillance.],
  [#3 Interface and role design at the human-automation boundary], [D3], [Cues, alerts, mode/state transparency, recoverability.],
  [#4 Pairing mechanism with authorization], [D3], [Frontline halt authority; non-punitive reporting; authority gradient.],
  [#5 Governance architecture for deployment], [D5], [Consent, oversight, accountability as design artifacts.],
  [#6 Cross-organization and cross-time knowledge transfer], [D5], [Institution-building after catastrophe; tacit-knowledge survival.],
  [#7 Capability under system change and aging assumptions], [D5], [Legacy assets; multi-layer drift; transitions.],
  [#8 Equity and construct definition as design commitments], [D4], [Construct choice; demographic stratification; fairness.],
  [_(none specific)_], [D2], [The iteration *method* — threaded across cases, not its own cluster.],
)

#v(8pt)

#h2("The casebook's three anchors per case")

#text(font: sans, size: 10pt, fill: text-dark)[
  Every v2 case carries three anchor codes in its header and metadata:
]

#v(4pt)

#block(width: 100%, inset: (left: 14pt), {
  set par(leading: 0.58em)
  text(font: sans, size: 9.5pt, fill: text-dark)[
    *`induced-anchor`* — e.g. `"2.4"` — the casebook's induced 8 / 32
    sub-cluster the case evidences (analytic scaffold).

    *`lens-anchor`* — e.g. `"D3/PT5"` — the canonical LENS five
    domain + problem type (1 – 6) the case is *primary* for.

    *`clo-anchor`* — e.g. `"CLO-3"` — the assessable CLO the case
    serves as a worked example for (course mapping anchor).
  ]
})

// ============================================================
// COURSE COVERAGE APPENDIX — competency → CLO crosswalk, LEN course
// list with per-course case counts, and a short coverage narrative.
// The same appendix the casebook ships; it sits in the companion
// because the counts read as concept (what the program covers) more
// than audit (which cases land in which course).
// ============================================================
#include "backmatter/appendix-clo-courses.typ"

// ============================================================
// PART IV — THE CANONICAL PROGRAM DOCUMENTS
// (the source-of-record .md shadows from lens_program/, inlined
// verbatim via the renderer in lib/md-render.typ)
// ============================================================
#pagebreak()

#h1("The canonical program documents")

#text(font: sans, size: 10pt, fill: text-dark)[
  What follows is the literal text of the LENS program documents of
  record, included so this companion can travel with advisory boards,
  prospective students, and external reviewers carrying the
  authoritative wording in hand. These mirror the `.docx` files
  maintained in `lens_program/`; any discrepancy between the two should
  be resolved in favour of the `.docx`, which is the source of record.
  The status banners and change logs that head and tail each document
  are reproduced verbatim — they carry the traceability that makes the
  documents source-of-record.
]

#v(6pt)

#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 10pt,
  stroke: (left: 2pt + gold),
  {
    set par(leading: 0.55em)
    text(font: sans, size: 8.5pt, fill: text-muted)[
      *Relationship to Parts I–III.* Parts I, II, and III of this
      companion paraphrase and re-present portions of Documents 1, 2,
      and 4 for the companion's compact form. Part IV is the verbatim
      source; where a reader needs to confirm the exact wording — for
      a syllabus, a recruiting page, an MHEC filing, a SIG conversation
      — Part IV is the canonical text to cite.
    ]
  }
)

#pagebreak()

#h2("Doc 1 · The Five LENS Competencies")
#render-md(read("/lens_program/1_LENS_Five_Competencies.md"))

#pagebreak()

#h2("Doc 2 · LENS Objectives and Course Mapping")
#render-md(read("/lens_program/2_LENS_Objectives_Course_Mapping.md"))

#pagebreak()

#h2("Doc 3 · Editor Biographies")
#render-md(read("/lens_program/3_LENS_Editor_Bios.md"))

#pagebreak()

#h2("Doc 4 · LENS / LECF Crosswalk")
#render-md(read("/lens_program/4_LENS_LECF_Crosswalk.md"))

#pagebreak()

#h2("Doc 5 · Summary and Pre/Post Objectives")
#render-md(read("/lens_program/5_LENS_Summary_and_PrePost_Objectives.md"))

#pagebreak()

#h2("Doc 6 · Recruitment Email")
#render-md(read("/lens_program/6_LENS_Recruitment_Email.md"))

// ============================================================
// CLOSING
// ============================================================
#pagebreak(weak: true)

#v(2fr)

#align(center)[
  #text(font: sans, size: 8pt, tracking: 2.4pt, fill: teal, upper("Companion to"))
  #v(8pt)
  #text(font: serif, size: 14pt, fill: navy, style: "italic", "Capability Matters: A Casebook")
  #v(20pt)
  #line(length: 50mm, stroke: 0.8pt + gold)
  #v(10pt)
  #text(font: sans, size: 9pt, fill: text-muted)[
    Edited by William Gray-Roncal, PhD and James Diamond, PhD
  ]
  #v(4pt)
  #text(font: sans, size: 9pt, fill: text-muted)[
    Learning Engineering for Next-Generation Systems · v2.1 · Edition · 15 June 2026
  ]
  #v(6pt)
  #text(font: sans, size: 8.5pt, fill: text-muted)[
    LDT · School of Education · Johns Hopkins University
  ]
]

#v(3fr)
