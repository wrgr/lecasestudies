// ============================================================
// Introduction — Why Capability Matters
// Framing only: the argument for the casebook.
// Structure: welcome → thesis → argument (I–III) → method (IV) →
//            analytic lens (V) → how to read (VI).
// The program orientation (pillars, JHU record, pilots) and the
// CLO/course-coverage appendix live in the back matter:
// backmatter/about-lens.typ and backmatter/appendix-clo-courses.typ.
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

// citation marker (definition lives in components.typ)

// ---- Welcome (opens the book, before the introduction proper) ----
#pagebreak(to: "odd", weak: true)

#v(1fr)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Welcome"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(14pt)

#block(width: 100%, {
  set par(leading: 0.7em, justify: false, first-line-indent: 0pt)
  text(font: serif, size: 19pt, fill: navy, style: "italic")[
    Learning engineering is a toolbox, not a single tool.
  ]
  v(12pt)
  set par(leading: 0.66em, justify: true)
  text(font: sans, size: 11pt, fill: text-dark)[
    At its center it is a dialogue between two traditions — the
    engineering disciplines that design, build, and sustain complex
    systems, and the learning sciences and education that study how
    people come to know and do. Around that dialogue gather many other
    fields: cognitive and human-factors engineering, measurement,
    implementation science, design, data and computation, and the
    operational domains themselves. The work is plural by design —
    many disciplines at once — and it draws on domain knowledge,
    coding, theory, systems thinking, design, teaching, and analysis.
  ]
  v(8pt)
  text(font: sans, size: 11pt, fill: text-dark)[
    It welcomes everyone who brings a real tool to it. It is not, for
    that, a free-for-all: learning engineering stands in an
    intellectual tradition with its own methods, evidence standards,
    and lineage, and it holds the work accountable to them. No one
    carries every tool. This is a team sport — capability gets built at
    the seams between people who each see part of the system clearly
    and trust the others to see the rest.
  ]
  v(8pt)
  text(font: sans, size: 11pt, fill: text-dark)[
    So you don't need to know everything before you start. You need to
    know what you bring, stay honest about what you don't, and find the
    people who carry the tools you're missing. What you bring is yours
    to decide. The cases that follow are an invitation to find
    your part in the work.
  ]
})

#v(1fr)

#align(right, text(font: sans, size: 8pt, tracking: 1.4pt, fill: text-muted, upper("— The editors")))

// ---- Introduction proper ----
#pagebreak(to: "odd", weak: true)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Introduction"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(12pt)

#text(font: serif, size: 30pt, fill: navy, "Capability is a system parameter.")

#v(14pt)

#text(font: serif, size: 14pt, style: "italic", fill: teal-light)[
  Every complex system depends on what people can do inside it. That
  dependency is measurable, designable, and too important to leave to
  chance.
]

#v(10pt)

#block(
  width: 100%,
  inset: (left: 10pt, top: 6pt, bottom: 6pt),
  stroke: (left: 1.5pt + gold),
  {
    set par(leading: 0.55em)
    text(font: sans, size: 8.5pt, fill: navy)[
      *01.* Systems don't fail because the technology breaks. They fail because someone couldn't do what the system required. #parbreak()
      *02.* We engineer every parameter of a system except the people. #parbreak()
      *03.* Capability is not a soft problem. It is a systems engineering problem. #parbreak()
      *04.* Decision-grade evidence. Not opinions about training. #parbreak()
      *05.* Capability without agency is automation. The goal is operators who can perform, adapt, and lead — not comply. #parbreak()
      *06.* Sometimes the constraints make the goal unreachable. Saying so early is a result, not a failure.
    ]
  }
)

#v(12pt)

