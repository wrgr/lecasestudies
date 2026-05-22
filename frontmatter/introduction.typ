// ============================================================
// Introduction — Why Capability Matters
// The exposition and justification for LDT / LENS
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

// citation marker (definition lives in components.typ)

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
      *04.* Decision-grade evidence. Not opinions about training.
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
  When it is wrong, the consequences are paid in lives, in dollars, in
  trust, and in time the institution will never recover.
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
  interventions are documented in Part II of this book as successes.
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
  remediation. The cost of the unrepaired diagnosis is what
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
  the institutions that the success cases in Part II had to invent.
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
  Two of those commitments deserve a moment of their own — they are
  the substrate the rest of the curriculum runs on. The first is
  *communication, translation, and integration within and across
  disparate systems*. A striking number of cases in this book are,
  at their proximate cause, translation or integration failures
  across boundaries — failures of language, convention, unit, role,
  agency, or discipline to carry meaning reliably from one part of a
  system to another, or failures of subsystems built to different
  assumptions to compose into a working whole. Mars Climate Orbiter was a metric-versus-
  imperial translation failure (Case 54). Tenerife was a translation
  failure at the takeoff-clearance boundary between two cockpits and
  a tower under fog and time pressure (Case 12). The Patriot at
  Dhahran failed because the manufacturer's assumption about run
  time and the operator's actual run time were on opposite sides of
  a documentation boundary that had not been engineered to be
  crossed (Case 19). Eagle Claw failed because the rotary-wing,
  fixed-wing, ground, and command components were assembled across
  service boundaries that had no shared operating practice (Case 46).
  9/11 was a cross-agency translation failure measured in thousands
  of dead (Case 86). Boeing 737 MAX was, at one level, an integration
  failure: a single-string sensor, a flight-control law that assumed
  pilot mental models from prior models, and a certification chain
  that did not knit the pieces together (Case 2). The successful
  cases — AlphaFold (Case 98), MICrONS, CRM (Case 12 paired with
  Case 23), Keystone (Case 14), the paired-intervention examples in
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
  Cognitive Tutor and ASSISTments to current ITS work; Cases 42,
  38), intelligent tutoring frameworks such as GIFT, learning-
  analytics infrastructures such as xAPI and the Total Learning
  Architecture (Case 40), game-based learning environments, LLM-
  augmented tutors and authoring tools, and high-fidelity simulators
  in aviation, surgery, defense, and process industries. These tools
  are not the discipline. They are the discipline's instruments —
  and the cases in this book show, repeatedly, that powerful
  instruments do not by themselves engineer capability (Cases 8,
  21, 25, 38, 96, 99). The LENS curriculum teaches the practitioner
  to choose, configure, evaluate, and govern these tools with the
  same evidentiary discipline applied to any other intervention,
  and to recognize when the binding constraint is the surrounding
  architecture rather than the tool itself.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("IV  ·  lens as an iterative learning-engineering process"))
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
  LENS is organized as that loop made teachable. Each required course
  enters the cycle at a different point and trains the corresponding
  competence. LEN 1 frames the problem and identifies the system whose
  capability is at stake. LEN 5 elicits requirements from operational
  analysis. LEN 4 builds the evidence architecture that lets the
  institution know whether its interventions worked. LEN 2 examines
  the human and AI roles inside the designed system. LEN 10 — Studio —
  asks students to do all of it on a single integrated project,
  carrying the loop through one full iteration on a real operational
  problem. Electives extend the loop: LEN 7 (Bias, Risk, and
  Governance), LEN 8 (Knowledge Transfer and Organizational Learning),
  LEN 9 (Computational and AI Methods). The program graduates a
  practitioner who has been around the loop enough times to know
  where it breaks.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The casebook is itself an iteration artifact. Each case is read,
  diagnosed, paired with a learning-engineering response, and tested
  in studio against students' own operational domains. The cases that
  return as success stories in Part II are the cases whose
  institutions completed the loop. The cases in Part I are the cases
  whose institutions did not — or did not loop fast enough. The
  pedagogical commitment of the program is that the practitioner who
  graduates can identify, instrument, and close the next such loop
  before the next case is written.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("V  ·  why LENS  ·  the five pillars"))
#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  A specialization that promises to teach a discipline still being
  built must show that its credibility rests on more than its
  ambitions. LENS stands on five pillars: *Mission Literacy*, *JHU
  Ecosystem*, *Intersectional Expertise*, *Capability Focus*, and
  *Flywheel Iteration*. Each is a real institutional asset, with
  a record. None of them, alone, would carry the argument; the
  pillars are load-bearing together.
]

