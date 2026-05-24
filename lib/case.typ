// ============================================================
// Case template — dual path
//
// 3-page cited case (kind != none): a shaded "In brief" summary plus a
//   five-beat sourced narrative (section-sets in theme.typ) with inline
//   #cn() citation markers fill two pages, with the numbered reference
//   list at the end of page 2; the LE Lens lands on page 3. Pages flow
//   without a forced verso start, so 3-page units pack without blanks.
// Legacy 2-page spread (kind == none): case then LE Lens on the next
//   page. Kept so conversion is incremental — unconverted cases render.
//
// Identical geometry in print / digital / proof — the modes differ
// only in color and carrier, not in measure.
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
  // -- LE Lens page fields --
  le-insight: [],
  lens-approach: [],
  literature-items: (),
  reflection-list: (),
  courses: (),
  // -- 3-page cited-narrative fields (active when kind != none) --
  kind: none,        // "failure" | "intervention" | "frontier"
  summary: [],       // shaded ~100–150 word "In brief" abstract
  sections: (),      // one content block per section-set beat, in order
  references: (),    // numbered references matching the inline #cn() markers
) = {
  // Emit case metadata for the back-matter indexes (e.g. the LEN-course
  // map). Carries number, title, and course tags for every case on both
  // the 4-page and legacy paths.
  [#metadata((n: number, title: title, courses: courses)) <caseinfo>]

  // Shared header: case number / domains / year, title, mode line, impact.
  let header-block = {
    grid(
      columns: (auto, 1fr, auto),
      column-gutter: 8pt,
      align: (left + horizon, left + horizon, right + horizon),
      eyebrow("Case " + str(number)),
      domain-row(..domains-list),
      eyebrow(year),
    )
    v(3pt)
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
  }

  // Shared LE Lens page.
  let lens-page = block(width: 100%, {
    eyebrow("The Learning Engineering Lens", color: teal)
    v(1pt)
    line(length: 100%, stroke: 0.5pt + rule-soft)
    v(3pt)

    if quote != none {
      pullquote(quote, quote-source)
      v(3pt)
    }

    lens-block("LE Insight", le-insight)
    v(1pt)
    lens-block("LENS Approach", lens-approach)
    v(3pt)

    if reflection-list.len() > 0 {
      reflections(..reflection-list)
      v(2pt)
    }

    if modes-code != "" {
      team-block(modes-code)
      v(3pt)
    }

    grid(
      columns: (1fr, 1fr),
      column-gutter: 10pt,
      sources(..sources-list),
      if literature-items.len() > 0 { literature(..literature-items) } else [],
    )

    block(
      width: 100%,
      inset: (top: 4pt),
      stroke: (top: 0.5pt + rule-soft),
      grid(
        columns: (auto, 1fr),
        column-gutter: 8pt,
        align: (left + horizon, right + horizon),
        eyebrow("LENS Courses", color: teal),
        course-tags(..courses),
      ),
    )
  })

  // Start on a fresh page; no forced verso, so 3-page units pack tight.
  pagebreak(weak: true)

  if kind != none {
    // ----- 3-PAGE CITED CASE (summary + 2-page narrative + LE Lens) -----
    case-cite.update(0)
    let labels = section-sets.at(kind, default: section-sets.failure)
    block(width: 100%, {
      context [#metadata((n: number, role: "start", page: here().page())) <cmeta>]
      header-block
      if summary != [] {
        case-summary(summary)
        v(4pt)
      }
      set par(justify: true, leading: body-leading, first-line-indent: 0pt, spacing: body-spacing)
      for (i, sec) in sections.enumerate() {
        case-section(labels.at(i, default: ""))
        text(font: sans, size: body-size, fill: text-dark, sec)
      }
      // Diagram sits after the narrative, so page 1 carries the summary and
      // text and the figure lands on page 2.
      if diagram != none {
        v(5pt)
        diagram
        v(4pt)
      }
      // Parity + structure probe: marker count must equal refs length,
      // and this point (where references begin) should sit on page 2.
      context [#metadata((n: number, role: "narr-end", page: here().page(), markers: case-cite.get().first(), refs: references.len())) <cmeta>]
      if references.len() > 0 {
        v(4pt)
        case-references(..references)
      }
    })
    // LE Lens on its own page — page 3 when the narrative fills two pages.
    pagebreak(weak: true)
    context [#metadata((n: number, role: "lens", page: here().page())) <cmeta>]
    lens-page
  } else {
    // ----- LEGACY 2-PAGE SPREAD -----
    block(width: 100%, {
      header-block
      if diagram != none {
        diagram
        v(3pt)
      }
      set par(justify: true, leading: body-leading, first-line-indent: 0pt, spacing: body-spacing)
      text(font: sans, size: body-size, fill: text-dark, body)
    })
    pagebreak(weak: true)
    lens-page
  }
}
