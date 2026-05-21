// ============================================================
// Case matrix — a two-page spread.
// Each page is a 2-column grid of compact case entries.
// Verso (left): cases 1–50.  Recto (right): cases 51–100 + legend.
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

// Compact case entry: number · name (year) · modes · LEN — strictly single line.
#let entry(n, name, year, modes, courses, success: false) = block(
  width: 100%,
  inset: (y: 1.4pt),
  stroke: (bottom: 0.25pt + rule-soft),
  clip: true,
  {
    grid(
      columns: (14pt, 1fr, 30pt, 28pt),
      column-gutter: 3pt,
      align: (right + horizon, left + horizon, left + horizon, right + horizon),
      text(font: sans, size: 7pt, weight: "bold", fill: if success { teal } else { gold }, str(n)),
      box(width: 100%, clip: true, [
        #text(font: sans, size: 6.4pt, fill: navy, weight: if success { "medium" } else { "regular" }, name)
        #h(2pt)
        #text(font: sans, size: 5.5pt, fill: text-muted, year)
      ]),
      text(font: sans, size: 5.8pt, fill: teal, weight: "bold", modes),
      text(font: sans, size: 5.8pt, fill: text-muted, courses),
    )
  }
)

// Render a list of entries inside one column.
#let column-block(entries) = block(
  width: 100%,
  {
    for e in entries { e }
  }
)

// -------------------- VERSO :: cases 1 – 50 --------------------
#pagebreak(to: "even", weak: true)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("The case matrix"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(8pt)

#text(font: serif, size: 20pt, fill: navy, "One hundred cases at a glance")
#v(3pt)
#text(font: sans, size: 8pt, fill: text-muted)[
  Cases 1 – 50.   Gold numbers indicate failures and systemic conditions;
  teal numbers indicate paired-intervention successes and the open
  closing case.
]
#v(8pt)

#let left-1 = (
  entry(1,  "USS Fitzgerald & McCain",    "2017",      "T·K·N",   "1·5·9"),
  entry(2,  "Boeing 737 MAX / MCAS",      "2018–19",   "D·T·H",   "1·8"),
  entry(3,  "Air France Flight 447",      "2009",      "T·H",     "1·5·8"),
  entry(4,  "Deepwater Horizon",          "2010",      "T·N·K",   "5"),
  entry(5,  "Three Mile Island",          "1979",      "T·H",     "1·5"),
  entry(6,  "Challenger & Columbia",      "1986/2003", "N·K·G",   "1·9"),
  entry(7,  "Therac-25",                  "1985–87",   "H·D·G",   "7·10"),
  entry(8,  "inBloom",                    "2014",      "G",       "7"),
  entry(9,  "INDOPACOM Training Gap",     "ongoing",   "T·K",     "5"),
  entry(10, "Healthcare.gov",             "2013",      "K·T·G",   "7"),
  entry(11, "V-22 Osprey",                "1991–",     "T·H·N",   "5"),
  entry(12, "CRM + CAST",                 "1981–",     "T·H·N",   "8",  success: true),
  entry(13, "WHO Surgical Checklist",     "2008–",     "T·N",     "3",  success: true),
  entry(14, "Keystone ICU (Pronovost)",   "2004–",     "T·N",     "2·3",success: true),
  entry(15, "Navy SWO Reform",            "2018–",     "T·K·N",   "3",  success: true),
  entry(16, "INPO / Nuclear Training",    "1979–",     "T·K·G",   "9",  success: true),
  entry(17, "Bhopal",                     "1984",      "T·K·N·G", "5·7"),
  entry(18, "USS Vincennes",              "1988",      "H·T",     "8"),
  entry(19, "Patriot Missile",            "1991",      "D·H·K",   "5·10"),
  entry(20, "Grenfell Tower",             "2017",      "G·T·K·N", "7"),
  entry(23, "Korean Air Transformation",  "2000–",     "T·N",     "9",  success: true),
  entry(24, "Toyota Andon Cord",          "1950s–",    "N·G",     "9",  success: true),
  entry(25, "EHR/CPOE Implementation",    "2005–",     "H·D·G",   "7·10"),
  entry(26, "F-35 Sustainment",           "ongoing",   "T·K·D",   "5"),
  entry(27, "TeamSTEPPS",                 "2006–",     "T·N",     "9",  success: true),
)