#v(10pt)

#dgm.dgm-why-lens

#v(10pt)

#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 12pt,
  stroke: (left: 2pt + gold),
  {
    set par(leading: 0.6em)
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: teal, upper("Mission Literacy"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      Real operational problems, real sponsors, real consequences —
      and the disciplined ability to read them. LENS is anchored in
      the conviction that the practitioner must be able to enter an
      operational setting, listen to the people doing the work,
      understand what the mission actually requires, and translate
      that understanding into design and measurement decisions that
      a serious reviewer would accept. Mission literacy is what makes
      the cases in this book teachable as cases and not as anecdotes.
    ]
    v(8pt)
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: teal, upper("JHU Ecosystem"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      An institutional environment broad and deep enough to host the
      discipline. At Johns Hopkins this is the School of Education
      with its centers, doctoral programs, and faculty in learning
      sciences, educational measurement, and design-based research;
      the practice partners across the university (Armstrong Institute
      for Patient Safety and Quality at the School of Medicine; the
      Bloomberg School of Public Health's implementation-science
      tradition; Whiting School engineering and cognitive science;
      the Berman Institute's governance and ethics work); and the
      partnerships with sponsor and operational organizations that
      bring real problems through the door.
    ]
    v(8pt)
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: rgb("#D26B43"), upper("Intersectional Expertise"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      The distinguishing pillar — and the most demanding. The work
      sits at the intersection of the learning sciences, educational
      measurement, instructional design, design-based research,
      cognitive engineering, implementation science, the
      equity-and-governance disciplines, the relevant operational
      domain, and the engineering tradition that produced the
      artifact under study. No one of those disciplines is sufficient,
      and the work fails when the disciplines do not translate to
      one another. Intersectional expertise is what allows a single
      practitioner — or a single team — to hold the engineering,
      the learning, the measurement, the equity, and the
      operational context in the same conversation, and to make
      design decisions that survive scrutiny from any of them.
      Cultivating it is the central pedagogical task of LENS.
    ]
    v(8pt)
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: teal, upper("Capability Focus"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      The outcome — the central claim of the book. Capability is a
      designable, measurable, engineerable property of every complex
      system. The program produces it in graduates; the cases
      document where it was absent and where it was successfully
      engineered; the curriculum teaches how to recognize it,
      instrument it, and reproduce it. Capability focus is the
      discipline that keeps every artifact, every measurement, and
      every iteration accountable to what the system can actually
      do when the work is done.
    ]
    v(8pt)
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: teal, upper("Flywheel Iteration"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      The iterative method — the Practice Flywheel — that animates
      the other four pillars:
      *Identify → Activate → Prototype → Analyze → Transition*, the
      cycle through which mission literacy turns into capability and
      capability turns back into refined mission literacy. The
      flywheel is what prevents the discipline from being a series of
      unconnected projects and makes it instead a compounding
      institutional asset — each cohort, each case, each pilot
      shortening the implementation gap for the next. The casebook
      itself is a flywheel artifact: the work of prior cohorts
      produces the reference dataset for the next.
    ]
  }
)

#v(10pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The pillars compound. Mission literacy reveals what is needed; the
  JHU ecosystem hosts the inquiry; intersectional expertise designs
  the intervention; capability focus keeps the loop closed on the
  outcome; the practice flywheel turns each iteration into the
  starting condition of the next.
]

#v(10pt)