#set par(justify: true, leading: 0.62em, first-line-indent: 0pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The cases in this book are not, individually, hard to understand. A pilot
  recovered from a stall the wrong way. A nurse could not stop a doctor
  who skipped a step. A safety operator was watching television on her
  phone when a pedestrian crossed the road. A captain shot down a
  civilian airliner because the radar data and the operational framing
  pointed in opposite directions, and the framing won. The proximate
  cause is usually obvious. The first investigator on the scene almost
  always finds it within hours.

  What is hard to understand — and what this book exists to make legible —
  is the system that produced the gap into which each incident fell. In
  every case the proximate actor was operating inside an architecture of
  training, procedure, authority, measurement, and incentive that had,
  for years, been quietly degrading. The pilot had never trained to
  recover a stall at cruise altitude. The nurse had no procedural path
  to intervene. The safety operator had been hired into a role nobody
  had figured out how to make performable. The radar operator had been
  trained to a tempo and a presumption that the system above him no
  longer shared with the system around him.
]

#v(8pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Each of these architectures was designed. Each was funded.
  Each was reviewed. Each carried, written somewhere in its specifications,
  the assumption that the people inside it would be able to do what the
  system required of them when the system required it. That assumption
  is what this book calls the *capability parameter*. It is a property
  of the entire sociotechnical system, not of any individual operator.
  Capability lives at the *interface* between what a system requires of
  its operators and the impact the system has to deliver — and when
  that interface is wrong, the gap may originate in human development,
  in system design, in organizational performance, or in the
  interaction among them. Distinguishing which is itself a measurement
  and engineering problem; the casebook calls it *gap attribution*,
  and treats it as the diagnostic move that the rest of the discipline
  depends on. When the interface fails — wherever the source — the
  consequences are paid in lives, in dollars, in trust, and in time
  the institution will never recover.
]

#v(8pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The premise of the Johns Hopkins School of Education's Learning Design
  & Technology program — and of the Learning Engineering for
  Next-Generation Systems specialization that has grown out of it — is
  that the capability parameter is engineerable. Not by accident. Not by
  declaration. By the same kind of evidence-grounded, methods-grounded,
  cross-domain discipline that built modern reliability engineering,
  modern epidemiology, and modern systems safety. The discipline does
  not yet exist at the scale the evidence demands. LDT and LENS are
  organized to help build it.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("I  ·  the cost of the gap"))
#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The Institute of Medicine's *To Err Is Human* (1999) estimated that
  preventable medical error caused between forty-four thousand and
  ninety-eight thousand deaths a year in the United States — already, at
  the lower bound, a top-ten cause of death. The report catalyzed a
  generation of patient-safety work: surgical checklists, central-line
  bundles, team training, computerized order entry. Some of those
  interventions are documented in this book's What Works chapters as
  successes.
  And yet in 2016 Makary and Daniel returned to the question from the
  same institution that produces this casebook and concluded that
  medical error remains the third leading cause of death in the United
  States, killing more than two hundred fifty thousand people a year
  #cite-num(1).
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The interval between the IOM report and the Makary update is
  approximately the canonical gap implementation science has identified
  between research evidence and clinical practice: seventeen years
  #cite-num(2). The average. The median. Only about fourteen percent of
  research findings ever reach practice at all #cite-num(3). The system
  to surface them, vet them, deploy them, sustain them, and measure
  their effect at the scale at which they would matter has never been
  built as an institution. It has been built as a series of grants. The
  difference is the point.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  This is not only a healthcare problem. The U.S. Navy lost seventeen
  sailors in two avoidable destroyer collisions in 2017 because in 2003
  it had cut a sixteen-week classroom-and-simulator course down to a
  set of CD-ROMs #cite-num(4). The world's most expensive aircraft
  program is operating at half of its design readiness in 2026 because
  the platform was fielded faster than the maintainer pipeline could be
  built #cite-num(5). One hundred million dollars of educational
  infrastructure dissolved in fourteen months because the institution
  building it did not engineer the governance and trust that the
  technology presupposed #cite-num(6). A predictive grading algorithm
  downgraded a third of an entire nation's high-school students in a
  single afternoon, and was withdrawn within a week, because nobody
  inside the agency could be specifically held to account for what the
  measurement instrument was measuring #cite-num(7).
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  None of these failures is a failure of effort. None is a failure of
  intelligence. Each is a failure of the capability infrastructure to
  match the system it was operating. In each case, the gap was
  diagnosable in advance. In most cases, it was actually diagnosed in
  advance, by someone — and the diagnosis did not produce the
  remediation. The cost of the unrepaired diagnosis is why
  *capability* matters.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("II  ·  what an engineerable discipline looks like"))
