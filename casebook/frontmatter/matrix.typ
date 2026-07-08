// ============================================================
// Case matrix — a continuous spread of every case in the volume.
// Built dynamically by querying the <caseinfo> metadata that
// lib/case.typ emits for every case, so it stays in sync as cases
// are added (v1 1–100, v2 101–202, and beyond). Single continuous
// list, 2 columns per page, in case-number order — one TOC, not
// split halves.
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// Render a contiguous mode string ("TKN") as the dotted form
// ("T·K·N") used in the matrix.
#let modes-dotted(code) = str(code).clusters().join("·")

// Compact case entry: number · name (year) · modes.
// (The LEN-course column was dropped — course refs now live in the
// course index in the appendix.) Sizes match the original; the
// modes column is widened so 5-mode codes (e.g. T·H·N·K·G) no longer
// overhang into the page margin.
#let entry(n, name, year, modes, success: false) = block(
  width: 100%,
  inset: (top: 2.4pt, bottom: 3.4pt),
  stroke: (bottom: 0.25pt + rule-soft),
  {
    grid(
      columns: (16pt, 1fr, 48pt),
      column-gutter: 4pt,
      align: (right + horizon, left + horizon, left + horizon),
      text(font: sans, size: 8.5pt, weight: "bold", fill: if success { teal } else { gold }, str(n)),
      box(width: 100%, clip: true, inset: (bottom: 1.6pt), [
        #text(font: sans, size: 8pt, fill: navy, weight: if success { "medium" } else { "regular" }, name)
        #h(3pt)
        #text(font: sans, size: 6.5pt, fill: text-muted, year)
      ]),
      text(font: sans, size: 7pt, fill: teal, weight: "bold", modes),
    )
  }
)

// -------------------- VERSO :: matrix spread, opening page --------------------
#pagebreak(to: "even", weak: true)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("The case matrix"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(8pt)

#text(font: serif, size: 20pt, fill: navy, "The cases at a glance")
#v(3pt)
#text(font: sans, size: 8pt, fill: text-muted)[
  Gold numbers indicate failures and systemic conditions; teal
  numbers indicate paired-intervention successes and the open closing
  case.
]
#v(8pt)

// Build all entries dynamically from the case metadata, in
// case-number order, and flow them into two columns per page.
#context {
  let cases = query(<caseinfo>).map(m => m.value).sorted(key: e => e.n)
  let entries = cases.map(e => entry(
    e.n,
    e.title,
    str(e.year),
    modes-dotted(e.modes),
    success: e.kind == "intervention",
  ))
  columns(2, gutter: 12pt, {
    for it in entries { it }
  })
}

#v(8pt)
#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 8pt,
  stroke: (left: 2pt + gold),
  {
    set par(leading: 0.55em)
    text(font: sans, size: 7pt, fill: navy)[
      *Modes.* #h(4pt)
      T Training Gap #h(4pt)·#h(4pt)
      D Designed Out #h(4pt)·#h(4pt)
      N Normalization of Deviance #h(4pt)·#h(4pt)
      H Human-System Interface #h(4pt)·#h(4pt)
      G Governance & Trust #h(4pt)·#h(4pt)
      K Knowledge & Institutional Memory
    ]
    v(4pt)
    text(font: sans, size: 7pt, fill: text-muted)[
      *Courses.* The LDT / LENS courses each case serves as a worked
      example for are indexed separately in *The cases by LENS course*
      in the appendix.
    ]
    v(4pt)
    text(font: sans, size: 7pt, fill: text-muted)[
      *Parts.* The book is organized topically in seven parts —
      Healthcare & Patient Safety; Education, Training & the Learning
      Workforce; Aviation & Aerospace; Defense & National Security;
      Industry, Energy & Enterprise Systems; Disaster Prevention &
      Recovery; Algorithms, Governance & Public Systems. Each part
      splits into *What Fails* and *What Works — and the Frontier*;
      the open question closes the volume at Case 205.
    ]
  }
)
