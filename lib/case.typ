// ============================================================
// Case template — dual path
//
// 4-page cited narrative (kind != none): pages 1–3 carry the case as a
//   five-beat sourced narrative (section-sets in theme.typ) with inline
//   #cn() citation markers and a numbered reference list at the end of
//   page 3; the LE Lens lands on the next recto (page 4). The case
//   starts on a verso so it opens as a clean four-page unit.
// Legacy 2-page spread (kind == none): case on verso, LE Lens on recto.
//   Kept so conversion is incremental — unconverted cases still render.
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
  // -- 4-page cited-narrative fields (active when kind != none) --
  kind: none,        // "failure" | "intervention" | "frontier"
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

  // Each case starts on a verso (even) page so the spread opens correctly.
  pagebreak(to: "even", weak: true)

  if kind != none {
    // ----- 4-PAGE CITED NARRATIVE -----
    case-cite.update(0)
    let labels = section-sets.at(kind, default: section-sets.failure)
    block(width: 100%, {
      context [#metadata((n: number, role: "start", page: here().page())) <cmeta>]
      header-block
      if diagram != none {
        diagram
        v(3pt)
      }
      set par(justify: true, leading: body-leading, first-line-indent: 0pt, spacing: body-spacing)
      for (i, sec) in sections.enumerate() {
        case-section(labels.at(i, default: ""))
        text(font: sans, size: body-size, fill: text-dark, sec)
      }
      // Parity + structure probe: marker count must equal refs length,
      // and this point (where references begin) should sit on page 3.
      context [#metadata((n: number, role: "narr-end", page: here().page(), markers: case-cite.get().first(), refs: references.len())) <cmeta>]
      if references.len() > 0 {
        v(4pt)
        case-references(..references)
      }
    })
    // LE Lens on the next recto — page 4 when the narrative fills 3 pages.
    pagebreak(to: "odd", weak: true)
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
