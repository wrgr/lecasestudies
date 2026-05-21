// ============================================================
// Code-generated diagrams. One per case where useful.
// Stylized — design elements first, literal viz second.
// ============================================================

#import "theme.typ": *
#import "@preview/cetz:0.4.2"

#let diagram-frame(content, height: 38mm, caption: none) = block(
  width: 100%,
  fill: navy,
  inset: 0pt,
  {
    block(
      width: 100%,
      height: height,
      inset: 10pt,
      clip: true,
      content,
    )
    if caption != none {
      block(
        width: 100%,
        fill: navy-mid,
        inset: (x: 10pt, y: 6pt),
        text(font: sans, size: 7pt, tracking: 1pt, fill: rgb("#8A9AB5"), upper(caption)),
      )
    }
  }
)

// ============================================================
// SHARED PRIMITIVES used inside cetz canvases
// ============================================================

#let gold-dot(x, y, r: 0.14) = {
  import cetz.draw: *
  circle((x, y), radius: r, fill: rgb("#D4A843"), stroke: none)
}
#let teal-dot(x, y, r: 0.14) = {
  import cetz.draw: *
  circle((x, y), radius: r, fill: rgb("#2CC4B3"), stroke: none)
}
#let label(x, y, s, color: rgb("#F5F0E8"), size: 6.5pt, anchor: "south") = {
  import cetz.draw: *
  content((x, y), text(font: ("DM Sans",), size: size, fill: color, s), anchor: anchor)
}
#let tag-label(x, y, s, color: rgb("#2CC4B3")) = {
  import cetz.draw: *
  content((x, y), text(font: ("DM Sans",), size: 6pt, tracking: 1pt, fill: color, upper(s)))
}

// ============================================================
// CASE DIAGRAMS — CHAPTER 2 (Designed Out)
// ============================================================

#let dgm-737max = diagram-frame(
  caption: "MCAS — capability engineered out at four decision points",
  cetz.canvas({
    import cetz.draw: *
    let nodes = (
      (1, "MCAS\nundisclosed"),
      (3.5, "Removed\nfrom manual"),
      (6, "No simulator\ntraining"),
      (8.5, "Single-AOA\nsensor logic"),
    )
    line((0.4, 1), (9.2, 1), stroke: 0.6pt + rgb("#5A6A85"))
    for (x, lab) in nodes {
      circle((x, 1), radius: 0.18, fill: rgb("#D4A843"), stroke: none)
      content((x, 2.0), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#F5F0E8"), lab), anchor: "south")
      content((x, 0.4), text(font: ("Instrument Serif",), size: 7pt, fill: rgb("#2CC4B3"), "↓"), anchor: "north")
    }
    content((4.8, -0.4), text(font: ("DM Sans",), size: 7pt, fill: rgb("#E8C96A"), tracking: 1.5pt, upper("346 lives")), anchor: "north")
  })
)

#let dgm-therac = diagram-frame(
  caption: "Software race condition replaced hardware interlock",
  cetz.canvas({
    import cetz.draw: *
    line((0.5, 2.4), (8.5, 2.4), stroke: 1pt + rgb("#2CC4B3"))
    content((0.5, 2.7), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), "Therac-6/20"), anchor: "south-west")
    content((4.5, 2.7), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#F5F0E8"), "command → hardware interlock → beam"), anchor: "south")
    rect((6.8, 2.2), (7.6, 2.6), fill: rgb("#D4A843"), stroke: none)
    content((7.2, 2.4), text(font: ("DM Sans",), size: 5.5pt, fill: rgb("#0A1628"), weight: "bold", "LOCK"))
    line((0.5, 0.9), (8.5, 0.9), stroke: 1pt + rgb("#D4A843"))
    content((0.5, 1.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#D4A843"), "Therac-25"), anchor: "south-west")
    content((4.5, 1.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#F5F0E8"), "command → software state → beam"), anchor: "south")
    content((6.4, 0.5), text(font: ("Instrument Serif",), size: 8pt, style: "italic", fill: rgb("#E8C96A"), "race"), anchor: "north")
    line((6.0, 0.7), (6.8, 0.7), stroke: (paint: rgb("#E8C96A"), thickness: 0.6pt, dash: "dashed"))
  })
)

#let dgm-patriot = diagram-frame(
  caption: "Tracking error grew with each hour of continuous operation",
  cetz.canvas({
    import cetz.draw: *
    line((0.5, 0.6), (9, 0.6), stroke: 0.6pt + rgb("#5A6A85"))
    line((0.5, 0.6), (0.5, 3.4), stroke: 0.6pt + rgb("#5A6A85"))
    content((9, 0.3), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("hours running")), anchor: "north-east")
    content((0.3, 3.4), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("error")), anchor: "south-east")
    let pts = ((0.5, 0.65), (1.5, 0.72), (3, 0.92), (4.5, 1.25), (6, 1.85), (7.2, 2.7), (8, 3.3))
    line(..pts, stroke: 1.2pt + rgb("#D4A843"))
    circle((4.5, 1.25), radius: 0.1, fill: rgb("#2CC4B3"), stroke: none)
    content((4.5, 1.55), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), "Israeli warning"), anchor: "south")
    circle((7.6, 2.95), radius: 0.12, fill: rgb("#E8C96A"), stroke: none)
    content((7.6, 3.25), text(font: ("DM Sans",), size: 6pt, fill: rgb("#E8C96A"), "Dhahran"), anchor: "south")
  })
)

// ============================================================
// CASE DIAGRAMS — CHAPTER 8 (Paired Interventions)
// ============================================================

#let dgm-crm = diagram-frame(
  caption: "Authority gradient flattened; communication closes the loop",
  cetz.canvas({
    import cetz.draw: *
    content((1.5, 3.4), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("before")), anchor: "south")
    line((0.4, 1.2), (2.8, 2.8), stroke: 1pt + rgb("#8A9AB5"))
    circle((0.4, 1.2), radius: 0.14, fill: rgb("#5A6A85"), stroke: none)
    circle((2.8, 2.8), radius: 0.14, fill: rgb("#D4A843"), stroke: none)
    content((0.3, 0.9), text(font: ("DM Sans",), size: 6pt, fill: rgb("#F5F0E8"), "FO"), anchor: "north")
    content((2.9, 3.0), text(font: ("DM Sans",), size: 6pt, fill: rgb("#F5F0E8"), "Capt"), anchor: "south")
    content((6.5, 3.4), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("after CRM")), anchor: "south")
    line((5.0, 2.0), (8.0, 2.0), stroke: 1pt + rgb("#2CC4B3"))
    bezier((5.0, 2.15), (8.0, 2.15), (5.8, 2.7), (7.2, 2.7), stroke: 0.8pt + rgb("#D4A843"))
    bezier((8.0, 1.85), (5.0, 1.85), (7.2, 1.3), (5.8, 1.3), stroke: 0.8pt + rgb("#D4A843"))
    circle((5.0, 2.0), radius: 0.14, fill: rgb("#D4A843"), stroke: none)
    circle((8.0, 2.0), radius: 0.14, fill: rgb("#D4A843"), stroke: none)
    content((4.9, 1.7), text(font: ("DM Sans",), size: 6pt, fill: rgb("#F5F0E8"), "FO"), anchor: "north")
    content((8.1, 1.7), text(font: ("DM Sans",), size: 6pt, fill: rgb("#F5F0E8"), "Capt"), anchor: "north")
    content((6.5, 0.6), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#E8C96A"), "83% fatality reduction"))
  })
)

#let dgm-who = diagram-frame(
  caption: "Three pause points across the surgical timeline",
  cetz.canvas({
    import cetz.draw: *
    line((0.5, 1.4), (9, 1.4), stroke: 0.6pt + rgb("#5A6A85"))
    let stops = (
      (1.5, "SIGN IN", "Before anesthesia"),
      (4.7, "TIME OUT", "Before incision"),
      (7.9, "SIGN OUT", "Before leaving OR"),
    )
    for (x, lab, sub) in stops {
      rect((x - 0.5, 1.2), (x + 0.5, 1.6), fill: rgb("#D4A843"), stroke: none)
      content((x, 1.95), text(font: ("DM Sans",), size: 6.6pt, weight: "bold", fill: rgb("#F5F0E8"), tracking: 1pt, lab), anchor: "south")
      content((x, 1.1), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), sub), anchor: "north")
    }
    content((4.7, 0.3), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#2CC4B3"), "deaths 1.5% → 0.8%"))
  })
)

