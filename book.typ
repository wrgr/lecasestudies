// ============================================================
// CAPABILITY MATTERS — Casebook
// Main entry file. Compile with:
//   typst compile --font-path fonts book.typ build/capability-matters.pdf
// ============================================================

#import "lib/theme.typ": *
#import "lib/components.typ": *

// ---- Document metadata ----
#set document(
  title: "Capability Matters: A Casebook",
  author: "LDT / LENS · Johns Hopkins University School of Education",
)

// ---- Global page setup (A5 + 3mm bleed = 154 x 216 mm) ----
#set page(
  width: page-w,
  height: page-h,
  margin: (
    inside:  m-inner + bleed,
    outside: m-outer + bleed,
    top:     m-top + bleed,
    bottom:  m-bottom + bleed,
  ),
  fill: cream,
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
#set text(font: sans, size: 9.5pt, fill: text-dark, lang: "en")
#set par(leading: 0.62em, justify: false)

// ============================================================
// FRONT MATTER
// ============================================================
#include "frontmatter/title.typ"
#include "frontmatter/introduction.typ"
#include "frontmatter/howto.typ"
#include "frontmatter/matrix.typ"

// ============================================================
// PART I — THE FAILURE MODES
// ============================================================
#include "chapters/ch01-training-gap.typ"
#include "chapters/ch02-designed-out.typ"
#include "chapters/ch03-normalization.typ"
#include "chapters/ch04-interface.typ"
#include "chapters/ch05-governance.typ"
#include "chapters/ch06-knowledge.typ"
#include "chapters/ch07-evidence.typ"

// ============================================================
// PART II — WHAT WORKS
// ============================================================
#include "chapters/ch08-paired-interventions.typ"
#include "chapters/ch08b-paired-extras.typ"

// ============================================================
// BACK MATTER
// ============================================================
#include "backmatter/references.typ"
