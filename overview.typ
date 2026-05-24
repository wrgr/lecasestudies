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
