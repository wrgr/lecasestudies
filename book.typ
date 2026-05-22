// ============================================================
// CAPABILITY MATTERS — Casebook
// Main entry file. Compile with:
//   typst compile --font-path fonts book.typ build/capability-matters.pdf
// ============================================================

#import "lib/theme.typ": *
#import "lib/components.typ": *

// ---- Build mode ----
//   mode=screen (default) — Half Letter trim, cream backdrop, A5
//     spread layout (cases as 2-page verso/recto spreads).
//   mode=print            — Half Letter trim, transparent/white
//     backdrop for Lulu cream-paper stock; layout otherwise
//     identical to screen.
//   mode=draft            — US Letter (8.5 × 11) one-up layout, each
//     case on a single page. Intended for editorial review and
//     hand-marking. Uses white backdrop with a small DRAFT marker.
#let mode = sys.inputs.at("mode", default: "screen")
#let print-mode = mode == "print"
#let draft-mode = mode == "draft"
#let page-fill = if print-mode or draft-mode { white } else { cream }

// ---- Document metadata ----
#set document(
  title: "Learning Engineering for Next-Generation Systems: Capability Matters — A Casebook",
  author: "LDT / LENS · Johns Hopkins University School of Education",
)

// ---- Global page setup ----
//   Half Letter + 3mm bleed = 145.7 x 221.9 mm for screen/print.
//   US Letter for draft mode (215.9 × 279.4 mm).
#set page(
  width:  if draft-mode { 215.9mm } else { page-w },
  height: if draft-mode { 279.4mm } else { page-h },
  margin: if draft-mode {
    (left: 22mm, right: 22mm, top: 20mm, bottom: 20mm)
  } else {
    (
      inside:  m-inner + bleed,
      outside: m-outer + bleed,
      top:     m-top + bleed,
      bottom:  m-bottom + bleed,
    )
  },
  fill: page-fill,
  header: context {
    let p = counter(page).get().first()
    if draft-mode and p > 1 [
      #set text(font: sans, size: 7pt, fill: text-muted, tracking: 1pt)
      #upper("Capability Matters — DRAFT") #h(1fr) #str(p)
      #v(-4pt)
      #line(length: 100%, stroke: 0.3pt + rule-soft)
    ] else if not draft-mode and p > 6 [
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
