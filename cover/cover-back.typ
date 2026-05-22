// ============================================================
// CAPABILITY MATTERS — Back cover only (A5, no bleed)
//
// Decomposed from the Lulu wrap so the back can be printed
// standalone for a binder, slipcase, or web preview.
// Compile with:
//   typst compile --font-path fonts --root . \
//     cover/cover-back.typ build/cover-back.pdf
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#let face-w = 148mm
#let face-h = 210mm
#let margin = 14mm

#set document(title: "Capability Matters — Back Cover")
#set page(
  width: face-w,
  height: face-h,
  margin: 0mm,
  fill: navy,
)
#set text(font: sans, fill: cream)

#let at(x, y, body) = place(top + left, dx: x, dy: y, body)

#place(top + left,
  rect(width: face-w, height: face-h, fill: gradient.linear(
    (navy, 0%),
    (navy-mid, 70%),
    (navy, 100%),
    angle: 0deg,
  ))
)

#at(margin, margin)[
  #text(font: sans, size: 7.5pt, tracking: 2pt, fill: gold,
    upper("One hundred cases · Six failure modes · One discipline"))
  #v(2pt)
  #line(length: 20mm, stroke: 0.8pt + gold)
]

#at(margin, margin + 18mm)[
  #block(width: face-w - 2 * margin)[
    #set par(leading: 0.62em)
    #text(font: serif, size: 12pt, style: "italic", fill: cream)[
      Complex systems exist to generate capability. The disciplines
      around the problem each touch part of it — LENS engineers the
      interface where they meet, with the human at the center of the
      design rather than handed off after it.
    ]
    #v(8pt)
    #text(font: sans, size: 8pt, fill: rgb("#B7C9E0"))[
      A casebook for the Learning Design and Technology program and
      the Learning Engineering for Next-Generation Systems
      specialization at the Johns Hopkins University School of
      Education. One hundred real incidents — from the bridge of a
      U.S. Navy destroyer to a Michigan ICU to a national A-Level
      results algorithm — examined through the lens of capability as
      a system parameter.
    ]
    #v(6pt)
    #text(font: sans, size: 8pt, fill: rgb("#B7C9E0"))[
      Each case is paired with the learning-engineering insight it
      carries and the LENS curriculum it informs. Together they form
      an evidence base for the argument that capability engineering
      is a discipline, not an afterthought.
    ]
  ]
]

#at(margin, face-h - margin - 16mm)[
  #line(length: 20mm, stroke: 0.6pt + gold)
  #v(5pt)
  #text(font: sans, size: 7.5pt, tracking: 1.4pt, fill: cream,
    upper("capabilitymatters.org · LENS at Johns Hopkins"))
]
