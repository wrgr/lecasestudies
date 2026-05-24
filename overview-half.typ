// ============================================================
// CAPABILITY MATTERS — Case Overview (Half Letter, one case per page)
//
//   typst compile --font-path fonts --input view=overview-half \
//     overview-half.typ build/capability-matters-overview-half.pdf
//
// Same shared front matter and same verified case content as the US-Letter
// overview; lib/case.typ renders one filled entry per Half-Letter page in
// view=overview-half mode.
// ============================================================

#import "lib/theme.typ": *
#import "lib/components.typ": *

#set document(
  title: "Capability Matters — Case Overview (Summary Reference, Half Letter)",
  author: "LDT / LENS · Johns Hopkins University School of Education",
)

// ---- Edition geometry (mode = digital | print | proof, via theme) ----
// Half-Letter trim 5.5 x 8.5 in.  digital: trim, color.  print: trim + 3 mm
// bleed, grayscale (Lulu).  proof: trim centered on US Letter with crop marks,
// grayscale, print at 100%.
#let _tw = 139.7mm
#let _th = 215.9mm
#let _bleed = if is-print { 3mm } else { 0mm }
#let _carx = if is-proof { (215.9mm - _tw) / 2 } else { 0mm }
#let _cary = if is-proof { (279.4mm - _th) / 2 } else { 0mm }

#let _hl-marks = if is-proof {
  let L = _carx; let R = _carx + _tw; let T = _cary; let B = _cary + _th
  let g = 3mm; let n = 5mm; let st = 0.3pt + rule-soft
  place(top + left, dx: L, dy: T, rect(width: _tw, height: _th, stroke: st))
  place(top + left, dx: L - g - n, dy: T, line(length: n, stroke: st))
  place(top + left, dx: R + g, dy: T, line(length: n, stroke: st))
  place(top + left, dx: L - g - n, dy: B, line(length: n, stroke: st))
  place(top + left, dx: R + g, dy: B, line(length: n, stroke: st))
  place(top + left, dx: L, dy: T - g - n, line(length: n, angle: 90deg, stroke: st))
  place(top + left, dx: R, dy: T - g - n, line(length: n, angle: 90deg, stroke: st))
  place(top + left, dx: L, dy: B + g, line(length: n, angle: 90deg, stroke: st))
  place(top + left, dx: R, dy: B + g, line(length: n, angle: 90deg, stroke: st))
} else { none }

#set page(
  width: if is-proof { 215.9mm } else { _tw + 2 * _bleed },
  height: if is-proof { 279.4mm } else { _th + 2 * _bleed },
  margin: (
    left:   13mm + _bleed + _carx,
    right:  13mm + _bleed + _carx,
    top:    13mm + _bleed + _cary,
    bottom: 11mm + _bleed + _cary,
  ),
  background: _hl-marks,
  header: context {
    let p = counter(page).get().first()
    if p > 9 {
      set text(font: sans, size: 6.5pt, fill: text-muted, tracking: 1pt)
      grid(columns: (1fr, auto), upper("Capability Matters · Case Overview"), str(p))
      v(-4pt)
      line(length: 100%, stroke: 0.3pt + rule-soft)
    }
  },
  footer: none,
)

#set text(font: sans, size: 9.5pt, fill: text-dark, lang: "en")
#set par(leading: 0.6em, justify: false)

#include "overview-frontmatter.typ"

// ----------------------------------------------------- the cases (overview)
#include "chapters/ch01-training-gap.typ"
#include "chapters/ch01b-training-extras.typ"
#include "chapters/ch02-designed-out.typ"
#include "chapters/ch02b-designed-out-extras.typ"
#include "chapters/ch03-normalization.typ"
#include "chapters/ch03b-normalization-extras.typ"
#include "chapters/ch04-interface.typ"
#include "chapters/ch04b-interface-extras.typ"
#include "chapters/ch05-governance.typ"
#include "chapters/ch05b-governance-extras.typ"
#include "chapters/ch06-knowledge.typ"
#include "chapters/ch06b-knowledge-extras.typ"
#include "chapters/ch07-evidence.typ"
#include "chapters/ch07b-evidence-extras.typ"
#include "chapters/ch08-paired-interventions.typ"
#include "chapters/ch08b-paired-extras.typ"
#include "chapters/ch08c-paired-more.typ"
#include "chapters/ch09-human-ai.typ"

// ----------------------------------------------------------- the editors
#include "backmatter/editors.typ"
