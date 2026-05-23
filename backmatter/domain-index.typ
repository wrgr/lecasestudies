// ============================================================
// Domain Index — the 100 cases organized by primary domain.
//
// Each case appears exactly once, under its PRIMARY domain (the
// first domain in its tag list), in case-number order. Each section
// opens with a callout naming the dataset's standout failure and
// (where one exists in that domain) standout success.
// Gold numbers indicate failures and systemic conditions; teal
// numbers indicate paired-intervention successes and the open
// closing case — same color code as the case matrix at the front.
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#pagebreak(to: "odd", weak: true)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Domain index"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(12pt)

#text(font: serif, size: 26pt, fill: navy, "The cases by domain.")
#v(8pt)

#set par(justify: true, leading: 0.62em, first-line-indent: 0pt)
#text(font: sans, size: 10pt, fill: text-dark)[
  The matrix at the front lists every case in number order. This
  index reorganises the hundred cases by primary domain — a reader
  following healthcare, defense, education, or any other thread can
  find the relevant cases together. Each case appears once, under
  its primary domain. Each section opens with a callout naming the
  dataset's standout failure and, where one exists in that domain,
  its standout success.
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
  inset: (y: 2.4pt),
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
  above: 16pt,
  below: 7pt,
  sticky: true,
  {
    text(font: sans, size: 9pt, tracking: 2pt, fill: teal, upper(label))
    v(2pt)
    line(length: 26mm, stroke: 0.7pt + gold)
  }
)

// ============================================================
// DOMAINS
// ============================================================

#domain-header("Defense")

#standout({
  standout-line("Standout failure", 46, gold)[
    *Operation Eagle Claw (1980).* Cross-organizational capability
    that existed on no service's deliverable list; the mission was
    improvised across the Army, Navy, Marines, Air Force, and CIA.
    Produced the Holloway Commission, USSOCOM, and Goldwater-Nichols.
  ]
  v(6pt)
  standout-line("Standout success", 28, teal)[
    *U.S. Nuclear Navy / Rickover Training Model (1954–).* The
    longest continuous capability-engineering program in any
    high-consequence domain. Sixty-plus years of zero reactor
    accidents through training treated as a system parameter.
  ]
})

#v(7pt)

#ix(1,  "USS Fitzgerald & USS John S. McCain",                  "2017",        "T·K·N")
#ix(9,  "Marine Corps Training in the INDOPACOM AOR",           "ongoing",     "T·K")
#ix(11, "V-22 Osprey",                                          "1991–",       "T·H·N")
#ix(15, "Navy Surface Warfare Readiness Reform",                "2018–",       "T·K·N",   success: true)
#ix(18, "USS Vincennes & Iran Air Flight 655",                  "1988",        "H·T")
#ix(19, "Patriot Missile / Dhahran",                            "1991",        "D·H·K")
#ix(26, "F-35 Sustainment & Maintainer Shortage",               "ongoing",     "T·K·D")
#ix(28, "U.S. Nuclear Navy / Rickover Training Model",          "1954–",       "T·K·N",   success: true)
#ix(33, "Military Fratricide — Desert Storm to Afghanistan",    "1991–2014",   "T·H·K")
#ix(38, "GIFT and the Adoption Gap",                            "2012–",       "K·G·N")
#ix(45, "Mark 14 Torpedo Failures",                             "1941–43",     "T·K·G")
#ix(46, "Operation Eagle Claw",                                 "1980",        "T·K")
#ix(66, "Stanislav Petrov / 1983 False Alert",                  "1983",        "H·T",     success: true)
#ix(86, "9/11 Intelligence Sharing Failures",                   "1996–2001",   "G·K")

#domain-header("Aviation")

#standout({
  standout-line("Standout failure", 2, gold)[
    *Boeing 737 MAX / MCAS (2018–19).* A single-string angle-of-
    attack sensor, a flight-control law that assumed pilot mental
    models from prior models, and a certification chain that did not
    knit the pieces together. 346 lives.
  ]
  v(6pt)
  standout-line("Standout success", 12, teal)[
    *Crew Resource Management & CAST (1981–).* First-officer
    authority engineered into the cockpit, a continuous learning
    architecture across the industry, and the safety record that
    followed.
  ]
})

#v(7pt)

