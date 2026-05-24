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

#set page(
  width: 139.7mm,   // 5.5 in
  height: 215.9mm,  // 8.5 in
  margin: (x: 13mm, top: 13mm, bottom: 11mm),
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
