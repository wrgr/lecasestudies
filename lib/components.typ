// ============================================================
// Reusable UI components for case spreads
// ============================================================

#import "theme.typ": *

// ---- Small uppercase label (eyebrow text) ----
#let eyebrow(s, color: teal) = text(
  font: sans,
  size: 7.5pt,
  weight: "medium",
  tracking: 1.6pt,
  upper(s),
  fill: color,
)

// ---- Domain tag pill ----
#let domain-tag(key) = {
  let d = domains.at(key, default: ("Domain", navy-mid))
  box(
    fill: d.at(1),
    inset: (x: 6pt, y: 3pt),
    radius: 1pt,
    text(font: sans, size: 6.8pt, weight: "medium", tracking: 1pt, fill: cream, upper(d.at(0))),
  )
}

#let domain-row(..keys) = {
  let items = keys.pos().map(k => domain-tag(k))
  items.join(h(4pt))
}

// ---- View flag: "book" (default) or "overview" (companion booklet) ----
#let view = sys.inputs.at("view", default: "book")

// ---- Case entry for the overview booklets -------------------------------
// Reuses each case's verified summary / references / lens-approach so the
// overview never duplicates content. Two layouts, chosen by `view`:
//   "overview"      US Letter, two half-page entries per page (fixed height)
//   "overview-half" Half Letter, one entry per page, content filled to page
#let overview-entry(number, title, year, domains, modes, summary, refs, lens, sections: (), kind: none) = {
  let big = view == "overview-half"
  let labels = section-sets.at(kind, default: section-sets.failure)
  let header = grid(
    columns: (auto, 1fr, auto),
    column-gutter: 8pt,
    align: (left + horizon, left + horizon, right + horizon),
    eyebrow("Case " + str(number)),
    domain-row(..domains),
    eyebrow(year),
  )
  let titleblock = text(font: serif, size: if big { 18pt } else { 15pt }, fill: navy, title)
  let refsblock = {
    eyebrow("Key references", color: gold)
    v(2pt)
    block({
      set par(leading: 0.46em, spacing: 3.5pt, hanging-indent: 8pt)
      for r in refs.slice(0, calc.min(3, refs.len())) {
        text(font: sans, size: 7.5pt, fill: text-muted, [‣#h(3pt)#r])
        parbreak()
      }
    })
  }
  let lensblock = {
    eyebrow("LENS applicability", color: teal)
    v(2pt)
    block({
      set par(justify: true, leading: 0.54em)
      text(font: sans, size: 9pt, fill: text-dark, lens)
    })
  }

  if big {
    // One case per Half-Letter page. The case's "in brief" summary, then the
    // five beat headings as a compact inline map of the full treatment, then
    // key references and the LENS note. v(1fr) distributes slack to fill the
    // page; the inline map keeps even content-heavy cases to a single page.
    header
    v(5pt)
    titleblock
    v(9pt)
    block({
      set par(justify: true, leading: 0.6em)
      text(font: sans, size: 10.5pt, fill: text-dark, summary)
    })
    v(9pt)
    eyebrow("The full case, in five beats", color: navy-mid)
    v(2.5pt)
    block({
      set par(leading: 0.5em)
      text(font: sans, size: 8.5pt, fill: text-muted, labels.join("  ·  "))
    })
    v(1fr)
    refsblock
    v(9pt)
    lensblock
    pagebreak(weak: true)
  } else {
    let callout = block({
      set par(justify: true, leading: 0.58em)
      text(font: sans, size: 10pt, fill: text-dark, summary)
    })
    block(
      width: 100%, height: 113mm, breakable: false,
      inset: (top: 7pt, bottom: 5pt), stroke: (top: 0.6pt + rule-soft),
      { header; v(3pt); titleblock; v(5pt); callout; v(6pt); refsblock; v(3pt); lensblock },
    )
  }
}

// ---- Failure mode code chip (single letter T/D/N/H/G/K) ----
#let mode-chip(code) = box(
  stroke: 0.6pt + teal,
  inset: (x: 4pt, y: 1.6pt),
  radius: 1pt,
  text(font: sans, size: 6.8pt, weight: "bold", fill: teal, code),
)

#let mode-line(codes) = {
  let chips = codes.split("").filter(c => c != "").map(c => mode-chip(c))
  let labels = codes.split("").filter(c => c != "").map(c => {
    let m = modes.at(c, default: ("Unknown", ""))
    text(font: sans, size: 7.5pt, fill: text-dark, m.at(0))
  })
  let pairs = ()
  for i in range(chips.len()) {
    pairs.push(box(chips.at(i) + h(4pt) + labels.at(i)))
  }
  pairs.join(h(10pt))
}