#let right-1 = (
  entry(28, "Rickover Nuclear Navy",      "1954–",     "T·K·N",   "9",  success: true),
  entry(29, "Uber ATG / Tempe",           "2018",      "T·N·G·H", "8"),
  entry(30, "Kegworth / BM 92",           "1989",      "T·H·K",   "5"),
  entry(31, "Medical Errors (Makary)",    "ongoing",   "T·H·N·K·G", "2"),
  entry(32, "VA Wait-Time Scandal",       "2014",      "G·K·N",   "2"),
  entry(33, "Military Fratricide",        "1991–",     "T·H·K",   "5"),
  entry(35, "UK A-Level Algorithm",       "2020",      "G·H·D",   "2·7"),
  entry(36, "Australia Robodebt",         "2016–20",   "G·D·H",   "7·8"),
  entry(37, "Algorithmic Bias in Ed",     "ongoing",   "G·H·D",   "2·7·10"),
  entry(38, "GIFT and the Adoption Gap",  "2012–",     "K·G·N",   "1·3·9"),
  entry(39, "Georgia State Univ.",        "2012–",     "T·K",     "2",  success: true),
  entry(40, "xAPI / TLA Gap",             "ongoing",   "K·G",     "2·9"),
  entry(41, "17-Year Implementation Gap", "ongoing",   "K·G·N",   "1·3·9"),
  entry(42, "Cognitive Tutor",            "1990s–",    "T",       "1·2·10", success: true),
  entry(43, "Colgan Air 3407",            "2009",      "T",       "2·5·9"),
  entry(44, "Asiana Airlines 214",        "2013",      "T·H",     "5·8"),
  entry(45, "Mark 14 Torpedo",            "1941–43",   "T·K·G",   "3·7·9"),
  entry(46, "Operation Eagle Claw",       "1980",      "T·K",     "5·9"),
  entry(47, "Helios Airways 522",         "2005",      "T·H",     "5·8"),
  entry(48, "AeroPerú 603",               "1996",      "H·T",     "5·8"),
  entry(49, "Atlas Air 3591",             "2019",      "T·K",     "2·9"),
  entry(50, "TransAsia 235",              "2015",      "T·H",     "5·8"),
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 14pt,
  column-block(left-1),
  column-block(right-1),
)

// -------------------- cases 51 – 100 (continues from previous page) --------------------
#pagebreak(weak: true)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("The case matrix"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(8pt)

#text(font: serif, size: 20pt, fill: navy, "Cases 51 — 100")
#v(3pt)
#text(font: sans, size: 8pt, fill: text-muted)[
  Part II — "What Works" — opens at Chapter 8 with the paired-intervention
  successes. Part III — "The Frontier" — closes the volume with the
  human-AI teaming cases and the open question at Case 100.
]
#v(8pt)

#let left-2 = (
  entry(51, "Ford Pinto",                 "1971–78",   "D·G",     "1·7"),
  entry(52, "Takata Airbags",             "2008–23",   "D·G",     "2·7"),
  entry(53, "GM Ignition Switch",         "2002–14",   "D·G",     "2·7·9"),
  entry(54, "Mars Climate Orbiter",       "1999",      "D·K",     "5·9"),
  entry(55, "Knight Capital",             "2012",      "D·K",     "5·10"),
  entry(56, "Texas City BP Refinery",     "2005",      "N·T·K·G", "2·7"),
  entry(57, "Davis-Besse Reactor",        "2002",      "N·K·G",   "7·9"),
  entry(58, "Mid Staffordshire NHS",      "2005–09",   "G·N·K",   "2·7"),
  entry(59, "Sago Mine",                  "2006",      "N·T·K",   "5·9"),
  entry(60, "Upper Big Branch Mine",      "2010",      "N·G·K",   "2·7"),
  entry(61, "Fukushima Daiichi",          "2011",      "N·G·K",   "7·9"),
  entry(62, "Northeast Blackout",         "2003",      "H·K",     "8·9"),
  entry(63, "Eastern 401",                "1972",      "H·T",     "5·8"),
  entry(64, "Boeing 737 Rudder",          "1991, 94",  "H·D",     "5·7"),
  entry(65, "CrowdStrike Outage",         "2024",      "D·K·G",   "5·8"),
  entry(66, "Petrov / 1983 False Alert",  "1983",      "H·T",     "8",  success: true),
  entry(67, "TSB Bank IT Migration",      "2018",      "H·G",     "7·9"),
  entry(68, "UK Post Office Horizon",     "1999–2015", "G·H·K",   "7·8"),
  entry(69, "Theranos",                   "2003–18",   "G·D",     "2·7"),
  entry(70, "Wells Fargo Accounts",       "2011–16",   "G·N",     "2·7"),
  entry(71, "VW Dieselgate",              "2015",      "D·G",     "2·7"),
  entry(72, "Cambridge Analytica",        "2014–18",   "G",       "1·7"),
  entry(73, "Equifax Breach",             "2017",      "G·K",     "5·7"),
  entry(74, "Hyatt Regency Walkway",      "1981",      "D·G",     "5·7"),
  entry(75, "FIU Pedestrian Bridge",      "2018",      "D·G·N",   "5·9"),
)

