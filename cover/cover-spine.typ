// ============================================================
// CAPABILITY MATTERS — Spine only (6×9 trim, ~17 mm wide)
//
// Decomposed from the Lulu wrap. Rendered upright (height = book
// height, width = spine width) so it can be slipped into a binder
// spine label sleeve. Override the spine width via
// --input spine-mm=… with the exact value Lulu reports for the
// project's page count + paper choice.
// Compile with:
//   typst compile --font-path fonts --root . \
//     cover/cover-spine.typ build/cover-spine.pdf
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#let spine = float(sys.inputs.at("spine-mm", default: "17.25")) * 1mm
#let face-h = 228.6mm  // US Trade trim height (9 in)

#set document(title: "Capability Matters — Spine")
#set page(
  width: spine,
  height: face-h,
  margin: 0mm,
  fill: navy,
)
#set text(font: sans, fill: cream)

// Spine reads up the spine in the conventional bookshelf orientation.
// Rotation around top-left of the inner box flips x→y, so we offset
// dx by `spine` first to land the rotated box back inside the page.
#place(top + left, dx: spine, dy: 0mm,
  rotate(90deg, origin: top + left, reflow: false,
    box(width: face-h, height: spine, inset: (x: 18mm, y: 0mm),
      align(center + horizon,
        {
          text(font: serif, size: 11pt, fill: cream, "Capability ")
          text(font: serif, size: 11pt, style: "italic", fill: teal-light, "Matters")
          h(8mm)
          text(font: sans, size: 7pt, tracking: 2pt, fill: gold, upper("LENS · JHU"))
        }
      )
    )
  )
)
