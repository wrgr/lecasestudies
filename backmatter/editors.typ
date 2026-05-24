// ============================================================
// About the editors
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#pagebreak(to: "odd", weak: true)

// --- Author photos -------------------------------------------------------
// Drop the files in backmatter/img/ and point each variable at its path
// (relative to this file), e.g. "img/gray-roncal.jpg". Leave as `none` to
// render a sized placeholder; the geometry is identical either way, so the
// one-page layout holds once the real photos are added.
#let gray-photo = "img/grayroncal.jpg"   // (William Gray-Roncal)
#let diamond-photo = "img/diamond.jpg"   // (James Diamond)

#let editor-photo(p) = if p == none {
  box(width: 30mm, height: 36mm, fill: rgb("#EFEADC"),
      stroke: 0.5pt + rule-soft,
      align(center + horizon, text(font: sans, size: 6pt, fill: text-muted, "photo")))
} else {
  box(stroke: 0.5pt + rule-soft, clip: true, image(p, width: 30mm))
}

#let editor-block(photo, name, tag, bio) = block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 8pt,
  stroke: (left: 2pt + gold),
  grid(
    columns: (30mm, 1fr),
    column-gutter: 10pt,
    align: (top + left, top + left),
    editor-photo(photo),
    {
      set par(leading: 0.46em, justify: true)
      text(font: serif, size: 12.5pt, fill: navy, name)
      v(2pt)
      text(font: sans, size: 6.5pt, tracking: 1.2pt, fill: teal, upper(tag))
      v(6pt)
      text(font: sans, size: 8pt, fill: text-dark, bio)
    },
  ),
)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("About the editors"))
#v(3pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(8pt)

#text(font: serif, size: 18pt, fill: navy, "The editors.")
#v(3pt)
#text(font: sans, size: 8pt, fill: text-muted)[
  The casebook's central argument — that capability engineering is the
  applied form of the educational sciences, taught from the School of
  Education and informed by operational practice — is embodied in the two
  editors. Each has spent a career working in one half of that pairing and a
  substantial portion of it in the other. Each contributes to the five
  pillars on which LENS rests: Mission Literacy · JHU Ecosystem ·
  Intersectional Expertise · Capability Focus · Flywheel Iteration.
]

#v(6pt)

#editor-block(
  gray-photo,
  "William Gray-Roncal, Ph.D.",
  "Applied research · learning engineering · STEM workforce",
  [
    William Gray-Roncal, Ph.D., is Principal Research Engineer at the Johns
    Hopkins University Applied Physics Laboratory, where he applies systems
    engineering methods to challenges spanning defense, space, biomedical,
    and learning systems. His research — sponsored by DARPA, IARPA, NIH, and
    DoD — bridges computational neuroscience, artificial intelligence, and
    large-scale data infrastructure. He developed the College Prep and
    CIRCUIT workforce-development models, through which he has mentored
    nearly 500 students, and is currently pursuing research on quantitative
    measures of human cognitive performance in operational contexts. He
    leads the LENS (Learning Engineering for Next-Generation Systems)
    specialization in the Johns Hopkins Master of Education in Learning
    Design and Technology program. Gray-Roncal holds a Ph.D. in Computer
    Science from Johns Hopkins, an M.S. in Electrical Engineering from USC,
    and a B.S. in Electrical Engineering from Vanderbilt.
  ],
)

#v(5pt)

#editor-block(
  diamond-photo,
  "James Diamond, Ph.D.",
  "Learning sciences · educational design · evaluation",
  [
    James Diamond, Ph.D., is Assistant Professor in the Johns Hopkins
    University School of Education and Program Director of the Master of
    Education in Learning Design and Technology, where he applies
    design-based research and learning-sciences methods to the design and
    evaluation of technology-mediated learning environments. His research —
    supported by the National Science Foundation, the Institute of Education
    Sciences, the Bill & Melinda Gates Foundation, the MacArthur
    Foundation's HASTAC Digital Media and Learning Initiative, the Robin
    Hood Learning + Technology Fund, the Wellcome Trust, and the UK Economic
    and Social Research Council — bridges digital games and simulations for
    learning, digital badges and micro-credentialing, classroom technology
    integration, and disciplinary literacy in history, social studies,
    civics, and STEM. Before joining Johns Hopkins, he was Senior Research
    Associate at the Education Development Center's Center for Children and
    Technology in New York City, where he led projects including #emph[Zoom
    In] and the #emph[Who Built America?] Teacher Mastery Badge System,
    contributed to #emph[Mission US] and #emph[Possible Worlds], and taught
    at New York University as an adjunct. He is a principal faculty member
    of the LENS (Learning Engineering for Next-Generation Systems)
    specialization in the LDT program. Diamond holds a Ph.D. in Educational
    Communication and Technology from New York University, an Ed.M. in
    Educational Technology from Boston University, and a B.A. in History
    from Boston University.
  ],
)

#v(5pt)

#text(font: sans, size: 7.5pt, style: "italic", fill: text-muted)[
  These biographies reference careers documented in publications, program
  reports, faculty pages, and the curricular materials of the LDT program
  and the LENS specialization.
]
