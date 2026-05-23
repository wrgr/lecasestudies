// ============================================================
// Blank page for the share-PDF assembly. Trim is selectable via
// --input trim=letter (default) or --input trim=half so the blank
// matches the draft interior it's bound with.
//
//   typst compile --root . --input trim=letter cover/blank-page.typ out.pdf
// ============================================================

#let trim = sys.inputs.at("trim", default: "letter")
#let w = if trim == "half" { 139.7mm } else { 215.9mm }
#let h = if trim == "half" { 215.9mm } else { 279.4mm }

#set document(title: "(blank)")
#set page(width: w, height: h, margin: 0mm, fill: none, header: none, footer: none)

// Intentionally empty.
#none