#text(font: sans, size: 8pt, tracking: 1.6pt, fill: teal, upper("what LENS graduates can do  ·  the five competencies"))
#v(4pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The five pillars describe why LENS exists. The five concentration
  learning outcomes describe what its graduates can do. They map to
  the work the cases in this book required.
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
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: teal, upper("1 · Systems Thinking and Analysis"))
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
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: teal, upper("2 · Learning Engineering Design and Implementation"))
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
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: teal, upper("3 · Data, Measurement, and Evaluation"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      Design ethical instrumentation strategies that produce
      measurable evidence in regulated or high-consequence
      environments; construct *decision-grade evidence* artifacts —
      dashboards, reports, governance documentation — that link
      learning outcomes to operational impact; differentiate
      capability gaps from system-design and organizational-
      performance problems using mixed-methods *gap attribution*.
    ]
    v(8pt)
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: teal, upper("4 · Context and Domain Fluency"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      Analyze the regulatory, organizational, and cultural
      constraints that shape capability development in healthcare,
      defense, or education contexts; apply human-systems-integration
      frameworks to evaluate the measurable impact of capability
      approaches on operational environments; synthesize and
      communicate stakeholder requirements across disciplinary and
      institutional boundaries into coherent design specifications.
    ]
    v(8pt)
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: teal, upper("5 · Human-AI Teaming and Adaptive Systems"))
    v(2pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      Design human-AI teaming configurations that *leverage AI as a
      creative partner* in capability development while preserving
      human agency and judgment; evaluate the measurable impact of
      AI-mediated learning systems on human performance — both the
      gains AI enables and the risks it introduces, including
      automation bias and cognitive offloading; communicate
      evidence-based recommendations for when AI augmentation
      improves versus degrades capability outcomes.
    ]
  }
)

#v(10pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Three phrases recur across those five competencies and across the
  curriculum that produces them: *within and across disparate
  systems* (the scope at which capability is actually engineered),
  *speed and scale* (the operational tempo the discipline must
  match), and *gap attribution between learning, system design, and
  organizational performance problems* (the diagnostic that decides
  what kind of intervention will actually move the outcome). They
  are the working language of the program. They appear, repeatedly,
  in the cases that follow.
]

#v(10pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The remainder of this section
  names the three operational anchors the pillars are currently
  producing — the CIRCUIT–MERIT–COMPASS lineage, the Practice
  Flywheel in action across LE pilots, and the studio and
  applied-project model — as proof of work the pillars have already
  delivered.
]

#v(10pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The first operational anchor is the *CIRCUIT model, MERIT framework, and COMPASS
  content* — a more-than-decade record originating at the JHU
  Applied Physics Laboratory. CIRCUIT (Cohort-based Integrated
  Research Community for Undergraduate Innovation and Trailblazing)
  was built as the best operational solution to the IARPA MICrONS
  connectomics program's proofreading requirement, and was
  subsequently extended to additional sponsor problems. The
  *scientific and engineering impact* the trained cohorts produced
  — peer-reviewed contributions to the MICrONS reconstructions in
  *Nature*, the open-data infrastructure of BossDB and CAVE, the
  NeuVue proofreading framework — is the headline result; the
  student development was a deliberate and well-engineered
  byproduct of the mission solution, making doing well for the
  sponsor compound with doing good for the students. MERIT
  (Mentoring Exceptional Researchers to Innovate and Thrive) is the
  generalization of the CIRCUIT model into a replicable framework:
  holistic recruiting, the CIRCUIT eight pillars, the CCR
  competency framework, and the explicit "hidden curriculum"
  literature. *COMPASS* is the layer of targeted mentor
  interventions that operates MERIT inside a specific institutional
  setting — designed to help students uncover the *tacit and
  explicit knowledge gaps* that block independent research practice.
  COMPASS is not bound to a fixed workshop count; the COMPASS-Core
  curriculum is one instance, with an example set of workshops
  covering orientation and goal-setting, resilience and mindset,
  research-navigation, networking and faculty engagement, scientific
  reading and writing, presentations and figures, metacognition and
  advanced study, professional conduct and ethics, STEM identity,
  and long-term career and funding strategy. The
  CIRCUIT → MERIT → COMPASS lineage is documented in the
  peer-reviewed engineering-education literature #cite-num(24).
  Section VII expands on this evidence.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The second operational anchor is the *Practice Flywheel*: the iterative cycle
  — *Identify → Activate → Prototype → Analyze → Transition* — that
  has now been demonstrated across multiple LE pilots run by the
  LENS partner team at JHU/APL. Each iteration produces working
  artifacts, sponsor-visible evidence, and curriculum material for
  the next cohort. The flywheel is what prevents the program from
  being a series of unconnected projects and makes it instead a
  compounding institutional asset — each cohort shortening the
  implementation gap for the next. The casebook itself is a
  flywheel artifact: the work of prior cohorts produces the
  reference dataset for the next.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The third operational anchor is *integrated student work* — the studio,
  practicum, and applied-project model that ensures every LENS
  graduate has, in addition to coursework, a portfolio of capability
  engineering deliverables produced inside real operational systems.
  The Summer 2025 PISTA incubator (Section VII) is the most recent
  example: a JHU/APL cohort of forty-four students collaborated across
  projects, with nine student fellows specifically shipping a working
  CBRNE (chemical, biological, radiological, nuclear, and explosives)
  decision-support prototype to DTRA leadership in ten weeks, with
  three full redesigns inside that window. The cases in
  this book are not the only operational record the program produces.
  Every graduate carries an addition to it. The credibility of the
  program is, in the end, the credibility of the artifacts its
  graduates have produced in the field.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("VI  ·  why the school of education"))
