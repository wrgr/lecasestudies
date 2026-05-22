// ============================================================
// CAPABILITY MATTERS — Front cover only (A5, no bleed)
//
// Decomposed from the Lulu wrap so the front can be printed
// standalone for a binder, slipcase, or web preview.
// Compile with:
//   typst compile --font-path fonts --root . \
//     cover/cover-front.typ build/cover-front.pdf
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#let face-w = 148mm    // A5 trim width
#let face-h = 210mm    // A5 trim height
#let margin = 14mm

#set document(title: "Capability Matters — Front Cover")
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
  #text(font: sans, size: 8.5pt, tracking: 2.8pt, fill: gold, upper("A casebook"))
  #v(2pt)
  #line(length: 20mm, stroke: 0.8pt + gold)
]

#at(margin, margin + 18mm)[
  #block(width: face-w - 2 * margin)[
    #text(font: serif, size: 15pt, fill: rgb("#B7C9E0"),
      "Learning Engineering for Next-Generation Systems")
  ]
]

#at(margin, margin + 46mm)[
  #text(font: serif, size: 60pt, fill: cream, "Capability")
  #v(-6pt)
  #text(font: serif, size: 60pt, style: "italic", fill: teal-light, "Matters")
]

#at(margin, face-h - margin - 48mm)[
  #text(font: sans, size: 7pt, tracking: 1.6pt, fill: gold, upper("Edited by"))
  #v(3pt)
  #text(font: serif, size: 12pt, fill: cream, "William Gray-Roncal, PhD")
  #linebreak()
  #text(font: serif, size: 12pt, fill: cream, "James Diamond, PhD")
]

#at(margin, face-h - margin - 18mm)[
  #line(length: 20mm, stroke: 0.6pt + gold)
  #v(5pt)
  #text(font: sans, size: 9pt, tracking: 1.8pt, fill: cream,
    upper("Johns Hopkins University"))
  #v(2pt)
  #text(font: sans, size: 7pt, tracking: 1.4pt, fill: rgb("#B7C9E0"),
    upper("Learning Design and Technology"))
]
