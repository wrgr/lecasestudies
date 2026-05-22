// ============================================================
// CAPABILITY MATTERS — Front cover insert for a 1" view binder
//
// Sized for the standard Avery-style clear-pocket front cover
// (US Letter: 8.5 × 11 in). Slips behind the vinyl sleeve on
// the outside of the binder.
// Compile with:
//   typst compile --font-path fonts --root . \
//     cover/binder-front.typ build/binder-front.pdf
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#let face-w = 215.9mm   // 8.5 in
#let face-h = 279.4mm   // 11 in
#let margin = 22mm

#set document(title: "Capability Matters — Binder Front")
#set page(width: face-w, height: face-h, margin: 0mm, fill: navy)
#set text(font: sans, fill: cream)

#let at(x, y, body) = place(top + left, dx: x, dy: y, body)

// gradient backdrop
#place(top + left,
  rect(width: face-w, height: face-h, fill: gradient.linear(
    (navy, 0%),
    (navy-mid, 70%),
    (navy, 100%),
    angle: 0deg,
  ))
)

// top eyebrow
#at(margin, margin)[
  #text(font: sans, size: 11pt, tracking: 3.4pt, fill: gold, upper("A casebook"))
  #v(4pt)
  #line(length: 32mm, stroke: 1pt + gold)
]

// draft marker — distinguishes from the production cover
#at(face-w - margin - 50mm, margin)[
  #align(right)[
    #text(font: sans, size: 9pt, tracking: 2.6pt, fill: gold-light, upper("Editorial Draft"))
  ]
]

// programmatic subtitle
#at(margin, margin + 26mm)[
  #block(width: face-w - 2 * margin)[
    #set par(leading: 0.55em)
    #text(font: serif, size: 22pt, fill: rgb("#B7C9E0"),
      "Learning Engineering for Next-Generation Systems")
  ]
]

// display title — anchored vertically in the upper-middle band
#at(margin, margin + 70mm)[
  #text(font: serif, size: 78pt, fill: cream, "Capability")
  #v(-6pt)
  #text(font: serif, size: 78pt, style: "italic", fill: teal-light, "Matters")
]

// editors
#at(margin, face-h - margin - 65mm)[
  #text(font: sans, size: 9pt, tracking: 2.2pt, fill: gold, upper("Edited by"))
  #v(5pt)
  #text(font: serif, size: 16pt, fill: cream, "William Gray-Roncal, PhD")
  #linebreak()
  #text(font: serif, size: 16pt, fill: cream, "James Diamond, PhD")
]

// institutional footer
#at(margin, face-h - margin - 26mm)[
  #line(length: 32mm, stroke: 0.8pt + gold)
  #v(8pt)
  #text(font: sans, size: 12pt, tracking: 2.4pt, fill: cream,
    upper("Johns Hopkins University"))
  #v(3pt)
  #text(font: sans, size: 9pt, tracking: 1.8pt, fill: rgb("#B7C9E0"),
    upper("School of Education · Learning Design and Technology"))
]
