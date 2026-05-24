// ============================================================
// Shared front matter for the Case Overview booklets
// (included by overview.typ [US Letter] and overview-half.typ [Half Letter]).
// Page geometry and text defaults are set by the including file; this file
// only emits content, separated by weak page breaks.
// ============================================================

#import "lib/theme.typ": *
#import "lib/components.typ": *

// ---------------------------------------------------------------- title
// Designed navy cover page (full-bleed in print mode), matching the book's
// cover / chapter-divider styling.
#page(fill: navy, margin: (x: 18mm, y: 22mm), header: none, footer: none)[
  #set text(fill: cream)
  #v(1fr)
  #align(center)[
    #text(font: sans, size: 9pt, tracking: 3pt, fill: gold, upper("Summary Reference"))
    #v(16pt)
    #text(font: serif, size: 40pt, fill: cream, "Capability Matters")
    #v(2pt)
    #text(font: serif, size: 20pt, style: "italic", fill: teal-light, "Case Overview")
    #v(14pt)
    #line(length: 46mm, stroke: 1pt + gold)
    #v(14pt)
    #block(width: 80%, text(font: sans, size: 10.5pt, fill: rgb("#B7C9E0"))[
      A quick-reference guide to one hundred real cases of capability — how it
      fails, how it has been engineered, and where the discipline is being
      tested next — each with a brief callout, its key sources, and the LENS
      courses it informs.
    ])
  ]
  #v(1.6fr)
  #align(center, text(font: sans, size: 8pt, tracking: 1.8pt, fill: rgb("#B7C9E0"),
    upper("LDT · LENS — Johns Hopkins University School of Education")))
]

// ----------------------------------------------------------- the program
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("The program"))
#v(5pt)
#text(font: serif, size: 22pt, fill: navy, "Learning Engineering for Next-Generation Systems")
#v(10pt)
#text(font: sans, size: 10.5pt, fill: text-dark)[
  *LENS* is a specialization within the Johns Hopkins University School of
  Education's *Master of Education in Learning Design and Technology* (LDT).
  Its premise is that _capability_ — the ability of people and institutions
  to perform demanding, high-consequence work reliably — can be *engineered*:
  specified, measured, designed for, and improved, rather than left to
  tradition, heroics, or chance. The program trains practitioners to treat
  capability as a system parameter, to build the evidence that shows whether
  an intervention actually worked, and to design the human and technical
  halves of a system together rather than in isolation.
]
#v(9pt)
#text(font: sans, size: 10pt, fill: text-dark)[
  LENS rests on five pillars: *Mission Literacy* — fluency in the operational
  domains where capability is contested; the *JHU Ecosystem* — the research,
  applied-laboratory, and school assets the program draws on; *Intersectional
  Expertise* — pairing learning science with engineering and domain practice;
  *Capability Focus* — capability itself as the unit of design; and *Flywheel
  Iteration* — the Practice Flywheel, the iterative loop from requirements to
  evidence that animates the other four. The pillars are designed to be
  load-bearing together, not individually.
]
#pagebreak()

// -------------------------------------------------------- the case studies
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("The case studies"))
#v(5pt)
#text(font: serif, size: 22pt, fill: navy, "One hundred cases, three movements")
#v(10pt)
#text(font: sans, size: 10.5pt, fill: text-dark)[
  The casebook assembles *one hundred* documented cases — from healthcare,
  defense, education, energy, transportation, and government — and organizes
  them in three parts.
]
#v(8pt)
#text(font: sans, size: 10pt, fill: text-dark)[
  *Part I — The Failure Modes* groups cases under six recurring patterns (see
  overleaf), with an evidence-gap chapter on measurement. The taxonomy is a
  finding, not a theory: six categories account for almost every
  well-documented preventable failure in the literature.
]
#v(7pt)
#text(font: sans, size: 10pt, fill: text-dark)[
  *Part II — What Works* collects the successes, which share one structural
  feature: a *paired intervention* — a technical artifact joined to a
  cultural authority; a measurement instrument joined to a body that acts on
  it. Neither half alone moves the curve.
]
#v(7pt)
#text(font: sans, size: 10pt, fill: text-dark)[
  *Part III — The Frontier* concerns the cases where the discipline is being
  asked to specify what good looks like before the catastrophe arrives —
  particularly human-AI teaming. These cases are deliberately less settled.
]
#pagebreak()

// --------------------------------------------------- how to use this guide
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("How to use this guide"))
#v(5pt)
#text(font: serif, size: 22pt, fill: navy, "Reading an entry")
#v(10pt)
#text(font: sans, size: 10pt, fill: text-dark)[
  Each case is distilled to a single panel with four parts: a *header* (case
  number, domain tags, and year); the *title*; an \~100-word *callout* that
  states what happened and why it matters; one to three *key references*; and
  a short note on its *LENS applicability* — the courses that use it and the
  capability lesson it carries. The full three-page treatment (an inline-cited
  narrative and a Learning Engineering Lens) lives in the main casebook; this
  guide is the index to it.
]
#v(12pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: teal, upper("Domain tags"))
#v(4pt)
#text(font: sans, size: 9.5pt, fill: text-dark)[
  #domain-row("defense") Defense #h(10pt) #domain-row("aviation") Aviation
  #h(10pt) #domain-row("space") Space / Aerospace #h(10pt)
  #domain-row("healthcare") Healthcare #h(10pt) #domain-row("energy") Energy
  #linebreak() #v(4pt)
  #domain-row("education") Education at Scale #h(10pt) #domain-row("gov")
  Government #h(10pt) #domain-row("industrial") Industrial #h(10pt)
  #domain-row("tech") Technology #h(10pt) #domain-row("autonomous") Autonomous
  Systems
]
#v(12pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: teal, upper("Failure-mode codes"))
#v(4pt)
#text(font: sans, size: 9.5pt, fill: text-dark)[
  In the main casebook each case carries one or more single-letter mode codes:
  *T* training gap · *D* capability designed out · *N* normalization of
  deviance · *H* human-system interface · *G* governance & trust · *K*
  knowledge & institutional memory. Most cases carry two or three; the
  primary mode is listed first.
]
#pagebreak()