#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  A reasonable reader asks: if learning engineering is engineering,
  why does this program live in a School of Education rather than a
  School of Engineering? The answer is that the binding constraint on
  the discipline is not the engineering, which is mature. It is the
  learning sciences, the educational measurement, the implementation
  science, and the equity-and-governance machinery — which live in
  Schools of Education and which the cases in this book establish as
  the load-bearing elements when capability interventions actually
  scale.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The learning sciences are the discipline that knows how skill,
  knowledge, and judgment develop, decay, and transfer across
  contexts. CRM was not an engineering achievement; the engineering
  of the cockpit was already mature in 1976. CRM was a *learning*
  achievement — a redesign of how aircrews learn to operate as a
  coordinated team, drawn from psychological research on group
  performance under stress. The same is true of TeamSTEPPS, the WHO
  Checklist's pause protocol, INPO's accreditation regime, and the
  Rickover oral examination tradition. The interventions that move
  the curves are interventions in how capability is learned, retained,
  and transferred — not in how the hardware is built.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Educational measurement is the discipline that knows how to construct
  the instruments that determine, validly and reliably, whether a
  person can do something. The cases in this book that turn on
  measurement failures — the VA wait-time scandal, Atlanta Public
  Schools, LIBOR, Wells Fargo, the F-35 readiness reporting — are
  measurement-instrument failures at heart. The capability to design
  measurement instruments that survive contact with the institutions
  measuring themselves is an educational-measurement competence. It
  lives in Schools of Education.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Implementation science — the field that studies the gap between
  evidence and practice — was developed largely in public-health
  schools and schools of education. Its frameworks (Fixsen et al.,
  Aarons et al., Damschroder et al.) are the operational backbone of
  any serious capability-engineering effort, and Schools of Education
  have been their institutional home for two decades. A School of
  Engineering can teach the artifact. A School of Education teaches
  the artifact, the measurement instrument that decides if the artifact
  works, and the implementation pathway by which the artifact reaches
  scale. The casebook's central argument — that capability is a system
  parameter — requires all three.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Equity, governance, and ethics in education at scale are also,
  evidently, education problems. The inBloom, A-Level, COMPAS,
  Robodebt, and educational-predictive-analytics cases in this book
  are not failures of engineering competence. They are failures of
  the disciplines that know how to engineer measurement instruments,
  credentialing systems, and decision regimes that do not encode
  structural inequity. Those disciplines live in Schools of Education.
  The School of Engineering can build the model. The School of
  Education is where the construct gets validated, the consent
  framework gets designed, and the equity audit gets conducted.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The case for housing LENS in the Johns Hopkins School of Education
  is, finally, a case for treating capability engineering as the
  applied form of the educational sciences — engineering applied
  through learning, measurement, and equity, not engineering applied
  to learning as content. That is a real distinction. Schools of
  Engineering routinely build artifacts; the cases in this book show
  that the artifacts then need disciplines that those schools are not
  organized to provide. The placement is not a default. It is the
  shortest path between the discipline as it is and the discipline as
  it needs to be.
]

#v(10pt)

