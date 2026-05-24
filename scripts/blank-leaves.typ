// Blank leaves used to pad a print interior up to a binding-signature
// multiple (Lulu binds in 4-page signatures). The build script computes how
// many leaves are needed and the page size (trim + bleed), then concatenates
// the output after the interior. No introspection here, so it always converges.
//
//   typst compile --input n=2 --input w-mm=145.7 --input h-mm=221.9 \
//     scripts/blank-leaves.typ build/_blanks.pdf

#let n = int(sys.inputs.at("n", default: "0"))
#let w = float(sys.inputs.at("w-mm", default: "145.7")) * 1mm
#let h = float(sys.inputs.at("h-mm", default: "221.9")) * 1mm

#set page(width: w, height: h, margin: 0pt, fill: white, header: none, footer: none)

#for i in range(n) {
  if i > 0 { pagebreak(weak: false) }
  box()
}
