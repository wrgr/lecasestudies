// ============================================================
// CAPABILITY MATTERS — Lulu paperback cover wrap
//
// Two layouts (via --input layout=…):
//   layout=wrap  (default) — one-piece wrap: back | spine | front on a
//                 single sheet (Lulu's one-piece cover upload).
//   layout=split — one file, three pages: front, spine, back — for the
//                 with-cover reading copy of the print interior and any
//                 workflow that takes the cover components separately.
//
// Compile with:
//   typst compile --font-path fonts --root . cover/cover.typ build/cover.pdf
//
// Book trim is 8 × 10 in (203.2 × 254 mm). The build script computes
// the exact spine from the print interior's page count and passes the
// total wrap dimensions in; the defaults below track the current
// interior (276 pp → 17.14 mm spine) so a standalone compile is usable.
// They are a convenience, not the source of truth: build.sh always
// overrides them from the live page count.
//   Book trim:       203.2 × 254 mm   (8 × 10 in)
//   Bleed:           3.175 mm (0.125 in)
//   Safety margin:   12.7 mm (0.5 in) from trim edge
//   Total cover:     2 × trim_w + spine + 2 × bleed
//                    × trim_h + 2 × bleed
//   Split panels:    each face = (trim_w + bleed) × (trim_h + 2 × bleed);
//                    the spine-abutting edge carries no bleed (the panels
//                    meet there).
//   Barcode area on back cover (Lulu adds): 92 × 32 mm, 12.7 mm from
//     bleed edge — leave the lower-center of the back cover clear.
//
// Override with --input cover-w-mm=… cover-h-mm=… spine-mm=… (the build
// script always does this from the live page count).
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// ---- Lulu cover spec (inputs override defaults) ----
#let total-w = float(sys.inputs.at("cover-w-mm", default: "429.89"))  * 1mm
#let total-h = float(sys.inputs.at("cover-h-mm", default: "260.35"))  * 1mm
#let spine   = float(sys.inputs.at("spine-mm",   default: "17.14"))   * 1mm
#let layout  = sys.inputs.at("layout", default: "wrap")

// Derived layout points (printer's view, single sheet wrap):
//   [ back cover (with bleed) | spine | front cover (with bleed) ]
#let spine-x = (total-w - spine) / 2
#let front-x = spine-x + spine
#let half-w  = spine-x                       // each face width incl. bleed
#let bleed   = 3.175mm                       // 0.125" full-bleed
#let safety  = 12.7mm                        // 0.5" Lulu safety from trim
#let margin  = bleed + safety                // 15.875 mm — outer face inset

#set document(title: "Capability Matters — Cover Wrap")
#set text(font: sans, fill: cream)

#let panel-bg(w, h) = place(top + left, rect(width: w, height: h,
  fill: gradient.linear((navy, 0%), (navy-mid, 70%), (navy, 100%), angle: 0deg)))

// ============================================================
// FRONT face (width fw, height fh)
// ============================================================
#let front-content(fw, fh) = {
  place(top + left, dx: margin, dy: margin + 4mm)[
    #text(font: sans, size: 8.5pt, tracking: 2.8pt, fill: gold, upper("A casebook"))
    #v(2pt)
    #line(length: 20mm, stroke: 0.8pt + gold)
  ]

  // Leader line — the full LENS expansion above the display title
  place(top + left, dx: margin, dy: margin + 22mm)[
    #block(width: fw - 2 * margin)[
      #text(font: serif, size: 15pt, fill: rgb("#B7C9E0"),
        "Learning Engineering for Next-Generation Systems")
    ]
  ]

  // Display title
  place(top + left, dx: margin, dy: margin + 50mm)[
    #text(font: serif, size: 62pt, fill: cream, "Capability")
    #v(-6pt)
    #text(font: serif, size: 62pt, style: "italic", fill: teal-light, "Matters")
  ]

  // Editors
  place(top + left, dx: margin, dy: fh - margin - 50mm)[
    #text(font: sans, size: 7pt, tracking: 1.6pt, fill: gold, upper("Edited by"))
    #v(3pt)
    #text(font: serif, size: 12pt, fill: cream, "William Gray-Roncal, PhD")
    #linebreak()
    #text(font: serif, size: 12pt, fill: cream, "James Diamond, PhD")
  ]

  // Institutional footer
  place(top + left, dx: margin, dy: fh - margin - 18mm)[
    #line(length: 20mm, stroke: 0.6pt + gold)
    #v(5pt)
    #text(font: sans, size: 9pt, tracking: 1.8pt, fill: cream,
      upper("Johns Hopkins University"))
    #v(2pt)
    #text(font: sans, size: 7pt, tracking: 1.4pt, fill: rgb("#B7C9E0"),
      upper("Learning Design and Technology"))
  ]
}