#ix(2,  "Boeing 737 MAX / MCAS",                                "2018–19",     "D·T·H")
#ix(3,  "Air France Flight 447",                                "2009",        "T·H")
#ix(12, "Crew Resource Management & CAST",                      "1981–",       "T·H·N",   success: true)
#ix(23, "Korean Air Safety Transformation",                     "2000–",       "T·N",     success: true)
#ix(30, "Kegworth / British Midland 92",                        "1989",        "T·H·K")
#ix(43, "Colgan Air Flight 3407",                               "2009",        "T")
#ix(44, "Asiana Airlines Flight 214",                           "2013",        "T·H")
#ix(47, "Helios Airways Flight 522",                            "2005",        "T·H")
#ix(48, "AeroPerú Flight 603",                                  "1996",        "H·T")
#ix(49, "Atlas Air Flight 3591",                                "2019",        "T·K")
#ix(50, "TransAsia Airways Flight 235",                         "2015",        "T·H")
#ix(63, "Eastern Air Lines Flight 401",                         "1972",        "H·T")
#ix(64, "Boeing 737 Rudder Hardovers",                          "1991, 1994",  "H·D")
#ix(78, "NASA Saturn V Documentation",                          "1972–",       "K")
#ix(89, "Aviation Safety Reporting System (ASRS)",              "1976–",       "T·K·N",   success: true)
#ix(91, "Singapore Airlines Safety Transformation",             "1980s–",      "T·N",     success: true)

#domain-header("Healthcare")

#standout({
  standout-line("Standout failure", 25, gold)[
    *EHR / CPOE Implementation (2005–).* Roughly \$30B federal
    investment in systems designed for billing and administration,
    deployed against clinical workflow. Usability is now itself a
    patient-safety variable at scale.
  ]
  v(6pt)
  standout-line("Standout success", 13, teal)[
    *WHO Surgical Safety Checklist (2008–).* One page, nineteen
    items, paired with a required pause. ~Halved surgical mortality
    in the multi-site pilot; the smallest effective capability
    intervention in the dataset.
  ]
})

#v(7pt)

#ix(7,  "Therac-25",                                            "1985–87",     "H·D·G")
#ix(13, "WHO Surgical Safety Checklist",                        "2008–",       "T·N",     success: true)
#ix(14, "Keystone ICU / Pronovost Checklist",                   "2004–",       "T·N",     success: true)
#ix(25, "EHR / CPOE Implementation",                            "2005–",       "H·D·G")
#ix(27, "TeamSTEPPS",                                           "2006–",       "T·N",     success: true)
#ix(31, "Medical Errors as Systemic Failure",                   "ongoing",     "T·H·N·K·G")
#ix(34, "ACGME 80-Hour Resident Duty-Hour Reform",              "2003–17",     "T·K·N")
#ix(41, "Implementation Science — The 17-Year Gap",             "ongoing",     "K·G·N")
#ix(58, "Mid Staffordshire NHS Foundation Trust",               "2005–09",     "G·N·K")
#ix(69, "Theranos",                                             "2003–18",     "G·D")
#ix(87, "Vioxx Withdrawal",                                     "1999–2004",   "G·D")
#ix(88, "Tylenol Recall",                                       "1982",        "G·N",     success: true)
#ix(90, "Bristol Heart Babies Reform",                          "1984–",       "G·N",     success: true)
#ix(95, "Radiology AI Miscalibration",                          "2018–",       "H·K·D")
#ix(96, "ChatGPT in Healthcare — Hallucination Cases",          "2023–",       "H·D")
#ix(98, "AlphaFold — Protein Structure Prediction",             "2020–",       "T",       success: true)

#domain-header("Energy")

#standout({
  standout-line("Standout failure", 5, gold)[
    *Three Mile Island (1979).* Training matched the design-basis
    events the engineers had imagined; the accident was not one of
    them. The control-room interface confused command signal with
    valve state. Catalysed industry-wide reform.
  ]
  v(6pt)
  standout-line("Standout success", 16, teal)[
    *INPO and the Nuclear Academy (1979–).* The industry built the
    institution TMI revealed it needed. No INES-level event at U.S.
    commercial reactors since.
  ]
})

#v(7pt)

