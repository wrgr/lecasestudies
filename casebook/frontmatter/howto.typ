// ============================================================
// How to Use This Book
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// Opens on a verso so its two pages sit as a facing spread, and the
// case matrix that follows can open on the next verso without leaving
// a blank recto in between.
#clear-to-verso

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("How to use this book"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(8pt)

#text(font: serif, size: 28pt, fill: navy, "A field manual for capability engineering.")

#v(10pt)

#set par(justify: true, leading: 0.64em)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  This book collects a growing record of real incidents in which capability —
  what people could or could not do inside a complex system —
  determined whether the system worked. Some are failures: lives
  lost, systems wrecked, billions written off. Some are successes:
  deliberate interventions that engineered capability into the
  architecture of the work. Together they form an evidence base for
  the argument that capability is a designable, measurable property
  of every complex system.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  Most cases run to four pages, beginning on a fresh page rather than a
  fixed side of the spread. An *In brief* summary opens; the narrative
  follows in five sourced beats — what happened, what investigators
  found, and the documentary record — closing with a figure, any
  *Competing readings* or *What this case does not show* the record
  requires, a pull quote, and the numbered sources. The case ends in the
  *Learning Engineering Lens* — what the case teaches about capability as
  a system parameter, how the LENS curriculum addresses the pattern, and a
  short set of reflection questions designed for studio discussion.
]

#v(6pt)

#text(font: sans, size: 9.5pt, fill: text-dark)[
  The Lens also carries a *Who Builds This* note: the mix of
  expertise and tools a team would bring to engineer the fix, read off
  the case's failure modes. A Training-Gap case pulls in learning
  scientists and instructional designers; an Interface case, human-
  factors and interaction designers; a Governance case, policy, ethics,
  and measurement. Most cases need several at once, held together by
  domain experts and a learning engineer. No single discipline carries
  a case alone — reading the modes as a staffing list is itself a LENS
  skill, and what *you* bring is yours to decide.
]

#v(6pt)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 14pt,
  [
    #eyebrow("Reading the taxonomy", color: gold)
    #v(4pt)
    #text(font: sans, size: 8.5pt, fill: text-dark)[
      Each case is tagged with one or more failure modes. Most cases involve
      several. The primary mode is listed first; contributing modes follow.
    ]
    #v(8pt)
    #for (k, v) in modes [
      #block(spacing: 5pt, {
        mode-chip(k)
        h(6pt)
        text(font: sans, size: 8pt, weight: "medium", fill: navy, v.at(0))
        linebreak()
        h(20pt)
        text(font: sans, size: 7.5pt, fill: text-muted, v.at(1))
      })
    ]
  ],
  [
    #eyebrow("LENS course codes", color: gold)
    #v(4pt)
    #text(font: sans, size: 8.5pt, fill: text-dark)[
      Each case is tagged in its metadata to the courses it serves as a
      worked example for. The tags are not printed on the cases; the
      mapping is inverted in the course index at the back.
    ]
    #v(8pt)
    #text(font: sans, size: 7pt, tracking: 1.4pt, fill: teal, upper("Shared LDT foundations · additional context"))
    #v(3pt)
    #block(spacing: 4pt, grid(
      columns: (38pt, 1fr),
      column-gutter: 8pt,
      course-tags("F1"),
      text(font: sans, size: 8pt, fill: text-dark)[
        *Learning Sciences Studio.* How learning, motivation, and skill
        develop — applied to technology-mediated design.
      ],
    ))
    #block(spacing: 4pt, grid(
      columns: (38pt, 1fr),
      column-gutter: 8pt,
      course-tags("F2"),
      text(font: sans, size: 8pt, fill: text-dark)[
        *Critical Perspectives on Educational Technology.* How power,
        equity, and society shape — and are shaped by — learning tech.
      ],
    ))
    #v(6pt)
    #text(font: sans, size: 7pt, tracking: 1.4pt, fill: teal, upper("LENS courses · \u{2020} elective"))
    #v(4pt)
    #let courses-list = (
      ("LEN 1",  "Principles of Learning Engineering for Complex Systems"),
      ("LEN 2",  "Human-Machine Teaming and Adaptive Learning Systems"),
      ("LEN 3",  "Learning Engineering Systems"),
      ("LEN 4",  "Evidence, Analytics, and Measurement for High-Consequence Domains"),
      ("LEN 5",  "Human Capability Analysis and Requirements †"),
      ("LEN 6",  "Applied Problem Solving in Learning Engineering"),
      ("LEN 7",  "Bias, Risk, and Governance in Learning System Design †"),
      ("LEN 8",  "Knowledge Transfer and Organizational Learning †"),
      ("LEN 9",  "Computational and AI Methods for Learning Engineers †"),
      ("LEN 10", "Learning Engineering Project (capstone)"),
    )
    #for (code, name) in courses-list [
      #block(spacing: 3pt, grid(
        columns: (38pt, 1fr),
        column-gutter: 8pt,
        course-tags(code),
        text(font: sans, size: 8pt, fill: text-dark, name),
      ))
    ]
  ]
)

#v(5pt)

#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 8pt,
  stroke: (left: 2pt + gold),
  {
    text(font: serif, size: 11pt, style: "italic", fill: navy)[
      The strongest cases pair a catastrophic failure with a systematic
      capability intervention. Together they show both the cost of the gap and
      the tractability of the solution. The discipline that closes that gap is
      learning engineering.
    ]
  }
)
