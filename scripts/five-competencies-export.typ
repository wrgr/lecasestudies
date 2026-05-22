// Standalone render of the Five Competencies diagram for export as JPG/PNG.
// Run from the repo root via:
//   typst compile --font-path fonts --root . scripts/five-competencies-export.typ build/five-competencies.pdf
#import "../lib/theme.typ": *
#import "../lib/diagrams.typ" as dgm

#set page(
  width: 180mm,
  height: 90mm,
  margin: 4mm,
  fill: white,
  header: none,
  footer: none,
)

#dgm.dgm-five-competencies
