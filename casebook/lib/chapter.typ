// ============================================================
// Chapter divider page — full-bleed navy with title and epigraph
// ============================================================

#import "theme.typ": *
#import "components.typ": *

#let chapter-divider(
  part: "Part I — The Failure Modes",
  number: "",
  title: "",
  subtitle: "",
  epigraph: none,
  epigraph-source: "",
  // Set on the volume's FIRST divider only: marks the start of the main
  // matter, so the running header restarts the displayed folio at
  // arabic 1 here (roman folios before; see components.typ book-header).
  folio-reset: false,
) = if view == "book" {
  // (The overview booklets omit full-page chapter dividers.)
  // chapter dividers start on a right-hand (recto) page
  pagebreak(to: "odd", weak: true)

  page(
    fill: divider-fill,
    background: divider-bg,
    margin: (
      inside:  m-inner + bleed + carrier-x,
      outside: m-outer + bleed + carrier-x,
      top:     m-top   + bleed + carrier-y + 12mm,
      bottom:  m-bottom + bleed + carrier-y + 12mm,
    ),
    header: none,
    footer: none,
    {
      // Restart the folio at arabic 1 and flip the main-matter flag ON
      // this page. Both updates live inside the page body so they cannot
      // occupy a page of their own out in the flow (which would flip the
      // recto/verso parity of everything after them).
      if folio-reset {
        counter(page).update(1)
        mainmatter.update(true)
      }
      // top mark
      text(font: sans, size: 7.5pt, tracking: 2pt, fill: gold, upper(part))
      v(4pt)
      line(length: 24mm, stroke: 0.8pt + gold)

      v(1fr)

      // chapter number + title block
      text(font: serif, size: 14pt, fill: teal-light, "Chapter " + number)
      linebreak()
      v(2pt)
      text(font: serif, size: 36pt, fill: cream, title)
      linebreak()
      v(6pt)
      text(font: serif, size: 16pt, style: "italic", fill: rgb("#9FB2CC"), subtitle)

      v(1fr)

      // epigraph
      if epigraph != none {
        block(
          width: 80%,
          {
            line(length: 24mm, stroke: 0.6pt + gold)
            v(8pt)
            text(font: serif, size: 12pt, style: "italic", fill: cream, epigraph)
            v(6pt)
            linebreak()
            text(font: sans, size: 7.5pt, tracking: 1.4pt, fill: rgb("#9FB2CC"), upper(epigraph-source))
          }
        )
      }
    }
  )
}
