// ============================================================
// About the editors
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#pagebreak(to: "odd", weak: true)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("About the editors"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(12pt)

#text(font: serif, size: 26pt, fill: navy, "The editors.")
#v(4pt)
#text(font: sans, size: 9pt, fill: text-muted)[
  The casebook's central argument — that learning engineering is
  the applied form of the educational sciences, taught from the
  School of Education and informed by operational practice — is
  embodied in the two editors. Each has spent a career working in
  one half of that pairing and a substantial portion of it in the
  other.
]

#v(18pt)

// ------------------------------------------------------------
#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 12pt,
  stroke: (left: 2pt + gold),
  {
    text(font: serif, size: 14pt, fill: navy, "William Gray-Roncal, PhD")
    v(2pt)
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: teal, upper("Applied research · learning engineering · STEM workforce"))
    v(10pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      William Gray-Roncal is a research scientist at the Johns Hopkins
      Applied Physics Laboratory and affiliated faculty in the Johns
      Hopkins School of Education's Learning Design and Technology
      program. His research has spanned large-scale neuroscience data
      systems — including the workforce arm of the MICrONS consortium
      (#emph[Nature], 2025), software infrastructure for connectomics,
      and applied AI for biomedical and national-security mission
      domains. He is the architect of the CIRCUIT program, the
      generalization to MERIT, and the COMPASS layer of targeted
      mentor interventions that operationalize them. His work has been
      to build the kind of learning architectures that let scientific
      and engineering teams become reliably capable on real missions —
      which is what brought him into the School of Education's
      orbit, and into the editorship of this volume.
    ]
  }
)

#v(12pt)

#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 12pt,
  stroke: (left: 2pt + gold),
  {
    text(font: serif, size: 14pt, fill: navy, "James Diamond, PhD")
    v(2pt)
    text(font: sans, size: 8pt, tracking: 1.4pt, fill: teal, upper("Learning sciences · educational design · evaluation"))
    v(10pt)
    text(font: sans, size: 9.5pt, fill: text-dark)[
      James Diamond is faculty in the Johns Hopkins School of Education
      and a longtime contributor to the Learning Design and Technology
      program. His research and applied work span the learning
      sciences, technology-mediated learning, design-based research,
      and the evaluation of learning interventions in K–12, higher-
      education, and informal settings. He has worked at the boundary
      between educational research and operational practice — designing
      learning experiences that survive contact with real learners,
      and evaluating what was actually produced — for the better part
      of two decades. He brings to this volume the discipline of
      asking, of any proposed capability intervention, what evidence
      would convince a serious reviewer that it worked.
    ]
  }
)

#v(16pt)

#text(font: sans, size: 9pt, style: "italic", fill: text-muted)[
  The editors' biographies above are summary descriptions; the
  scholarly and applied record they reference is documented in
  publications, program reports, and the curricular materials of the
  LDT program and the LENS specialization. Corrections and additions
  are welcome.
]