#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Crew Resource Management did not exist as a discipline in 1976. In
  March 1977 two 747s collided on a foggy runway at Tenerife and 583
  people died. Within five years United Airlines had operationalized
  the first CRM curriculum #cite-num(8); within twenty years the
  Commercial Aviation Safety Team had built the closed-loop
  hazard-identification system that lets the FAA know whether CRM is
  still working #cite-num(9). The result over the next two decades was
  an eighty-three percent reduction in U.S. commercial aviation
  fatality risk and a ninety-five percent reduction in fatalities per
  hundred million passengers #cite-num(10). CRM works not because it
  taught individual airmanship — pilots were already excellent — but
  because it redesigned the *system of interaction* in the cockpit:
  the authority gradient, the communication protocol, the standard
  brief and debrief. The discipline treated team coordination as an
  engineerable property of the system.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The same pattern shows up in every domain where the cost of failure
  has been high enough to fund the discipline. After Three Mile Island
  the U.S. nuclear industry stood up the Institute of Nuclear Power
  Operations within nine months — before the Kemeny Commission's report
  was even finalized — because every utility had recognized that an
  accident at any single plant would affect every operator's license to
  operate #cite-num(11). INPO and the National Academy for Nuclear
  Training, founded in 1985, have presided over more than four decades
  of zero significant releases at U.S. commercial reactors. The
  comparison with the surface Navy, which cut its training during the
  same era, is the cleanest available test of what happens when
  capability is engineered versus when it is deferred.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Healthcare has its own version of this arc, but only partially. Peter
  Pronovost's central-line checklist, paired with the nurses'
  authority to enforce it, drove bloodstream infections to near zero
  across 103 Michigan ICUs and saved an estimated fifteen hundred lives
  in eighteen months #cite-num(12). Atul Gawande's nineteen-item
  surgical safety checklist, paired with three required pauses in the
  operative timeline, halved the surgical mortality rate across eight
  hospitals in eight countries #cite-num(13). TeamSTEPPS, jointly
  developed by AHRQ and DoD, translated five decades of high-reliability
  research from aviation and the military into clinical practice in
  years rather than decades — because the implementation infrastructure
  was funded as part of the intervention rather than as an afterthought
  #cite-num(14).
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  These are not stories about individual hospitals or individual ships.
  They are stories about the difference between a domain that has
  organized itself to engineer capability and one that has not. The
  pattern is consistent across all of them: a catastrophe makes the
  capability gap visible; an institution is built that treats the gap
  as the institution's responsibility; the institution funds the
  measurement architecture that lets it know whether the gap is closing;
  and twenty years later the death rate is half what it was. The
  intervention is always paired. A technical artifact — a checklist, a
  brief, a cord — combined with a cultural artifact — protected
  authority to use it, a no-blame protocol, a credible governance body.
  Neither alone moves the curve. Both together move it dramatically.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("III  ·  the discipline we have, the discipline we need"))
