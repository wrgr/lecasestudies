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

// `_draft` predicate kept for back-compat; new code should use the
// typography sizes exported from theme.typ.
#let _draft = is-draft

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
#let sources(..items) = block(
  {
    eyebrow("Sources")
    v(3pt)
    set par(leading: if is-draft { 0.5em } else { 0.45em }, first-line-indent: 0pt)
    for src in items.pos() {
      block(
        spacing: if is-draft { 3pt } else { 2.5pt },
        text(font: sans, size: sources-size, fill: text-dark)[→ #src]
      )
    }
  }
)

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
  spacing: if is-draft { 8pt } else { 5pt },
  {
    eyebrow(title, color: gold)
    v(2pt)
    set par(leading: if is-draft { 0.55em } else { 0.5em }, justify: true)
    text(font: sans, size: lens-size, fill: text-dark, body)
  }
)

// ---- Reflection questions ----
#let reflections(..qs) = block(
  width: 100%,
  {
    eyebrow("Reflection Questions", color: teal)
    v(3pt)
    set par(leading: if is-draft { 0.5em } else { 0.45em }, justify: false)
    for (i, q) in qs.pos().enumerate() {
      grid(
        columns: (12pt, 1fr),
        column-gutter: 4pt,
        text(font: serif, size: reflection-num, fill: teal, str(i + 1) + "."),
        text(font: sans, size: reflection-size, fill: text-dark, q),
      )
      v(if is-draft { 3pt } else { 2pt })
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
    set par(leading: if is-draft { 0.52em } else { 0.46em }, justify: false, first-line-indent: 0pt)
    eyebrow("Who Builds This", color: teal)
    v(2pt)
    text(font: sans, size: if is-draft { 9pt } else { 8pt }, fill: text-dark)[
      #exps.join("  ·  ") — with domain experts and a learning engineer to integrate the work.
    ]
    v(2pt)
    text(font: sans, size: if is-draft { 8.5pt } else { 7.5pt }, fill: text-muted)[
      #text(weight: "medium", fill: teal)[Tools] #h(3pt) #tools.join(" · ")
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
  set par(leading: if is-draft { 0.5em } else { 0.45em }, first-line-indent: 0pt)
  for it in items.pos() {
    block(
      spacing: if is-draft { 3pt } else { 2.5pt },
      text(font: sans, size: sources-size, fill: text-dark)[• #it]
    )
  }
})
