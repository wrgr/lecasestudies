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

// `_draft` predicate — components shrink slightly to keep each case
// to a single page in draft mode.
#let _draft = sys.inputs.at("mode", default: "screen") == "draft"

// ---- Pull quote box ----
#let pullquote(body, source) = block(
  width: 100%,
  inset: (left: 10pt, right: 6pt, top: 6pt, bottom: 6pt),
  stroke: (left: 2pt + gold),
  fill: rgb("#FBF7EE"),
  {
    set par(leading: 0.5em)
    text(font: serif, size: if _draft { 13pt } else { 10.5pt }, style: "italic", fill: navy, body)
    v(3pt)
    text(font: sans, size: if _draft { 8pt } else { 6.8pt }, fill: text-muted, tracking: 0.6pt, upper(source))
  }
)

// ---- Sources / citation list ----
#let sources(..items) = block(
  {
    eyebrow("Sources")
    v(3pt)
    set par(leading: if _draft { 0.5em } else { 0.45em }, first-line-indent: 0pt)
    for src in items.pos() {
      block(
        spacing: if _draft { 3pt } else { 2.5pt },
        text(font: sans, size: if _draft { 9pt } else { 7pt }, fill: text-dark)[→ #src]
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
  spacing: if _draft { 8pt } else { 6pt },
  {
    eyebrow(title, color: gold)
    v(2pt)
    set par(leading: if _draft { 0.55em } else { 0.5em }, justify: true)
    text(font: sans, size: if _draft { 10.5pt } else { 8.5pt }, fill: text-dark, body)
  }
)

// ---- Reflection questions ----
#let reflections(..qs) = block(
  width: 100%,
  {
    eyebrow("Reflection Questions", color: teal)
    v(3pt)
    set par(leading: if _draft { 0.5em } else { 0.45em }, justify: false)
    for (i, q) in qs.pos().enumerate() {
      grid(
        columns: (12pt, 1fr),
        column-gutter: 4pt,
        text(font: serif, size: if _draft { 12pt } else { 10pt }, fill: teal, str(i + 1) + "."),
        text(font: sans, size: if _draft { 10.5pt } else { 8pt }, fill: text-dark, q),
      )
      v(if _draft { 3pt } else { 2pt })
    }
  }
)

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
#let cite-num(n) = super(text(font: sans, size: 7pt, weight: "bold", fill: teal, str(n)))

// ---- Editorial flag — small bracketed note for items that need
//      manual confirmation from program leadership before any printed
//      edition. Renders as a small gold "[edit:]" marker.
#let footnote-flag(s) = super(box(
  inset: (x: 2pt, y: 0pt),
  text(font: sans, size: 6pt, weight: "bold", fill: gold, "[edit: " + s + "]"),
))

// ---- Literature list ----
#let literature(..items) = block({
  eyebrow("Further Reading", color: gold)
  v(3pt)
  set par(leading: if _draft { 0.5em } else { 0.45em }, first-line-indent: 0pt)
  for it in items.pos() {
    block(
      spacing: if _draft { 3pt } else { 2.5pt },
      text(font: sans, size: if _draft { 9pt } else { 7pt }, fill: text-dark)[• #it]
    )
  }
})
