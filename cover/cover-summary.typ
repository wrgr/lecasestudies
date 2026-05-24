// ============================================================
// CAPABILITY MATTERS — Case Overview (Summary Reference)
// Half-Letter Lulu paperback cover.
//
// Two layouts (via --input layout=…):
//   layout=wrap  (default) — one-piece wrap: back | spine | front on a single
//                 sheet (Lulu's one-piece cover upload).
//   layout=split — one file, three pages: front, spine, back — for workflows
//                 that take the cover components separately.
//
// Compile (the build script passes the live dimensions):
//   typst compile --font-path fonts --root . \
//     --input cover-w-mm=… --input cover-h-mm=… --input spine-mm=… \
//     [--input layout=split] cover/cover-summary.typ build/cover-overview-half.pdf
//
// Summary trim: 5.5 × 8.5 in (139.7 × 215.9 mm).
//   Bleed 3.175 mm; Lulu safety 12.7 mm from trim.
//   Wrap = 2 × trim_w + spine + 2 × bleed  ×  trim_h + 2 × bleed.
//   Each split panel = (trim_w + bleed) × (trim_h + 2 × bleed); the
//   spine-abutting edge carries no bleed (the panels meet there).
// ============================================================

#import "../lib/theme.typ": *

#let total-w = float(sys.inputs.at("cover-w-mm", default: "293.25")) * 1mm
#let total-h = float(sys.inputs.at("cover-h-mm", default: "222.25")) * 1mm
#let spine   = float(sys.inputs.at("spine-mm",   default: "7.50"))   * 1mm
#let layout  = sys.inputs.at("layout", default: "wrap")

#let spine-x = (total-w - spine) / 2
#let front-x = spine-x + spine
#let half-w  = spine-x
#let bleed   = 3.175mm
#let safety  = 12.7mm
#let margin  = bleed + safety

#set document(title: "Capability Matters — Case Overview — Cover")
#set text(font: sans, fill: cream)

#let panel-bg(w, h) = place(top + left, rect(width: w, height: h,
  fill: gradient.linear((navy, 0%), (navy-mid, 70%), (navy, 100%), angle: 0deg)))

// ---------------- FRONT face (width fw, height fh) ----------------
#let front-content(fw, fh) = {
  place(top + left, dx: margin, dy: margin + 4mm)[
    #text(font: sans, size: 8pt, tracking: 2.8pt, fill: gold, upper("Summary Reference"))
    #v(2pt)
    #line(length: 18mm, stroke: 0.8pt + gold)
  ]
  place(top + left, dx: margin, dy: margin + 26mm)[
    #block(width: fw - 2 * margin)[
      #text(font: serif, size: 12pt, fill: rgb("#B7C9E0"),
        "Learning Engineering for Next-Generation Systems")
    ]
  ]
  place(top + left, dx: margin, dy: margin + 46mm)[
    #text(font: serif, size: 36pt, fill: cream, "Capability")
    #v(-4pt)
    #text(font: serif, size: 36pt, style: "italic", fill: teal-light, "Matters")
    #v(4pt)
    #text(font: serif, size: 17pt, fill: rgb("#B7C9E0"), "Case Overview")
  ]
  place(top + left, dx: margin, dy: fh - margin - 34mm)[
    #block(width: fw - 2 * margin)[
      #text(font: sans, size: 7.5pt, fill: rgb("#B7C9E0"))[
        A quick-reference guide to one hundred real cases — each with a brief
        callout, its key sources, and the LENS courses it informs.
      ]
    ]
  ]
  place(top + left, dx: margin, dy: fh - margin - 14mm)[
    #line(length: 18mm, stroke: 0.6pt + gold)
    #v(4pt)
    #text(font: sans, size: 7.5pt, tracking: 1.6pt, fill: cream, upper("LENS · Johns Hopkins University"))
  ]
}

// ---------------- SPINE face (width sw, height sh) ----------------
#let spine-content(sw, sh) = {
  if sw > 6mm {
    place(top + left, dx: sw, dy: 0mm,
      rotate(90deg, origin: top + left, reflow: false,
        box(width: sh, height: sw, inset: (x: margin, y: 0mm),
          align(center + horizon, {
            text(font: serif, size: 9pt, fill: cream, "Capability ")
            text(font: serif, size: 9pt, style: "italic", fill: teal-light, "Matters")
            h(5mm)
            text(font: sans, size: 6.5pt, tracking: 1.6pt, fill: gold, upper("Overview"))
          }))))
  }
}

// ---------------- BACK face (width bw, height bh) ----------------
#let back-content(bw, bh) = {
  place(top + left, dx: margin, dy: margin + 6mm)[
    #block(width: bw - 2 * margin)[
      #set par(leading: 0.6em)
      #text(font: serif, size: 11pt, style: "italic", fill: cream)[
        The companion digest to the casebook: one hundred cases of capability —
        how it fails, how it has been engineered, and where the discipline is
        being tested next.
      ]
      #v(7pt)
      #text(font: sans, size: 7.5pt, fill: rgb("#B7C9E0"))[
        Each entry distills a case to its essentials — title, a brief callout,
        one to three key references, and the LENS courses it informs — with the
        full three-page treatment in the main casebook. A companion to the
        Learning Design and Technology program and the Learning Engineering for
        Next-Generation Systems specialization at the Johns Hopkins University
        School of Education.
      ]
    ]
  ]
  place(top + left, dx: margin, dy: bh - 70mm)[
    #block(width: bw - 2 * margin)[
      #text(font: sans, size: 7pt, tracking: 1.4pt, fill: gold,
        upper("One hundred cases · Six failure modes · One discipline"))
      #v(5pt)
      #line(length: 18mm, stroke: 0.6pt + gold)
      #v(5pt)
      #text(font: sans, size: 7pt, tracking: 1.4pt, fill: cream,
        upper("capabilitymatters.org · LENS at Johns Hopkins"))
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
