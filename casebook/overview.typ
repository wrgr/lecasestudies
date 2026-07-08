// ============================================================
// CAPABILITY MATTERS — Case Overview (US Letter, two cases per page)
//
//   typst compile --font-path fonts --input view=overview \
//     overview.typ build/capability-matters-overview.pdf
//
// Shared reference front matter lives in overview-frontmatter.typ; the case
// entries are rendered by lib/case.typ in view=overview mode (two half-page
// entries per page), reusing each case's verified content.
// ============================================================

#import "lib/theme.typ": *
#import "lib/components.typ": *

#set document(
  title: "Capability Matters — Case Overview (Summary Reference)",
  author: "LDT / LENS · Johns Hopkins University School of Education",
)

#set page(
  paper: "us-letter",
  margin: (x: 19mm, top: 17mm, bottom: 15mm),
  header: context {
    let p = counter(page).get().first()
    if p > 9 {
      set text(font: sans, size: 7pt, fill: text-muted, tracking: 1pt)
      grid(columns: (1fr, auto), upper("Capability Matters · Case Overview"), str(p))
      v(-4pt)
      line(length: 100%, stroke: 0.3pt + rule-soft)
    }
  },
  footer: none,
)

#set text(font: sans, size: 9.5pt, fill: text-dark, lang: "en")
#set par(leading: 0.62em, justify: false)

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