#text(font: sans, size: 8pt, tracking: 1.6pt, fill: teal, upper("the record at Johns Hopkins"))
#v(4pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The argument above would be theoretical if Johns Hopkins did not
  already have an operating record. It does — and the deeper, longer
  half of that record is the School of Education's. The SoE has been
  studying the learner, designing the assessment, and engineering the
  intervention since long before the discipline of learning
  engineering had its current name. The disciplines this casebook
  argues are load-bearing — learning sciences, educational
  measurement, design-based research, implementation science, and
  equity-and-governance work — are disciplines the school's faculty
  have published in, taught, and applied at scale, in K–12,
  higher-education, clinical, military, and corporate settings, for
  decades.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Three durable lines of work make the point. The Center for Talented
  Youth, founded in 1979, has built one of the longest continuous
  evidence bases in U.S. education on the identification, assessment,
  and accelerated instruction of academically advanced learners; its
  measurement and program-evaluation work has been the empirical
  foundation of an entire sub-discipline. The Center for Research and
  Reform in Education has, since 2004, run large-scale evaluations of
  educational programs against rigorous evidence standards (Every
  Student Succeeds Act tiers, What Works Clearinghouse review),
  publishing the Best Evidence Encyclopedia and synthesizing what is
  known about which interventions actually work for which learners
  under which conditions. The Institute for Education Policy carries
  the same evidence-first orientation into the governance,
  curriculum-policy, and reform-design work that the case studies in
  Chapter 5 of this book name as the binding capability in modern
  education systems. These are not adjacent to the LDT program;
  they are the institutional environment that taught the program how
  to be rigorous.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The Learning Design and Technology program sits inside that
  environment and inherits it. For two decades the LDT M.Ed. and EdD
  tracks have graduated cohorts who entered as practitioners and left
  as designers and evaluators of learning systems — instructional
  designers and architects of learning experience, learning-analytics
  specialists, technology-mediated-learning researchers, professional
  developers, evaluators, and program leaders across the same K–12,
  higher-education, military, clinical, and corporate settings the
  cases in this book draw on. The program's intellectual core has
  always been the learning-engineering question — what does the
  system have to do in order to produce reliably capable people? —
  and its pedagogical core has always been design-based research:
  put the artifact in front of real learners, measure what happens,
  iterate, and publish what was learned about both the artifact and
  the learner. LENS is the formalization of that orientation as a
  specialization, not a departure from it.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Alongside that academic record runs a complementary thread of
  applied collaboration. Faculty and graduates of the LDT program
  have, over the past decade, partnered with operational
  organizations — including teams at the Johns Hopkins Applied
  Physics Laboratory — to study capability in real mission settings.
  Programs such as CIRCUIT (the workforce arm of the IARPA/MICrONS
  consortium, whose connectomics result appeared in #emph[Nature] in
  2025), the precision-medicine clinical-decision-trainer pilot
  reported in 2024, the DARPA AIE-supported TITAN work, and the
  DTRA-supported PISTA incubator in 2025 are useful proving grounds
  for the learning-engineering question because the deliverables are
  evaluated by sponsors who care whether the system worked. These
  collaborations have informed the program's case-based pedagogy and
  contribute several of the operational vignettes that follow. They
  are not the institutional home of the discipline; the School of
  Education is. They are how the school's disciplines meet operational
  settings, and how operational settings show up in the curriculum.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Other parts of the Johns Hopkins ecosystem do adjacent work the
  program draws on. The Armstrong Institute for Patient Safety and
  Quality at the School of Medicine — the institutional descendant of
  the Keystone ICU work foregrounded in Chapter 8 — is the most
  visible example: a continuing program of capability-engineering in
  clinical settings, with measurement and implementation methods that
  the casebook treats as canonical. The Bloomberg School of Public
  Health contributes the implementation-science tradition the program
  rests on, with departments and centers that have spent decades
  studying how interventions reach scale. The Whiting School of
  Engineering contributes human-systems engineering, AI methods, and
  cognitive-engineering research relevant to the human-AI teaming
  cases in Chapter 9. The Krieger School's Department of Cognitive
  Science and adjacent psychology programs contribute the learning-
  science methods the LDT program teaches. The Berman Institute of
  Bioethics contributes the governance-and-ethics framing that the
  cases in Chapter 5 require. None of these are formal partners in
  this volume; all of them are part of the institutional environment
  in which the discipline this casebook describes is recognizably at
  home.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  That meeting is also embodied in the editors. One of us has spent a
  career in applied research environments thinking about how to make
  scientific and engineering teams reliably capable; the other has
  spent a career in the School of Education thinking about how to
  design, study, and evaluate the learning of learners. Both of us
  have, in practice, lived in the other half. The casebook is one
  product of that doubling. The discipline it describes is not new.
  The institutional home that lets it be taught at scale — the
  School of Education at Johns Hopkins, with its faculty, centers,
  doctoral programs, and the practitioner partnerships those carry —
  is where the work continues.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("VII  ·  pathways evidence  ·  LE pilots"))
