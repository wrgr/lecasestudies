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
// Topical org — 14 chapters: 7 parts × {fails, works/frontier}; closing case last.
#include "chapters/ch1a.typ"
#include "chapters/ch1b.typ"
#include "chapters/ch2a.typ"
#include "chapters/ch2b.typ"
#include "chapters/ch3a.typ"
#include "chapters/ch3b.typ"
#include "chapters/ch4a.typ"
#include "chapters/ch4b.typ"
#include "chapters/ch5a.typ"
#include "chapters/ch5b.typ"
#include "chapters/ch6a.typ"
#include "chapters/ch6b.typ"
#include "chapters/ch7a.typ"
#include "chapters/ch7b.typ"

// ============================================================
// CLOSING CASE — about LENS itself; appears at the end of the book
// ============================================================
#include "chapters/closing-case.typ"

// ----------------------------------------------------------- the editors
#include "backmatter/appendix-clo-courses.typ"
#include "backmatter/about-lens.typ"
#include "backmatter/editors.typ"
