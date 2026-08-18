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
#import "selection.typ": main-slugs
#import "quarantine.typ": quarantine-slugs

#let case(
  number: 0,
  slug: "",            // stable persistent ID (kebab-case from title); survives renumbering
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
  approaches: none,   // optional dict: (during: (..items..), after: (..items..))
  courses: (),
  // -- 3-page cited-narrative fields (active when kind != none) --
  kind: none,        // "failure" | "intervention" | "frontier"
  summary: [],       // shaded ~100–150 word "In brief" abstract
  sections: (),      // one content block per section-set beat, in order
  beats: (),         // optional ~10–12-word summary per beat; renders in the
                     // Half-Letter overview's five-beat map (one line per beat)
  references: (),    // numbered references matching the inline #cn() markers
  // -- v2 metadata fields (back-fill for v1; required for v2) --
  scale: none,           // "big" | "small"  — case scale tier; v1 default is "big"
  evidence-source: none, // "investigation" | "peer-reviewed" | "program-report" | "practitioner" | "dissertation" | "journalism"
  lens-anchor: none,     // canonical LENS anchor as a string, e.g. "D3/PT5"
  induced-anchor: none,  // induced-framework anchor as a string, e.g. "2.4"
  leo-anchor: none,      // LEO anchor for course mapping, e.g. "LEO-3, LEO-5"
  coi: none,             // COI disclosure string — renders prominently under the case heading when set
  evidence-flag: none,   // short flag string for weaker-evidence cases (e.g. "journalism-tier", "preprint-tier"); future-validation language is implied
  competing-readings: (), // 2–4 short items: rival causal readings the record supports and
                          // no study adjudicates. Admitted only where the rival is citable,
                          // unadjudicated, predicts transfer failure differently, and changes
                          // what the reader would do. NOT a place to flag an error instead of
                          // fixing it — an inaccuracy is corrected in the case, not annotated.
  scope-limit: none,      // one sentence: what this case does not show — the failure boundary
                          // of the mechanism it teaches.
) = {
  // Quarantine gate: a quarantined case emits nothing at all — no metadata,
  // no body — in any build, so it is absent from every edition and from the
  // matrix/indexes. The source block is retained and recoverable; see
  // lib/quarantine.typ and casebook/QUARANTINE.md.
  if quarantine-slugs.contains(slug) { return }

  // Emit case metadata for the back-matter indexes and the front matrix.
  // Carries number, title, year, domains, mode codes, kind, and course tags
  // for every case on both the 4-page and legacy paths — so the matrix and
  // domain index can render dynamically across the full corpus.
  [#metadata((n: number, slug: slug, title: title, year: year, domains: domains-list, modes: modes-code, kind: kind, courses: courses, scale: scale, evidence-source: evidence-source, lens-anchor: lens-anchor, induced-anchor: induced-anchor, leo-anchor: leo-anchor, coi: coi, evidence-flag: evidence-flag, competing-readings: competing-readings, scope-limit: scope-limit, references: references, edition: if main-slugs.contains(slug) { "main" } else { "supplement" })) <caseinfo>]

  // Companion build (view "companion"): emit metadata only, no case body.
  // The metadata above is enough for the dynamic appendices (domain index,
  // course index, references-by-case) to render in the LENS companion PDF;
  // the case narrative itself is the casebook's territory.
  if view == "companion" {
    // intentionally empty — case body is not rendered in the companion
  } else if (edition == "main" and not main-slugs.contains(slug)) or (edition == "supplement" and main-slugs.contains(slug)) {
    // edition split: this case belongs to the other edition — metadata only,
    // so the matrix and indexes still cover the whole corpus. (Internally the
    // non-main partition is still tagged "supplement"; it ships as part of the
    // complete standalone edition, not as a separate supplement PDF.)
  } else {

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
    // -- Prominent disclosures under the case heading, when set:
    //    COI disclosure (editor authorship / institutional adjacency) and
    //    evidence-tier flag (journalism / preprint / practice-synthesis tier).
    //    Both render in a single line so the disclosure is visible at the
    //    point of reading, not buried in references.
    if coi != none {
      v(2pt)
      block(
        width: 100%,
        fill: rgb("#FFF6E1"),
        stroke: (left: 1.5pt + gold),
        inset: (x: 6pt, y: 3pt),
        grid(
          columns: (auto, 1fr),
          column-gutter: 6pt,
          eyebrow("Disclosure", color: gold),
          text(font: sans, size: 8pt, weight: "regular", fill: navy, coi),
        ),
      )
    }
    if evidence-flag != none {
      v(2pt)
      block(
        width: 100%,
        fill: rgb("#F1F5FB"),
        stroke: (left: 1.5pt + rgb("#8A9AB5")),
        inset: (x: 6pt, y: 3pt),
        grid(
          columns: (auto, 1fr),
          column-gutter: 6pt,
          eyebrow("Evidence tier", color: rgb("#5C6E8E")),
          text(font: sans, size: 8pt, weight: "regular", fill: navy,
               evidence-flag + " — source confidence flagged; future validation ongoing."),
        ),
      )
    }
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

  // The pull quote renders on the narrative page (after the diagram, or
  // in the figure slot when there is none) — every case carries a visual
  // on the narrative side, and the Lens page keeps room for the
  // connection figure.
  let quote-in-narrative = quote != none

  // Shared LE Lens page.
  let lens-page = block(width: 100%, {
    eyebrow("The Learning Engineering Lens", color: teal)
    v(1pt)
    line(length: 100%, stroke: 0.5pt + rule-soft)
    v(3pt)

    if quote != none and not quote-in-narrative {
      pullquote(quote, quote-source)
      v(2pt)
    }

    lens-block("LE Insight", le-insight)
    v(2pt)
    lens-block("LENS Approach", lens-approach)
    v(2pt)

    // Where this case sits: domain → modes → LENS competency, plus the
    // induced and LEO anchors — the three-anchor convention rendered.
    connection-figure(domains-list, modes-code, lens-anchor, induced-anchor, leo-anchor, kind)
    v(2pt)

    if approaches != none {
      case-approaches(approaches.during, approaches.after)
      v(2pt)
    }

    // Footer pieces — reflections, team-block, sources — each its own
    // non-breakable block (set in the component definitions) and laid
    // out as independent siblings so they can settle onto the lens page
    // as space allows. Wrapping them in a single non-breakable container
    // forced the whole tail onto a fresh page whenever any one piece
    // didn't fit; letting them flow independently lets the typical
    // reflections fit at the bottom of the lens page with team-block
    // and sources spilling at most one short page.
    if reflection-list.len() > 0 {
      reflections(..reflection-list)
      v(2pt)
    }
    if modes-code != "" {
      team-block(modes-code)
      v(1pt)
    }
    // Per-case citations live on page 2; the Lens page keeps only the
    // (legacy) sources list if present. "Further Reading" is omitted
    // here to keep the enriched Lens page to one page.
    sources(..sources-list)

    // LENS Courses NOT rendered in print per editor decision (June 2026):
    // courses are metadata only and surface in the back-matter LENS course
    // index — they are a reference guide for the editor, not a per-case
    // footer in the printed casebook. The `courses` field remains in case
    // metadata and is queried by backmatter/course-index.typ.
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
      // text and the figure lands on page 2. Cases without a diagram get
      // their pull quote here instead, so every case carries a figure-slot
      // visual on the narrative side.
      if diagram != none {
        v(6pt)
        diagram
        v(5pt)
      }
      // Competing readings + scope limit sit at the end of the narrative,
      // before the references — the side of the case where the corpus
      // already carries its hedges, and off the Lens page, whose tail is
      // where the page budget binds.
      if competing-readings.len() > 0 or scope-limit != none {
        v(5pt)
        case-readings(competing-readings, limit: scope-limit)
        v(2pt)
      }
      if quote-in-narrative {
        v(5pt)
        pullquote(quote, quote-source)
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
    // LE Lens flows continuously after the references — no forced page
    // break between the narrative and the lens. Each *case* still starts
    // at the top of a page (the `pagebreak(weak: true)` above the kind
    // branch), but the LE Lens lands wherever the narrative ends so we
    // don't pay for a near-empty page when the narrative is short.
    // Inner LE Lens blocks (`lens-block`, `reflections`, `team-block`)
    // are individually breakable; the outer probe records where the
    // lens started for the integrity check.
    v(6pt)
    context [#metadata((n: number, role: "lens", page: here().page())) <cmeta>]
    lens-page
    // Overflow probe — kept for diagnostic visibility; the lens may now
    // legitimately end on a later page than it began, so check-cases.sh
    // does not enforce same-page lens any more.
    context [#metadata((n: number, role: "lens-end", page: here().page())) <cmeta>]
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
    // Legacy 2-page path — same relaxation as the cited-case path: the
    // LE Lens flows after the body without a forced page break.
    v(6pt)
    lens-page
  }
  }
}
