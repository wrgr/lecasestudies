// ============================================================
// Title page + half-title + colophon
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// ---- Half-title (page i) ----
#page(
  fill: cream,
  margin: (inside: m-inner + bleed, outside: m-outer + bleed, top: m-top + bleed, bottom: m-bottom + bleed),
  header: none, footer: none,
  align(center + horizon, text(font: serif, size: 26pt, fill: navy, "Capability Matters"))
)

// ---- Blank page (ii) ----
#page(fill: cream, header: none, footer: none)[]

// ---- Title page (iii) ----
#page(
  fill: cream,
  margin: (inside: m-inner + bleed, outside: m-outer + bleed, top: m-top + bleed, bottom: m-bottom + bleed),
  header: none, footer: none,
  {
    v(1fr)
    align(center, {
      text(font: sans, size: 8pt, tracking: 2.4pt, fill: teal, upper("a casebook for"))
      v(6pt)
      text(font: sans, size: 8.5pt, tracking: 2pt, fill: navy, upper("LDT  ·  LENS"))
      v(4pt)
      text(font: sans, size: 7pt, tracking: 1.6pt, fill: text-muted, upper("Learning Design & Technology · Learning Engineering for Next-Generation Systems"))
      v(36pt)
      text(font: serif, size: 48pt, fill: navy, "Capability")
      v(-4pt)
      text(font: serif, size: 48pt, style: "italic", fill: teal, "Matters")
      v(14pt)
      block(
        width: 70%,
        align(center, text(font: serif, size: 16pt, style: "italic", fill: navy.lighten(30%),
          "When human capability is the critical system parameter")),
      )
      v(24pt)
      line(length: 36mm, stroke: 0.8pt + gold)
    })
    v(1fr)
    align(center, {
      text(font: sans, size: 9pt, tracking: 1.6pt, fill: navy.lighten(20%), upper("Johns Hopkins University"))
      v(2pt)
      text(font: sans, size: 8pt, fill: text-muted, "School of Education")
    })
  }
)

// ---- Colophon (iv) ----
#page(
  fill: cream,
  margin: (inside: m-inner + bleed, outside: m-outer + bleed, top: m-top + bleed, bottom: m-bottom + bleed),
  header: none, footer: none,
  {
    v(1fr)
    set par(leading: 0.6em)
    text(font: sans, size: 7.5pt, fill: text-muted)[
      Capability Matters: A Casebook \
      When Human Capability Is the Critical System Parameter \
      \
      Compiled for the LDT program and the LENS specialization at the Johns Hopkins University School of Education. \
      First edition, 2026. \
      \
      All cases reference publicly reported incidents and published investigations. \
      Quoted material is attributed to source investigations and academic publications. \
      Reflection questions are original to this volume.\
      \
      Set in Instrument Serif and DM Sans. \
      Cover and interior typography by the LENS program. \
      Printed via Lulu, A5 perfect-bound.
    ]
  }
)