#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  A program built on the claim that capability is engineerable should
  be able to point to the institutional evidence that it has done that
  work. LENS draws on a documented record of learning-engineering
  pilots — operated at the Johns Hopkins University Applied Physics
  Laboratory and across collaborating sites — that demonstrate the
  iterative LE process at operational scale before LENS itself
  enrolled its first cohort. The pilots span the same three domains
  the casebook treats as co-equal — science (instantiated here as
  connectomics and precision medicine), defense, and education —
  and they each carry independent evidence of the loop closing.
]

#v(8pt)
#text(font: sans, size: 8.5pt, fill: navy, weight: "medium", "The Practice Flywheel")
#v(4pt)

#dgm.dgm-flywheel

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The pilots share an operating cycle: *identify* a real challenge in
  an operational setting, *activate* a cohort of practitioners and the
  tools they need, *prototype* a working artifact under realistic
  constraints, *analyze* the evidence the prototype produces, and
  *transition* validated solutions to the sponsor or institution that
  asked the original question. Each iteration generates artifacts,
  evidence, and refined practice; each cohort inherits the prior
  cohort's tools and lessons. The flywheel makes the program
  compounding rather than serially episodic.
]

#v(8pt)
#text(font: sans, size: 8.5pt, fill: navy, weight: "medium", "Pilot · CIRCUIT, MERIT, COMPASS — scientific and engineering impact at MICrONS / BRAIN CONNECTS scale")
#v(2pt)
#text(font: sans, size: 9.5pt, fill: text-dark)[
  CIRCUIT — the *Cohort-based Integrated Research Community for
  Undergraduate Innovation and Trailblazing* — was built at JHU/APL
  as the best operational solution to a sponsor problem: the IARPA
  MICrONS connectomics program needed a proofreading workforce that
  could exercise expert biological judgment at scale, and CIRCUIT
  was the architecture that delivered it. The headline result is
  scientific. The trained cohorts contributed materially to the
  MICrONS reconstructions now published in *Nature*, with downstream
  contributions to FlyWire and H01 datasets, the BossDB and CAVE
  open-data platforms, and the NeuVue proofreading framework
  #cite-num(23). These are not auxiliary outputs of a workforce
  program. They are the foundational datasets and infrastructure on
  which contemporary connectomics depends.
]

#v(4pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The student training was a *byproduct* of the mission solution —
  but a deliberate, well-engineered byproduct that turned an
  operational requirement into a sustained opportunity to develop
  the next generation of computational neuroscientists. Doing well
  for the sponsor and doing good for the students compounded
  rather than competed. That structural alignment between
  scientific mission and human-capability development is the
  pattern LENS treats as the canonical positive case for how the
  Practice Flywheel operates at the boundary between science and
  workforce.
]

#v(4pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The model that produced those outputs was then *generalized into
  MERIT (Mentoring Exceptional Researchers to Innovate and Thrive)*
  — a replicable research-training framework built on holistic
  recruiting, the CIRCUIT eight pillars, the CCR competency
  framework, the hidden-curriculum literature, and the DoD KSAT
  alignment vocabulary #cite-num(24). MERIT operates across five
  developmental stages — Holistic Recruiting, Orientation and
  Research Foundations, Guided Research Practice, Independent
  Research with Mentorship, and Leadership / National Impact —
  and has been instantiated in computational neuroscience, AI,
  cybersecurity, threat assessment, and pandemic modeling.
  *COMPASS* is the layer of targeted mentor interventions that
  operates MERIT inside a given institutional setting — designed to
  help students uncover the *tacit and explicit knowledge gaps*
  that separate competent execution from independent research
  practice. COMPASS is not bound to a fixed workshop count. The
  COMPASS-Core curriculum is one well-documented instance, with an
  example set spanning orientation and SMART goal-setting,
  resilience and growth mindset, research navigation, networking
  and faculty engagement, scientific reading and writing, figures
  and oral presentations, metacognition and study skills,
  professional conduct and research ethics, STEM identity and
  belonging, and long-term career and funding strategy. The
  casebook treats the trio (CIRCUIT model, MERIT framework, COMPASS
  mentor interventions) as
  the load-bearing instance of the Practice Flywheel: requirements
  elicited from operational science, instrumented measurement of
  cohort progress, paired technical and cultural scaffolding, and
  an explicit iteration cycle that has now produced multiple
  cohorts and hundreds of student-authored contributions to the
  peer-reviewed scientific literature.
]