#let dgm-keystone = diagram-frame(
  caption: "Bloodstream-infection rate across 103 Michigan ICUs",
  cetz.canvas({
    import cetz.draw: *
    line((0.5, 0.6), (9, 0.6), stroke: 0.6pt + rgb("#5A6A85"))
    line((0.5, 0.6), (0.5, 3.4), stroke: 0.6pt + rgb("#5A6A85"))
    let drop = ((0.7, 3.0), (1.5, 2.85), (2.4, 2.3), (3.5, 1.6), (5, 1.0), (7, 0.78), (9, 0.7))
    line(..drop, stroke: 1.2pt + rgb("#D4A843"))
    line((2.4, 0.6), (2.4, 3.3), stroke: (paint: rgb("#2CC4B3"), thickness: 0.5pt, dash: "dashed"))
    content((2.4, 3.4), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), "checklist + nurse authority"), anchor: "south")
    content((9, 0.4), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("18 months")), anchor: "north-east")
    content((0.3, 3.4), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("rate")), anchor: "south-east")
    content((6.5, 1.7), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#E8C96A"), "≈ zero"))
  })
)

#let dgm-inpo = diagram-frame(
  caption: "Industry-wide peer review: a learning ring after TMI",
  cetz.canvas({
    import cetz.draw: *
    circle((4.7, 2.0), radius: 0.45, fill: rgb("#D4A843"), stroke: none)
    content((4.7, 2.0), text(font: ("DM Sans",), size: 6pt, weight: "bold", fill: rgb("#0A1628"), "INPO"))
    let n = 8
    for i in range(n) {
      let theta = i * 360deg / n
      let cx = 4.7 + 2.3 * calc.cos(theta)
      let cy = 2.0 + 1.4 * calc.sin(theta)
      circle((cx, cy), radius: 0.18, fill: rgb("#2CC4B3"), stroke: none)
      line((4.7, 2.0), (cx, cy), stroke: 0.4pt + rgb("#5A6A85"))
    }
    content((4.7, 0.2), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "zero significant releases since 1979"))
  })
)

// ============================================================
// CASE DIAGRAMS — CHAPTER 1 (Training Gap)
// ============================================================

#let dgm-fitzgerald = diagram-frame(
  caption: "Surface Warfare Officer training, 2003 → 2017",
  cetz.canvas({
    import cetz.draw: *
    // Two horizontal bars showing training hours decreasing
    rect((0.5, 2.4), (8.5, 2.9), fill: rgb("#2CC4B3"), stroke: none)
    content((0.5, 3.1), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), "1990s — 16 weeks classroom + simulator"), anchor: "south-west")
    rect((0.5, 1.2), (1.6, 1.7), fill: rgb("#D4A843"), stroke: none)
    content((0.5, 1.9), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#D4A843"), "2003 — CD-ROM self-study"), anchor: "south-west")
    line((4, 0.5), (4, 3.4), stroke: (paint: rgb("#5A6A85"), thickness: 0.4pt, dash: "dashed"))
    content((6.2, 0.55), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "17 sailors dead"))
  })
)

#let dgm-af447 = diagram-frame(
  caption: "54 seconds: stall warning sounded, response never came",
  cetz.canvas({
    import cetz.draw: *
    // timeline baseline
    line((0.5, 1.4), (9, 1.4), stroke: 0.6pt + rgb("#5A6A85"))
    for x in (0.5, 2.0, 3.5, 5.0, 6.5, 8.0, 9.0) {
      line((x, 1.3), (x, 1.5), stroke: 0.4pt + rgb("#5A6A85"))
    }
    // stall warning bar — make it tall enough to hold its label
    rect((0.5, 1.7), (8.0, 2.4), fill: rgb("#D4A843"), stroke: none)
    content((4.25, 2.05), text(font: ("DM Sans",), size: 7pt, weight: "bold", fill: rgb("#0A1628"), "STALL WARNING (54s continuous)"))
    // endpoints
    content((0.5, 1.1), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), "pitot ice"), anchor: "north-west")
    content((8.0, 1.1), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), "impact"), anchor: "north-east")
    content((4.5, 0.6), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#2CC4B3"), "no recovery manoeuvre attempted"), anchor: "north")
  })
)

#let dgm-tmi = diagram-frame(
  caption: "A minor cooling fault, an ambiguous indicator, a meltdown",
  cetz.canvas({
    import cetz.draw: *
    // Three nodes connected
    let nodes = (
      (1.5, "PORV stuck\nopen"),
      (4.5, "Indicator\nambiguous"),
      (7.5, "Operators\nover-corrected"),
    )
    for i in range(nodes.len()) {
      let (x, lab) = nodes.at(i)
      circle((x, 2.0), radius: 0.5, fill: rgb("#D4A843"), stroke: none)
      content((x, 2.0), text(font: ("DM Sans",), size: 5.5pt, weight: "bold", fill: rgb("#0A1628"), lab))
      if i < nodes.len() - 1 {
        line((x + 0.55, 2.0), (nodes.at(i + 1).at(0) - 0.55, 2.0), stroke: 0.8pt + rgb("#2CC4B3"))
        content((((x + nodes.at(i + 1).at(0)) / 2), 2.3), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), "→"), anchor: "south")
      }
    }
    content((4.5, 0.4), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "training matched worst case, not this case"), anchor: "north")
  })
)

#let dgm-indopacom = diagram-frame(
  caption: "Decade of unmet training in DoD's priority theater",
  cetz.canvas({
    import cetz.draw: *
    line((0.5, 1.0), (9, 1.0), stroke: 0.6pt + rgb("#5A6A85"))
    let years = (2015, 2017, 2019, 2021, 2023)
    let xs = (1.0, 2.8, 4.6, 6.4, 8.2)
    for i in range(years.len()) {
      let x = xs.at(i)
      // gap shown as red X
      content((x, 1.0), text(font: ("DM Sans",), size: 10pt, fill: rgb("#D4A843"), "×"))
      content((x, 0.55), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), str(years.at(i))), anchor: "north")
    }
    content((5, 2.6), text(font: ("Instrument Serif",), size: 11pt, style: "italic", fill: rgb("#F5F0E8"), "Indo-Pacific range capacity gap"))
    content((5, 2.1), text(font: ("DM Sans",), size: 7pt, fill: rgb("#2CC4B3"), tracking: 1pt, upper("DoD top-priority theater")))
  })
)

#let dgm-f35 = diagram-frame(
  caption: "Mission-capable rate vs. fleet target",
  cetz.canvas({
    import cetz.draw: *
    line((0.5, 0.6), (9, 0.6), stroke: 0.6pt + rgb("#5A6A85"))
    line((0.5, 0.6), (0.5, 3.4), stroke: 0.6pt + rgb("#5A6A85"))
    // target line
    line((0.5, 3.0), (9, 3.0), stroke: (paint: rgb("#2CC4B3"), thickness: 0.6pt, dash: "dashed"))
    content((9, 3.1), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), "target 90%"), anchor: "south-east")
    // actual
    let curve = ((1, 1.9), (2.5, 1.7), (4, 1.6), (5.5, 1.8), (7, 1.7), (8.5, 1.6))
    line(..curve, stroke: 1.2pt + rgb("#D4A843"))
    content((9, 1.6), text(font: ("DM Sans",), size: 6pt, fill: rgb("#D4A843"), "actual ~51%"), anchor: "west")
    content((0.3, 3.4), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("MC rate")), anchor: "south-east")
    content((4.7, 0.3), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("FY18 → FY23")))
  })
)

