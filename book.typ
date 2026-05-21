// ============================================================
// CAPABILITY MATTERS — Casebook
// Main entry file. Compile with:
//   typst compile --font-path fonts book.typ build/capability-matters.pdf
// ============================================================

#import "lib/theme.typ": *
#import "lib/components.typ": *

// ---- Build mode ----
// `--input mode=print` produces a print-ready interior with white /
// transparent page backgrounds, intended to be printed by Lulu on cream
// paper stock so the physical paper provides the cream tone. Default
// `mode=screen` keeps the cream fill in the PDF for on-screen viewing
// and for printing on white paper.
#let print-mode = sys.inputs.at("mode", default: "screen") == "print"
#let page-fill = if print-mode { white } else { cream }

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
  fill: page-fill,
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

// ============================================================
// PART II — WHAT WORKS
// ============================================================
#include "chapters/ch08-paired-interventions.typ"
#include "chapters/ch08b-paired-extras.typ"
#include "chapters/ch08c-paired-more.typ"

// ============================================================
// PART III — THE FRONTIER
// ============================================================
#include "chapters/ch09-human-ai.typ"

// ============================================================
// BACK MATTER
// ============================================================
#include "backmatter/references.typ"
#include "backmatter/editors.typ"
