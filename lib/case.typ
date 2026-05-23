// ============================================================
// Case spread template
//
// Production (mode=print, print-letter): case on verso (left), LE
//   Lens on recto (right). Long cases overflow to a second pair of
//   pages; pagebreaks below force the next case back to verso, so
//   spreads stay aligned at the cost of an occasional blank page.
// Draft (mode=draft, draft-half): same structural break but no
//   forced verso start — single-sided editorial print.
// ============================================================

#import "theme.typ": *
#import "components.typ": *

#let case(
  number: 0,
  title: "",
  year: "",
  domains-list: (),
  modes-code: "",
  impact: "",
  diagram: none,
  body: [],
  quote: none,
  quote-source: "",
  sources-list: (),
  // -- Page 2 fields --
  le-insight: [],
  lens-approach: [],
  literature-items: (),
  reflection-list: (),
  courses: (),
) = {
  // Production: start each case on a verso (even-numbered) page so
  // page 1 (case) and page 2 (LE Lens) form a true left-right
  // spread when the reader opens the book.
  // Draft: just a fresh page; single-sided print.
  if is-draft {
    pagebreak(weak: true)
  } else {
    pagebreak(to: "even", weak: true)
  }

  // -------- PAGE 1: THE CASE --------
  block(width: 100%, {
    // top row: case number + domain tags + year (single line)
    grid(
      columns: (auto, 1fr, auto),
      column-gutter: 8pt,
      align: (left + horizon, left + horizon, right + horizon),
      eyebrow("Case " + str(number)),
      domain-row(..domains-list),
      eyebrow(year),
    )
    v(3pt)

    // title
    text(font: serif, size: title-size, fill: navy, title)
    v(1pt)
    mode-line(modes-code)
    v(2pt)
    block(
      width: 100%,
      stroke: (top: 0.4pt + rule-soft, bottom: 0.4pt + rule-soft),
      inset: (y: 2.5pt),
      grid(
        columns: (auto, 1fr),
        column-gutter: 8pt,
        eyebrow("Impact", color: gold),
        text(font: sans, size: impact-size, weight: "medium", fill: navy, impact),
      ),
    )
    v(3pt)

    // Diagram. The Letter draft scales the diagram 125% so it stays
    // the focal element with the wider Letter measure; everywhere
    // else the diagram renders at its native size.
    if diagram != none {
      if is-draft and is-letter {
        scale(x: 125%, y: 125%, origin: top + left, reflow: true, diagram)
      } else {
        diagram
      }
      v(if is-draft { 4pt } else { 3pt })
    }

    set par(
      justify: true,
      leading: body-leading,
      first-line-indent: 0pt,
      spacing: body-spacing,
    )
    text(
      font: sans,
      size: body-size,
      fill: text-dark,
      body,
    )
  })

  // -------- PAGE 2: THE LE LENS --------
  // Always lives on the next page so case narrative and analysis
  // can be reviewed side-by-side (verso/recto in production; on
  // consecutive single-sided pages in draft).
  pagebreak(weak: true)
  block(width: 100%, {
    eyebrow("The Learning Engineering Lens", color: teal)
    v(1pt)
    line(length: 100%, stroke: 0.5pt + rule-soft)
    v(if is-draft { 2pt } else { 3pt })

    if quote != none {
      pullquote(quote, quote-source)
      v(if is-draft { 2pt } else { 3pt })
    }

    lens-block("LE Insight", le-insight)
    v(1pt)
    lens-block("LENS Approach", lens-approach)
    v(if is-draft { 2pt } else { 3pt })

    if reflection-list.len() > 0 {
      reflections(..reflection-list)
      v(if is-draft { 2pt } else { 2pt })
    }

    // Who builds this — expertise + tools implied by the failure modes
    if modes-code != "" {
      team-block(modes-code)
      v(if is-draft { 2pt } else { 3pt })
    }

    // Sources + further reading, two columns
    grid(
      columns: (1fr, 1fr),
      column-gutter: 10pt,
      sources(..sources-list),
      if literature-items.len() > 0 { literature(..literature-items) } else [],
    )

    // footer: courses
    block(
      width: 100%,
      inset: (top: if is-draft { 2pt } else { 4pt }),
      stroke: (top: 0.5pt + rule-soft),
      {
        grid(
          columns: (auto, 1fr),
          column-gutter: 8pt,
          align: (left + horizon, right + horizon),
          eyebrow("LENS Courses", color: teal),
          course-tags(..courses),
        )
      }
    )
  })
}