#let dgm-kegworth = diagram-frame(
  caption: "Crew mental model from older variant; configuration changed",
  cetz.canvas({
    import cetz.draw: *
    // two engines
    content((2.5, 3.0), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("737-400 (1989)")), anchor: "south")
    rect((1.2, 2.0), (2.0, 2.6), fill: rgb("#D4A843"), stroke: none)
    content((1.6, 2.3), text(font: ("DM Sans",), size: 5.5pt, weight: "bold", fill: rgb("#0A1628"), "L"))
    content((1.6, 1.8), text(font: ("DM Sans",), size: 5.5pt, fill: rgb("#D4A843"), "failing"), anchor: "north")
    rect((3.0, 2.0), (3.8, 2.6), fill: rgb("#2CC4B3"), stroke: none)
    content((3.4, 2.3), text(font: ("DM Sans",), size: 5.5pt, weight: "bold", fill: rgb("#0A1628"), "R"))
    content((3.4, 1.8), text(font: ("DM Sans",), size: 5.5pt, fill: rgb("#2CC4B3"), "ok"), anchor: "north")
    // arrow to: shutdown choice
    line((4.2, 2.3), (5.5, 2.3), stroke: 0.8pt + rgb("#5A6A85"))
    content((6.7, 2.3), text(font: ("DM Sans",), size: 7pt, fill: rgb("#F5F0E8"), "crew shut down R"))
    content((4.5, 0.4), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#E8C96A"), "47 dead — model matched the wrong aircraft"), anchor: "north")
  })
)

#let dgm-fratricide = diagram-frame(
  caption: "Friendly-fire rate, U.S. casualties, Desert Storm vs. historical",
  cetz.canvas({
    import cetz.draw: *
    // historical bar
    rect((1.0, 1.4), (1.4, 1.6), fill: rgb("#2CC4B3"), stroke: none)
    content((1.2, 1.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), "historical 2%"), anchor: "north")
    // desert storm bar
    rect((4.0, 1.4), (5.7, 2.9), fill: rgb("#D4A843"), stroke: none)
    content((4.85, 1.2), text(font: ("DM Sans",), size: 6.5pt, weight: "bold", fill: rgb("#D4A843"), "Desert Storm 17%"), anchor: "north")
    line((0.5, 1.4), (9, 1.4), stroke: 0.4pt + rgb("#5A6A85"))
    content((7.5, 2.3), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "system-level"), anchor: "south")
    content((7.5, 2.0), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "capability gap"), anchor: "south")
  })
)

// ============================================================
// CASE DIAGRAMS — CHAPTER 3 (Normalization of Deviance)
// ============================================================

#let dgm-deepwater = diagram-frame(
  caption: "Cascading defenses — each failed in turn",
  cetz.canvas({
    import cetz.draw: *
    // swiss-cheese style layered slabs
    let slabs = (
      (0.5, "negative\npressure test"),
      (2.5, "well control"),
      (4.5, "BOP"),
      (6.5, "gas detection"),
      (8.5, "ignition control"),
    )
    for (x, lab) in slabs {
      rect((x - 0.45, 0.8), (x + 0.45, 3.0), fill: rgb("#132240"), stroke: 0.4pt + rgb("#5A6A85"))
      // hole
      circle((x, 1.9), radius: 0.18, fill: rgb("#0A1628"), stroke: none)
      content((x, 0.6), text(font: ("DM Sans",), size: 5.5pt, fill: rgb("#8A9AB5"), lab), anchor: "north")
    }
    // arrow through the holes
    line((0.2, 1.9), (8.9, 1.9), stroke: 1pt + rgb("#D4A843"))
    content((9.1, 1.9), text(font: ("DM Sans",), size: 6pt, fill: rgb("#D4A843"), "→"), anchor: "west")
  })
)

#let dgm-shuttle = diagram-frame(
  caption: "17 years, same pattern — Challenger to Columbia",
  cetz.canvas({
    import cetz.draw: *
    line((0.5, 1.6), (9, 1.6), stroke: 0.6pt + rgb("#5A6A85"))
    // Challenger
    circle((1.5, 1.6), radius: 0.22, fill: rgb("#D4A843"), stroke: none)
    content((1.5, 2.0), text(font: ("DM Sans",), size: 6.5pt, weight: "bold", fill: rgb("#F5F0E8"), "1986"), anchor: "south")
    content((1.5, 1.2), text(font: ("DM Sans",), size: 6pt, fill: rgb("#D4A843"), "Challenger"), anchor: "north")
    // Columbia
    circle((7.5, 1.6), radius: 0.22, fill: rgb("#D4A843"), stroke: none)
    content((7.5, 2.0), text(font: ("DM Sans",), size: 6.5pt, weight: "bold", fill: rgb("#F5F0E8"), "2003"), anchor: "south")
    content((7.5, 1.2), text(font: ("DM Sans",), size: 6pt, fill: rgb("#D4A843"), "Columbia"), anchor: "north")
    // arc between
    bezier((1.5, 1.6), (7.5, 1.6), (3.5, 3.2), (5.5, 3.2), stroke: (paint: rgb("#2CC4B3"), thickness: 0.6pt, dash: "dashed"))
    content((4.5, 3.0), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#2CC4B3"), "same culture, same failure"))
    content((4.5, 0.4), text(font: ("Instrument Serif",), size: 8pt, style: "italic", fill: rgb("#E8C96A"), "14 astronauts dead"), anchor: "north")
  })
)

#let dgm-osprey = diagram-frame(
  caption: "Persistent capability gaps across three services",
  cetz.canvas({
    import cetz.draw: *
    // three concentric arcs representing the three services + a problem in the center
    content((4.7, 2.0), text(font: ("DM Sans",), size: 6.5pt, weight: "bold", fill: rgb("#D4A843"), "V-22"))
    circle((4.7, 2.0), radius: 0.5, fill: rgb("#0A1628"), stroke: 0.6pt + rgb("#D4A843"))
    let svcs = (("USMC", 0.8, 2.4), ("USAF", 7.0, 3.0), ("USN", 7.4, 0.9))
    for (n, x, y) in svcs {
      circle((x, y), radius: 0.35, fill: rgb("#2CC4B3"), stroke: none)
      content((x, y), text(font: ("DM Sans",), size: 6pt, weight: "bold", fill: rgb("#0A1628"), n))
      line((4.7, 2.0), (x, y), stroke: 0.4pt + rgb("#5A6A85"))
    }
    content((4.7, 0.4), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "62 dead across 16 hull losses"), anchor: "north")
  })
)

// ============================================================
// CASE DIAGRAMS — CHAPTER 4 (Interface Problem)
// ============================================================

#let dgm-vincennes = diagram-frame(
  caption: "Aegis radar data correctly displayed; five operators read it wrong",
  cetz.canvas({
    import cetz.draw: *
    // ascending arrow vs descending arrow
    content((1.8, 3.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), tracking: 1pt, upper("actual")), anchor: "south")
    line((0.7, 1.4), (3.0, 2.8), stroke: 1.2pt + rgb("#2CC4B3"))
    content((3.2, 2.8), text(font: ("DM Sans",), size: 7pt, fill: rgb("#2CC4B3"), "↗ climbing"), anchor: "west")
    content((6.0, 3.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#D4A843"), tracking: 1pt, upper("perceived")), anchor: "south")
    line((5.0, 2.8), (7.3, 1.4), stroke: 1.2pt + rgb("#D4A843"))
    content((7.5, 1.4), text(font: ("DM Sans",), size: 7pt, fill: rgb("#D4A843"), "↘ diving"), anchor: "west")
    content((4.7, 0.4), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "290 civilians killed"), anchor: "north")
  })
)

#let dgm-ehr = diagram-frame(
  caption: "$40B invested; new error pathways emerged from interface design",
  cetz.canvas({
    import cetz.draw: *
    // money flowing in vs harm flowing out
    rect((0.5, 1.2), (3.5, 2.8), fill: rgb("#132240"), stroke: 0.6pt + rgb("#2CC4B3"))
    content((2.0, 2.0), text(font: ("Instrument Serif",), size: 14pt, fill: rgb("#2CC4B3"), "\$40B"))
    content((2.0, 1.4), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("HITECH 2009")))
    line((3.7, 2.0), (5.5, 2.0), stroke: 0.8pt + rgb("#5A6A85"))
    rect((5.7, 1.2), (8.7, 2.8), fill: rgb("#132240"), stroke: 0.6pt + rgb("#D4A843"))
    content((7.2, 2.2), text(font: ("DM Sans",), size: 7pt, weight: "bold", fill: rgb("#D4A843"), "new error"))
    content((7.2, 1.85), text(font: ("DM Sans",), size: 7pt, weight: "bold", fill: rgb("#D4A843"), "categories"))
    content((7.2, 1.5), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("transcription · default · alerts")))
  })
)

