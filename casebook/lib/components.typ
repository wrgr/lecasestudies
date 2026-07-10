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

// ---- View flag: "book" (default) or "overview" (companion booklet) ----
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

// Running header shared by the book editions (book.typ, supplement.typ).
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

// ---- Case entry for the overview booklets -------------------------------
// Layout discipline (per editor direction):
//   Header (case # · domains · year)
//   Title    14pt — fits one line for ~90% of cases
//   Impact   the case's 1-sentence consequence line — replaces the long
//            full-book summary; sized so it never spills the entry block
//   5 beats  2-column grid (label · beat), each beat on one line
//   v(1fr)   distributes slack so refs/connectivity/banner sit at bottom
//   Refs     1–3 key references, 7pt bulleted
//   Connectivity panel — clearly labeled with row labels:
//      Induced   X.Y
//      LENS      D#/PT#
//      CLO       CLO-N, …
//      Courses   LEN N, …
//   Bottom banner — LENS lesson, ~2 lines, from le-insight, navy tint
//
// Two layouts, chosen by `view`:
//   "overview"      US Letter, two half-page entries per page (fixed height)
//   "overview-half" Half Letter, one entry per page, content filled to page
#let overview-entry(number, title, year, domains, modes, summary, refs, lens,
                    sections: (), beats: (), kind: none,
                    courses: (), clo-anchor: none, induced-anchor: none, lens-anchor: none,
                    le-insight: none, impact: "") = {
  let big = view == "overview-half"
  let labels = section-sets.at(kind, default: section-sets.failure)
  // Consistent vertical-spacing primitives.
  let gap-small = 2pt
  let gap-med = 4pt
  let gap-big = 6pt

  let header = grid(
    columns: (auto, 1fr, auto),
    column-gutter: 8pt,
    align: (left + horizon, left + horizon, right + horizon),
    eyebrow("Case " + str(number)),
    domain-row(..domains),
    eyebrow(year),
  )
  let titleblock = text(font: serif, size: if big { 14pt } else { 12.5pt }, fill: navy, title)
  // Impact replaces summary as the lead. The `impact` field is a single
  // consequence sentence (~40-60 words) authored per case; renders in
  // dark navy at 9pt with tight leading.
  let leadblock = block({
    set par(justify: true, leading: 0.55em)
    text(font: sans, size: 9pt, fill: text-dark, impact)
  })
  // Narrative — the case's `summary` field ("In brief", ~130 words).
  // This is what was previously missing from the short editions; without
  // it the reader saw only the impact lead, beats, and metadata. Renders
  // in 8pt for the Half-Letter (one-per-page) and 7.5pt for the US
  // Letter (two-per-page); silent if the case carries no summary.
  let narrativeblock = if summary != none and summary != [] {
    block({
      eyebrow("In brief", color: navy-mid)
      v(gap-small)
      set par(justify: true, leading: if big { 0.5em } else { 0.42em })
      text(font: sans, size: if big { 8pt } else { 7.5pt }, fill: text-dark, summary)
    })
  } else { none }
  // 5 beats — 2-column grid. Each beat row is one line at 6.8pt.
  let beatsblock = {
    eyebrow("The full case, in five beats", color: navy-mid)
    v(gap-small)
    block({
      set par(leading: 0.4em, spacing: 1pt)
      if beats.len() == labels.len() {
        grid(
          columns: (auto, 1fr),
          column-gutter: 5pt,
          row-gutter: 1pt,
          ..for i in range(labels.len()) {
            (text(font: sans, size: 6.8pt, weight: "medium", fill: navy, labels.at(i)),
             text(font: sans, size: 6.8pt, fill: text-muted, beats.at(i)))
          }
        )
      } else {
        text(font: sans, size: 8pt, fill: text-muted, labels.join("  ·  "))
      }
    })
  }
  // Key references — 1 to 3 entries, bulleted at 7pt.
  let refsblock = {
    eyebrow("Key references", color: gold)
    v(gap-small)
    block({
      set par(leading: 0.4em, spacing: 2pt, hanging-indent: 7pt)
      let n = calc.min(3, refs.len())
      for r in refs.slice(0, n) {
        text(font: sans, size: 7pt, fill: text-muted, [‣#h(3pt)#r])
        parbreak()
      }
    })
  }
  // Connectivity panel — clearly labeled 2-column grid of where this case
  // sits in the framework. Renders only fields that are populated; absent
  // anchors are silently omitted.
  let connectivityblock = {
    let rows = ()
    if induced-anchor != none and induced-anchor != "" {
      rows.push((
        text(font: sans, size: 7pt, weight: "medium", tracking: 1pt, fill: navy-mid, upper("Induced")),
        text(font: sans, size: 7.5pt, weight: "medium", fill: navy, induced-anchor),
      ))
    }
    if lens-anchor != none and lens-anchor != "" {
      rows.push((
        text(font: sans, size: 7pt, weight: "medium", tracking: 1pt, fill: navy-mid, upper("LENS")),
        text(font: sans, size: 7.5pt, weight: "medium", fill: navy, lens-anchor),
      ))
    }
    if clo-anchor != none and clo-anchor != "" {
      rows.push((
        text(font: sans, size: 7pt, weight: "medium", tracking: 1pt, fill: navy-mid, upper("CLO")),
        text(font: sans, size: 7.5pt, weight: "medium", fill: navy, clo-anchor),
      ))
    }
    if courses.len() > 0 {
      rows.push((
        text(font: sans, size: 7pt, weight: "medium", tracking: 1pt, fill: navy-mid, upper("Courses")),
        text(font: sans, size: 7.5pt, weight: "medium", fill: navy, courses.join(", ")),
      ))
    }
    if rows.len() > 0 {
      eyebrow("Connectivity", color: teal)
      v(gap-small)
      block({
        set par(leading: 0.4em, spacing: 1pt)
        grid(
          columns: (auto, 1fr),
          column-gutter: 6pt,
          row-gutter: 1pt,
          ..rows.flatten()
        )
      })
    }
  }
  // Bottom banner — LENS lesson, ~2 lines, from le-insight. Tight inset,
  // breakable: false so it stays whole if it fits, but doesn't force its
  // own height. Falls back to `lens` (lens-approach) if le-insight unset.
  let lesson-text = if le-insight != none and le-insight != [] { le-insight } else { lens }
  let bannerblock = block(
    width: 100%,
    fill: rgb("#F1F5FB"),
    stroke: (left: 1.5pt + navy-mid),
    inset: (x: 6pt, y: 3pt),
    breakable: false,
    {
      set par(justify: false, leading: 0.42em)
      text(font: sans, size: 6.8pt, weight: "medium", tracking: 1pt, fill: navy, upper("LENS lesson"))
      h(5pt)
      text(font: sans, size: 7pt, fill: text-dark, lesson-text)
    },
  )

  if big {
    // One case per Half-Letter page. Header → title → impact → narrative
    // ("In brief", ~130 words) → beats → (filler) → connectivity → refs
    // → bottom banner.
    header
    v(gap-med)
    titleblock
    v(gap-big)
    leadblock
    if narrativeblock != none { v(gap-big); narrativeblock }
    v(gap-big)
    beatsblock
    v(1fr)
    connectivityblock
    v(gap-med)
    refsblock
    v(gap-small)
    bannerblock
    pagebreak(weak: true)
  } else {
    // Two cases per US Letter page. Tighter envelope; narrative renders
    // smaller (7.5pt) and the block remains fixed-height so layout
    // stays predictable.
    block(
      width: 100%, height: 113mm, breakable: false,
      inset: (top: 5pt, bottom: 4pt), stroke: (top: 0.6pt + rule-soft),
      {
        header; v(gap-small); titleblock; v(gap-med); leadblock;
        if narrativeblock != none { v(gap-med); narrativeblock }
        v(gap-med); beatsblock; v(gap-med);
        connectivityblock; v(gap-small);
        refsblock; v(gap-small); bannerblock
      },
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
// (parsed from lens-anchor, e.g. "D3/PT5"), plus the induced and CLO
// anchors. This is where the three-anchor convention (editor decision
// A6) becomes visible in the printed case, not just in the metadata.
// Degrades gracefully: columns whose metadata is absent are omitted.
#let connection-figure(domains-list, modes-code, lens-anchor, induced-anchor, clo-anchor, kind) = {
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
  let cells = ()
  if has-domains {
    cells.push({ col-label("Domain"); v(2pt); domain-row(..domains-list) })
  }
  if has-modes {
    if cells.len() > 0 { cells.push(align(horizon, arrow)) }
    let chips = modes-code.split("").filter(c => c != "").map(c => mode-chip(c))
    cells.push({ col-label(modes-label); v(2pt); chips.join(h(2.5pt)) })
  }
  if dnum != none {
    if cells.len() > 0 { cells.push(align(horizon, arrow)) }
    cells.push({
      col-label("LENS competency")
      v(2pt)
      range(1, 6).map(n => seg(n)).join(h(2pt))
      v(2pt)
      text(font: sans, size: 7pt, weight: "medium", fill: navy,
        lens-domains.at(dnum, default: ""))
      if dnums.len() > 1 {
        text(font: sans, size: 7pt, fill: text-muted,
          " + " + dnums.slice(1).map(n => "D" + n).join(" + "))
      }
      if pt != none {
        text(font: sans, size: 7pt, fill: text-muted, " · Problem type " + pt)
      }
    })
  }
  // Right-aligned anchor column: induced + CLO, the other two anchors.
  let anchor-rows = ()
  if induced-anchor != none and str(induced-anchor) != "" {
    anchor-rows.push((upper("Induced"), str(induced-anchor)))
  }
  if clo-anchor != none and str(clo-anchor) != "" {
    anchor-rows.push((upper("CLO"), str(clo-anchor)))
  }

  block(
    width: 100%,
    breakable: false,
    stroke: (top: 0.4pt + rule-soft, bottom: 0.4pt + rule-soft),
    inset: (y: 3pt),
    grid(
      columns: (auto,) * cells.len() + (1fr,),
      column-gutter: 8pt,
      align: (..((left + top,) * cells.len()), right + top),
      ..cells,
      if anchor-rows.len() > 0 {
        grid(
          columns: (auto, auto),
          column-gutter: 5pt,
          row-gutter: 2.5pt,
          align: (right + horizon, left + horizon),
          ..for (lab, val) in anchor-rows {
            (text(font: sans, size: 5.8pt, weight: "medium", tracking: 1.2pt, fill: text-muted, lab),
             text(font: sans, size: 7pt, weight: "medium", fill: navy, val))
          }
        )
      } else { [] },
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
