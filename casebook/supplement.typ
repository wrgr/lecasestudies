// ============================================================
// CAPABILITY MATTERS — Casebook
// Digital supplement entry file. Compile with:
//   typst compile --font-path fonts --input edition=supplement supplement.typ build/capability-matters-supplement.pdf
// ============================================================

#import "lib/theme.typ": *
#import "lib/components.typ": *

// Build mode flags (resolved in lib/theme.typ):
//   mode=print    — 8 × 10, grayscale, white paper, 3 mm bleed. Lulu prod.
//   mode=digital  — 8 × 10, color, cream backdrop. Screen / PDF. (default)
//   mode=proof    — print page centered on US Letter with 8 × 10 trim
//                   outline + crop marks; print at 100% to review.
//
// Page fill:
//   digital — cream, full-page backdrop.
//   print / proof — none (white). Diagram fills and full-bleed chapter
//   dividers still paint their own backgrounds; we just don't lay a
//   page-wide rectangle over the paper.
#let page-fill = if cream-backdrop { cream } else { none }

// ---- Document metadata ----
#set document(
  title: "Learning Engineering for Next-Generation Systems: Capability Matters — A Casebook · Digital Supplement",
  author: "LDT / LENS · Johns Hopkins University School of Education",
)

// ---- Global page setup ----
#set page(
  width:  page-w,
  height: page-h,
  margin: (
    inside:  m-inner + bleed + carrier-x,
    outside: m-outer + bleed + carrier-x,
    top:     m-top + bleed + carrier-y,
    bottom:  m-bottom + bleed + carrier-y,
  ),
  fill: page-fill,
  background: crop-marks,
  header: context {
    let p = counter(page).get().first()
    if p > 6 [
      #set text(font: sans, size: 7pt, fill: text-muted, tracking: 1pt)
      #if calc.even(p) [
        #upper("Capability Matters") #h(1fr) #str(p)
      ] else [
        #str(p) #h(1fr) #upper("A Casebook for LENS")
      ]
      #v(-4pt)
      #line(length: 100%, stroke: 0.3pt + rule-soft)
    ]
  },
  footer: none,
)

// ---- Global defaults ----
#set text(font: sans, size: body-size, fill: text-dark, lang: "en")
#set par(leading: 0.62em, justify: false)

// ============================================================
// FRONT MATTER — minimal: title, two-page digest, full-corpus matrix
// ============================================================
#include "frontmatter/title.typ"
#include "frontmatter/supplement-digest.typ"
#include "frontmatter/matrix.typ"

// ============================================================
// All supplement cases — same seven-part order and global numbering
// as the main volume; main-volume cases emit metadata only here.
// ============================================================
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
#include "chapters/closing-case.typ"

// ============================================================
// BACK MATTER — full-corpus indexes only
// ============================================================
#include "backmatter/domain-index.typ"
#include "backmatter/course-index.typ"