#let dgm-uber = diagram-frame(
  caption: "Designed as passive monitor; equipped only to fail",
  cetz.canvas({
    import cetz.draw: *
    // road horizon
    line((0.5, 1.4), (9, 1.4), stroke: 0.6pt + rgb("#5A6A85"))
    // vehicle
    rect((1.0, 1.5), (2.0, 2.0), fill: rgb("#D4A843"), stroke: none)
    content((1.5, 2.2), text(font: ("DM Sans",), size: 6pt, fill: rgb("#D4A843"), "Volvo (autonomous)"), anchor: "south")
    // pedestrian
    circle((6.5, 1.6), radius: 0.12, fill: rgb("#2CC4B3"), stroke: none)
    content((6.5, 1.9), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), "pedestrian"), anchor: "south")
    // operator looking away
    content((4.5, 3.0), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "operator monitoring a system"))
    content((4.5, 2.6), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "that worked well most of the time"))
    content((4.5, 0.5), text(font: ("DM Sans",), size: 7pt, fill: rgb("#E8C96A"), tracking: 1.5pt, upper("emergency braking disabled")), anchor: "north")
  })
)

// ============================================================
// CASE DIAGRAMS — CHAPTER 5 (Governance)
// ============================================================

#let dgm-inbloom = diagram-frame(
  caption: "$100M of working technology; nine states withdrew",
  cetz.canvas({
    import cetz.draw: *
    // central hub
    circle((4.7, 2.0), radius: 0.6, fill: rgb("#D4A843"), stroke: none)
    content((4.7, 2.0), text(font: ("DM Sans",), size: 7pt, weight: "bold", fill: rgb("#0A1628"), "inBloom"))
    // satellites that withdrew
    let n = 9
    for i in range(n) {
      let theta = i * 360deg / n - 90deg
      let cx = 4.7 + 2.6 * calc.cos(theta)
      let cy = 2.0 + 1.4 * calc.sin(theta)
      // crossed-out satellites
      circle((cx, cy), radius: 0.15, fill: rgb("#5A6A85"), stroke: none)
      line((cx - 0.18, cy + 0.18), (cx + 0.18, cy - 0.18), stroke: 1pt + rgb("#E8C96A"))
    }
    content((4.7, 0.3), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#2CC4B3"), "the tech worked; the governance did not"), anchor: "north")
  })
)

#let dgm-healthcaregov = diagram-frame(
  caption: "29,000 enrollments vs. 7,000,000 target — first two months",
  cetz.canvas({
    import cetz.draw: *
    // Two contrasting bars
    rect((1.5, 1.4), (1.7, 3.2), fill: rgb("#2CC4B3"), stroke: none)
    content((1.6, 3.4), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), "7M target"), anchor: "south")
    rect((5.5, 1.4), (5.55, 1.45), fill: rgb("#D4A843"), stroke: none)
    content((5.5, 1.55), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#D4A843"), "29K actual"), anchor: "south")
    line((0.5, 1.4), (9, 1.4), stroke: 0.4pt + rgb("#5A6A85"))
    content((4.5, 0.6), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "no lead integrator, no end-to-end test"), anchor: "north")
  })
)

#let dgm-bhopal = diagram-frame(
  caption: "Safety systems off-line for four months before the release",
  cetz.canvas({
    import cetz.draw: *
    // Five safety systems, all crossed out
    let systems = ("refrigeration", "scrubber", "flare", "alarm", "training")
    for i in range(systems.len()) {
      let x = 1.0 + i * 1.6
      rect((x - 0.5, 1.7), (x + 0.5, 2.5), fill: rgb("#132240"), stroke: 0.4pt + rgb("#5A6A85"))
      line((x - 0.45, 2.45), (x + 0.45, 1.75), stroke: 1pt + rgb("#E8C96A"))
      content((x, 1.55), text(font: ("DM Sans",), size: 5.5pt, fill: rgb("#8A9AB5"), systems.at(i)), anchor: "north")
    }
    content((4.5, 0.5), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "≈ 20,000 dead · ≈ 500,000 injured"), anchor: "north")
  })
)

#let dgm-grenfell = diagram-frame(
  caption: "Levels of failure: manufacture, regulation, inspection, response",
  cetz.canvas({
    import cetz.draw: *
    // Four stacked layers
    let layers = (
      ("manufacturer fraud",     2.8, rgb("#D4A843")),
      ("regulatory capture",     2.2, rgb("#D4A843")),
      ("inspection (16 visits)", 1.6, rgb("#D4A843")),
      ("LFB unprepared",         1.0, rgb("#D4A843")),
    )
    for (lab, y, c) in layers {
      rect((1.0, y - 0.22), (8.5, y + 0.22), fill: rgb("#132240"), stroke: 0.4pt + c)
      content((1.3, y), text(font: ("DM Sans",), size: 6.5pt, fill: c, lab), anchor: "west")
    }
    content((4.7, 0.5), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "72 dead — \"a grey elephant, known but ignored\""), anchor: "north")
  })
)

#let dgm-alevel = diagram-frame(
  caption: "An algorithm encoding historical inequality at national scale",
  cetz.canvas({
    import cetz.draw: *
    // Two columns: private vs state
    content((2.5, 3.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), tracking: 1pt, upper("private school")), anchor: "south")
    rect((1.5, 1.0), (3.5, 2.9), fill: rgb("#2CC4B3"), stroke: none)
    content((2.5, 0.8), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), "grades held"), anchor: "north")
    content((7.0, 3.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#D4A843"), tracking: 1pt, upper("disadvantaged state")), anchor: "south")
    rect((6.0, 1.0), (8.0, 2.2), fill: rgb("#D4A843"), stroke: none)
    content((7.0, 0.8), text(font: ("DM Sans",), size: 6pt, fill: rgb("#D4A843"), "downgraded 2× more"), anchor: "north")
    content((4.7, 0.2), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "39% of students downgraded"), anchor: "north")
  })
)

#let dgm-robodebt = diagram-frame(
  caption: "Income-averaging assumption matched 7% of recipients",
  cetz.canvas({
    import cetz.draw: *
    // 7% pie
    rect((0.5, 1.0), (8.9, 1.5), fill: rgb("#132240"), stroke: 0.4pt + rgb("#5A6A85"))
    rect((0.5, 1.0), (1.1, 1.5), fill: rgb("#2CC4B3"), stroke: none)
    content((0.8, 0.85), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), "7%"), anchor: "north")
    content((5, 0.85), text(font: ("DM Sans",), size: 6pt, fill: rgb("#D4A843"), "93% — population the assumption did not fit"), anchor: "north")
    content((4.7, 2.6), text(font: ("Instrument Serif",), size: 10pt, style: "italic", fill: rgb("#F5F0E8"), "470,000 wrongful debt notices"))
    content((4.7, 2.1), text(font: ("DM Sans",), size: 7pt, fill: rgb("#E8C96A"), tracking: 1pt, upper("A\$1.8B settlement")))
  })
)

#let dgm-edbias = diagram-frame(
  caption: "Predictions over-flag the very students who succeed",
  cetz.canvas({
    import cetz.draw: *
    // false negative columns
    line((0.5, 0.8), (9, 0.8), stroke: 0.4pt + rgb("#5A6A85"))
    rect((1.5, 0.8), (2.3, 2.0), fill: rgb("#D4A843"), stroke: none)
    content((1.9, 2.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#D4A843"), "19% Black"), anchor: "south")
    rect((4.0, 0.8), (4.8, 2.1), fill: rgb("#D4A843"), stroke: none)
    content((4.4, 2.3), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#D4A843"), "21% Latinx"), anchor: "south")
    rect((6.5, 0.8), (7.3, 1.4), fill: rgb("#2CC4B3"), stroke: none)
    content((6.9, 1.6), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), "comparison"), anchor: "south")
    content((4.5, 0.4), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("false-negative rate")), anchor: "north")
    content((4.5, 3.2), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "construct definition determines who gets support"), anchor: "south")
  })
)

