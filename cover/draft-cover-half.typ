// ============================================================
// CAPABILITY MATTERS — Front cover insert for the Half Letter
// editorial draft. Sized for a 5.5 × 8.5 in face, no bleed.
// Slips into a binder or rides as the title page when the draft
// is printed two-up on Letter and folded.
//
// Compile with:
//   typst compile --font-path fonts --root . \
//     cover/draft-cover-half.typ build/draft-cover-half.pdf
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#let face-w = 139.7mm   // 5.5 in
#let face-h = 215.9mm   // 8.5 in
#let margin = 16mm

#set document(title: "Capability Matters — Half Letter Draft Front")
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
  #text(font: sans, size: 8pt, tracking: 2.6pt, fill: gold, upper("A casebook"))
  #v(3pt)
  #line(length: 22mm, stroke: 0.8pt + gold)
]

// draft marker — distinguishes from the production cover
#at(face-w - margin - 30mm, margin)[
  #align(right)[
    #text(font: sans, size: 7pt, tracking: 2pt, fill: gold-light, upper("Editorial Draft"))
  ]
]

// programmatic subtitle
#at(margin, margin + 18mm)[
  #block(width: face-w - 2 * margin)[
    #set par(leading: 0.55em)
    #text(font: serif, size: 14pt, fill: rgb("#B7C9E0"),
      "Learning Engineering for Next-Generation Systems")
  ]
]

// display title
#at(margin, margin + 50mm)[
  #text(font: serif, size: 50pt, fill: cream, "Capability")
  #v(-5pt)
  #text(font: serif, size: 50pt, style: "italic", fill: teal-light, "Matters")
]

// editors
#at(margin, face-h - margin - 48mm)[
  #text(font: sans, size: 7pt, tracking: 1.8pt, fill: gold, upper("Edited by"))
  #v(3pt)
  #text(font: serif, size: 11pt, fill: cream, "William Gray-Roncal, PhD")
  #linebreak()
  #text(font: serif, size: 11pt, fill: cream, "James Diamond, PhD")
]

// institutional footer
#at(margin, face-h - margin - 18mm)[
  #line(length: 22mm, stroke: 0.6pt + gold)
  #v(5pt)
  #text(font: sans, size: 8.5pt, tracking: 2pt, fill: cream,
    upper("Johns Hopkins University"))
  #v(2pt)
  #text(font: sans, size: 6.5pt, tracking: 1.4pt, fill: rgb("#B7C9E0"),
    upper("School of Education · Learning Design and Technology"))
]
