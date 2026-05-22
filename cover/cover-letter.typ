// ============================================================
// CAPABILITY MATTERS — US Letter Lulu paperback cover wrap
//
// Compile with:
//   typst compile --font-path fonts --root . cover/cover-letter.typ \
//     build/cover-letter.pdf
//
// Defaults match Lulu's US Letter trade-paperback spec for this
// title:
//   Book trim:       215.9 × 279.4 mm   (8.5 × 11 in)
//   Bleed:           3.175 mm (0.125 in)
//   Safety margin:   12.7 mm (0.5 in) from trim edge
//   Spine (250 pp):  ~15.75 mm — Lulu will report the exact value
//                    on the project page; override below if needed.
//   Total cover:     ~453.9 × 285.75 mm
//                    = 2 × trim_w + spine + 2 × bleed
//                    × trim_h + 2 × bleed
//   Barcode area on back cover (Lulu adds): 92 × 32 mm, 12.7 mm from
//     bleed edge — leave the lower-center of the back cover clear.
//
// Override with --input cover-w-mm=… cover-h-mm=… spine-mm=… if the
// Lulu project page reports different values once a page count is
// finalised (especially spine, which depends on final page count and
// paper choice).
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// ---- Lulu cover spec (inputs override defaults) ----
#let total-w = float(sys.inputs.at("cover-w-mm", default: "453.90"))  * 1mm
#let total-h = float(sys.inputs.at("cover-h-mm", default: "285.75"))  * 1mm
#let spine   = float(sys.inputs.at("spine-mm",   default: "15.75"))   * 1mm

// Derived layout points (printer's view, single sheet wrap):
//   [ back cover (with bleed) | spine | front cover (with bleed) ]
#let spine-x = (total-w - spine) / 2
#let front-x = spine-x + spine
#let half-w  = spine-x                       // each face width incl. bleed
#let bleed   = 3.175mm                       // 0.125" full-bleed
#let safety  = 12.7mm                        // 0.5" Lulu safety from trim
#let margin  = bleed + safety                // 15.875 mm — outer face inset

#set document(title: "Capability Matters — US Letter Cover Wrap")
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
// FRONT COVER (right face) — US Letter (bigger trim, bigger type)
// ============================================================
#at(front-x + margin, margin + 6mm)[
  #text(font: sans, size: 10pt, tracking: 3pt, fill: gold, upper("A casebook"))
  #v(3pt)
  #line(length: 26mm, stroke: 0.9pt + gold)
]

// Leader line — the full LENS expansion above the display title
#at(front-x + margin, margin + 30mm)[
  #block(width: half-w - 2 * margin)[
    #text(font: serif, size: 19pt, fill: rgb("#B7C9E0"),
      "Learning Engineering for Next-Generation Systems")
  ]
]

// Display title — larger to fit the Letter face
#at(front-x + margin, margin + 70mm)[
  #text(font: serif, size: 86pt, fill: cream, "Capability")
  #v(-10pt)
  #text(font: serif, size: 86pt, style: "italic", fill: teal-light, "Matters")
]

// Editors
#at(front-x + margin, total-h - margin - 64mm)[
  #text(font: sans, size: 9pt, tracking: 1.8pt, fill: gold, upper("Edited by"))
  #v(4pt)
  #text(font: serif, size: 16pt, fill: cream, "William Gray-Roncal, PhD")
  #linebreak()
  #text(font: serif, size: 16pt, fill: cream, "James Diamond, PhD")
]

// Institutional footer
#at(front-x + margin, total-h - margin - 22mm)[
  #line(length: 26mm, stroke: 0.7pt + gold)
  #v(6pt)
  #text(font: sans, size: 12pt, tracking: 2pt, fill: cream,
    upper("Johns Hopkins University"))
  #v(3pt)
  #text(font: sans, size: 9pt, tracking: 1.6pt, fill: rgb("#B7C9E0"),
    upper("Learning Design and Technology"))
]

// ============================================================
// SPINE (vertical text, only if spine is wide enough)
// ============================================================
#if spine > 10mm {
  at(spine-x, 0mm)[
    #rotate(90deg, origin: top + left, reflow: false,
      box(width: total-h, height: spine, inset: (x: margin, y: 0mm),
        align(center + horizon,
          {
            text(font: serif, size: 14pt, fill: cream, "Capability ")
            text(font: serif, size: 14pt, style: "italic", fill: teal-light, "Matters")
            h(10mm)
            text(font: sans, size: 9pt, tracking: 2pt, fill: gold, upper("LENS · JHU"))
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
// ============================================================
#at(margin, margin + 6mm)[
  #text(font: sans, size: 10pt, tracking: 3pt, fill: gold,
    upper("One hundred cases · Six failure modes · One discipline"))
  #v(3pt)
  #line(length: 26mm, stroke: 0.9pt + gold)
]

#at(margin, margin + 32mm)[
  #block(width: half-w - 2 * margin)[
    #set par(leading: 0.65em)
    #text(font: serif, size: 16pt, style: "italic", fill: cream)[
      Complex systems exist to generate capability. The disciplines
      around the problem each touch part of it — LENS engineers the
      interface where they meet, with the human at the center of the
      design rather than handed off after it.
    ]
    #v(12pt)
    #text(font: sans, size: 10.5pt, fill: rgb("#B7C9E0"))[
      A casebook for the Learning Design and Technology program and
      the Learning Engineering for Next-Generation Systems
      specialization at the Johns Hopkins University School of
      Education. One hundred real incidents — from the bridge of a
      U.S. Navy destroyer to a Michigan ICU to a national A-Level
      results algorithm — examined through the lens of capability as
      a system parameter.
    ]
    #v(8pt)
    #text(font: sans, size: 10.5pt, fill: rgb("#B7C9E0"))[
      Each case is paired with the learning-engineering insight it
      carries and the LENS curriculum it informs. Together they form
      an evidence base for the argument that capability engineering
      is a discipline, not an afterthought.
    ]
  ]
]

// Footer for the back cover: positioned ABOVE the barcode safe area.
// Barcode area: 92 × 32 mm, 12.7 mm from bleed edge, centered horizontally.
// We place the footer line above the top of the barcode region.
#at(margin, total-h - margin - 55mm)[
  #line(length: 26mm, stroke: 0.7pt + gold)
  #v(6pt)
  #text(font: sans, size: 9.5pt, tracking: 1.6pt, fill: cream,
    upper("capabilitymatters.org · LENS at Johns Hopkins"))
]
