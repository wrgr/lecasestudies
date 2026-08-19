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
  // If the key isn't in the canonical dict, fall back to the key itself so
  // an unregistered v2 domain (e.g. "clinical AI") renders as its own label
  // rather than the literal "DOMAIN" placeholder.
  let d = domains.at(key, default: (key, navy-mid))
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

// ---- View flag: "book" (default, full case narratives) or "companion"
// (metadata-only pass that feeds the LENS Companion + Validation & Audit
// index builds). ----
#let view = sys.inputs.at("view", default: "book")

// ---- Front / main matter pagination -------------------------------------
// The book editions paginate like a printed book: the front matter (welcome,
// introduction, how-to, matrix) carries lowercase-roman folios in the running
// header, and the main matter restarts at arabic 1 on the opening Part
// divider. The restart happens INSIDE the first divider's page body
// (chapter-divider's `folio-reset` flag): a page-counter or state update
// placed between pages in the flow silently occupies the next fresh page,
// which pushes the divider onto a verso and flips the recto/verso parity
// of the whole main matter. `mainmatter` flips there too and drives the
// header's roman/arabic branch.
#let mainmatter = state("mainmatter", false)

// Break to the next recto/verso. Unlike a bare `pagebreak(to: ..)`, any
// filler page emitted on the way is a true blank — no running header,
// footer, or folio (book convention for blank leaves).
//
// FRONT MATTER ONLY. The parity probe is an invisible context element on
// the candidate page; in the main matter the cases' trailing <cmeta>
// probes sit at the same page boundary and shift how that page is
// attributed and absorbed, which mis-parities the following divider.
// The front-matter sections end in visible content, where this is stable.
#let clear-to-recto = {
  pagebreak(weak: true)
  context if calc.even(here().page()) { page(header: none, footer: none)[] }
}
#let clear-to-verso = {
  pagebreak(weak: true)
  context if calc.odd(here().page()) { page(header: none, footer: none)[] }
}

