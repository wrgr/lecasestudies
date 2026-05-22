// ============================================================
// Title page + half-title + colophon
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// Respect the global mode flag — only the screen build gets the cream
// backdrop; production and draft pages are white.
#let page-fill = if cream-backdrop { cream } else { white }

// ---- Half-title (page i) ----
#page(
  fill: page-fill,
  margin: (inside: m-inner + bleed, outside: m-outer + bleed, top: m-top + bleed, bottom: m-bottom + bleed),
  header: none, footer: none,
  align(center + horizon, text(font: serif, size: 26pt, fill: navy, "Capability Matters"))
)

// ---- Blank page (ii) ----
#page(fill: page-fill, header: none, footer: none)[]

// ---- Title page (iii) ----
#page(
  fill: page-fill,
  margin: (inside: m-inner + bleed, outside: m-outer + bleed, top: m-top + bleed, bottom: m-bottom + bleed),
  header: none, footer: none,
  {
    v(1fr)
    align(center, {
      text(font: sans, size: 8pt, tracking: 2.4pt, fill: teal, upper("a casebook"))
      v(8pt)
      line(length: 22mm, stroke: 0.6pt + gold)
      v(18pt)
      // leader line: full LENS expansion
      block(width: 80%, align(center,
        text(font: serif, size: 16pt, fill: navy,
          "Learning Engineering for Next-Generation Systems"))
      )
      v(10pt)
      // big display title
      text(font: serif, size: 56pt, fill: navy, "Capability")
      v(-6pt)
      text(font: serif, size: 56pt, style: "italic", fill: teal, "Matters")
    })
    v(1fr)
    align(center, {
      text(font: sans, size: 7.5pt, tracking: 1.4pt, fill: teal, upper("Edited by"))
      v(2pt)
      text(font: serif, size: 11pt, fill: navy, "William Gray-Roncal, PhD")
      linebreak()
      text(font: serif, size: 11pt, fill: navy, "James Diamond, PhD")
      v(16pt)
      line(length: 22mm, stroke: 0.6pt + gold)
      v(8pt)
      text(font: sans, size: 9pt, tracking: 1.8pt, fill: navy, upper("Johns Hopkins University"))
      v(3pt)
      text(font: sans, size: 7.5pt, tracking: 1.4pt, fill: text-muted, upper("Learning Design and Technology"))
      v(10pt)
      text(font: sans, size: 7pt, tracking: 1.2pt, fill: teal, upper("First edition · revised May 2026"))
      v(2pt)
      text(font: sans, size: 7pt, style: "italic", fill: text-muted,
        "An ongoing artifact of the LENS Practice Flywheel — Identify, Activate, Prototype, Analyze, Transition.")
    })
  }
)

// ---- Dedication (iv) ----
#page(
  fill: page-fill,
  margin: (inside: m-inner + bleed, outside: m-outer + bleed, top: m-top + bleed, bottom: m-bottom + bleed),
  header: none, footer: none,
  align(center + horizon, block(
    width: 75%,
    align(center, {
      text(font: sans, size: 7.5pt, tracking: 2.4pt, fill: teal, upper("Dedication"))
      v(18pt)
      line(length: 22mm, stroke: 0.6pt + gold)
      v(18pt)
      text(font: serif, size: 18pt, style: "italic", fill: navy,
        "To everyone who believes in a dream and refuses to give up.")
    })
  ))
)

