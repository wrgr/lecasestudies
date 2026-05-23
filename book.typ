// ============================================================
// CAPABILITY MATTERS — Casebook
// Main entry file. Compile with:
//   typst compile --font-path fonts book.typ build/capability-matters.pdf
// ============================================================

#import "lib/theme.typ": *
#import "lib/components.typ": *

// Build mode flags (resolved in lib/theme.typ):
//   mode=screen        — Half Letter, color, cream backdrop. (default)
//   mode=print         — Half Letter, grayscale, white backdrop. Lulu prod.
//   mode=print-letter  — US Letter, grayscale, white backdrop. Lulu prod.
//   mode=draft         — US Letter, 11pt, color, editorial.
//   mode=draft-half    — Half Letter, 11pt, color, editorial.
//
// Page fill:
//   screen — cream, for on-screen preview only.
//   everything else (print, print-letter, draft, draft-half) — none
//   (transparent), so the page prints on whatever paper stock is
//   used. Diagram fills and full-bleed chapter dividers still paint
//   their own backgrounds; we just don't lay a page-wide rectangle
//   over the paper.
#let page-fill = if cream-backdrop { cream } else { none }
#let draft-date = sys.inputs.at("date", default: "")

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
    inside:  m-inner + bleed,
    outside: m-outer + bleed,
    top:     m-top + bleed,
    bottom:  m-bottom + bleed,
  ),
  fill: page-fill,
  header: context {
    let p = counter(page).get().first()
    if is-draft and p > 1 [
      #set text(font: sans, size: 7pt, fill: text-muted, tracking: 1pt)
      #if draft-date != "" [
        #upper("Capability Matters — DRAFT · " + draft-date) #h(1fr) #str(p)
      ] else [
        #upper("Capability Matters — DRAFT") #h(1fr) #str(p)
      ]
      #v(-4pt)
      #line(length: 100%, stroke: 0.3pt + rule-soft)
    ] else if not is-draft and p > 6 [
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
#include "backmatter/domain-index.typ"
#include "backmatter/references.typ"
#include "backmatter/editors.typ"