// ============================================================
// SPINE face (width sw, height sh) — vertical text, only if the spine
// is wide enough.
//
// Rotate origin = top + left; after a 90° CW rotation the box extends
// LEFTWARD from the anchor. So we anchor at the RIGHT edge of the
// spine (sw, 0) — the rotated content then fills the spine area,
// instead of landing to the left of it.
// ============================================================
#let spine-content(sw, sh) = {
  if sw > 8mm {
    place(top + left, dx: sw, dy: 0mm,
      rotate(90deg, origin: top + left, reflow: false,
        box(width: sh, height: sw, inset: (x: margin, y: 0mm),
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
    )
  }
}

// ============================================================
// BACK face (width bw, height bh)
//   • Lulu places a 92 × 32 mm barcode 12.7 mm from the bleed edge —
//     keep the lower-center of this face clear.
//   • The long "Real incidents · …" tagline lives at the BOTTOM
//     (above the URL footer). When that line was at the top it ran
//     within a few mm of the spine fold and risked wrapping into
//     the spine on the bound book.
// ============================================================
#let back-content(bw, bh) = {
  // Top block: italic pull-quote leads the back cover (no eyebrow at
  // the top so the long tagline doesn't risk bleeding into the spine).
  place(top + left, dx: margin, dy: margin + 4mm)[
    #block(width: bw - 2 * margin)[
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
        concentration at the Johns Hopkins University School of
        Education. A growing record of real incidents — from the bridge of a
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
  place(top + left, dx: margin, dy: bh / 2 - 10mm)[
    #block(
      width: bw - 2 * margin,
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
  place(top + left, dx: margin, dy: bh - 70mm)[
    #block(width: bw - 2 * margin)[
      #text(font: sans, size: 7.5pt, tracking: 1.4pt, fill: gold,
        upper("Real incidents · Six failure modes · One discipline"))
      #v(6pt)
      #line(length: 20mm, stroke: 0.6pt + gold)
      #v(6pt)
      #text(font: sans, size: 7.5pt, tracking: 1.4pt, fill: cream,
        upper("capabilitymatters.org · LENS at Johns Hopkins"))
      #v(4pt)
      #text(font: sans, size: 6.5pt, tracking: 1.4pt, fill: rgb("#B7C9E0"),
        upper("Edition · August 2026"))
    ]
  ]
}

#if layout == "split" {
  // Three discrete pages: front, then spine, then back.
  page(width: half-w, height: total-h, margin: 0mm, fill: navy, {
    panel-bg(half-w, total-h)
    front-content(half-w, total-h)
  })
  page(width: spine, height: total-h, margin: 0mm, fill: navy, {
    panel-bg(spine, total-h)
    spine-content(spine, total-h)
  })
  page(width: half-w, height: total-h, margin: 0mm, fill: navy, {
    panel-bg(half-w, total-h)
    back-content(half-w, total-h)
  })
} else {
  // One-piece wrap: back | spine | front on a single sheet, over one
  // continuous gradient.
  set page(width: total-w, height: total-h, margin: 0mm, fill: navy)
  place(top + left, rect(width: total-w, height: total-h, fill: gradient.linear(
    (navy, 0%), (navy-mid, 70%), (navy, 100%), angle: 0deg)))
  place(top + left, dx: 0mm,     dy: 0mm, box(width: half-w, height: total-h, back-content(half-w, total-h)))
  place(top + left, dx: spine-x, dy: 0mm, box(width: spine,  height: total-h, spine-content(spine, total-h)))
  place(top + left, dx: front-x, dy: 0mm, box(width: half-w, height: total-h, front-content(half-w, total-h)))
}
