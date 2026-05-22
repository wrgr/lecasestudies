// ============================================================
// CAPABILITY MATTERS — Lulu paperback cover wrap
//
// Compile with:
//   typst compile --font-path fonts cover/cover.typ build/cover.pdf
//
// Defaults match Lulu's spec for this project's interior (265 pages,
// cream paper). Override via --input cover-w-mm=…, cover-h-mm=…,
// spine-mm=… if Lulu's project-page spec changes for any reason.
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// ---- Lulu cover spec (inputs override defaults) ----
#let total-w = float(sys.inputs.at("cover-w-mm", default: "362.84")) * 1mm
#let total-h = float(sys.inputs.at("cover-h-mm", default: "254.51")) * 1mm
#let spine   = float(sys.inputs.at("spine-mm",   default: "22.22"))  * 1mm

// Derived layout points (printer's view, single sheet wrap):
//   [ back cover (w/ bleed) | spine | front cover (w/ bleed) ]
#let spine-x = (total-w - spine) / 2
#let front-x = spine-x + spine
#let half-w  = spine-x   // each face is this wide
#let bleed   = 3.175mm   // Lulu safety: 0.125" full-bleed buffer
#let margin  = 14mm      // distance from face edge to content

#set document(title: "Capability Matters — Cover Wrap")
#set page(
  width: total-w,
  height: total-h,
  margin: 0mm,
  fill: navy,
)
#set text(font: sans, fill: cream)

// Helper: position items by (x, y) from page top-left
#let at(x, y, body) = place(top + left, dx: x, dy: y, body)

// ---- Background: subtle gradient that lifts the front (right) face ----
#place(
  top + left,
  rect(width: total-w, height: total-h, fill: gradient.linear(
    (navy, 0%),
    (navy-mid, 70%),
    (navy, 100%),
    angle: 0deg,
  ))
)

// ---- FRONT COVER (right face) ----
#at(front-x + margin, 24mm)[
  #text(font: sans, size: 9pt, tracking: 2.8pt, fill: gold, upper("A casebook"))
  #v(2pt)
  #line(length: 22mm, stroke: 0.8pt + gold)
]

// Leader line — the full LENS expansion above the display title
#at(front-x + margin, 56mm)[
  #block(width: half-w - 2 * margin)[
    #text(font: serif, size: 18pt, fill: rgb("#B7C9E0"),
      "Learning Engineering for Next-Generation Systems")
  ]
]

// Display title
#at(front-x + margin, 92mm)[
  #text(font: serif, size: 80pt, fill: cream, "Capability")
  #v(-6pt)
  #text(font: serif, size: 80pt, style: "italic", fill: teal-light, "Matters")
]

// Editors
#at(front-x + margin, total-h - 70mm)[
  #text(font: sans, size: 7.5pt, tracking: 1.6pt, fill: gold, upper("Edited by"))
  #v(3pt)
  #text(font: serif, size: 14pt, fill: cream, "William Gray-Roncal")
  #linebreak()
  #text(font: serif, size: 14pt, fill: cream, "James Diamond")
]

#at(front-x + margin, total-h - 36mm)[
  #line(length: 22mm, stroke: 0.6pt + gold)
  #v(6pt)
  #text(font: sans, size: 10pt, tracking: 1.8pt, fill: cream,
    upper("Johns Hopkins University"))
  #v(3pt)
  #text(font: sans, size: 8pt, tracking: 1.4pt, fill: rgb("#B7C9E0"),
    upper("Learning Design and Technology"))
]

// ---- SPINE (vertical text, only if spine is wide enough) ----
#if spine > 8mm {
  at(spine-x, 0mm)[
    #rotate(90deg, origin: top + left, reflow: false,
      box(width: total-h, height: spine, inset: (x: 18mm, y: 0mm),
        align(center + horizon,
          {
            text(font: serif, size: 16pt, fill: cream, "Capability ")
            text(font: serif, size: 16pt, style: "italic", fill: teal-light, "Matters")
            h(10mm)
            text(font: sans, size: 9pt, tracking: 2pt, fill: gold, upper("LENS · JHU"))
          }
        )
      )
    )
  ]
}

// ---- BACK COVER (left face) ----
#at(margin, 24mm)[
  #text(font: sans, size: 9pt, tracking: 2.8pt, fill: gold,
    upper("One hundred cases · Six failure modes · One discipline"))
  #v(2pt)
  #line(length: 22mm, stroke: 0.8pt + gold)
]

#at(margin, 56mm)[
  #block(width: half-w - 2 * margin)[
    #set par(leading: 0.64em)
    #text(font: serif, size: 16pt, style: "italic", fill: cream)[
      Complex systems exist to generate capability. The disciplines
      around the problem each touch part of it — LENS engineers the
      interface where they meet, with the human at the center of the
      design rather than handed off after it.
    ]
    #v(12pt)
    #text(font: sans, size: 10pt, fill: rgb("#B7C9E0"))[
      A casebook for the Learning Design and Technology program and
      the Learning Engineering for Next-Generation Systems
      specialization at the Johns Hopkins University School of
      Education. One hundred real incidents — from the bridge of a
      U.S. Navy destroyer to a Michigan ICU to a national A-Level
      results algorithm — examined through the lens of capability as
      a system parameter.
    ]
    #v(10pt)
    #text(font: sans, size: 10pt, fill: rgb("#B7C9E0"))[
      Each case is paired with the learning-engineering insight it
      carries and the LENS curriculum it informs. Together they form
      an evidence base for the argument that capability engineering
      is a discipline, not an afterthought.
    ]
  ]
]

#at(margin, total-h - 36mm)[
  #line(length: 22mm, stroke: 0.6pt + gold)
  #v(6pt)
  #text(font: sans, size: 8pt, tracking: 1.4pt, fill: cream,
    upper("capabilitymatters.org · LENS at Johns Hopkins"))
]
