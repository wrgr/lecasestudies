// ============================================================
// CAPABILITY MATTERS — Lulu paperback cover wrap
//
// Compile with:
//   typst compile --font-path fonts cover/cover.typ build/cover.pdf \
//     --input pages=120
//
// Page count is required to size the spine. Lulu's standard A5 paperback
// uses ~0.0572 mm per page on 80 gsm white paper (their published value
// for "Crème" is slightly different — verify against the current Lulu
// project page before final upload).
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// ---- Inputs ----
#let page-count = int(sys.inputs.at("pages", default: "120"))
#let spine-mm   = float(sys.inputs.at("spine", default: "0")) * 1mm
#let trim-w  = 148mm
#let trim-h  = 210mm
#let bleed   = 3mm
#let spine   = if spine-mm > 0mm { spine-mm } else { page-count * 0.0572mm }

// Cover wrap layout (printer's view, single sheet):
//   [ bleed | back cover (148) | spine | front cover (148) | bleed ]
#let total-w = (2 * bleed) + (2 * trim-w) + spine
#let total-h = (2 * bleed) + trim-h

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

// ---- Background: subtle gradient on right (front) half ----
#place(
  top + left,
  rect(width: total-w, height: total-h, fill: gradient.linear(
    (navy, 0%),
    (navy-mid, 70%),
    (navy, 100%),
    angle: 0deg,
  ))
)

// ---- Spine guides (printable for proofing; comment out for final upload if Lulu requires no guides) ----
// Left edge of front cover:
#let front-x  = bleed + trim-w + spine
#let spine-x  = bleed + trim-w

// ---- FRONT COVER (right side) ----
#at(front-x + 14mm, 22mm + bleed)[
  #text(font: sans, size: 9pt, tracking: 2.8pt, fill: gold, upper("A casebook"))
  #v(2pt)
  #line(length: 22mm, stroke: 0.8pt + gold)
]

// Leader line — full LENS expansion above the display title
#at(front-x + 14mm, 50mm + bleed)[
  #block(width: trim-w - 28mm)[
    #text(font: serif, size: 16pt, fill: rgb("#B7C9E0"),
      "Learning Engineering for Next-Generation Systems")
  ]
]

// Display title
#at(front-x + 14mm, 84mm + bleed)[
  #text(font: serif, size: 72pt, fill: cream, "Capability")
  #v(-6pt)
  #text(font: serif, size: 72pt, style: "italic", fill: teal-light, "Matters")
]

#at(front-x + 14mm, trim-h + bleed - 32mm)[
  #line(length: 22mm, stroke: 0.6pt + gold)
  #v(6pt)
  #text(font: sans, size: 9pt, tracking: 1.8pt, fill: cream,
    upper("Johns Hopkins University"))
  #v(3pt)
  #text(font: sans, size: 7.5pt, tracking: 1.4pt, fill: rgb("#B7C9E0"),
    upper("Learning Design and Technology"))
]

// ---- SPINE (vertical text, only if spine is wide enough) ----
#if spine > 8mm {
  at(spine-x, bleed)[
    #rotate(90deg, origin: top + left, reflow: false,
      box(width: trim-h, height: spine, inset: (x: 14mm, y: 0mm),
        align(center + horizon,
          {
            text(font: serif, size: 14pt, fill: cream, "Capability ")
            text(font: serif, size: 14pt, style: "italic", fill: teal-light, "Matters")
            h(8mm)
            text(font: sans, size: 8pt, tracking: 2pt, fill: gold, upper("LENS · JHU"))
          }
        )
      )
    )
  ]
}

// ---- BACK COVER (left side) ----
#at(bleed + 14mm, 24mm + bleed)[
  #text(font: sans, size: 9pt, tracking: 2.8pt, fill: gold,
    upper("One hundred cases · Six failure modes · One discipline"))
  #v(2pt)
  #line(length: 22mm, stroke: 0.8pt + gold)
]

#at(bleed + 14mm, 50mm + bleed)[
  #block(width: trim-w - 28mm)[
    #set par(leading: 0.64em)
    #text(font: serif, size: 14pt, style: "italic", fill: cream)[
      Complex systems exist to generate capability. The disciplines
      around the problem each touch part of it — LENS engineers the
      interface where they meet, with the human at the center of the
      design rather than handed off after it.
    ]
    #v(10pt)
    #text(font: sans, size: 9pt, fill: rgb("#B7C9E0"))[
      A casebook for the Learning Design & Technology program and the
      Learning Engineering for Next-Generation Systems specialization at
      the Johns Hopkins University School of Education. One hundred real
      incidents — from the bridge of a U.S. Navy destroyer to a Michigan
      ICU to a national A-Level results algorithm — examined through the
      lens of capability as a system parameter.
    ]
    #v(10pt)
    #text(font: sans, size: 9pt, fill: rgb("#B7C9E0"))[
      Each case is paired with the learning-engineering insight it carries
      and the LENS curriculum it informs. Together they form an evidence
      base for the argument that capability engineering is a discipline,
      not an afterthought.
    ]
  ]
]

#at(bleed + 14mm, trim-h + bleed - 32mm)[
  #line(length: 22mm, stroke: 0.6pt + gold)
  #v(6pt)
  #text(font: sans, size: 7.5pt, tracking: 1.4pt, fill: cream,
    upper("capabilitymatters.org · LENS at Johns Hopkins"))
]
