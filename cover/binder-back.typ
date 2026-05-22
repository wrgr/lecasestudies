// ============================================================
// CAPABILITY MATTERS — Back cover insert for a 1" view binder
//
// Sized for the standard Avery-style back-cover sleeve
// (US Letter: 8.5 × 11 in).
// Compile with:
//   typst compile --font-path fonts --root . \
//     cover/binder-back.typ build/binder-back.pdf
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#let face-w = 215.9mm   // 8.5 in
#let face-h = 279.4mm   // 11 in
#let margin = 22mm

#set document(title: "Capability Matters — Binder Back")
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
  #text(font: sans, size: 10pt, tracking: 2.6pt, fill: gold,
    upper("One hundred cases · Six failure modes · One discipline"))
  #v(4pt)
  #line(length: 32mm, stroke: 1pt + gold)
]

// draft marker (top right, below the rule so it doesn't overlap the
// long top tagline) — matches the front face
#at(face-w - margin - 50mm, margin + 14mm)[
  #align(right)[
    #text(font: sans, size: 9pt, tracking: 2.6pt, fill: gold-light, upper("Editorial Draft"))
  ]
]

// main body — set in a generous text block
#at(margin, margin + 28mm)[
  #block(width: face-w - 2 * margin)[
    #set par(leading: 0.65em, justify: false)

    #text(font: serif, size: 17pt, style: "italic", fill: cream)[
      Complex systems exist to generate capability. The disciplines
      around the problem each touch part of it — LENS engineers the
      interface where they meet, with the human at the center of the
      design rather than handed off after it.
    ]

    #v(14pt)
    #line(length: 28mm, stroke: 0.6pt + gold)
    #v(14pt)

    #text(font: sans, size: 11pt, fill: rgb("#B7C9E0"))[
      A casebook for the Learning Design and Technology program and
      the Learning Engineering for Next-Generation Systems
      specialization at the Johns Hopkins University School of
      Education. One hundred real incidents — from the bridge of a
      U.S. Navy destroyer to a Michigan ICU to a national A-Level
      results algorithm — examined through the lens of capability as
      a system parameter.
    ]

    #v(10pt)

    #text(font: sans, size: 11pt, fill: rgb("#B7C9E0"))[
      Each case is paired with the learning-engineering insight it
      carries and the LENS curriculum it informs. Together they form
      an evidence base for the argument that capability engineering
      is a discipline, not an afterthought.
    ]
  ]
]

// editorial credit + spine echo
#at(margin, face-h - margin - 52mm)[
  #block(width: face-w - 2 * margin)[
    #text(font: sans, size: 9pt, tracking: 1.8pt, fill: gold,
      upper("Edited by"))
    #v(4pt)
    #text(font: serif, size: 13pt, fill: cream,
      "William Gray-Roncal, PhD · James Diamond, PhD")
  ]
]

// institutional footer
#at(margin, face-h - margin - 18mm)[
  #line(length: 32mm, stroke: 0.6pt + gold)
  #v(6pt)
  #text(font: sans, size: 9pt, tracking: 1.8pt, fill: cream,
    upper("capabilitymatters.org · LENS at Johns Hopkins"))
]