// ============================================================
// CASE DIAGRAMS — CHAPTER 6 (Knowledge Lost)
// ============================================================

#let dgm-va = diagram-frame(
  caption: "Schedulers falsified records; the measurement system hid the gap",
  cetz.canvas({
    import cetz.draw: *
    content((2.5, 3.0), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), tracking: 1pt, upper("reported")), anchor: "south")
    rect((1.5, 1.4), (3.5, 2.6), fill: rgb("#2CC4B3"), stroke: none)
    content((2.5, 2.0), text(font: ("DM Sans",), size: 6pt, weight: "bold", fill: rgb("#0A1628"), "14 days"))
    content((7.0, 3.0), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#D4A843"), tracking: 1pt, upper("actual")), anchor: "south")
    rect((6.0, 1.4), (8.0, 2.6), fill: rgb("#D4A843"), stroke: none)
    content((7.0, 2.0), text(font: ("DM Sans",), size: 6pt, weight: "bold", fill: rgb("#0A1628"), "6+ months"))
    line((3.7, 2.0), (5.8, 2.0), stroke: 0.8pt + rgb("#5A6A85"))
    content((4.75, 2.2), text(font: ("DM Sans",), size: 6pt, fill: rgb("#5A6A85"), "secret list"), anchor: "south")
    content((4.7, 0.4), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "veterans died while measurement said all was well"), anchor: "north")
  })
)

#let dgm-gift = diagram-frame(
  caption: "Adaptive instruction worked; adoption did not cross the boundary",
  cetz.canvas({
    import cetz.draw: *
    // research bubble
    circle((2.0, 2.0), radius: 0.7, fill: rgb("#2CC4B3"), stroke: none)
    content((2.0, 2.0), text(font: ("DM Sans",), size: 6pt, weight: "bold", fill: rgb("#0A1628"), "GIFT"))
    content((2.0, 0.85), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), "ARL"), anchor: "north")
    // adoption layer
    line((4.0, 0.6), (4.0, 3.4), stroke: (paint: rgb("#E8C96A"), thickness: 0.8pt, dash: "dashed"))
    content((4.0, 3.4), text(font: ("DM Sans",), size: 6pt, fill: rgb("#E8C96A"), "institutional"), anchor: "south")
    content((4.0, 3.1), text(font: ("DM Sans",), size: 6pt, fill: rgb("#E8C96A"), "boundary"), anchor: "south")
    // operations side
    circle((7.0, 2.0), radius: 0.7, fill: rgb("#132240"), stroke: 0.6pt + rgb("#5A6A85"))
    content((7.0, 2.0), text(font: ("DM Sans",), size: 6pt, fill: rgb("#5A6A85"), "training\nsystems"))
    line((2.7, 2.0), (3.9, 2.0), stroke: 0.8pt + rgb("#D4A843"))
    line((4.0, 2.0), (6.3, 2.0), stroke: (paint: rgb("#D4A843"), thickness: 0.8pt, dash: "dashed"))
    content((6.3, 2.3), text(font: ("DM Sans",), size: 6pt, fill: rgb("#D4A843"), "× discontinued"), anchor: "south")
  })
)

#let dgm-xapi = diagram-frame(
  caption: "Standard exists; cross-organization data still silo'd",
  cetz.canvas({
    import cetz.draw: *
    // five silos
    for i in range(5) {
      let x = 1.0 + i * 1.7
      rect((x - 0.4, 1.0), (x + 0.4, 2.5), fill: rgb("#132240"), stroke: 0.4pt + rgb("#5A6A85"))
      content((x, 1.75), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), "xAPI"))
      content((x, 0.85), text(font: ("DM Sans",), size: 5.5pt, fill: rgb("#8A9AB5"), "LMS " + str(i + 1)), anchor: "north")
    }
    // weak connections
    content((4.7, 3.2), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "governance lags the standard"), anchor: "south")
  })
)

#let dgm-17year = diagram-frame(
  caption: "Research to practice — the canonical implementation gap",
  cetz.canvas({
    import cetz.draw: *
    line((0.5, 1.6), (9, 1.6), stroke: 0.6pt + rgb("#5A6A85"))
    circle((1.0, 1.6), radius: 0.22, fill: rgb("#2CC4B3"), stroke: none)
    content((1.0, 2.0), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), "evidence"), anchor: "south")
    circle((8.5, 1.6), radius: 0.22, fill: rgb("#D4A843"), stroke: none)
    content((8.5, 2.0), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#D4A843"), "practice"), anchor: "south")
    content((4.7, 2.6), text(font: ("Instrument Serif",), size: 16pt, fill: rgb("#F5F0E8"), "17 years"))
    content((4.7, 0.9), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("only 14% ever arrive")), anchor: "north")
  })
)

// ============================================================
// CASE DIAGRAMS — CHAPTER 7 (Evidence Gap)
// ============================================================

#let dgm-makary = diagram-frame(
  caption: "Third leading cause of death — and structurally invisible",
  cetz.canvas({
    import cetz.draw: *
    // Three bars: heart disease, cancer, medical errors
    let bars = (
      ("Heart disease", 600, rgb("#5A6A85")),
      ("Cancer",        595, rgb("#5A6A85")),
      ("Medical error", 251, rgb("#D4A843")),
    )
    let max-h = 2.6
    for i in range(bars.len()) {
      let (lab, v, c) = bars.at(i)
      let h = (v / 600) * max-h
      let x = 1.6 + i * 2.6
      rect((x - 0.5, 0.6), (x + 0.5, 0.6 + h), fill: c, stroke: none)
      content((x, 0.6 + h + 0.2), text(font: ("DM Sans",), size: 6.5pt, fill: c, str(v) + "K"), anchor: "south")
      content((x, 0.4), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), lab), anchor: "north")
    }
    content((4.5, 3.4), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "deaths per year, U.S."), anchor: "south")
  })
)

// ============================================================
// CASE DIAGRAMS — CHAPTER 8 (Paired Interventions, extras)
// ============================================================

#let dgm-navy-reform = diagram-frame(
  caption: "Post-Fitzgerald reform: tripled training; pass-or-fail gates",
  cetz.canvas({
    import cetz.draw: *
    // staircase upward
    let steps = ((0.5, 1.0), (2.0, 1.4), (3.5, 1.9), (5.0, 2.4), (6.5, 2.7), (8.0, 3.0))
    for i in range(steps.len() - 1) {
      let (x1, y1) = steps.at(i)
      let (x2, y2) = steps.at(i + 1)
      line((x1, y1), (x2, y1), stroke: 1pt + rgb("#D4A843"))
      line((x2, y1), (x2, y2), stroke: 1pt + rgb("#D4A843"))
    }
    // gate markers
    let gates = ((2.0, "Junior Officer"), (5.0, "Department Head"), (8.0, "Command"))
    for (x, lab) in gates {
      circle((x, 1.0), radius: 0.12, fill: rgb("#2CC4B3"), stroke: none)
      content((x, 0.85), text(font: ("DM Sans",), size: 5.5pt, fill: rgb("#2CC4B3"), lab), anchor: "north")
    }
    content((4.7, 3.4), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "10 pass-or-fail assessments; 3 are no-go gates"), anchor: "south")
  })
)

#let dgm-korean-air = diagram-frame(
  caption: "Cultural hierarchy removed from the cockpit",
  cetz.canvas({
    import cetz.draw: *
    content((2.0, 3.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper("before")), anchor: "south")
    // steep hierarchy
    line((0.5, 0.8), (3.5, 3.0), stroke: 1.2pt + rgb("#8A9AB5"))
    content((0.5, 0.6), text(font: ("DM Sans",), size: 6pt, fill: rgb("#5A6A85"), "FO"), anchor: "north")
    content((3.7, 3.1), text(font: ("DM Sans",), size: 6pt, fill: rgb("#5A6A85"), "Capt"), anchor: "south")
    content((7.0, 3.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), tracking: 1pt, upper("after")), anchor: "south")
    line((5.0, 2.0), (9.0, 2.0), stroke: 1pt + rgb("#2CC4B3"))
    content((5.0, 1.8), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), "FO"), anchor: "north")
    content((9.0, 1.8), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), "Capt"), anchor: "north")
    content((4.7, 0.4), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#E8C96A"), "industry pariah → spotless record"), anchor: "north")
  })
)