// ---- Stat callout (used in evidence-style summaries) ----
#let stat(num, unit) = {
  set par(leading: 0.4em)
  text(font: serif, size: 28pt, fill: gold, num)
  v(-4pt)
  eyebrow(unit, color: teal)
}

// ---- Pull quote box ----
#let pullquote(body, source) = block(
  width: 100%,
  inset: (left: 10pt, right: 6pt, top: 5pt, bottom: 5pt),
  stroke: (left: 2pt + gold),
  fill: if grayscale { rgb("#F0F0F0") } else { rgb("#FBF7EE") },
  {
    set par(leading: 0.48em)
    text(font: serif, size: pullquote-size, style: "italic", fill: navy, body)
    v(2pt)
    text(font: sans, size: pullquote-src, fill: text-muted, tracking: 0.6pt, upper(source))
  }
)

// ---- Sources / citation list ----
// Renders nothing when empty so the 4-page layout (which cites via the
// numbered per-case reference list instead) shows no stray heading.
#let sources(..items) = if items.pos().len() == 0 { none } else {
  block(
    {
      eyebrow("Sources")
      v(3pt)
      set par(leading: 0.45em, first-line-indent: 0pt)
      for src in items.pos() {
        block(
          spacing: 2.5pt,
          text(font: sans, size: sources-size, fill: text-dark)[→ #src]
        )
      }
    }
  )
}

// ---- Compact in-line sources strip (for end of page 1) ----
#let sources-strip(..items) = block(
  width: 100%,
  inset: (top: 4pt),
  stroke: (top: 0.4pt + rule-soft),
  {
    set par(leading: 0.5em, first-line-indent: 0pt)
    eyebrow("Sources", color: teal)
    h(6pt)
    text(font: sans, size: 7pt, fill: text-muted,
      items.pos().join(text(fill: gold, " · "))
    )
  }
)

// ---- LE Insight / LENS Approach block ----
#let lens-block(title, body) = block(
  width: 100%,
  spacing: 5pt,
  {
    eyebrow(title, color: gold)
    v(2pt)
    set par(leading: 0.5em, justify: true)
    text(font: sans, size: lens-size, fill: text-dark, body)
  }
)

// ---- Reflection questions ----
#let reflections(..qs) = block(
  width: 100%,
  {
    eyebrow("Reflection Questions", color: teal)
    v(3pt)
    set par(leading: 0.45em, justify: false)
    for (i, q) in qs.pos().enumerate() {
      grid(
        columns: (12pt, 1fr),
        column-gutter: 4pt,
        text(font: serif, size: reflection-num, fill: teal, str(i + 1) + "."),
        text(font: sans, size: reflection-size, fill: text-dark, q),
      )
      v(2pt)
    }
  }
)

// ---- Who builds this · team & tools ----
// Derived from the case's failure-mode codes: the expertise that
// addresses each distinct mode plus the tools they bring. Kept to a
// compact two-line block (expertise inline, then tools) so it adds
// information without pushing every case into page overflow.
#let team-block(codes) = {
  let cs = codes.split("").filter(c => c != "")
  let seen = ()
  let exps = ()
  let tools = ()
  for c in cs {
    if not seen.contains(c) {
      seen.push(c)
      let e = mode-expertise.at(c, default: "")
      if e != "" and not exps.contains(e) { exps.push(e) }
      for t in mode-tools.at(c, default: ()) { if not tools.contains(t) { tools.push(t) } }
    }
  }
  block(width: 100%, {
    set par(leading: 0.44em, justify: false, first-line-indent: 0pt)
    text(font: sans, size: 8pt, fill: text-dark)[
      #text(font: sans, size: 6.5pt, weight: "medium", tracking: 1.4pt, fill: teal)[#upper("Who builds this")]
      #h(5pt)
      #exps.join(" · ") — plus domain experts and a learning engineer to integrate.
    ]
    v(1.5pt)
    text(font: sans, size: 7.5pt, fill: text-muted)[
      #text(font: sans, size: 6.5pt, weight: "medium", tracking: 1.4pt, fill: teal)[#upper("Tools")]
      #h(5pt)
      #tools.join(" · ")
    ]
  })
}

// ---- LENS course tags ----
#let course-tags(..codes) = {
  let chips = codes.pos().map(c => box(
    fill: navy,
    inset: (x: 5pt, y: 2.5pt),
    radius: 1pt,
    text(font: sans, size: 6.6pt, weight: "medium", fill: cream, tracking: 0.8pt, upper(c)),
  ))
  chips.join(h(3pt))
}