// Running header shared by the book editions (book.typ main volume + the
// complete standalone).
// Front matter: roman folios, starting after the six title-section pages
// (which suppress the header themselves). Main matter: arabic folios from
// the restarted page counter.
#let book-header = context {
  let folio = counter(page).get().first()
  let mm = mainmatter.get()
  if mm or folio > 6 {
    let s = if mm { str(folio) } else { numbering("i", folio) }
    set text(font: sans, size: 7pt, fill: text-muted, tracking: 1pt)
    if calc.even(folio) [
      #upper("Capability Matters") #h(1fr) #s
    ] else [
      #s #h(1fr) #upper("A Casebook for LENS")
    ]
    v(-4pt)
    line(length: 100%, stroke: 0.3pt + rule-soft)
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
    breakable: false,
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

// ---- Where this case sits · domain → modes → LENS connection ----
// A compact generated figure on every LE Lens page, built entirely from
// case metadata: the case's domain(s), its failure-mode codes, and the
// five-competency LENS bar with the case's primary competency filled
// (parsed from lens-anchor, e.g. "D3/PT5"), plus the induced and LEO
// anchors. This is where the three-anchor convention (editor decision
// A6) becomes visible in the printed case, not just in the metadata.
// Degrades gracefully: columns whose metadata is absent are omitted.
#let connection-figure(domains-list, modes-code, lens-anchor, induced-anchor, leo-anchor, kind) = {
  // Parse "D3/PT5" or dual-anchor "D4+D3/PT6" (first listed = primary)
  // → competency numbers + problem-type number.
  let dnums = ()
  let pt = none
  if lens-anchor != none and str(lens-anchor) != "" {
    let parts = str(lens-anchor).split("/")
    for d in parts.at(0, default: "").split("+") {
      let d = d.trim()
      if d.len() >= 2 and d.starts-with("D") { dnums.push(d.slice(1)) }
    }
    if parts.len() > 1 {
      let p = parts.at(1).trim()
      if p.len() > 2 and p.starts-with("PT") { pt = p.slice(2) }
    }
  }
  let dnum = dnums.at(0, default: none)
  let has-domains = domains-list.len() > 0
  let has-modes = modes-code != none and modes-code != ""
  if not (has-domains or has-modes or dnum != none) { return }

  let modes-label = if kind == "intervention" { "Modes addressed" }
    else if kind == "frontier" { "Modes at stake" }
    else { "Failure modes" }
  let col-label(s) = text(font: sans, size: 5.8pt, weight: "medium",
    tracking: 1.2pt, fill: text-muted, upper(s))
  let arrow = text(font: sans, size: 9pt, fill: gold, sym.arrow.r)
  // Five-segment LENS bar; the case's primary competency is filled,
  // a dual-anchor secondary is outlined in teal.
  let seg(n) = {
    let primary = dnum == str(n)
    let secondary = not primary and dnums.contains(str(n))
    box(
      fill: if primary { teal } else { none },
      stroke: 0.5pt + (if primary or secondary { teal } else { rule-soft }),
      inset: (x: 4pt, y: 2.4pt),
      radius: 1pt,
      text(font: sans, size: 6.6pt, weight: "bold",
        fill: if primary { cream } else if secondary { teal } else { text-muted },
        "D" + str(n)),
    )
  }
  // Every facet renders the same way: a small tracked label with the
  // value beneath it. Text values sit in a box with the same vertical
  // inset as the chips, so all six value rows share one visual baseline.
  let facet(label, value) = { col-label(label); v(2pt); value }
  let text-val(s) = box(inset: (y: 2.4pt),
    text(font: sans, size: 7.5pt, weight: "medium", fill: navy, s))
  // "LEO-4, LEO-5" → "4 · 5" (the label already says LEO).
  let leo-val = if leo-anchor != none and str(leo-anchor) != "" {
    str(leo-anchor).split(",")
      .map(s => s.trim().trim("LEO", at: start).trim("-", at: start))
      .join(" · ")
  } else { none }

  // The mapping flow: domain → modes → LENS competency, arrow-joined.
  let cells = ()
  if has-domains {
    cells.push(facet("Domain", domain-row(..domains-list)))
  }
  if has-modes {
    if cells.len() > 0 { cells.push(align(horizon, arrow)) }
    let chips = modes-code.split("").filter(c => c != "").map(c => mode-chip(c))
    cells.push(facet(modes-label, chips.join(h(2.5pt))))
  }
  if dnum != none {
    if cells.len() > 0 { cells.push(align(horizon, arrow)) }
    cells.push(facet("LENS competency", {
      range(1, 6).map(n => seg(n)).join(h(2pt))
      v(2pt)
      text(font: sans, size: 7pt, weight: "medium", fill: navy,
        lens-domains.at(dnum, default: ""))
      if dnums.len() > 1 {
        text(font: sans, size: 7pt, fill: text-muted,
          " + " + dnums.slice(1).map(n => "D" + n).join(" + "))
      }
    }))
  }
  // The anchor trio, set off to the right: problem type (the second half
  // of the lens-anchor), the induced-framework anchor, and the LEO.
  let anchors = ()
  if pt != none {
    anchors.push(facet("Problem type", text-val(pt)))
  }
  if induced-anchor != none and str(induced-anchor) != "" {
    anchors.push(facet("Induced", text-val(str(induced-anchor))))
  }
  if leo-val != none {
    anchors.push(facet("LEO", text-val(leo-val)))
  }

  block(
    width: 100%,
    breakable: false,
    stroke: (top: 0.4pt + rule-soft, bottom: 0.4pt + rule-soft),
    inset: (y: 3pt),
    grid(
      columns: (auto,) * cells.len() + (1fr,) + (auto,) * anchors.len(),
      column-gutter: 8pt,
      align: left + top,
      ..cells,
      [],
      ..anchors,
    ),
  )
}

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
// `breakable: false` keeps the three questions on one page; the outer
// case template renders this as a sibling of team-block + sources so
// each can settle independently on the lens page.
#let reflections(..qs) = block(
  width: 100%,
  breakable: false,
  {
    eyebrow("Reflection Questions", color: teal)
    v(2pt)
    set par(leading: 0.42em, justify: false)
    for (i, q) in qs.pos().enumerate() {
      grid(
        columns: (12pt, 1fr),
        column-gutter: 4pt,
        text(font: serif, size: reflection-num, fill: teal, str(i + 1) + "."),
        text(font: sans, size: reflection-size, fill: text-dark, q),
      )
      v(1pt)
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
  block(width: 100%, breakable: false, {
    set par(leading: 0.42em, justify: false, first-line-indent: 0pt)
    text(font: sans, size: 8pt, fill: text-dark)[
      #text(font: sans, size: 6.5pt, weight: "medium", tracking: 1.4pt, fill: teal)[#upper("Who builds this")]
      #h(5pt)
      #exps.join(" · ") — plus domain experts and a learning engineer to integrate.
      #h(6pt)
      #text(fill: text-muted, size: 7.5pt)[#text(weight: "medium", tracking: 1.4pt, fill: teal, size: 6.5pt)[#upper("Tools")]#h(5pt)#tools.join(" · ")]
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
    // Split the list evenly across the two columns (first half left,
    // second half right). `columns(2, ..)` fills the whole first column
    // before starting the second, so a typical 4–6 item list stacked
    // entirely on the left at double the depth with an empty right column.
    let its = items.pos()
    let half = calc.ceil(its.len() / 2)
    let entry(i, it) = block(
      spacing: 3pt,
      grid(
        columns: (10pt, 1fr),
        column-gutter: 3pt,
        text(font: sans, size: 6.5pt, weight: "bold", fill: teal, str(i + 1) + "."),
        text(font: sans, size: 7pt, fill: text-dark, it),
      ),
    )
    set par(leading: 0.42em, first-line-indent: 0pt)
    grid(
      columns: (1fr, 1fr),
      column-gutter: 12pt,
      align: (left + top, left + top),
      { for (i, it) in its.enumerate() { if i < half { entry(i, it) } } },
      { for (i, it) in its.enumerate() { if i >= half { entry(i, it) } } },
    )
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

// ---- Competing readings ----
// Genuinely contested causation: rival explanations the record supports and
// no available study adjudicates. Admission is deliberately strict — this is
// not a place to note an error we chose not to fix. `limit` carries the
// case's scope limit: what the case does not show.
// Uses theme tokens (not raw rgb) so the block keeps its distinction in the
// grayscale print interior.
#let case-readings(items, limit: none) = {
  if items.len() == 0 and limit == none { return }
  block(
    width: 100%,
    fill: if grayscale { rgb("#F1F1F1") } else { rgb("#EEF6F4") },
    inset: (x: 11pt, y: 9pt),
    stroke: (left: 2.5pt + teal),
    radius: 1pt,
    breakable: true,
    {
      text(font: sans, size: 7pt, weight: "medium", tracking: 1.6pt, fill: teal, upper("Competing readings"))
      v(3pt)
      set par(leading: 0.5em, justify: true, first-line-indent: 0pt)
      for it in items {
        grid(
          columns: (7pt, 1fr),
          column-gutter: 5pt,
          text(font: sans, size: 8.5pt, fill: teal, sym.diamond.filled),
          text(font: sans, size: 8.5pt, fill: text-dark, it),
        )
        v(2.5pt)
      }
      if limit != none {
        v(1pt)
        line(length: 100%, stroke: 0.4pt + gold)
        v(3pt)
        text(font: sans, size: 8.5pt, style: "italic", fill: text-dark)[
          #text(weight: "medium")[What this case does not show — ] #limit
        ]
      }
    },
  )
}

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
