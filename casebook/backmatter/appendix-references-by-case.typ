// ============================================================
// Appendix — References by Case (with retrieval info)
//
// Built dynamically from the <caseinfo> metadata that lib/case.typ
// emits for every case. Provides the full reference list per case so
// a reader can locate every source the book draws on.
//
// Per editor decision (June 2026), each entry carries an explicit
// "Retrieved from:" line. Where a URL / DOI / publisher locator is
// known, that fills the line. Where it is not yet pinned, the line
// is left as a working blank for the verification pass to fill in
// (see casebook/verification-log.md for the per-case review workflow).
// The appendix doubles as the per-case reference checklist for that
// review track.
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#pagebreak(weak: true)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Appendix · references by case"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(12pt)

#text(font: serif, size: 26pt, fill: navy, "References, case by case.")
#v(8pt)

#set par(justify: true, leading: 0.62em, first-line-indent: 0pt)
#text(font: sans, size: 10pt, fill: text-dark)[
  Every reference cited in every case, organized by case in number
  order. The intent is that any reader can locate every source the
  book draws on. Each entry preserves the in-case citation form
  (author, year, venue) and adds an explicit *Retrieved from:* line
  pointing to the canonical access path — a publisher URL, a DOI,
  an agency landing page, or a stable archival locator. Where that
  line is left blank, the source is under verification; the running
  status of that work is in `casebook/verification-log.md`. Future
  editions will fill in remaining locators as the per-case review
  closes them out.
]

#v(8pt)

#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 10pt,
  stroke: (left: 2pt + gold),
  {
    set par(leading: 0.55em)
    text(font: sans, size: 8.5pt, fill: text-muted)[
      *Style.* References are rendered in the form they appeared in
      the case — APA-style author/year/title/venue, with italicised
      book titles and journal names — supplemented by the explicit
      retrieval locator. Government and agency reports are cited by
      report number when one exists. Trade-book references that
      carry no DOI use ISBN as the stable identifier; that mapping
      is on the verification log.
    ]
  }
)

#v(12pt)

// Per-case entry rendering. Spacing tuned to pack tightly: the per-case
// header sits close to the case before it (the divider rule is the
// section break), and each ref entry is a single near-flat block with
// the "Retrieved from:" line on its own row but at minimal leading.
#let case-header(n, title, year) = block(
  width: 100%,
  above: 7pt,
  below: 3pt,
  sticky: true,
  {
    grid(
      columns: (auto, 1fr, auto),
      column-gutter: 8pt,
      align: (left + horizon, left + horizon, right + horizon),
      text(font: sans, size: 9pt, tracking: 1.6pt, fill: teal, "CASE " + str(n)),
      text(font: sans, size: 11pt, fill: navy, weight: "bold", title),
      text(font: sans, size: 8pt, fill: text-muted, str(year)),
    )
    v(1pt)
    line(length: 100%, stroke: 0.25pt + rule-soft)
  }
)

#let ref-entry(num, body) = block(
  width: 100%,
  inset: (top: 1pt, bottom: 2pt),
  {
    grid(
      columns: (16pt, 1fr),
      column-gutter: 4pt,
      align: (right + top, left + top),
      text(font: sans, size: 8pt, fill: text-muted, weight: "bold", str(num) + "."),
      [
        #set par(leading: 0.5em, first-line-indent: 0pt)
        #set text(font: sans, size: 8.5pt, fill: text-dark)
        #body
        #text(font: sans, size: 7.5pt, fill: text-muted, style: "italic")[ — Retrieved from: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_]
      ]
    )
  }
)

// Render every case's references in number order
#context {
  let cases = query(<caseinfo>).map(m => m.value).sorted(key: e => e.n)
  for e in cases {
    case-header(e.n, e.title, e.year)
    let refs = e.references
    if refs == none or refs.len() == 0 {
      block(
        width: 100%,
        inset: (left: 18pt, top: 2pt, bottom: 4pt),
        text(font: sans, size: 8pt, fill: text-muted, style: "italic", "(No references listed; framing or closing case.)"),
      )
    } else {
      let i = 1
      for r in refs {
        ref-entry(i, r)
        i = i + 1
      }
    }
  }
}
