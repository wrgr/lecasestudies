// ============================================================
// LENS Course Index — the cases mapped to the LEN courses they
// inform. Built by querying the <caseinfo> metadata that lib/case.typ
// emits for every case, so it stays in sync as cases are added or
// their course tags change. A case appears under every course it
// supports, so many appear more than once.
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#pagebreak(to: "odd", weak: true)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("LENS course index"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(12pt)

#text(font: serif, size: 26pt, fill: navy, "The cases by LENS course.")
#v(8pt)

#set par(justify: true, leading: 0.62em, first-line-indent: 0pt)
#text(font: sans, size: 10pt, fill: text-dark)[
  Each case names the LEN courses it serves as a worked example for.
  This index inverts that mapping: for every course in the
  specialization, the cases that inform it, in case-number order.
  A case appears under every course it supports, so many appear more
  than once.
]

#v(12pt)

// Sortable numeric key from a course tag ("LEN 10" -> 10).
#let course-num(k) = {
  let d = k.replace(regex("[^0-9]"), "")
  if d == "" { 9999 } else { int(d) }
}

#let course-header(label, count) = block(
  width: 100%,
  above: 14pt,
  below: 6pt,
  sticky: true,
  {
    grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      text(font: sans, size: 10pt, tracking: 2pt, fill: teal, upper(label)),
      text(font: sans, size: 7.5pt, fill: text-muted,
        str(count) + " " + (if count == 1 { "case" } else { "cases" })),
    )
    v(2pt)
    line(length: 26mm, stroke: 0.7pt + gold)
  },
)

#let case-entry(n, title) = block(
  width: 100%,
  inset: (y: 2.2pt),
  stroke: (bottom: 0.25pt + rule-soft),
  grid(
    columns: (24pt, 1fr),
    column-gutter: 8pt,
    align: (right + horizon, left + horizon),
    text(font: sans, size: 9pt, weight: "bold", fill: gold, str(n)),
    text(font: sans, size: 9pt, fill: navy, title),
  ),
)

#context {
  let entries = query(<caseinfo>).map(m => m.value)
  // course tag -> array of (n, title)
  let by-course = (:)
  for e in entries {
    for c in e.courses {
      let key = str(c).trim()
      if key != "" {
        let lst = by-course.at(key, default: ())
        lst.push((n: e.n, title: e.title))
        by-course.insert(key, lst)
      }
    }
  }
  let keys = by-course.keys().sorted(key: course-num)
  for k in keys {
    let cases = by-course.at(k).sorted(key: c => c.n)
    course-header(k, cases.len())
    for c in cases {
      case-entry(c.n, c.title)
    }
  }
}