#let right-2 = (
  entry(76, "Camp Fire / PG&E",           "2018",      "G·N·K",   "7·9"),
  entry(77, "Texas Grid Freeze",          "2021",      "G·K·N",   "7·9"),
  entry(78, "Saturn V Documentation",     "1972–",     "K",       "1·9"),
  entry(79, "Boeing Starliner",           "2019–24",   "K·D",     "5·9"),
  entry(80, "Ariane 5 Flight 501",        "1996",      "D·K·H",   "5·9"),
  entry(81, "Tacoma Narrows Bridge",      "1940",      "D·K",     "1·9"),
  entry(82, "Aliso Canyon",               "2015–16",   "G·N·K",   "7·9"),
  entry(83, "LIBOR Manipulation",         "2003–12",   "G·N",     "2·7"),
  entry(84, "Atlanta Schools Cheating",   "2009–15",   "G·N",     "2·7"),
  entry(85, "Madoff / SEC Failure",       "1992–2008", "G·K·N",   "2·7"),
  entry(86, "9/11 Intel Sharing",         "1996–2001", "G·K",     "7·9"),
  entry(87, "Vioxx",                      "1999–2004", "G·D",     "2·7"),
  entry(88, "Tylenol Recall",             "1982",      "G·N",     "3·7", success: true),
  entry(89, "ASRS",                       "1976–",     "T·K·N",   "2·9", success: true),
  entry(90, "Bristol Heart Reform",       "1991–",     "G·N",     "2·7", success: true),
  entry(91, "Singapore Airlines",         "1980s–",    "T·N",     "9",   success: true),
  entry(92, "Tesla Autopilot",            "2016–",     "T·N·G·H", "7·8"),
  entry(93, "Cruise Robotaxi",            "2023",      "G·D·H",   "3·7"),
  entry(94, "COMPAS Recidivism",          "2016–",     "G·H·D",   "2·7·10"),
  entry(95, "Radiology AI Miscalibration","2018–",     "H·K·D",   "2·7·10"),
  entry(96, "LLMs in Healthcare",         "2023–",     "H·D",     "3·7·8"),
  entry(97, "Predictive Policing",        "2011–",     "G·H·D",   "7·10"),
  entry(98, "AlphaFold",                  "2020–",     "T",       "1·7·10", success: true),
  entry(99, "AI-Augmented Coding",        "2021–",     "T·H",     "3·8·9"),
  entry(100,"The Discipline We Build Next","ongoing",  "all",     "1·3·9", success: true),
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 14pt,
  column-block(left-2),
  column-block(right-2),
)

#v(8pt)
#block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 8pt,
  stroke: (left: 2pt + gold),
  {
    set par(leading: 0.55em)
    text(font: sans, size: 7pt, fill: navy)[
      *Modes.* #h(4pt)
      T Training Gap #h(4pt)·#h(4pt)
      D Designed Out #h(4pt)·#h(4pt)
      N Normalization of Deviance #h(4pt)·#h(4pt)
      H Human-System Interface #h(4pt)·#h(4pt)
      G Governance & Trust #h(4pt)·#h(4pt)
      K Knowledge & Institutional Memory
    ]
    v(4pt)
    text(font: sans, size: 7pt, fill: text-muted)[
      *LEN.* The LDT / LENS courses each case is most relevant to.
      LEN 1 Foundations · LEN 2 Evidence & Measurement ·
      LEN 3 Studio · LEN 5 Capability Analysis · LEN 7 Bias, Risk &
      Governance · LEN 8 Human-AI Teaming · LEN 9 Knowledge Transfer ·
      LEN 10 Computational & AI Methods.
    ]
  }
)