// ------------------------------------------------------ the six modes
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("Part I · the taxonomy"))
#v(5pt)
#text(font: serif, size: 22pt, fill: navy, "The six failure modes")
#v(10pt)
#let mode-row(code, name, body) = block(below: 9pt, {
  grid(columns: (10mm, 1fr), column-gutter: 8pt, align: (center + top, left + top),
    box(stroke: 0.7pt + teal, inset: (x: 4pt, y: 2pt), radius: 1pt,
        text(font: sans, size: 9pt, weight: "bold", fill: teal, code)),
    {
      text(font: sans, size: 10pt, weight: "medium", fill: navy, name)
      v(1pt)
      text(font: sans, size: 9.5pt, fill: text-dark, body)
    })
})
#mode-row("T", "Training gap", [The operator lacked a capability the situation demanded — and the institution had the means to build it but had let it lapse or never delivered it.])
#mode-row("D", "Capability designed out", [The capability was removed from, or never built into, the system's design — a defect, omission, or a cost-and-packaging decision made upstream.])
#mode-row("N", "Normalization of deviance", [A known deviation became routine because it had not yet caused harm — until the margin ran out.])
#mode-row("H", "Human-system interface", [The interface misled the operator: ambiguous cues, hidden modes, or alarms that did not carry the weight the moment required.])
#mode-row("G", "Governance & trust", [The institution's incentives, oversight, or disclosure produced the harm — the measurement system or authority structure was the failure.])
#mode-row("K", "Knowledge & institutional memory", [The institution lost, or never built, the knowledge to do the work — through attrition, silos, or thin transfer between people and units.])
#pagebreak()

// ------------------------------------------------------ the LENS courses
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("The curriculum"))
#v(5pt)
#text(font: serif, size: 22pt, fill: navy, "The ten LENS courses")
#v(8pt)
#text(font: sans, size: 9.5pt, fill: text-muted)[
  Each entry's "LENS applicability" names the courses it informs. Approximate
  case coverage is shown in parentheses.
]
#v(8pt)
#let len-row(code, name, count) = block(below: 6pt,
  grid(columns: (16mm, 1fr, auto), column-gutter: 8pt, align: (left+horizon, left+horizon, right+horizon),
    text(font: sans, size: 9pt, weight: "bold", tracking: 1pt, fill: teal, code),
    text(font: sans, size: 10pt, fill: text-dark, name),
    text(font: sans, size: 8.5pt, fill: text-muted, count)))
#len-row("LEN 1", "Principles of learning engineering", "~21")
#len-row("LEN 2", "Human-AI teaming", "~23")
#len-row("LEN 3", "Systems integration", "~18")
#len-row("LEN 4", "Evidence and measurement", "~31")
#len-row("LEN 5", "Capability analysis", "~36")
#len-row("LEN 6", "Applied problem-solving", "~13")
#len-row("LEN 7", "Bias and governance", "~49")
#len-row("LEN 8", "Knowledge transfer", "~45")
#len-row("LEN 9", "Computational methods", "~10")
#len-row("LEN 10", "Capstone studio", "~19")
#v(8pt)
#text(font: sans, size: 9pt, fill: text-muted)[
  Cases are mapped to more than one course where they apply, so the counts
  sum to more than one hundred. The distribution is itself diagnostic: the
  literature is richest in governance, knowledge transfer, and capability
  analysis, and thinnest in computational instrumentation — a gap the studio
  sequence is built to close.
]
#pagebreak()

// ------------------------------------------------------ contents / index
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("Contents"))
#v(5pt)
#text(font: serif, size: 22pt, fill: navy, "The hundred cases")
#v(3pt)
#text(font: sans, size: 9pt, fill: text-muted)[Listed in reading order; the number is the case's catalog number in the main casebook.]
#v(8pt)
#context {
  let items = query(<caseinfo>).sorted(key: it => it.value.n)
  for it in items {
    let m = it.value
    let p = it.location().page()
    box(width: 100%, grid(
      columns: (9mm, 1fr, auto),
      column-gutter: 6pt,
      align: (right + horizon, left + horizon, right + horizon),
      text(font: sans, size: 8.5pt, fill: text-muted, str(m.n)),
      text(font: sans, size: 9pt, fill: text-dark, m.title),
      text(font: sans, size: 8.5pt, fill: text-muted, str(p)),
    ))
    v(2.2pt)
  }
}
#pagebreak()