// ---- Numbered citation marker (superscript, used in the introduction) ----
// Sized at 9pt so the super() scaling (~65%) lands at ~5.85pt
// rendered, above Lulu's 5pt preflight floor.
#let cite-num(n) = super(text(font: sans, size: 9pt, weight: "bold", fill: teal, str(n)))

// ---- Per-case inline citation marker ----
// Each case keeps its own counter (reset in `case()`); `#cn()` steps
// it and prints the next superscript number. The matching reference
// text is supplied, in the same order, to `case-references()`. The
// marker count must equal the reference-list length — enforced by
// scripts/check-cases.sh.
#let case-cite = counter("case-cite")
#let cn() = context {
  case-cite.step()
  cite-num(case-cite.get().first())
}

// ---- Per-case numbered reference list ----
// Printed at the end of the case narrative (page 3 of the 4-page
// layout). Numbering matches the inline #cn() markers above it.
#let case-references(..items) = block(
  width: 100%,
  breakable: true,
  {
    eyebrow("References", color: gold)
    v(3pt)
    columns(2, gutter: 12pt, {
      set par(leading: 0.42em, first-line-indent: 0pt)
      for (i, it) in items.pos().enumerate() {
        block(
          spacing: 3pt,
          grid(
            columns: (10pt, 1fr),
            column-gutter: 3pt,
            text(font: sans, size: 6.5pt, weight: "bold", fill: teal, str(i + 1) + "."),
            text(font: sans, size: 7pt, fill: text-dark, it),
          ),
        )
      }
    })
  },
)

// ---- Case summary (shaded "In brief" box) ----
// A 100–150 word abstract at the top of each converted case. Shaded so
// it reads as a distinct orientation block before the narrative.
#let case-summary(body) = block(
  width: 100%,
  fill: if grayscale { rgb("#EFEFEF") } else { rgb("#FBF7EE") },
  inset: (x: 11pt, y: 9pt),
  stroke: (left: 2.5pt + gold),
  radius: 1pt,
  breakable: false,
  {
    text(font: sans, size: 7pt, weight: "medium", tracking: 1.6pt, fill: gold, upper("In brief"))
    v(3pt)
    set par(leading: 0.5em, justify: true, first-line-indent: 0pt)
    text(font: sans, size: 9pt, fill: text-dark, body)
  },
)

// ---- Case section heading ----
// A consistent beat marker for the case narrative. Labels come from
// theme.section-sets, selected by the case's `kind`.
#let case-section(title) = block(
  width: 100%,
  above: 7pt,
  below: 3pt,
  breakable: false,
  sticky: true,   // keep a section heading attached to its text — no orphans
  {
    text(font: sans, size: 8pt, weight: "medium", tracking: 1.8pt, fill: teal, upper(title))
    v(2.5pt)
    line(length: 16mm, stroke: 0.6pt + gold)
  },
)

// ---- Approaches to consider — mitigations to engineer the capability,
//      split into design-time and operational moves. Two arrays of short
//      content items. Renders on the LE Lens page when supplied.
#let case-approaches(during, after) = block(
  width: 100%,
  {
    eyebrow("Approaches to Consider", color: gold)
    v(2pt)
    let col(label, items, mark-color) = {
      text(font: sans, size: 6.5pt, weight: "medium", tracking: 1.2pt, fill: navy, upper(label))
      v(1.5pt)
      set par(leading: 0.42em, justify: false, spacing: 3pt)
      for b in items {
        grid(
          columns: (6pt, 1fr), column-gutter: 3pt,
          text(font: sans, size: 8pt, fill: mark-color, [‣]),
          text(font: sans, size: 8pt, fill: text-dark, b),
        )
      }
    }
    grid(
      columns: (1fr, 1fr),
      column-gutter: 14pt,
      col("During development", during, gold),
      col("In operation / after", after, teal),
    )
  },
)

// ---- Editorial flag — small bracketed note for items that need
//      manual confirmation from program leadership before any printed
//      edition. Renders as a small gold "[edit:]" marker.
// Sized at 8pt so super() scaling (~65%) lands at ~5.2pt rendered.
#let footnote-flag(s) = super(box(
  inset: (x: 2pt, y: 0pt),
  text(font: sans, size: 8pt, weight: "bold", fill: gold, "[edit: " + s + "]"),
))

// ---- Literature list ----
#let literature(..items) = block({
  eyebrow("Further Reading", color: gold)
  v(3pt)
  set par(leading: 0.45em, first-line-indent: 0pt)
  for it in items.pos() {
    block(
      spacing: 2.5pt,
      text(font: sans, size: sources-size, fill: text-dark)[• #it]
    )
  }
})