#v(8pt)
#text(font: sans, size: 8.5pt, fill: navy, weight: "medium", "Pilot · TITAN (DARPA AIE)")
#v(2pt)
#text(font: sans, size: 9.5pt, fill: text-dark)[
  TITAN — a DARPA Artificial Intelligence Exploration program — was
  implemented and explored by junior staff and student fellows when
  senior staff did not take it up, and produced both technical
  artifacts and a demonstrated proof of concept for the cohort-based
  incubator model the program now treats as a primary delivery
  mechanism. The pattern — talent identification, rapid
  prototyping under sponsor constraints, transition planning — is the
  same Practice Flywheel the casebook describes. TITAN is the
  earliest evidence that the model scales beyond the connectomics
  domain in which it was first piloted #cite-num(25).
]

#v(8pt)
#text(font: sans, size: 8.5pt, fill: navy, weight: "medium", "Pilot · PISTA (DTRA, Summer 2025)")
#v(2pt)
#text(font: sans, size: 9.5pt, fill: text-dark)[
  PISTA — the *Perceptual Inference System for Tactical Agentic AI* —
  was a ten-week incubator delivering tactical AI decision support
  for the Defense Threat Reduction Agency's chemical, biological,
  radiological, nuclear, and explosives mission. Nine student fellows
  shipped PISTA, drawn from the broader Summer 2025 cohort of
  forty-four students at the JHU/APL AI Pathfinding Lab; all
  forty-four benefited from the shared cohort infrastructure, mentor
  pool, and cross-project collaboration even when working on other
  sponsor problems. The PISTA team delivered a working
  perception-reason-report agentic pipeline on a COTS stack (Gemini
  Flash, GPT-4o, Firebase) with deployed sensors on UGVs and small
  UAS. Three full redesigns inside ten weeks. Live demonstration to
  DTRA leadership. Follow-on funding under exploration. The pilot
  demonstrates the Practice Flywheel at compressed timescale in a
  defense context #cite-num(26).
]

#v(8pt)
#text(font: sans, size: 8.5pt, fill: navy, weight: "medium", "Pilot · ECHO (healthcare, culturally responsive provider training)")
#v(2pt)
#text(font: sans, size: 9.5pt, fill: text-dark)[
  ECHO is an AI simulator for limited-English-proficiency patient
  encounters — a population of more than twenty-five million Americans
  whose access to safe care is structurally constrained by language
  barriers. The system pairs scenario-driven practice with
  rubric-based assessment and real-time coaching, designed for
  implementation inside existing medical-curriculum infrastructure.
  ECHO is the healthcare instance of the casebook's central argument:
  health equity is a *design commitment*, not an audit. The pilot
  shows the same flywheel operating in the clinical-training context.
]

#v(8pt)
#text(font: sans, size: 8.5pt, fill: navy, weight: "medium", "Pilot · TeachMe EDDIE (methodology)")
#v(2pt)
#text(font: sans, size: 9.5pt, fill: text-dark)[
  TeachMe EDDIE is the methodological instance of the pilot
  portfolio: an AI-augmented knowledge engineering system built around
  a 100-plus-node causal knowledge graph, a dual-axis learner model
  (declarative and procedural), and Mentor and Narrator agents
  bounded by a curated corpus. EDDIE operationalizes the difference
  between *retrieval* and *learning* — between an LLM that can
  produce a fluent answer and an instructional system that can move
  a learner from competence in one context to competence in another.
  Transfer is the north star. EDDIE is the LENS instance of the
  learning-engineering question that the rest of the dataset asks at
  scale.
]

#v(8pt)
#text(font: sans, size: 8.5pt, fill: navy, weight: "medium", "Pilot · Precision-medicine community detection (clinical decision support)")
#v(2pt)
#text(font: sans, size: 9.5pt, fill: text-dark)[
  Precision-medicine clinical decision tools represent the program's
  pilot in the application of evidence-based methodology to a
  high-consequence operational domain. Students and staff at APL
  contributed to community-detection methods for precision-medicine
  cohort identification — the kind of work that combines computational
  rigor with the clinical interpretive judgment LENS is organized to
  teach. The preprint is publicly available on medRxiv
  #cite-num(27). The same pattern recurs across the pilots: the
  technical artifact is necessary, the institutional scaffolding to
  use it under operational constraints is what makes it capability.
]

