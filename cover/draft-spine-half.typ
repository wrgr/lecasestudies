// ============================================================
// CAPABILITY MATTERS — Spine for the Half Letter editorial draft.
//
// Default spine width is computed for ~415-page Half Letter draft
// at cream-paper thickness (~0.0629 mm/page) ≈ 26.1 mm. Override
// with `--input spine-mm=…` to match the actual printed thickness.
//
// Compile with:
//   typst compile --font-path fonts --root . \
//     cover/draft-spine-half.typ build/cover-draft-half-spine.pdf
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#let spine  = float(sys.inputs.at("spine-mm", default: "26.10")) * 1mm
#let face-h = 215.9mm  // 8.5 in (Half Letter)

#set document(title: "Capability Matters — Half Letter Draft Spine")
#set page(width: spine, height: face-h, margin: 0mm, fill: navy)
#set text(font: sans, fill: cream)

// Spine reads up the spine in conventional shelf orientation
// (rotated 90deg so the baseline runs along the spine length).
#place(top + left, dx: spine, dy: 0mm,
  rotate(90deg, origin: top + left, reflow: false,
    box(width: face-h, height: spine, inset: (x: 12mm, y: 0mm),
      align(center + horizon,
        {
          text(font: sans, size: 7pt, tracking: 2pt, fill: gold,
            upper("LENS · JHU"))
          h(8mm)
          text(font: serif, size: 11pt, fill: cream, "Capability ")
          text(font: serif, size: 11pt, style: "italic", fill: teal-light, "Matters")
          h(8mm)
          text(font: sans, size: 7pt, tracking: 2pt, fill: gold-light,
            upper("Editorial Draft"))
        }
      )
    )
  )
)
