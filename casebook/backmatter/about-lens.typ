// ============================================================
// What LENS Offers — the program page near the back of the book.
// Condensed from the introduction's former program-justification
// sections (the five pillars, the JHU / School of Education record,
// and the pilots / pathways evidence). Targets one page in the
// full book.
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#pagebreak(weak: true)

#let condensed = false  // (the condensed half-page overview layout was retired July 2026)
#let _body = if condensed { 7.5pt } else { 8.6pt }
#let _lead = if condensed { 8pt } else { 8.8pt }

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("What LENS offers"))
#v(3pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(if condensed { 4pt } else { 7pt })

#text(font: serif, size: if condensed { 17pt } else { 21pt }, fill: navy, "The program behind the casebook.")
#v(if condensed { 3pt } else { 5pt })

#set par(justify: true, leading: 0.52em, first-line-indent: 0pt)

#text(font: sans, size: _lead, fill: text-dark)[
  LENS — *Learning Engineering for Next-Generation Systems* — is a
  concentration within the Johns Hopkins University School of
  Education's *Learning Design & Technology* program. It operationalizes
  the casebook's central claim — that capability is a designable,
  measurable, engineerable property of a complex system — for
  high-consequence work in healthcare, defense, and education. It is
  housed in a School of Education because the binding constraint is
  rarely the engineering, which is mature; it is the learning sciences,
  educational measurement, implementation science, and
  equity-and-governance machinery that decide whether a capability
  intervention actually scales.
]

#v(if condensed { 5pt } else { 8pt })

#text(font: sans, size: 8pt, tracking: 1.4pt, fill: gold, upper("the five pillars"))
#v(3pt)

#text(font: sans, size: _body, fill: text-dark)[
  LENS stands on five institutional pillars that hold together rather than singly. *Mission Literacy* — reading what an operational
  setting actually requires and translating it into design and
  measurement decisions a serious reviewer would accept. *JHU
  Ecosystem* — the School of Education's centers, doctoral programs, and
  faculty in learning sciences, measurement, and design-based research,
  alongside university practice partners (the Armstrong Institute for
  Patient Safety and Quality; the Bloomberg School's
  implementation-science tradition; Whiting School engineering and
  cognitive science; the Berman Institute's governance and ethics
  work). *Intersectional Expertise* — the distinguishing pillar:
  holding the engineering, the learning, the measurement, the equity,
  and the operational context in one conversation. *Capability Focus* —
  keeping every artifact, measurement, and iteration accountable to what
  the system can actually do. *Flywheel Iteration* — the Practice
  Flywheel (*Identify → Activate → Prototype → Analyze → Transition*)
  that turns each cohort, case, and pilot into the starting condition of
  the next.
]

#v(if condensed { 5pt } else { 8pt })

#text(font: sans, size: 8pt, tracking: 1.4pt, fill: gold, upper("the record at Johns Hopkins"))
#v(3pt)

#text(font: sans, size: _body, fill: text-dark)[
  The placement is not a default. The School of Education has studied
  the learner, designed the assessment, and engineered the intervention
  since before learning engineering had its current name. The Center
  for Talented Youth (1979) holds one of the longest continuous evidence
  bases in U.S. education on the identification and accelerated
  instruction of advanced learners; the Center for Research and Reform
  in Education has, since 2004, run large-scale evaluations against
  rigorous evidence standards (ESSA tiers, What Works Clearinghouse) and
  publishes the Best Evidence Encyclopedia. The Learning Design &
  Technology program inherits that environment: for two decades its
  M.Ed. and EdD tracks have graduated designers and evaluators of
  learning systems whose pedagogical core is design-based research. LENS
  formalizes that orientation as a concentration rather than departing
  from it.
]

#v(if condensed { 5pt } else { 8pt })

#text(font: sans, size: 8pt, tracking: 1.4pt, fill: gold, upper("the pilots"))
#v(3pt)

#text(font: sans, size: _body, fill: text-dark)[
  The claim that capability is engineerable rests on a documented record
  of learning-engineering pilots run at the Johns Hopkins Applied
  Physics Laboratory before LENS enrolled its first cohort. *CIRCUIT*
  was built as the workforce solution to the IARPA MICrONS connectomics
  program; the cohorts it trained contributed materially to the MICrONS
  reconstructions now published in #emph[Nature], with student
  development a deliberate byproduct of the mission result. The model
  was generalized into the *MERIT* framework and the *COMPASS*
  mentor-intervention layer, documented in the peer-reviewed
  engineering-education literature. The *PISTA* incubator
  (DTRA, Summer 2025) compressed the same cycle into ten weeks: nine
  student fellows shipped a working CBRNE decision-support prototype to
  agency leadership through three full redesigns. No single pilot
  settles the proposition; the cumulative record shows the program is
  itself the institutional flywheel its case studies argue every
  high-consequence domain requires.
]
