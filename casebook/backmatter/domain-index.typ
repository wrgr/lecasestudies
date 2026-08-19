// ============================================================
// Domain Index — every case organized by primary domain.
//
// Built dynamically by querying the <caseinfo> metadata that
// lib/case.typ emits for every case, so it stays in sync as cases
// are added (v1 1–100, v2 101–202, and beyond). Each case appears
// exactly once, under its PRIMARY domain (the first domain in its
// tag list), in case-number order. Core domains are ordered first;
// the remaining domains follow alphabetically. Where a hand-written
// callout exists for a domain, it opens that section (naming the
// dataset's standout failure and, where one exists, standout
// success); v2-introduced domains with no callout render as just a
// case list. Gold numbers indicate failures and systemic conditions;
// teal numbers indicate paired-intervention successes and the open
// closing case — same color code as the case matrix at the front.
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// Render a contiguous mode string ("TKN") as the dotted form
// ("T·K·N") used in the index.
#let modes-dotted(code) = str(code).clusters().join("·")

#pagebreak(weak: true)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Domain index"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(12pt)

#text(font: serif, size: 26pt, fill: navy, "The cases by domain.")
#v(8pt)

#set par(justify: true, leading: 0.62em, first-line-indent: 0pt)
#text(font: sans, size: 10pt, fill: text-dark)[
  The matrix at the front lists every case in number order. This
  index reorganizes the cases by primary domain — a reader
  following healthcare, defense, education, or any other thread can
  find the relevant cases together. Each case appears once, under
  its primary domain. Where a section opens with a callout, it names
  the dataset's standout failure and, where one exists in that
  domain, its standout success.
]

#v(12pt)

// ---- Helpers ----

#let standout(box-content) = block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: (x: 12pt, y: 10pt),
  stroke: (left: 2.5pt + gold),
  radius: 1pt,
  breakable: false,
  {
    set par(leading: 0.58em, first-line-indent: 0pt)
    box-content
  }
)

#let standout-line(label, case-num, fill-color, body) = grid(
  columns: (66pt, 46pt, 1fr),
  column-gutter: 8pt,
  align: (left + horizon, right + horizon, left + horizon),
  text(font: sans, size: 7.5pt, tracking: 1.4pt, fill: fill-color, upper(label)),
  text(font: sans, size: 10.5pt, weight: "bold", fill: fill-color, "Case " + str(case-num)),
  text(font: sans, size: 9.5pt, fill: text-dark, body),
)

// Index entry: case number · title · year · modes — bigger type than
// the front matrix because each case appears only once here.
#let ix(n, name, year, modes, success: false) = block(
  width: 100%,
  inset: (y: 1.6pt),
  stroke: (bottom: 0.25pt + rule-soft),
  grid(
    columns: (24pt, 1fr, 44pt),
    column-gutter: 8pt,
    align: (right + horizon, left + horizon, right + horizon),
    text(font: sans, size: 9.5pt, weight: "bold", fill: if success { teal } else { gold }, str(n)),
    text(font: sans, size: 9.5pt, fill: navy, weight: if success { "medium" } else { "regular" })[
      #name #h(4pt)
      #text(font: sans, size: 8pt, fill: text-muted, year)
    ],
    text(font: sans, size: 8pt, fill: teal, weight: "bold", modes),
  ),
)

#let domain-header(label) = block(
  width: 100%,
  above: 10pt,
  below: 5pt,
  sticky: true,
  {
    text(font: sans, size: 9pt, tracking: 2pt, fill: teal, upper(label))
    v(2pt)
    line(length: 26mm, stroke: 0.7pt + gold)
  }
)

// ============================================================
// CALLOUTS — hand-written, keyed by primary-domain key. Preserved
// from the v1 edition; v2-introduced domains have no callout and
// render as just a case list. Each value is content rendered inside
// a #standout(...) block above that domain's list.
// ============================================================