#v(8pt)
#text(font: sans, size: 8.5pt, fill: navy, weight: "medium", "What the pilots demonstrate together")
#v(2pt)
#text(font: sans, size: 9.5pt, fill: text-dark)[
  No single pilot would settle the LENS proposition. The cumulative
  record is what matters. Across pilots, the same set of LE practices
  recurs: explicit capability requirements; structured pedagogical
  scaffolding; instrumented measurement linked to operational outcomes;
  paired technical and cultural interventions; cohort-based delivery
  with deliberate inheritance of tools and lessons across cohorts; and
  an explicit Identify → Activate → Prototype → Analyze → Transition
  cycle. The same artifacts produced in those pilots — the rubrics,
  the prompts, the dashboards, the after-action reports, the published
  papers — become the curriculum material for the next cohort. The
  program is, in this sense, the institutional flywheel its case
  studies argue every high-consequence domain requires.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("VIII  ·  how to read this book"))
#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Part I, "The Failure Modes," organizes one hundred cases under six
  recurring patterns: training gap, capability designed out,
  normalization of deviance, interface failure, governance failure, and
  knowledge loss. A seventh chapter — the Evidence Gap — anchors the
  measurement question. The taxonomy is not a theory. It is a finding:
  six categories that account for almost every well-documented case in
  the literature of preventable failure in complex sociotechnical
  systems, and that recur across healthcare, defense, education,
  energy, transportation, and government.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Part II, "What Works," collects the cases in which the capability
  parameter was engineered rather than left to drift. Every success
  case in the dataset shares a structural feature: a *paired
  intervention.* A technical artifact paired with a cultural authority.
  A measurement instrument paired with a governance body that listens
  to it. A curriculum paired with the institutional architecture to
  sustain it. Neither half alone moves the curve. The pair is
  irreducible. This is the strongest empirical pattern in the book and
  it directly informs the LENS pedagogical commitment to co-optimization
  across technical and human design.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Part III, "The Frontier," concerns the cases where the discipline is
  being asked to do work it has not done before — particularly the
  human-AI teaming cases that anticipate the next decade of capability
  engineering. The cases are deliberately less settled. The discipline
  is being asked to specify what good looks like before the catastrophe
  arrives. That is the work the program exists to teach.
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

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("IX  ·  course coverage and pedagogical gaps"))
#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The one hundred cases in this volume are mapped to the LENS courses
  they most directly inform. The distribution is itself diagnostic.
  The strongly covered courses are the ones the existing case
  literature most readily supports: bias and governance (LEN 7, ~49
  cases) and knowledge transfer and organizational learning (LEN 8,
  ~45 cases); capability analysis (LEN 5, ~36 cases) and evidence
  and measurement (LEN 4, ~31 cases); human-AI teaming (LEN 2, ~23
  cases) and foundations (LEN 1, ~21 cases). These are not arbitrary
  numbers — they describe a dataset saturated with cases of *what
  goes wrong when ethics, governance, evidence, and institutional
  learning are not engineered.*
]

#v(6pt)
#text(font: sans, size: 9.5pt, fill: text-dark)[
  The thin coverage is also informative. LEN 9 (Computational and AI
  Methods) is at ten cases — the dataset has the failure modes of
  algorithmic systems well-represented but the computational tools
  for capability instrumentation under-represented. The capstone
  course (LEN 10) maps to nineteen cases — fewer than the number of
  Studio-style projects we expect each LENS cohort to undertake.
  The newly-renumbered LEN 3 (Learning Engineering Systems, ~18
  cases) and LEN 6 (Applied Problem Solving, ~13 cases) required
  focused retagging to reach defensible coverage; the work surfaced
  that the operational systems-engineering content the program
  teaches in LEN 3 is *under-represented in the published case
  literature* relative to its centrality in the curriculum, and that
  LEN 6's stakeholder-analysis and problem-framing work has not
  historically been packaged as case material by other disciplines. These are
  pedagogical gaps the LENS studio sequence (LEN 6 → LEN 10) is
  organized to close — not by adding more failure cases, but by
  having students produce the missing artifacts in real operational
  settings and entering them into the dataset for the next cohort.
]

#v(20pt)

#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 10pt,
  stroke: (left: 2pt + gold),
  {
    text(font: serif, size: 12pt, style: "italic", fill: navy)[
      Capability is a designable, measurable, engineerable property
      of every complex system. The strongest argument for the
      discipline of learning engineering is the cumulative record of
      what its absence has cost. The strongest argument *for* its
      possibility is the cumulative record of what its presence has
      produced. Both records are in this book. The work of LDT and
      LENS at the Johns Hopkins School of Education is to add to the
      second record and shorten the first.
    ]
  }
)
