// Standalone render of the Why LENS diagram for export as JPG/PNG.
// Run from the repo root via scripts/render-why-lens.sh.
#import "../lib/theme.typ": *
#import "../lib/diagrams.typ" as dgm

// Snug page — diagram is 64 mm tall plus its caption strip.
#set page(
  width: 180mm,
  height: 90mm,
  margin: 4mm,
  fill: white,
  header: none,
  footer: none,
)

#dgm.dgm-why-lens