#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The intellectual material to build this discipline already exists. The
  learning sciences have produced four decades of converging evidence
  on how skill, knowledge, and judgment develop and decay #cite-num(15).
  Cognitive engineering has produced rigorous methods for analyzing
  human-machine systems #cite-num(16). Human factors and ergonomics
  have produced an evidence base for interface and workflow design
  #cite-num(17). Implementation science has produced frameworks for
  taking effective interventions to scale #cite-num(18). Systems safety
  engineering has produced both diagnostic tools — Reason's swiss-cheese
  model, Rasmussen's migration-to-the-boundary, Leveson's STAMP — and
  control-theoretic methods for design #cite-num(19). High-reliability-
  organization theory has documented what the institutions that have
  solved the capability problem actually do #cite-num(20). The
  discipline is not missing its evidence base. It is missing its
  integration.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Learning engineering is the integration. The term, in its modern
  usage, traces to Bror Saxberg and was elaborated by Goodell, Kolodner,
  and the IEEE Industry Connections Industry Consortium on Learning
  Engineering (ICICLE) #cite-num(21). The IEEE Learning Engineering
  Body of Knowledge (LEBoK) and its associated process model are the
  most developed available specification of what the discipline does
  #cite-num(22). The premise is that the work of building, deploying,
  and sustaining capability at scale is an engineering activity: it
  requires explicit requirements, evidence-based design, instrumented
  measurement, and feedback-driven iteration. It is not exclusively a
  research activity. It is not exclusively a managerial activity. It
  is engineering, and it can be taught and practiced as engineering.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  LENS — Learning Engineering for Next-Generation Systems — is a
  specialization within the Johns Hopkins School of Education's
  Learning Design & Technology program that operationalizes this
  premise for high-consequence operational domains. Its core
  competencies — capability analysis and requirements, evidence and
  analytics, human-AI teaming, knowledge transfer, bias and governance,
  computational and AI methods — are organized to produce graduates who
  can do the work the cases in this book required, and who can build
  the institutions that the book's success cases had to invent.
  The curriculum threading commitments — implementation science as a
  through-line, equity as a design commitment rather than an audit,
  decision-grade evidence as a deliverable rather than a report,
  communication and system-of-systems integration as engineerable
  properties of the system, the disciplined use of learning-
  technology aids (from XR to adaptive platforms) as instruments
  whose evaluation is part of the work, and *AI as both a creative
  partner and an epistemic risk* — leveraging AI's generative reach
  while guarding against offloading the thinking — are drawn directly
  from the patterns the cases reveal.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Three of those commitments deserve a moment of their own — they are
  the substrate the rest of the curriculum runs on. The first is
  *communication, translation, and integration within and across
  disparate systems*. A striking number of cases in this book are,
  at their proximate cause, translation or integration failures
  across boundaries — failures of language, convention, unit, role,
  agency, or discipline to carry meaning reliably from one part of a
  system to another, or failures of subsystems built to different
  assumptions to compose into a working whole. Mars Climate Orbiter was a metric-versus-
  imperial translation failure (Case 98). Tenerife was a translation
  failure at the takeoff-clearance boundary between two cockpits and
  a tower under fog and time pressure (Case 117). The Patriot at
  Dhahran failed because the manufacturer's assumption about run
  time and the operator's actual run time were on opposite sides of
  a documentation boundary that had not been engineered to be
  crossed (Case 129). Eagle Claw failed because the rotary-wing,
  fixed-wing, ground, and command components were assembled across
  service boundaries that had no shared operating practice (Case 128).
  9/11 was a cross-agency translation failure measured in thousands
  of dead (Case 135). Boeing 737 MAX was, at one level, an integration
  failure: a single-string sensor, a flight-control law that assumed
  pilot mental models from prior models, and a certification chain
  that did not knit the pieces together (Case 97). The successful
  cases — AlphaFold (Case 36), MICrONS, CRM (Case 117 paired with
  Case 118), Keystone (Case 19), the paired-intervention examples in
  Chapter 8 — are, equivalently, cases of disciplined translation
  and integration: biology into computation, science into
  operational practice, technical reform into cultural reform,
  multiple subsystems into a working whole. Engineering capability
  across these boundaries — language, discipline, agency,
  subsystem-to-subsystem, system-of-systems — is itself a designable
  target. The LENS curriculum treats it as such.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The second is *technology aids and learning platforms*. The
  discipline has at its disposal a fast-evolving toolkit: extended-
  reality (XR) simulation environments — VR, AR, and mixed-reality
  systems used for procedural training, spatial-reasoning practice,
  and high-fidelity rehearsal under conditions that would be
  unsafe or impossible in the field — together with learning-
  management systems, adaptive learning platforms (the lineage from
  Cognitive Tutor and ASSISTments to current ITS work; Cases 67,
  139), intelligent tutoring frameworks such as GIFT, learning-
  analytics infrastructures such as xAPI and the Total Learning
  Architecture (Case 142), game-based learning environments, LLM-
  augmented tutors and authoring tools, and high-fidelity simulators
  in aviation, surgery, defense, and process industries. These tools
  are not the discipline. They are the discipline's instruments —
  and the cases in this book show, repeatedly, that powerful
  instruments do not by themselves engineer capability (Cases 53,
  54, 2, 139, 22, 157). The LENS curriculum teaches the practitioner
  to choose, configure, evaluate, and govern these tools with the
  same evidentiary discipline applied to any other intervention,
  and to recognize when the binding constraint is the surrounding
  architecture rather than the tool itself.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The third — and the design constraint on all the others — is
  *human agency*. The capability discipline can be misread as
  optimization: produce operators whose behavior matches a
  specification. That reading collapses the very property the cases
  reveal as load-bearing. Every successful institution in the What Works chapters —
  INPO operators trained to challenge their reactor team, Keystone
  ICU nurses authorized to halt a procedure (Case 19), the Nuclear
  Navy's questioning attitude (Case 137), the first-officer authority
  CRM built into the cockpit (Case 117) — engineered for capability
  *and* for the operator's capacity to exercise independent
  judgment, to adapt to conditions the system was not designed for,
  and to shape the surrounding architecture rather than only
  execute inside it. Capability without that capacity is
  automation. LENS treats the preservation and development of
  agency — the room the system leaves its operators to think,
  decide, and lead — as a design constraint on every intervention,
  including those in which AI is the partner. The paired risk runs
  the same direction: an AI collaborator can accelerate the flywheel
  or quietly offload the thinking, and which one it does is a
  design and governance decision, not a property of the tool.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("IV  ·  the method  ·  unpacking the case"))
