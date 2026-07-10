// ============================================================
// CAPABILITY MATTERS — Casebook
// Main entry file. Compile with:
//   typst compile --font-path fonts book.typ build/capability-matters.pdf
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
  title: "Learning Engineering for Next-Generation Systems: Capability Matters — A Casebook",
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
  // Running header: roman folios through the front matter, arabic folios
  // from the Part I divider on (see the main-matter transition below).
  header: book-header,
  footer: none,
)

// ---- Global defaults ----
#set text(font: sans, size: body-size, fill: text-dark, lang: "en")
#set par(leading: 0.62em, justify: false)

// ============================================================
// FRONT MATTER
// ============================================================
#include "frontmatter/title.typ"
#include "frontmatter/introduction.typ"
#include "frontmatter/howto.typ"
#include "frontmatter/matrix.typ"

// ============================================================
// MAIN MATTER — folios restart at arabic 1 on the Part I divider (its
// chapter-divider call carries `folio-reset: true`; the reset happens
// inside that divider page). The front matter above keeps roman folios.
// ============================================================
// All cases — organised topically in seven parts (Healthcare;
// Education & Workforce; Aviation & Aerospace; Defense — the middle
// part; Industry & Enterprise; Disaster Prevention & Recovery;
// Algorithms & Governance), each split into {what fails, what works
// and frontier}. Fourteen chapters; closing case last. Numbering
// 1-194 runs in this chapter order; slugs are the stable IDs.
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

// ============================================================
// CLOSING CASE — about LENS itself; appears at the end of the book
// ============================================================
#include "chapters/closing-case.typ"

// ============================================================
// BACK MATTER
// ============================================================
#include "backmatter/domain-index.typ"
#include "backmatter/course-index.typ"
#include "backmatter/references.typ"

// ---- Appendix + program page ----
#include "backmatter/appendix-clo-courses.typ"
// The full per-case references appendix ships only in the complete
// reference build; the printed main volume relies on each case's own
// reference list plus the Validation & Audit tracker (which carries
// the consolidated appendix with retrieval lines).
#if edition == "full" { include "backmatter/appendix-references-by-case.typ" }
#include "backmatter/about-lens.typ"
#include "backmatter/editors.typ"
