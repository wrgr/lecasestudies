// ============================================================
// CAPABILITY MATTERS — Back cover for the Half Letter editorial draft.
// Sized for a 5.5 × 8.5 in face; pairs with cover/draft-cover-half.typ
// (front) and cover/draft-spine-half.typ (spine).
//
// Compile with:
//   typst compile --font-path fonts --root . \
//     cover/draft-back-half.typ build/cover-draft-half-back.pdf
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#let face-w = 139.7mm   // 5.5 in
#let face-h = 215.9mm   // 8.5 in
#let margin = 16mm

#set document(title: "Capability Matters — Half Letter Draft Back")
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

// top tagline
#at(margin, margin)[
  #text(font: sans, size: 8pt, tracking: 2.2pt, fill: gold,
    upper("One hundred cases · Six failure modes · One discipline"))
  #v(3pt)
  #line(length: 22mm, stroke: 0.8pt + gold)
]

// draft marker — placed below the top tagline rule so it doesn't
// collide with the long "One hundred cases…" line
#at(face-w - margin - 30mm, margin + 10mm)[
  #align(right)[
    #text(font: sans, size: 7pt, tracking: 2pt, fill: gold-light, upper("Editorial Draft"))
  ]
]

// main body
#at(margin, margin + 22mm)[
  #block(width: face-w - 2 * margin)[
    #set par(leading: 0.6em, justify: false)

    #text(font: serif, size: 12pt, style: "italic", fill: cream)[
      Complex systems exist to generate capability. The disciplines
      around the problem each touch part of it — LENS engineers the
      interface where they meet, with the human at the center of the
      design rather than handed off after it.
    ]

    #v(10pt)
    #line(length: 20mm, stroke: 0.5pt + gold)
    #v(10pt)

    #text(font: sans, size: 8pt, fill: rgb("#B7C9E0"))[
      A casebook for the Learning Design and Technology program and
      the Learning Engineering for Next-Generation Systems
      specialization at the Johns Hopkins University School of
      Education. One hundred real incidents examined through the
      lens of capability as a system parameter.
    ]

    #v(6pt)

    #text(font: sans, size: 8pt, fill: rgb("#B7C9E0"))[
      Each case is paired with the learning-engineering insight it
      carries and the LENS curriculum it informs.
    ]
  ]
]

// editorial credit
#at(margin, face-h - margin - 40mm)[
  #block(width: face-w - 2 * margin)[
    #text(font: sans, size: 7pt, tracking: 1.6pt, fill: gold,
      upper("Edited by"))
    #v(3pt)
    #text(font: serif, size: 10pt, fill: cream,
      "William Gray-Roncal, PhD · James Diamond, PhD")
  ]
]

// institutional footer
#at(margin, face-h - margin - 14mm)[
  #line(length: 22mm, stroke: 0.5pt + gold)
  #v(5pt)
  #text(font: sans, size: 7pt, tracking: 1.4pt, fill: cream,
    upper("capabilitymatters.org · LENS at Johns Hopkins"))
]