#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Learning engineering is not a one-time act of design. Its defining
  feature, as articulated in the IEEE Industry Connections Industry
  Consortium on Learning Engineering's process model, is iteration:
  understand the operational context, specify capability requirements,
  prototype an intervention, instrument it, measure, learn, redesign.
  The work cycles. The cases in this book that produced sustained
  outcomes — CRM and CAST, INPO, Keystone ICU, the WHO Surgical
  Safety Checklist, TeamSTEPPS — all share that loop structure. They
  were not built once and left alone. They were built, measured,
  rebuilt, remeasured, and rebuilt again. The institutional capability
  to sustain the loop *is* what distinguishes them from interventions
  whose effects decayed.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The loop also has a legitimate negative result, and the discipline
  has to be honest enough to reach it. Capability engineering always
  operates inside constraints — budget, schedule, regulation,
  institutional will, politics, ethics, public trust — and many of
  the binding ones are not technical. Part of the work is *managing
  those constraints and the risk they carry*: reading the constraint
  space accurately enough to recognize when external, non-technical
  factors have narrowed the solution space to the point where a
  particular capability goal is no longer realistic to pursue.
  Reaching that conclusion — and documenting *why* — is itself a
  valid outcome of a project, not a failure of one. It redirects
  effort toward goals that are actually reachable, surfaces the
  non-technical barriers for the stakeholders who can change them,
  and prevents the far more expensive failure of driving an
  infeasible target all the way to the operational record before it
  collapses there. A number of cases in this book are, in part,
  stories of institutions that could not say "not like this, not
  yet" in time.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The casebook turns this loop into a reading method. Each case is
  read, diagnosed, paired with a learning-engineering response, and
  tested in studio against students' own operational domains. The
  cycle — framing the system whose capability is at stake, eliciting
  requirements from operational analysis, building the evidence
  architecture that lets an institution know whether its interventions
  worked, examining the human and AI roles inside the designed system,
  and running the loop end-to-end on a real problem — is the same
  discipline the casebook applies to every case it reads. The cases
  that return as success stories in the What Works chapters are the
  cases whose institutions completed the loop. The What Fails chapters
  hold the cases whose institutions did not — or did not loop fast
  enough.
  Unpacking the case *is* the method: identify, instrument, and close
  the next such loop before the next case is written.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("V  ·  the analytic lens  ·  the five capabilities the cases turn on"))
