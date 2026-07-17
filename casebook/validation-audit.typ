// ============================================================
// VALIDATION & AUDIT — casebook indexes + references appendix
//
// 8 × 10, white background. The auditor's companion to
// *Capability Matters: A Casebook*. Carries the verification surface —
// cases by primary domain, cases by LENS course, and the full
// per-case reference list with retrieval lines — separately from the
// concept-facing LENS Companion so the companion can stay focused on
// what LENS *is* (the five competencies, the LEOs, the course mapping)
// and travel cleanly with advisory boards and prospective students.
//
// Build:
//   typst compile --font-path fonts --input view=companion \
//     validation-audit.typ build/capability-matters-validation-audit.pdf
//
// The view=companion flag tells lib/case.typ to emit per-case metadata
// only (no case body) — the appendices then query that metadata and
// render the indexes / per-case references the same way they do in
// the casebook.
// ============================================================

#import "lib/theme.typ": *
#import "lib/components.typ": *

#set document(
  title: "Validation and Audit — Cases by domain, by course; per-case references",
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
      #grid(columns: (1fr, auto), upper("Validation & Audit · v2.1"), str(p))
      #v(-4pt)
      #line(length: 100%, stroke: 0.3pt + rule-soft)
    ]
  },
)

#set text(font: sans, size: 10pt, fill: text-dark, lang: "en")
#set par(leading: 0.62em, justify: false)

// ---- Local heading helper (matches the companion's section style) ----
#let h1(title) = block(width: 100%, above: 18pt, below: 8pt, {
  text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Section"))
  v(3pt)
  line(length: 26mm, stroke: 0.7pt + gold)
  v(6pt)
  text(font: serif, size: 22pt, fill: navy, title)
})

// ============================================================
// TITLE PAGE
// ============================================================
#v(2fr)

#align(center)[
  #text(font: sans, size: 8pt, tracking: 2.4pt, fill: teal, upper("Audit surface for"))
  #v(8pt)
  #text(font: serif, size: 14pt, fill: navy, style: "italic", "Capability Matters: A Casebook")
  #v(40pt)
  #text(font: serif, size: 44pt, fill: navy, "Validation & Audit")
  #v(8pt)
  #text(font: sans, size: 11pt, tracking: 2pt, fill: gold, upper("Indexes · per-case references"))
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
// WHAT THIS DOCUMENT IS FOR
// ============================================================
#h1("What this document is for")

#text(font: sans, size: 10pt, fill: text-dark)[
  *Validation and Audit* is the auditor-facing companion to *Capability
  Matters: A Casebook*. It carries the surfaces an instructor, reviewer,
  or accreditation reader needs to verify the casebook — the indexes
  that let any case be located by domain or by LENS course, and the
  per-case reference appendix that lets any source be traced. It is the
  same data the casebook itself ships, lifted into a standalone document
  so the LENS Companion can stay focused on what LENS *is* (the five
  competencies, the LEOs, the course mapping) without the audit pages
  travelling with it.
]

#v(8pt)

#text(font: sans, size: 10pt, fill: text-dark)[
  The document is in three parts:
]

#v(4pt)

#block(width: 100%, inset: (left: 14pt), {
  set par(leading: 0.58em)
  text(font: sans, size: 9.5pt, fill: text-dark)[
    *I.* Cases by primary domain — every case classified by the
    operational domain it primarily evidences, so a domain expert can
    find the cases that touch their territory without scanning the
    table of contents.

    *II.* Cases by LENS course — every case classified by the LENS
    course it serves as a worked example for, so syllabus authors and
    capstone advisors can find the cases that fit a course's stated
    learning outcomes.

    *III.* References, case by case — every reference cited in every
    case, organised by case in number order, with an explicit
    *Retrieved from:* line per entry so a reviewer can locate the
    canonical source.
  ]
})

#v(8pt)

#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 10pt,
  stroke: (left: 2pt + gold),
  {
    set par(leading: 0.55em)
    text(font: sans, size: 8.5pt, fill: text-muted)[
      *On verification.* The running per-case verification track lives
      in the repository at `casebook/verification-log.md`, a 194-row
      table whose six auto-prefilled columns track the structural and
      sourcing checks the build pipeline can answer on its own. The
      seventh column — *conclusions reasonable* — is the human
      case-by-case content read this document supports. The references
      appendix below is the per-case checklist for that read; the
      *Retrieved from:* lines are the canonical-access record each case
      acquires as the verification pass closes.
    ]
  }
)

// ============================================================
// METADATA EMIT: include every case so the dynamic appendices have
// data to query. In view=companion mode, each case emits only its
// metadata — no case body is rendered.
// ============================================================
#include "chapters/ch1a.typ"
#include "chapters/ch1b.typ"
#include "chapters/ch2a.typ"
#include "chapters/ch2b.typ"
#include "chapters/ch3a.typ"
#include "chapters/ch3b.typ"
#include "chapters/ch4a.typ"
#include "chapters/ch4b.typ"
#include "chapters/ch5a.typ"
#include "chapters/ch5b.typ"
#include "chapters/closing-case.typ"

// ============================================================
// PART I — CASES BY DOMAIN
// ============================================================
#include "backmatter/domain-index.typ"

// ============================================================
// PART II — CASES BY LENS COURSE
// ============================================================
#include "backmatter/course-index.typ"

// ============================================================
// PART III — REFERENCES BY CASE
// ============================================================
#include "backmatter/appendix-references-by-case.typ"

// ============================================================
// CLOSING
// ============================================================
#pagebreak(weak: true)

#v(2fr)

#align(center)[
  #text(font: sans, size: 8pt, tracking: 2.4pt, fill: teal, upper("Audit surface for"))
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