#ix(4,  "Deepwater Horizon",                                    "2010",        "T·N·K")
#ix(5,  "Three Mile Island",                                    "1979",        "T·H")
#ix(16, "INPO and the Nuclear Academy",                         "1979–",       "T·K·G",   success: true)
#ix(56, "Texas City BP Refinery Explosion",                     "2005",        "N·T·K·G")
#ix(57, "Davis-Besse Reactor Head Corrosion",                   "2002",        "N·K·G")
#ix(59, "Sago Mine Disaster",                                   "2006",        "N·T·K")
#ix(60, "Upper Big Branch Mine Explosion",                      "2010",        "N·G·K")
#ix(61, "Fukushima Daiichi",                                    "2011",        "N·G·K")
#ix(62, "Northeast Blackout",                                   "2003",        "H·K")
#ix(76, "Camp Fire / PG&E",                                     "2018",        "G·N·K")
#ix(77, "Texas Grid Freeze",                                    "2021",        "G·K·N")
#ix(82, "Aliso Canyon Methane Leak",                            "2015–16",     "G·N·K")

#domain-header("Industrial")

#standout({
  standout-line("Standout failure", 17, gold)[
    *Bhopal (1984).* Training, knowledge, normalisation of deviance,
    and governance all collapsed in the same plant. Roughly 4,000
    immediate deaths; chronic harms continue. The cautionary case
    for outsourced operational responsibility.
  ]
  v(6pt)
  standout-line("Standout success", 24, teal)[
    *Toyota Production System / Andon Cord (1950s–).* Any operator
    can stop the line. The smallest authority-architecture
    intervention in the dataset, and the most durably copied.
  ]
})

#v(7pt)

#ix(17, "Bhopal",                                               "1984",        "T·K·N·G")
#ix(20, "Grenfell Tower",                                       "2017",        "G·T·K·N")
#ix(24, "Toyota Production System / Andon Cord",                "1950s–",      "N·G",     success: true)
#ix(51, "Ford Pinto Fuel Tank",                                 "1971–78",     "D·G")
#ix(52, "Takata Airbag Inflators",                              "2008–23",     "D·G")
#ix(53, "GM Ignition Switch",                                   "2002–14",     "D·G")
#ix(71, "Volkswagen Dieselgate",                                "2015",        "D·G")
#ix(74, "Hyatt Regency Walkway Collapse",                       "1981",        "D·G")
#ix(75, "FIU Pedestrian Bridge Collapse",                       "2018",        "D·G·N")
#ix(81, "Tacoma Narrows Bridge",                                "1940",        "D·K")

#domain-header("Space & Aerospace")

#standout({
  standout-line("Standout failure", 6, gold)[
    *Challenger & Columbia (1986 / 2003).* Normalisation of deviance
    across two decades and two crews, captured in the Rogers and
    CAIB reports as a culture that accepted flying with flaws when
    problems were defined as normal and routine.
  ]
  v(6pt)
  standout-line("Note", 28, text-muted)[
    No paired-intervention success in the aerospace dataset. See
    Defense (Rickover, Case 28) for the safety-engineering
    counterpart that aerospace did not build.
  ]
})

#v(7pt)

#ix(6,  "Challenger & Columbia",                                "1986/2003",   "N·K·G")
#ix(54, "Mars Climate Orbiter — Unit Mismatch",                 "1999",        "D·K")
#ix(79, "Boeing Starliner",                                     "2019–24",     "K·D")
#ix(80, "Ariane 5 Flight 501",                                  "1996",        "D·K·H")

#domain-header("Government")

#standout({
  standout-line("Standout failure", 36, gold)[
    *Australia Robodebt (2016–20).* An income-averaging algorithm
    that reversed the burden of proof onto welfare recipients. The
    Royal Commission found "venality, incompetence and cowardice";
    the scheme was linked to deaths, including suicide.
  ]
  v(6pt)
  standout-line("Note", 89, text-muted)[
    No paired-intervention success in the government dataset. The
    reforms that follow these cases — Royal Commissions, statutory
    restructures — are documented in the narratives but did not
    produce a LENS-style success case in time for this volume.
  ]
})

#v(7pt)