#let dgm-andon = diagram-frame(
  caption: "Lowest-ranking worker authorized to stop the line",
  cetz.canvas({
    import cetz.draw: *
    // Inverted hierarchy
    line((0.5, 2.0), (9, 2.0), stroke: 0.6pt + rgb("#5A6A85"))
    rect((0.7, 1.5), (1.7, 2.5), fill: rgb("#2CC4B3"), stroke: none)
    content((1.2, 2.0), text(font: ("DM Sans",), size: 6pt, weight: "bold", fill: rgb("#0A1628"), "worker"))
    // pull cord
    line((1.2, 2.5), (1.2, 3.1), stroke: 1.5pt + rgb("#D4A843"))
    content((1.2, 3.3), text(font: ("DM Sans",), size: 6pt, fill: rgb("#D4A843"), "andon"), anchor: "south")
    // ripple: production line halts
    for i in range(4) {
      let x = 3.0 + i * 1.6
      rect((x - 0.35, 1.7), (x + 0.35, 2.3), fill: rgb("#132240"), stroke: 0.4pt + rgb("#5A6A85"))
    }
    content((6, 1.0), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "85% resolved in 60 seconds"), anchor: "north")
  })
)

#let dgm-teamstepps = diagram-frame(
  caption: "Aviation → military → healthcare; the translation pathway",
  cetz.canvas({
    import cetz.draw: *
    let nodes = (
      (1.2, "aviation\nCRM"),
      (4.7, "military\nteams"),
      (8.2, "healthcare\nTeamSTEPPS"),
    )
    for i in range(nodes.len()) {
      let (x, lab) = nodes.at(i)
      circle((x, 2.0), radius: 0.55, fill: rgb("#D4A843"), stroke: none)
      content((x, 2.0), text(font: ("DM Sans",), size: 5.5pt, weight: "bold", fill: rgb("#0A1628"), lab))
      if i < nodes.len() - 1 {
        let nx = nodes.at(i + 1).at(0)
        line((x + 0.6, 2.0), (nx - 0.6, 2.0), stroke: 1pt + rgb("#2CC4B3"))
      }
    }
    content((4.7, 0.5), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "cross-domain capability transfer"), anchor: "north")
  })
)

#let dgm-rickover = diagram-frame(
  caption: "Same Navy, opposite philosophies — radically different outcomes",
  cetz.canvas({
    import cetz.draw: *
    line((4.7, 0.5), (4.7, 3.4), stroke: 0.4pt + rgb("#5A6A85"))
    content((2.0, 3.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), tracking: 1pt, upper("nuclear")), anchor: "south")
    content((2.0, 2.6), text(font: ("Instrument Serif",), size: 22pt, fill: rgb("#2CC4B3"), "0"))
    content((2.0, 1.6), text(font: ("DM Sans",), size: 6pt, fill: rgb("#F5F0E8"), "reactor accidents"), anchor: "north")
    content((2.0, 1.2), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), "60+ years"), anchor: "north")
    content((7.4, 3.2), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#D4A843"), tracking: 1pt, upper("surface (pre-2017)")), anchor: "south")
    content((7.4, 2.6), text(font: ("Instrument Serif",), size: 22pt, fill: rgb("#D4A843"), "17"))
    content((7.4, 1.6), text(font: ("DM Sans",), size: 6pt, fill: rgb("#F5F0E8"), "sailors killed"), anchor: "north")
    content((7.4, 1.2), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), "two collisions"), anchor: "north")
  })
)

#let dgm-gsu = diagram-frame(
  caption: "Graduation rate, with equity as a primary constraint",
  cetz.canvas({
    import cetz.draw: *
    line((0.5, 0.6), (9, 0.6), stroke: 0.4pt + rgb("#5A6A85"))
    line((0.5, 0.6), (0.5, 3.4), stroke: 0.4pt + rgb("#5A6A85"))
    // 32 → 54
    let pts = ((1.0, 1.1), (2.5, 1.4), (4.0, 1.9), (5.5, 2.4), (7.0, 2.7), (8.5, 2.9))
    line(..pts, stroke: 1.2pt + rgb("#D4A843"))
    content((1.0, 1.1), text(font: ("DM Sans",), size: 6pt, fill: rgb("#D4A843"), " 32%"), anchor: "west")
    content((8.5, 2.9), text(font: ("DM Sans",), size: 6pt, fill: rgb("#D4A843"), " 54%"), anchor: "west")
    content((4.7, 3.2), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#2CC4B3"), "equity gap eliminated"))
  })
)

#let dgm-cogtutor = diagram-frame(
  caption: "Theory → engineering → evidence → scale",
  cetz.canvas({
    import cetz.draw: *
    let stages = (
      (1.0, "ACT-R"),
      (3.4, "Tutor"),
      (5.8, "RCT"),
      (8.2, "3,000\nschools"),
    )
    for i in range(stages.len()) {
      let (x, lab) = stages.at(i)
      circle((x, 2.0), radius: 0.45, fill: rgb("#2CC4B3"), stroke: none)
      content((x, 2.0), text(font: ("DM Sans",), size: 5.5pt, weight: "bold", fill: rgb("#0A1628"), lab))
      if i < stages.len() - 1 {
        line((x + 0.5, 2.0), (stages.at(i + 1).at(0) - 0.5, 2.0), stroke: 0.8pt + rgb("#D4A843"))
      }
    }
    content((4.7, 0.5), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), "the LE process working as intended"), anchor: "north")
  })
)

// ============================================================
// PARAMETRIC TEMPLATES
// Reusable diagram functions for cases without custom visuals.
// Each takes a small set of parameters and returns a diagram-frame.
// ============================================================

// ---- dgm-stat: a single dominant statistic with sub-line and caption ----
#let dgm-stat(big, sub, micro: none, caption: none) = diagram-frame(
  caption: caption,
  cetz.canvas({
    import cetz.draw: *
    content((4.7, 2.5), text(font: ("Instrument Serif",), size: 32pt, fill: rgb("#D4A843"), big))
    content((4.7, 1.6), text(font: ("DM Sans",), size: 8pt, tracking: 1.4pt, fill: rgb("#F5F0E8"), upper(sub)))
    if micro != none {
      content((4.7, 0.6), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#8A9AB5"), micro))
    }
  })
)

// ---- dgm-timeline: events along a horizontal line ----
// events is an array of (label, sublabel?) pairs; emphasis is the index to highlight (or none).
#let dgm-timeline(events, emphasis: none, caption: none) = diagram-frame(
  caption: caption,
  cetz.canvas({
    import cetz.draw: *
    line((0.5, 1.4), (9, 1.4), stroke: 0.6pt + rgb("#5A6A85"))
    let n = events.len()
    let x0 = 0.9
    let x1 = 8.6
    let step = if n > 1 { (x1 - x0) / (n - 1) } else { 0 }
    for i in range(n) {
      let x = x0 + i * step
      let lab = events.at(i).at(0)
      let sub = if events.at(i).len() > 1 { events.at(i).at(1) } else { none }
      let is-emph = emphasis != none and emphasis == i
      let r = if is-emph { 0.20 } else { 0.14 }
      let c = if is-emph { rgb("#E8C96A") } else { rgb("#D4A843") }
      circle((x, 1.4), radius: r, fill: c, stroke: none)
      content((x, 2.0), text(font: ("DM Sans",), size: 6.4pt, weight: if is-emph { "bold" } else { "regular" }, fill: rgb("#F5F0E8"), lab), anchor: "south")
      if sub != none {
        content((x, 1.0), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), sub), anchor: "north")
      }
    }
  })
)