#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The cases in this book turn on five capabilities. They are the
  analytic lens the casebook reads each case through, and the cases
  that follow are tagged to them: where capability was absent, one or
  more of these five was the capability that was missing; where it was
  engineered, one or more of these five was the capability that was
  built. Named as concentration learning outcomes, they are also what
  the discipline sets out to teach.
]

#v(8pt)

#dgm.dgm-five-competencies

#v(10pt)

#block(
  width: 100%,
  fill: rgb("#F0F7F5"),
  inset: 12pt,
  stroke: (left: 2pt + teal),
  {
    set par(leading: 0.6em)
    text(font: sans, size: 8.5pt, tracking: 1.4pt, fill: teal, upper("1 · Systems Analysis — see the whole system"))
    v(1pt)
    text(font: sans, size: 6.5pt, tracking: 1pt, fill: text-muted, upper("Systems Thinking and Analysis"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      Decompose system performance requirements into measurable human
      capability requirements; apply systems-engineering lifecycle
      models to scope, sequence, and evaluate capability interventions
      *within and across disparate systems*; analyze and communicate
      the interdependencies between human performance and system
      performance to predict operational impact at scale.
    ]
    v(8pt)
    text(font: sans, size: 8.5pt, tracking: 1.4pt, fill: teal, upper("2 · Iterative Development — build, test, refine"))
    v(1pt)
    text(font: sans, size: 6.5pt, tracking: 1pt, fill: text-muted, upper("Learning Engineering Design and Implementation"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      Design capability-development interventions that integrate
      learning-sciences principles with measurable outcomes and
      system-design constraints, and that function at *speed and
      scale* in operational environments; construct and communicate
      implementation plans that address adoption, sustainment, and
      lifecycle integration across organizational and system
      boundaries.
    ]
    v(8pt)
    text(font: sans, size: 8.5pt, tracking: 1.4pt, fill: teal, upper("3 · Human-System Collaboration — work together"))
    v(1pt)
    text(font: sans, size: 6.5pt, tracking: 1pt, fill: text-muted, upper("Human-System Collaboration and Adaptive Systems"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      Design role architectures, interface and alert systems,
      mode/state transparency, authority gradients, and recoverability
      mechanisms that engineer collaborative capability at the
      human-system boundary — including human-AI partnership as one
      sub-pattern; evaluate the measured impact of system-mediated work
      on human performance, naming automation bias, cognitive
      offloading, and skill atrophy; specify *delegation with
      revocation* — the disconfirming evidence that would revoke a
      delegation — and measure collaboration as the unit of analysis.
    ]
    v(8pt)
    text(font: sans, size: 8.5pt, tracking: 1.4pt, fill: teal, upper("4 · Test and Evaluation — show what works"))
    v(1pt)
    text(font: sans, size: 6.5pt, tracking: 1pt, fill: text-muted, upper("Data, Measurement, and Evaluation"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      Design ethical instrumentation strategies that produce
      measurable evidence in regulated or high-consequence
      environments; construct *decision-grade evidence* artifacts —
      dashboards, reports, governance documentation — under
      irreducible uncertainty, naming what is known, what is assumed,
      and what would change the decision; differentiate capability
      gaps from system-design and organizational-performance problems
      using *gap attribution*; demonstrate that omitting a protected
      attribute does not establish fairness.
    ]
    v(8pt)
    text(font: sans, size: 8.5pt, tracking: 1.4pt, fill: teal, upper("5 · Navigating Sociotechnical Constraints — make it work in the real world"))
    v(1pt)
    text(font: sans, size: 6.5pt, tracking: 1pt, fill: text-muted, upper("Context and Domain Fluency"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      Analyze the regulatory, organizational, and cultural
      constraints that shape capability development in healthcare,
      defense, or education contexts; apply human-systems-integration
      frameworks to evaluate the measurable impact of capability
      approaches on operational environments; synthesize and
      communicate stakeholder requirements across disciplinary and
      institutional boundaries into coherent design specifications,
      including cross-regime / platform-dependency governance where
      capability is deployed on a platform governed by a different
      regime than the one operating it.
    ]
  }
)

#v(8pt)

#align(center, text(font: serif, size: 11pt, fill: navy, style: "italic")[
  See the whole system. Build, test, refine. Work together. Show what works. Make it work in the real world.
])

#v(10pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Three phrases recur across those five capabilities and across the
  cases that follow: *within and across disparate systems* (the scope
  at which capability is actually engineered), *speed and scale* (the
  operational tempo the discipline must match), and *gap attribution
  between learning, system design, and organizational performance
  problems* (the diagnostic that decides what kind of intervention will
  actually move the outcome). They are the working language the cases
  are read in.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("VI  ·  how to read this book"))
#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The book is organized topically, in seven parts: Healthcare & Patient
  Safety; Education, Training & the Learning Workforce; Aviation &
  Aerospace; Defense & National Security; Industry, Energy & Enterprise
  Systems; Disaster Prevention & Recovery; and Algorithms, Governance &
  Public Systems. Each part splits into two chapters. *What Fails*
  collects the part's failure cases; *What Works — and the Frontier*
  collects the interventions that moved the curve and the frontier
  cases where the discipline is still being asked to specify what good
  looks like before the catastrophe arrives.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Two analytic threads run across the topical parts. The first is the
  failure-mode taxonomy carried on every case header: training gap,
  capability designed out, normalization of deviance, interface
  failure, governance failure, and knowledge loss. The taxonomy is not
  a theory. It is a finding: six categories that account for almost
  every well-documented case in the literature of preventable failure
  in complex sociotechnical systems, and that recur across every part
  of this book. The second is the *paired intervention*. Every success
  case in the dataset shares it: a technical artifact paired with a
  cultural authority; a measurement instrument paired with a governance
  body that listens to it; a curriculum paired with the institutional
  architecture to sustain it. Neither half alone moves the curve. The
  pair is irreducible. This is the strongest empirical pattern in the
  book and it directly informs the LENS pedagogical commitment to
  co-optimization across technical and human design.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  One part departs from the domain logic. Part VI, *Disaster Prevention
  & Recovery*, reads its cases along the lifecycle of a disaster
  instead: before the event — the prevention regimes whose quiet
  thinning is the real story — and after it, the response, the
  recovery, and the institutions built (or not built) so the same
  failure cannot recur. Cases whose load-bearing lesson belongs to a
  domain stay in their domain parts; what qualifies a case for Part VI
  is that its lesson is the pre/post lifecycle itself.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Each case occupies a two-page spread. The left page tells what
  happened — narrative, evidence, attribution. The right page is the
  *Learning Engineering Lens:* a synthesis of what the case teaches,
  how the LENS curriculum addresses the pattern, and reflection
  questions designed for studio discussion. The casebook is built to be
  taught from, read straight through, or consulted as a reference. The
  curriculum crosswalk in the closing matter maps each case to the
  specific courses in the program that use it as a worked example.
]

#v(6pt)

#block(
  width: 100%,
  inset: (left: 10pt, top: 4pt, bottom: 4pt),
  stroke: (left: 1.5pt + gold),
  text(font: sans, size: 9pt, fill: navy)[
    *How these cases were chosen.* The collection is purposive, not
    systematic. The cases are exemplars — drawn from the documented
    public record and from the editors' own practice — selected because
    each makes a capability-engineering pattern legible, not because
    they constitute a representative or exhaustive sample. The corpus
    over-represents catastrophic, well-investigated failures, which
    generate the richest public record, and under-represents the
    everyday, program-scale work that fills most of a practitioner's
    career; a deliberate expansion has begun to close that gap. Read the
    book as a teaching instrument rather than a systematic review: the
    claim is that these patterns recur and are engineerable — not that
    this is every case, or the average one.
  ],
)