// ---- Colophon + methodology / AI-tools note (v) ----
#page(
  fill: page-fill,
  margin: (inside: m-inner + bleed, outside: m-outer + bleed, top: m-top + bleed, bottom: m-bottom + bleed),
  header: none, footer: none,
  {
    set par(leading: 0.6em, justify: false, first-line-indent: 0pt)

    text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Colophon"))
    v(4pt)
    line(length: 22mm, stroke: 0.6pt + gold)
    v(10pt)

    text(font: sans, size: 8.5pt, fill: text-dark)[
      *Learning Engineering for Next-Generation Systems:
      Capability Matters* \
      A Casebook. \
      First edition, 2026. \
      Edited by William Gray-Roncal, PhD and James Diamond, PhD. \
      Compiled for the LENS specialization within the Learning Design
      and Technology program at the Johns Hopkins University School
      of Education. \
      Set in Instrument Serif and DM Sans. \
      Printed via Lulu in two trims: Half Letter (5.5 × 8.5 in)
      and US Letter (8.5 × 11 in), perfect-bound.
    ]

    v(10pt)

    text(font: sans, size: 8pt, fill: text-dark)[
      Copyright © 2026. All rights reserved.
    ]

    v(14pt)

    text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("How this volume was made"))
    v(4pt)

    text(font: sans, size: 8.5pt, fill: text-dark)[
      This casebook was assembled using AI tools as part of an
      iterative learning-engineering process — the same Practice
      Flywheel (Identify → Activate → Prototype → Analyze → Transition)
      that the volume's case studies argue for. The methodology
      treats AI as the dual entity the curriculum names it: a
      creative partner that accelerated drafting, cross-referencing,
      layout, and citation lookup, and an epistemic risk that had
      to be hand-checked against the record. Every case in the book
      was reviewed by the editors and hand-checked by students for
      accuracy: confirming that the sources cited exist and are
      findable, that the quoted attributions are fairly represented,
      and that the case studies are accurate accounts of the
      incidents and the investigations they draw on. Items where the
      source could not be confirmed are marked "Paraphrasing…" so
      the attribution is honest about what is the author's
      reconstruction and what is verbatim from the record.
    ]

    v(6pt)

    text(font: sans, size: 8.5pt, fill: text-dark)[
      The volume is not finished. It is the first iteration of a
      reference dataset that LENS will continue to develop. We will
      revise the book based on reader feedback, reviewer findings,
      and our own ongoing practice of learning engineering — adding
      new cases as the operational record grows, correcting our
      record where it can be improved, and updating the curriculum
      crosswalk as the program itself iterates. Corrections, new
      cases, and reader feedback are welcomed.
    ]
  }
)

// ---- Sources, attribution, and legal notices (own page) ----
#page(
  fill: page-fill,
  margin: (inside: m-inner + bleed, outside: m-outer + bleed, top: m-top + bleed, bottom: m-bottom + bleed),
  header: none, footer: none,
  {
    set par(leading: 0.6em, justify: false, first-line-indent: 0pt)

    text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Sources, attribution & legal notices"))
    v(4pt)
    line(length: 22mm, stroke: 0.6pt + gold)
    v(10pt)

    text(font: sans, size: 8pt, style: "italic", fill: text-muted)[
      All cases reference publicly reported incidents and published
      investigations. Quoted material is attributed to source
      investigations, court documents, and academic publications.
      Reflection questions are original to this volume. The
      audit record of citations checked and changes made is
      maintained alongside the source repository.
    ]

    v(6pt)

    text(font: sans, size: 8pt, style: "italic", fill: text-muted)[
      References to convictions, settlements, and findings reflect
      the public record at the time of writing. Where individuals
      are named, they are named only as participants in
      investigations, court proceedings, or public inquiries
      already in the public domain. The casebook makes no legal
      characterization beyond what those records establish.
    ]

    v(6pt)

    text(font: sans, size: 8pt, style: "italic", fill: text-muted)[
      Quoted material is reproduced under fair use (17 U.S.C. § 107)
      for the purposes of criticism, comment, teaching, scholarship,
      and research. Trademarks and product names are used
      nominatively to identify the products and organizations under
      discussion; no affiliation or endorsement is claimed or implied.
    ]

    v(6pt)

    text(font: sans, size: 8pt, style: "italic", fill: text-muted)[
      Corrections, requests for clarification, and notice of any
      inaccuracy can be sent to LDT / LENS at the Johns Hopkins
      University School of Education. Substantive corrections will
      be incorporated in subsequent printings and noted in the
      casebook's public errata.
    ]
  }
)