#let callouts = (
  defense: {
    standout-line("Standout failure", 5, gold)[
      *Operation Eagle Claw (1980).* Cross-organizational capability
      that existed on no service's deliverable list; the mission was
      improvised across the Army, Navy, Marines, Air Force, and CIA.
      Produced the Holloway Commission, USSOCOM, and Goldwater-Nichols.
    ]
    v(6pt)
    standout-line("Standout success", 18, teal)[
      *U.S. Nuclear Navy / Rickover Training Model (1954–).* The
      longest continuous capability-engineering program in any
      high-consequence domain. Sixty-plus years of zero reactor
      accidents through training treated as a system parameter.
    ]
  },
  aviation: {
    standout-line("Standout failure", 7, gold)[
      *Boeing 737 MAX / MCAS (2018–19).* A single-string angle-of-
      attack sensor, a flight-control law that assumed pilot mental
      models from prior models, and a certification chain that did not
      knit the pieces together. 346 lives.
    ]
    v(6pt)
    standout-line("Standout success", 70, teal)[
      *Crew Resource Management & CAST (1981–).* First-officer
      authority engineered into the cockpit, a continuous learning
      architecture across the industry, and the safety record that
      followed.
    ]
  },
  healthcare: {
    standout-line("Standout failure", 61, gold)[
      *EHR / CPOE Implementation (2005–).* Roughly \$30B federal
      investment in systems designed for billing and administration,
      deployed against clinical workflow. Usability is now itself a
      patient-safety variable at scale.
    ]
    v(6pt)
    standout-line("Standout success", 109, teal)[
      *WHO Surgical Safety Checklist (2008–).* One page, nineteen
      items, paired with a required pause. ~Halved surgical mortality
      in the multi-site pilot; the smallest effective capability
      intervention in the dataset.
    ]
  },
  energy: {
    standout-line("Standout failure", 69, gold)[
      *Three Mile Island (1979).* Training matched the design-basis
      events the engineers had imagined; the accident was not one of
      them. The control-room interface confused command signal with
      valve state. Catalysed industry-wide reform.
    ]
    v(6pt)
    standout-line("Standout success", 172, teal)[
      *INPO and the Nuclear Academy (1979–).* The industry built the
      institution TMI revealed it needed. No INES-level event at U.S.
      commercial reactors since.
    ]
  },
  industrial: {
    standout-line("Standout failure", 147, gold)[
      *Bhopal (1984).* Training, knowledge, normalization of deviance,
      and governance all collapsed in the same plant. Roughly 4,000
      immediate deaths; chronic harms continue. The cautionary case
      for outsourced operational responsibility.
    ]
    v(6pt)
    standout-line("Standout success", 73, teal)[
      *Toyota Production System / Andon Cord (1950s–).* Any operator
      can stop the line. The smallest authority-architecture
      intervention in the dataset, and the most durably copied.
    ]
  },
  space: {
    standout-line("Standout failure", 140, gold)[
      *Challenger & Columbia (1986 / 2003).* Normalisation of deviance
      across two decades and two crews, captured in the Rogers and
      CAIB reports as a culture that accepted flying with flaws when
      problems were defined as normal and routine.
    ]
    v(6pt)
    standout-line("Note", 18, text-muted)[
      No paired-intervention success in the aerospace dataset. See
      Defense (Rickover, Case 137) for the safety-engineering
      counterpart that aerospace did not build.
    ]
  },
  gov: {
    standout-line("Standout failure", 162, gold)[
      *Australia Robodebt (2016–20).* An income-averaging algorithm
      that reversed the burden of proof onto welfare recipients. The
      Royal Commission found "venality, incompetence and cowardice";
      the scheme was linked to deaths, including suicide.
    ]
    v(6pt)
    standout-line("Note", 111, text-muted)[
      No paired-intervention success in the government dataset. The
      reforms that follow these cases — Royal Commissions, statutory
      restructures — are documented in the narratives but did not
      produce a LENS-style success case in time for this volume.
    ]
  },
  education: {
    standout-line("Standout failure", 149, gold)[
      *Summit Learning / Personalized Learning Rollout (2014–19).*
      A defensible pedagogical platform, well funded, deployed across
      ~380 schools — and pulled by parent revolt because the
      governance architecture (consent, evidence, exit) was never
      engineered alongside it.
    ]
    v(6pt)
    standout-line("Standout success", 110, teal)[
      *Georgia State University Predictive Analytics (2012–).*
      800 risk factors per student, advising triggered by early
      warning signs, equity as a primary constraint. Six-year
      graduation 32% → 54%; equity gaps eliminated.
    ]
  },
  tech: {
    standout-line("Standout failure", 66, gold)[
      *UK Post Office Horizon Scandal (1999–2015).* Institutional
      refusal to believe sub-postmasters' reports of computer error,
      sustained over fifteen years. Hundreds of wrongful convictions;
      ruined lives and at least four suicides — the longest-running
      operator-feedback failure in the dataset.
    ]
    v(6pt)
    standout-line("Note", 132, text-muted)[
      The technology dataset's success story is filed under Healthcare:
      AlphaFold (Case 36), the contemporary worked example of
      computational capability-engineering done as a discipline.
    ]
  },
  autonomous: {
    standout-line("Standout failure", 62, gold)[
      *Uber ATG / Tempe Fatality (2018).* The safety driver was
      nominally responsible for what the system was designed to do
      without her attention — the classic vigilance contradiction at
      the heart of partial-autonomy operator roles.
    ]
    v(6pt)
    standout-line("Note", 194, text-muted)[
      No paired-intervention success in the autonomous-systems dataset.
      The capability engineering this category needs is still being
      built — see Case 205 (*The Discipline We Build Next*) for the
      open question this volume closes on.
    ]
  },
)