#ix(10, "Healthcare.gov Launch",                                "2013",        "K·T·G")
#ix(32, "VA Wait-Time Scandal",                                 "2014",        "G·K·N")
#ix(36, "Australia Robodebt",                                   "2016–20",     "G·D·H")
#ix(83, "LIBOR Manipulation",                                   "2003–12",     "G·N")
#ix(85, "Bernard Madoff / SEC Failures",                        "1992–2008",   "G·K·N")
#ix(94, "COMPAS Recidivism Algorithm",                          "2016–",       "G·H·D")
#ix(97, "Predictive Policing — PredPol",                        "2011–",       "G·H·D")

#domain-header("Education at Scale")

#standout({
  standout-line("Standout failure", 21, gold)[
    *Summit Learning / Personalized Learning Rollout (2014–19).*
    A defensible pedagogical platform, well funded, deployed across
    ~380 schools — and pulled by parent revolt because the
    governance architecture (consent, evidence, exit) was never
    engineered alongside it.
  ]
  v(6pt)
  standout-line("Standout success", 39, teal)[
    *Georgia State University Predictive Analytics (2012–).*
    800 risk factors per student, advising triggered by early
    warning signs, equity as a primary constraint. Six-year
    graduation 32% → 54%; equity gaps eliminated.
  ]
})

#v(7pt)

#ix(8,   "inBloom",                                             "2014",        "G")
#ix(21,  "Summit Learning / Personalized Learning Rollout",     "2014–19",     "G·T·K")
#ix(22,  "Tennessee Voluntary Pre-K Study",                     "2009–18",     "G·D")
#ix(35,  "UK A-Level Algorithm / Ofqual",                       "2020",        "G·H·D")
#ix(37,  "Algorithmic Bias in Educational Predictive Analytics","ongoing",     "G·H·D")
#ix(39,  "Georgia State University Predictive Analytics",       "2012–",       "T·K",     success: true)
#ix(40,  "xAPI / Total Learning Architecture",                  "ongoing",     "K·G")
#ix(42,  "Cognitive Tutor / Carnegie Learning",                 "1990s–",      "T",       success: true)
#ix(84,  "Atlanta Public Schools Cheating Scandal",             "2009–15",     "G·N")
#ix(100, "The Discipline We Build Next",                        "ongoing",     "all",     success: true)

#domain-header("Technology")

#standout({
  standout-line("Standout failure", 68, gold)[
    *UK Post Office Horizon Scandal (1999–2015).* Institutional
    refusal to believe sub-postmasters' reports of computer error,
    sustained over fifteen years. Hundreds of wrongful convictions;
    ruined lives and at least four suicides — the longest-running
    operator-feedback failure in the dataset.
  ]
  v(6pt)
  standout-line("Note", 98, text-muted)[
    The technology dataset's success story is filed under Healthcare:
    AlphaFold (Case 98), the contemporary worked example of
    computational capability-engineering done as a discipline.
  ]
})

#v(7pt)

#ix(55, "Knight Capital Trading Loss",                          "2012",        "D·K")
#ix(65, "CrowdStrike Falcon Outage",                            "2024",        "D·K·G")
#ix(67, "TSB Bank IT Migration",                                "2018",        "H·G")
#ix(68, "UK Post Office Horizon Scandal",                       "1999–2015",   "G·H·K")
#ix(70, "Wells Fargo Fake Accounts",                            "2011–16",     "G·N")
#ix(72, "Cambridge Analytica / Facebook",                       "2014–18",     "G")
#ix(73, "Equifax Data Breach",                                  "2017",        "G·K")
#ix(99, "AI-Augmented Coding Tools",                            "2021–",       "T·H")

#domain-header("Autonomous Systems")

#standout({
  standout-line("Standout failure", 29, gold)[
    *Uber ATG / Tempe Fatality (2018).* The safety driver was
    nominally responsible for what the system was designed to do
    without her attention — the classic vigilance contradiction at
    the heart of partial-autonomy operator roles.
  ]
  v(6pt)
  standout-line("Note", 100, text-muted)[
    No paired-intervention success in the autonomous-systems dataset.
    The capability engineering this category needs is still being
    built — see Case 100 (*The Discipline We Build Next*) for the
    open question this volume closes on.
  ]
})

#v(7pt)

#ix(29, "Uber ATG / Tempe Fatality",                            "2018",        "T·N·G·H")
#ix(92, "Tesla Autopilot — Recurring Fatalities",               "2016–",       "T·N·G·H")
#ix(93, "Cruise Robotaxi — Pedestrian Drag",                    "2023",        "G·D·H")

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