// ---- dgm-cascade: stacked layered "swiss-cheese" failures ----
// layers is an array of label strings (top to bottom).  Holes punched at
// a consistent x and connected by a vertical dashed line — labels live on
// the left of each slab and are not crossed by the arrow.
#let dgm-cascade(layers, outcome: none, caption: none) = diagram-frame(
  height: 46mm,
  caption: caption,
  cetz.canvas({
    import cetz.draw: *
    let n = layers.len()
    let y-top = 3.4
    let y-bot = 1.2
    let step = if n > 1 { (y-top - y-bot) / (n - 1) } else { 0 }
    // Hole column lives on the far right so labels (on the left) are never crossed.
    let hole-x = 7.6
    for i in range(n) {
      let y = y-top - i * step
      rect((0.6, y - 0.18), (8.6, y + 0.18), fill: rgb("#1F2A44"), stroke: 0.4pt + rgb("#5A6A85"))
      circle((hole-x, y), radius: 0.11, fill: rgb("#0A1628"), stroke: none)
      content((0.8, y), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#D4A843"), layers.at(i)), anchor: "west")
    }
    // dashed line piercing the column of holes
    line((hole-x, y-top + 0.4), (hole-x, y-bot - 0.4),
      stroke: (paint: rgb("#E8C96A"), thickness: 0.9pt, dash: "dashed"))
    if outcome != none {
      content((4.6, 0.5), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), outcome), anchor: "north")
    }
  })
)

// ---- dgm-compare: two columns, before vs after / left vs right ----
//
// Value font size shrinks for longer strings so columns never collide.
#let dgm-compare(left-label, left-value, right-label, right-value, framing: none, caption: none) = {
  let max-len = calc.max(str(left-value).len(), str(right-value).len())
  let val-size = if max-len <= 5 { 22pt }
    else if max-len <= 9 { 18pt }
    else if max-len <= 13 { 14pt }
    else { 11pt }
  diagram-frame(
    caption: caption,
    cetz.canvas({
      import cetz.draw: *
      // dividing line
      line((4.7, 0.6), (4.7, 3.4), stroke: 0.4pt + rgb("#5A6A85"))
      // left column
      content((2.2, 3.2), text(font: ("DM Sans",), size: 6.5pt, tracking: 1pt, fill: rgb("#2CC4B3"), upper(left-label)), anchor: "south")
      content((2.2, 2.3), text(font: ("Instrument Serif",), size: val-size, fill: rgb("#2CC4B3"), left-value))
      // right column
      content((7.2, 3.2), text(font: ("DM Sans",), size: 6.5pt, tracking: 1pt, fill: rgb("#D4A843"), upper(right-label)), anchor: "south")
      content((7.2, 2.3), text(font: ("Instrument Serif",), size: val-size, fill: rgb("#D4A843"), right-value))
      if framing != none {
        content((4.7, 0.4), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), framing), anchor: "north")
      }
    })
  )
}

// ---- dgm-pair-bars: two contrasting bars showing relative magnitude ----
#let dgm-pair-bars(small-label, small-h, big-label, big-h, framing: none, caption: none) = diagram-frame(
  caption: caption,
  cetz.canvas({
    import cetz.draw: *
    line((0.5, 0.8), (9, 0.8), stroke: 0.4pt + rgb("#5A6A85"))
    let max-h = 2.4
    let s = small-h * max-h
    let b = big-h * max-h
    rect((1.5, 0.8), (2.5, 0.8 + s), fill: rgb("#2CC4B3"), stroke: none)
    content((2.0, 0.6), text(font: ("DM Sans",), size: 6.5pt, fill: rgb("#2CC4B3"), small-label), anchor: "north")
    rect((6.0, 0.8), (7.0, 0.8 + b), fill: rgb("#D4A843"), stroke: none)
    content((6.5, 0.6), text(font: ("DM Sans",), size: 6.5pt, weight: "bold", fill: rgb("#D4A843"), big-label), anchor: "north")
    if framing != none {
      content((4.7, 3.3), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), framing))
    }
  })
)

// ---- dgm-ring: central node with N satellites (used for hub-and-spoke patterns) ----
#let dgm-ring(center-label, satellites, framing: none, caption: none) = diagram-frame(
  height: 44mm,
  caption: caption,
  cetz.canvas({
    import cetz.draw: *
    let cx0 = 4.7
    let cy0 = 2.7
    circle((cx0, cy0), radius: 0.55, fill: rgb("#D4A843"), stroke: none)
    content((cx0, cy0), text(font: ("DM Sans",), size: 6pt, weight: "bold", fill: rgb("#0A1628"), center-label))
    let n = satellites.len()
    // Place satellites symmetrically left/right with first one at top.
    for i in range(n) {
      let theta = -90deg + i * 360deg / n
      let cx = cx0 + 1.9 * calc.cos(theta)
      let cy = cy0 + 1.0 * calc.sin(theta)
      circle((cx, cy), radius: 0.16, fill: rgb("#2CC4B3"), stroke: none)
      line((cx0, cy0), (cx, cy), stroke: 0.4pt + rgb("#5A6A85"))
      content((cx + 0.40 * calc.cos(theta), cy + 0.40 * calc.sin(theta)),
        text(font: ("DM Sans",), size: 5.5pt, fill: rgb("#F5F0E8"), satellites.at(i)))
    }
    if framing != none {
      content((cx0, 0.5), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), framing), anchor: "north")
    }
  })
)

// ---- dgm-flow: linear chain of nodes connected by arrows ----
#let dgm-flow(stages, framing: none, caption: none) = diagram-frame(
  caption: caption,
  cetz.canvas({
    import cetz.draw: *
    let n = stages.len()
    let x0 = 1.0
    let x1 = 8.4
    let step = if n > 1 { (x1 - x0) / (n - 1) } else { 0 }
    for i in range(n) {
      let x = x0 + i * step
      circle((x, 2.0), radius: 0.45, fill: rgb("#2CC4B3"), stroke: none)
      content((x, 2.0), text(font: ("DM Sans",), size: 5.5pt, weight: "bold", fill: rgb("#0A1628"), stages.at(i)))
      if i < n - 1 {
        line((x + 0.5, 2.0), (x0 + (i + 1) * step - 0.5, 2.0), stroke: 0.8pt + rgb("#D4A843"))
      }
    }
    if framing != none {
      content((4.7, 0.5), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#F5F0E8"), framing), anchor: "north")
    }
  })
)

// ---- dgm-curve: simple line chart with optional milestone marker ----
//
// Framing text is placed at the top of the canvas (above the curve range)
// so it never collides with the plotted line.
#let dgm-curve(points, milestone: none, milestone-label: none, y-label: none, x-label: none, framing: none, caption: none) = diagram-frame(
  height: 44mm,
  caption: caption,
  cetz.canvas({
    import cetz.draw: *
    // axes (left + bottom)
    line((0.5, 0.6), (9, 0.6), stroke: 0.4pt + rgb("#5A6A85"))
    line((0.5, 0.6), (0.5, 3.0), stroke: 0.4pt + rgb("#5A6A85"))
    if y-label != none {
      content((0.3, 3.0), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper(y-label)), anchor: "south-east")
    }
    if x-label != none {
      content((9, 0.4), text(font: ("DM Sans",), size: 6pt, fill: rgb("#8A9AB5"), tracking: 1pt, upper(x-label)), anchor: "north-east")
    }
    line(..points, stroke: 1.2pt + rgb("#D4A843"))
    if milestone != none {
      line((milestone, 0.6), (milestone, 2.9), stroke: (paint: rgb("#2CC4B3"), thickness: 0.5pt, dash: "dashed"))
      if milestone-label != none {
        content((milestone, 3.0), text(font: ("DM Sans",), size: 6pt, fill: rgb("#2CC4B3"), milestone-label), anchor: "south")
      }
    }
    if framing != none {
      content((4.7, 3.5), text(font: ("Instrument Serif",), size: 9pt, style: "italic", fill: rgb("#E8C96A"), framing), anchor: "south")
    }
  })
)