// ============================================================
// Domain display name for a primary-domain key: use the theme
// `domains` dict where the key exists (its first tuple element is
// the display name); otherwise title-case the key.
// ============================================================
#let domain-display(key) = {
  if key in domains {
    domains.at(key).at(0)
  } else {
    key.split(" ").map(w => if w.len() > 0 { upper(w.first()) + w.slice(1) } else { w }).join(" ")
  }
}

// Core domain order, then the rest alphabetically.
#let core-order = ("defense", "aviation", "healthcare", "education", "energy", "gov", "industrial", "tech")

// ============================================================
// RENDER
// ============================================================
#context {
  let cases = query(<caseinfo>).map(m => m.value)

  // Group by primary domain (first in the domains list).
  let by-domain = (:)
  for e in cases {
    let key = if e.domains.len() > 0 { str(e.domains.first()) } else { "uncategorized" }
    let lst = by-domain.at(key, default: ())
    lst.push(e)
    by-domain.insert(key, lst)
  }

  // Order: core domains first (those present), then the rest
  // alphabetically.
  let present = by-domain.keys()
  let core = core-order.filter(k => k in by-domain)
  let rest = present.filter(k => k not in core-order).sorted()
  let ordered = core + rest

  for key in ordered {
    domain-header(domain-display(key))

    if key in callouts {
      standout(callouts.at(key))
      v(7pt)
    }

    let group = by-domain.at(key).sorted(key: e => e.n)
    for e in group {
      ix(
        e.n,
        e.title,
        str(e.year),
        modes-dotted(e.modes),
        success: e.kind == "intervention",
      )
    }
  }
}

// ---- Closing note ----
#v(16pt)
#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 10pt,
  stroke: (left: 2pt + gold),
  {
    set par(leading: 0.58em, first-line-indent: 0pt)
    text(font: sans, size: 8.5pt, fill: text-muted)[
      *About this index.* Each case is filed under its primary
      domain, so every case appears exactly once. Cases that span
      several domains (a healthcare-AI case is also a technology
      case, a defense-training case is also an education case) are
      cross-referenced in their narratives. The standout failures
      and successes are editorial picks — the case in that domain
      the editors return to most often in studio.
    ]
  }
)
