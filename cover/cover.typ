// ============================================================
// CAPABILITY MATTERS — Lulu paperback cover wrap
//
// Compile with:
//   typst compile --font-path fonts --root . cover/cover.typ build/cover.pdf
//
// Book trim is 8 × 10 in (203.2 × 254 mm). The build script computes
// the exact spine from the print interior's page count and passes the
// total wrap dimensions in; the defaults below are a sane standalone
// estimate (≈ 28 mm spine) only.
//   Book trim:       203.2 × 254 mm   (8 × 10 in)
//   Bleed:           3.175 mm (0.125 in)
//   Safety margin:   12.7 mm (0.5 in) from trim edge
//   Total cover:     2 × trim_w + spine + 2 × bleed
//                    × trim_h + 2 × bleed
//   Barcode area on back cover (Lulu adds): 92 × 32 mm, 12.7 mm from
//     bleed edge — leave the lower-center of the back cover clear.
//
// Override with --input cover-w-mm=… cover-h-mm=… spine-mm=… (the build
// script always does this from the live page count).
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// ---- Lulu cover spec (inputs override defaults) ----
#let total-w = float(sys.inputs.at("cover-w-mm", default: "440.75"))  * 1mm
#let total-h = float(sys.inputs.at("cover-h-mm", default: "260.35"))  * 1mm
#let spine   = float(sys.inputs.at("spine-mm",   default: "28.00"))   * 1mm

// Derived layout points (printer's view, single sheet wrap):
//   [ back cover (with bleed) | spine | front cover (with bleed) ]
#let spine-x = (total-w - spine) / 2
#let front-x = spine-x + spine
#let half-w  = spine-x                       // each face width incl. bleed
#let bleed   = 3.175mm                       // 0.125" full-bleed
#let safety  = 12.7mm                        // 0.5" Lulu safety from trim
#let margin  = bleed + safety                // 15.875 mm — outer face inset

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

// ---- Background gradient (subtle lift on the front face) ----
#place(
  top + left,
  rect(width: total-w, height: total-h, fill: gradient.linear(
    (navy, 0%),
    (navy-mid, 70%),
    (navy, 100%),
    angle: 0deg,
  ))
)

// ============================================================
// FRONT COVER (right face)
// ============================================================
#at(front-x + margin, margin + 4mm)[
  #text(font: sans, size: 8.5pt, tracking: 2.8pt, fill: gold, upper("A casebook"))
  #v(2pt)
  #line(length: 20mm, stroke: 0.8pt + gold)
]

// Leader line — the full LENS expansion above the display title
#at(front-x + margin, margin + 22mm)[
  #block(width: half-w - 2 * margin)[
    #text(font: serif, size: 15pt, fill: rgb("#B7C9E0"),
      "Learning Engineering for Next-Generation Systems")
  ]
]

// Display title
#at(front-x + margin, margin + 50mm)[
  #text(font: serif, size: 62pt, fill: cream, "Capability")
  #v(-6pt)
  #text(font: serif, size: 62pt, style: "italic", fill: teal-light, "Matters")
]

// Editors
#at(front-x + margin, total-h - margin - 50mm)[
  #text(font: sans, size: 7pt, tracking: 1.6pt, fill: gold, upper("Edited by"))
  #v(3pt)
  #text(font: serif, size: 12pt, fill: cream, "William Gray-Roncal, PhD")
  #linebreak()
  #text(font: serif, size: 12pt, fill: cream, "James Diamond, PhD")
]

// Institutional footer
#at(front-x + margin, total-h - margin - 18mm)[
  #line(length: 20mm, stroke: 0.6pt + gold)
  #v(5pt)
  #text(font: sans, size: 9pt, tracking: 1.8pt, fill: cream,
    upper("Johns Hopkins University"))
  #v(2pt)
  #text(font: sans, size: 7pt, tracking: 1.4pt, fill: rgb("#B7C9E0"),
    upper("Learning Design and Technology"))
]

// ============================================================
// SPINE (vertical text, only if spine is wide enough)
//
// Rotate origin = top + left; after a 90° CW rotation the box
// extends LEFTWARD from the anchor. So we anchor at the RIGHT edge
// of the spine (spine-x + spine, 0) — the rotated content then
// fills the spine area from spine-x to spine-x+spine, instead of
// landing to the left of the spine.
// ============================================================
#if spine > 8mm {
  at(spine-x + spine, 0mm)[
    #rotate(90deg, origin: top + left, reflow: false,
      box(width: total-h, height: spine, inset: (x: margin, y: 0mm),
        align(center + horizon,
          {
            text(font: serif, size: 13pt, fill: cream, "Capability ")
            text(font: serif, size: 13pt, style: "italic", fill: teal-light, "Matters")
            h(8mm)
            text(font: sans, size: 8pt, tracking: 2pt, fill: gold, upper("LENS · JHU"))
          }
        )
      )
    )
  ]
}

// ============================================================
// BACK COVER (left face)
//   • Lulu places a 92 × 32 mm barcode 12.7 mm from the bleed edge —
//     keep the lower-center of this face clear.
//   • The long "One hundred cases · …" tagline lives at the BOTTOM
//     (above the URL footer). When that line was at the top it ran
//     within a few mm of the spine fold and risked wrapping into
//     the spine on the bound book.
// ============================================================

// Top block: italic pull-quote leads the back cover (no eyebrow at
// the top so the long tagline doesn't risk bleeding into the spine).
#at(margin, margin + 4mm)[
  #block(width: half-w - 2 * margin)[
    #set par(leading: 0.62em)
    #text(font: serif, size: 12pt, style: "italic", fill: cream)[
      Complex systems exist to generate capability. The disciplines
      around the problem each touch part of it — LENS engineers the
      interface where they meet, with the human at the center of
      design and implementation.
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

// Welcome stripe — the quick version of the book's opening note,
// set in the empty middle band of the back cover.
#at(margin, total-h / 2 - 10mm)[
  #block(
    width: half-w - 2 * margin,
    fill: teal,
    inset: (x: 11pt, y: 9pt),
    radius: 1pt,
    {
      set par(leading: 0.6em, first-line-indent: 0pt)
      text(font: sans, size: 8.5pt, fill: cream)[
        Learning engineering is a *team sport* — a dialogue between
        engineering and the learning sciences, open to every field that
        brings a real tool. Bring what you know: domain, code, theory,
        design, teaching, analysis. No one knows everything. You get to
        decide what you bring.
      ]
    }
  )
]

// Bottom block: tagline + rule + URL footer, all stacked. Anchored
// 70 mm from the bottom bleed edge so the entire block sits above
// Lulu's 92 × 32 mm barcode safe area — that area runs from 12.7 mm
// to 44.7 mm above the bottom bleed (centered horizontally on the
// back face). Anchoring at ~70 mm leaves the footer block bottom at
// ~53 mm above the bleed, giving ~8 mm of clearance above the
// barcode safe area's upper edge.
#at(margin, total-h - 70mm)[
  #block(width: half-w - 2 * margin)[
    #text(font: sans, size: 7.5pt, tracking: 1.4pt, fill: gold,
      upper("One hundred cases · Six failure modes · One discipline"))
    #v(6pt)
    #line(length: 20mm, stroke: 0.6pt + gold)
    #v(6pt)
    #text(font: sans, size: 7.5pt, tracking: 1.4pt, fill: cream,
      upper("capabilitymatters.org · LENS at Johns Hopkins"))
  ]
]
