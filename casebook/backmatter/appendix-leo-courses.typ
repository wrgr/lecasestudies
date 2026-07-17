// ============================================================
// Appendix — LEOs & Course Coverage.
// The competency -> concentration-learning-outcome crosswalk, the
// LEN course list with live per-course case counts across the full
// 202-case corpus, and the course-coverage narrative (condensed from
// the introduction's former section IX, updated to 202 cases).
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#pagebreak(weak: true)

#let condensed = false  // (the condensed half-page overview layout was retired July 2026)
#let _body = if condensed { 8pt } else { 9.5pt }

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Appendix · LEOs and course coverage"))
#v(3pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(if condensed { 5pt } else { 8pt })

#text(font: serif, size: if condensed { 18pt } else { 22pt }, fill: navy, "The competencies, the LEOs, and the courses.")
#v(if condensed { 4pt } else { 6pt })

#set par(justify: true, leading: 0.58em, first-line-indent: 0pt)

// ---- The competency -> LEO crosswalk -------------------------------
#text(font: sans, size: 8pt, tracking: 1.4pt, fill: gold, upper("competency → concentration learning outcome"))
#v(5pt)

#text(font: sans, size: _body, fill: text-dark)[
  The five capabilities the cases turn on are named, in the curriculum,
  as five LENS Educational Objectives (LEOs) — the concentration-level
  objectives, held at the program level:
]

#v(5pt)

#let leo-row(comp, leo) = grid(
  columns: (1fr, 1fr),
  column-gutter: 10pt,
  inset: (y: 3pt),
  text(font: sans, size: _body, fill: navy, weight: "medium", comp),
  text(font: sans, size: _body, fill: text-dark, leo),
)

#block(
  width: 100%,
  fill: rgb("#F0F7F5"),
  inset: 10pt,
  stroke: (left: 2pt + teal),
  {
    leo-row("Systems Analysis", "LEO-1 · Systems Thinking and Analysis")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    leo-row("Iterative Development", "LEO-2 · Learning Engineering Design and Implementation")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    leo-row("Human-System Collaboration", "LEO-3 · Human-System Collaboration and Adaptive Systems")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    leo-row("Test and Evaluation", "LEO-4 · Data, Measurement, and Evaluation")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    leo-row("Navigating Sociotechnical Constraints", "LEO-5 · Context and Domain Fluency")
  },
)

#v(if condensed { 8pt } else { 12pt })

// ---- The LEN course list with live case counts --------------------
#text(font: sans, size: 8pt, tracking: 1.4pt, fill: gold, upper("the LEN courses · cases per course"))
#v(5pt)

#text(font: sans, size: _body, fill: text-dark)[
  Each case names the LEN courses it serves as a worked example for, and
  most cases serve several. The counts below are therefore not a
  partition of the 202 cases — they sum to well more than 202, because a
  single case typically appears under three or four courses.
]

#v(5pt)

#let len-row(tag, topic, count) = grid(
  columns: (40pt, 1fr, 34pt),
  column-gutter: 8pt,
  inset: (y: 2.6pt),
  align: (left + horizon, left + horizon, right + horizon),
  text(font: sans, size: _body, weight: "bold", fill: gold, tag),
  text(font: sans, size: _body, fill: navy, topic),
  text(font: sans, size: _body, fill: text-dark, count),
)

#block(
  width: 100%,
  stroke: (left: 2pt + gold),
  inset: (left: 10pt, y: 4pt),
  {
    len-row("LEN 1", "Principles of learning engineering", "36")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    len-row("LEN 2", "Human-AI teaming", "54")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    len-row("LEN 3", "Systems integration", "49")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    len-row("LEN 4", "Evidence and measurement", "67")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    len-row("LEN 5", "Capability analysis", "86")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    len-row("LEN 6", "Applied problem-solving", "18")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    len-row("LEN 7", "Bias and governance", "114")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    len-row("LEN 8", "Knowledge transfer", "98")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    len-row("LEN 9", "Computational methods", "30")
    line(length: 100%, stroke: 0.25pt + rule-soft)
    len-row("LEN 10", "Capstone studio", "19")
  },
)

#v(if condensed { 8pt } else { 12pt })

// ---- The coverage narrative (condensed from old section IX) -------
#text(font: sans, size: 8pt, tracking: 1.4pt, fill: gold, upper("what the distribution shows"))
#v(5pt)

#text(font: sans, size: _body, fill: text-dark)[
  The distribution is itself diagnostic. The strongly covered topics are
  the ones the existing case literature most readily supports: bias and
  governance (LEN 7) and knowledge transfer (LEN 8) lead, with capability
  analysis (LEN 5) and evidence and measurement (LEN 4) close behind.
  Across 202 cases the corpus is saturated with examples of #emph[what
  goes wrong when ethics, governance, evidence, and institutional
  learning are not engineered] — and, in the success cases, what it takes
  to engineer them.
]

#v(6pt)

#text(font: sans, size: _body, fill: text-dark)[
  The thinner coverage is equally informative. Computational methods
  (LEN 9) has the failure modes of algorithmic systems well represented
  but the computational tools for capability instrumentation
  under-represented. The capstone (LEN 10) maps to fewer cases than the
  number of studio projects each cohort undertakes. Systems integration
  (LEN 3) and applied problem-solving (LEN 6) required focused tagging to
  reach defensible coverage, surfacing that operational
  systems-engineering content is under-represented in the published case
  literature relative to its curricular centrality, and that
  stakeholder-analysis and problem-framing have not historically been
  packaged as case material by other disciplines. These are pedagogical
  gaps the LENS studio sequence is organized to close — not by adding
  more failure cases, but by having students produce the missing
  artifacts in real operational settings and entering them into the
  dataset for the next cohort.
]
