// ============================================================
// Introduction — Why Capability Matters
// The exposition and justification for LDT / LENS
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// citation marker (definition lives in components.typ)

#pagebreak(to: "odd", weak: true)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Introduction"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(12pt)

#text(font: serif, size: 30pt, fill: navy, "Capability is a system parameter.")

#v(14pt)

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
  through-line, equity as a design commitment rather than an audit, and
  decision-grade evidence as a deliverable rather than a report — are
  drawn directly from the patterns the cases reveal.
]

// -------------------------------------------------------------------
#v(20pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("IV  ·  how to read this book"))
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

#v(20pt)

#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 10pt,
  stroke: (left: 2pt + gold),
  {
    text(font: serif, size: 12pt, style: "italic", fill: navy)[
      The strongest argument for the discipline of learning engineering
      is the cumulative record of what its absence has cost. The
      strongest argument *for* its possibility is the cumulative record
      of what its presence has produced. Both records are in this book.
      The work of LDT and LENS at the Johns Hopkins School of Education
      is to add to the second record and shorten the first.
    ]
  }
)