// ---- dgm-flywheel: the LENS Practice Flywheel as a closed cycle ----
#let dgm-flywheel = diagram-frame(
  height: 56mm,
  caption: "The LENS Practice Flywheel — each iteration generates evidence, artifacts, and refined practice",
  cetz.canvas({
    import cetz.draw: *
    let cx = 4.7
    let cy = 2.6
    let r = 1.7
    let nodes = (
      "Identify",   // 90 deg
      "Activate",   // 18 deg
      "Prototype",  // -54 deg
      "Analyze",    // -126 deg
      "Transition", // 162 deg
    )
    // place 5 nodes evenly around the circle, starting at the top
    let positions = ()
    for i in range(nodes.len()) {
      let theta = 90deg - i * (360deg / nodes.len())
      let x = cx + r * calc.cos(theta)
      let y = cy + r * calc.sin(theta)
      positions.push((x, y))
    }
    // arrows between successive node dots (straight segments, shortened by node radius)
    let node-r = 0.22
    for i in range(nodes.len()) {
      let (x1, y1) = positions.at(i)
      let (x2, y2) = positions.at(calc.rem(i + 1, nodes.len()))
      let dx = x2 - x1
      let dy = y2 - y1
      let d = calc.sqrt(dx * dx + dy * dy)
      let ux = dx / d
      let uy = dy / d
      line(
        (x1 + (node-r + 0.05) * ux, y1 + (node-r + 0.05) * uy),
        (x2 - (node-r + 0.18) * ux, y2 - (node-r + 0.18) * uy),
        stroke: 0.9pt + rgb("#D4A843"),
        mark: (end: ">", size: 0.18),
      )
    }
    // node dots + outward-offset labels
    for i in range(nodes.len()) {
      let (x, y) = positions.at(i)
      // radial unit vector from center to node, used to push the label outward
      let rx = (x - cx) / r
      let ry = (y - cy) / r
      circle((x, y), radius: node-r, fill: rgb("#2CC4B3"), stroke: none)
      content(
        (x + 0.55 * rx, y + 0.55 * ry),
        text(font: ("DM Sans",), size: 7.4pt, weight: "bold", fill: rgb("#0A1628"), nodes.at(i)),
      )
    }
    // center label
    content((cx, cy + 0.2), text(font: ("Instrument Serif",), size: 10pt, style: "italic", fill: rgb("#F5F0E8"), "the LENS"))
    content((cx, cy - 0.2), text(font: ("Instrument Serif",), size: 10pt, style: "italic", fill: rgb("#F5F0E8"), "Practice Flywheel"))
  })
)

// ---- dgm-why-lens: the five pillars as a horizontal chain --------
// Mirrors the "Why LENS?" slide: five nodes on a line, with
// Intersectional Expertise highlighted as the distinguishing pillar.
#let dgm-why-lens = diagram-frame(
  height: 64mm,
  caption: "Why LENS — five pillars",
  cetz.canvas({
    import cetz.draw: *
    let cy = 3.2
    let node-r = 0.55
    let icon-stroke = 1.4pt + rgb("#F5F0E8")
    // five evenly spaced node centers along the canvas
    let xs = (1.1, 3.0, 4.9, 6.8, 8.7)
    // connecting line behind the nodes
    line((xs.at(0), cy), (xs.at(-1), cy), stroke: 0.8pt + rgb("#2CC4B3").lighten(40%))
    // node colors — intersectional expertise (index 2) is highlighted
    let ring-colors = (
      rgb("#2CC4B3"),
      rgb("#2CC4B3"),
      rgb("#D26B43"),
      rgb("#2CC4B3"),
      rgb("#2CC4B3"),
    )
    let labels-top = ("Mission", "JHU", "Intersectional", "Capability", "Flywheel")
    let labels-bot = ("Literacy", "Ecosystem", "Expertise", "Focus", "Iteration")

    // 1) draw the rings (no icons yet) + the labels under each
    for i in range(xs.len()) {
      let x = xs.at(i)
      circle((x, cy), radius: node-r, fill: navy, stroke: 2.2pt + ring-colors.at(i))
      content(
        (x, cy - node-r - 0.45),
        text(font: ("DM Sans",), size: 7.5pt, weight: "bold", fill: rgb("#F5F0E8"), labels-top.at(i)),
        anchor: "north",
      )
      content(
        (x, cy - node-r - 0.85),
        text(font: ("DM Sans",), size: 7.5pt, weight: "bold", fill: rgb("#F5F0E8"), labels-bot.at(i)),
        anchor: "north",
      )
    }

    // 2) icon 1 — target reticle (Mission Literacy)
    let x1 = xs.at(0)
    circle((x1, cy), radius: 0.18, stroke: icon-stroke)
    circle((x1, cy), radius: 0.045, stroke: none, fill: rgb("#F5F0E8"))
    line((x1 - 0.30, cy), (x1 - 0.10, cy), stroke: icon-stroke)
    line((x1 + 0.10, cy), (x1 + 0.30, cy), stroke: icon-stroke)
    line((x1, cy - 0.30), (x1, cy - 0.10), stroke: icon-stroke)
    line((x1, cy + 0.10), (x1, cy + 0.30), stroke: icon-stroke)

    // 3) icon 2 — building / institution (JHU Ecosystem)
    let x2 = xs.at(1)
    // pediment (triangular roof)
    line((x2 - 0.30, cy + 0.10), (x2, cy + 0.28), stroke: icon-stroke)
    line((x2, cy + 0.28), (x2 + 0.30, cy + 0.10), stroke: icon-stroke)
    // architrave under roof
    line((x2 - 0.32, cy + 0.10), (x2 + 0.32, cy + 0.10), stroke: icon-stroke)
    // four columns
    line((x2 - 0.21, cy + 0.07), (x2 - 0.21, cy - 0.20), stroke: icon-stroke)
    line((x2 - 0.07, cy + 0.07), (x2 - 0.07, cy - 0.20), stroke: icon-stroke)
    line((x2 + 0.07, cy + 0.07), (x2 + 0.07, cy - 0.20), stroke: icon-stroke)
    line((x2 + 0.21, cy + 0.07), (x2 + 0.21, cy - 0.20), stroke: icon-stroke)
    // base
    line((x2 - 0.32, cy - 0.20), (x2 + 0.32, cy - 0.20), stroke: icon-stroke)
    line((x2 - 0.34, cy - 0.27), (x2 + 0.34, cy - 0.27), stroke: icon-stroke)

    // 4) icon 3 — node graph (Intersectional Expertise)
    let x3 = xs.at(2)
    let rx = x3 - 0.22
    let bx = x3 + 0.22
    // three branches connecting the root node to three leaf nodes (lines first)
    line((rx, cy), (bx, cy + 0.22), stroke: icon-stroke)
    line((rx, cy), (bx, cy), stroke: icon-stroke)
    line((rx, cy), (bx, cy - 0.22), stroke: icon-stroke)
    // nodes drawn over lines
    circle((rx, cy), radius: 0.07, fill: rgb("#F5F0E8"), stroke: none)
    circle((bx, cy + 0.22), radius: 0.07, fill: rgb("#F5F0E8"), stroke: none)
    circle((bx, cy), radius: 0.07, fill: rgb("#F5F0E8"), stroke: none)
    circle((bx, cy - 0.22), radius: 0.07, fill: rgb("#F5F0E8"), stroke: none)

    // 5) icon 4 — bullseye (Capability Focus)
    let x4 = xs.at(3)
    circle((x4, cy), radius: 0.28, stroke: icon-stroke)
    circle((x4, cy), radius: 0.18, stroke: icon-stroke)
    circle((x4, cy), radius: 0.08, fill: rgb("#F5F0E8"), stroke: none)

    // 6) icon 5 — circular arrow (Practice Flywheel)
    let x5 = xs.at(4)
    let arc-r = 0.26
    let n-segs = 20
    let start-a = 60deg
    let sweep = 310deg
    let step = -sweep / n-segs   // negative => clockwise visually
    for j in range(n-segs) {
      let a1 = start-a + j * step
      let a2 = start-a + (j + 1) * step
      let p1 = (x5 + arc-r * calc.cos(a1), cy + arc-r * calc.sin(a1))
      let p2 = (x5 + arc-r * calc.cos(a2), cy + arc-r * calc.sin(a2))
      if j == n-segs - 1 {
        line(p1, p2, stroke: icon-stroke, mark: (end: ">", size: 0.11, fill: rgb("#F5F0E8")))
      } else {
        line(p1, p2, stroke: icon-stroke)
      }
    }

    // title across the top
    content(
      (4.9, 5.7),
      text(
        font: ("Instrument Serif",),
        size: 18pt,
        fill: rgb("#F5F0E8"),
        "Why LENS?",
      ),
    )
  })
)
