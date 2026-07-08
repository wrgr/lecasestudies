// ============================================================
// Part VI — Disaster Prevention & Recovery · What Fails (Chapter 11)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#let phase-mark(t) = if view == "book" {
  v(10pt)
  block({
    text(font: sans, size: 8pt, tracking: 2pt, fill: teal, upper(t))
    v(3pt)
    line(length: 24mm, stroke: 0.8pt + gold)
  })
  v(4pt)
}
#chapter-divider(
  part: "Part VI — Disaster Prevention & Recovery",
  number: "11",
  title: "Disaster Prevention & Recovery — What Fails",
  subtitle: "Before the event, prevention regimes that thinned out; after it, response plans that met reality.",
  epigraph: [Every barrier had been inspected. What failed was the system deciding what counted as a barrier.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Editor's framing essay: the pre/post arc ----
#if view == "book" { block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 14pt,
  stroke: (left: 2.5pt + gold),
  breakable: false,
  {
    set par(leading: 0.62em, justify: true, first-line-indent: 0pt)
    text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Editor's note · before and after"))
    v(6pt)
    text(font: sans, size: 10pt, fill: text-dark)[
      This part reads the corpus along a different axis than the domain
      parts that precede it: the lifecycle of a disaster. Every case here
      has two clocks. Before the event, there is a prevention regime — a
      certification, an inspection cadence, a defense-in-depth argument —
      whose quiet thinning is the real story. After the event, there is a
      response and a recovery, and the institutions that are (or are not)
      built so the same failure cannot recur. The chapter is therefore
      ordered in two arcs, marked below: prevention failures first, then
      response-and-recovery failures; and in the What Works chapter,
      prevention engineered as a deliverable, then recovery run as a
      discipline. Cases whose primary lessons belong to a domain — an
      aviation accident, a clinical harm — remain in their domain parts;
      what qualifies a case for this part is that its load-bearing lesson
      is the pre/post lifecycle itself.
    ]
  }
) }
#if view == "book" { v(8pt) }

#phase-mark("Before the event — prevention")

// ---- Case 158 — hyatt-regency-walkway-collapse ----
#case(
  number: 158,
  slug: "hyatt-regency-walkway-collapse",
  title: "Hyatt Regency Walkway Collapse",
  year: "1981",
  domains-list: ("industrial",),
  modes-code: "DG",
  impact: "114 killed and 216 injured in Kansas City when suspended walkways collapsed; foundational U.S. engineering-ethics case",
  diagram: dgm.dgm-compare(
    "as designed",
    "1× load",
    "as built",
    "2× load",
    framing: "a small construction change, accepted without re-analysis",
    caption: "Hyatt Regency — connection detail changed in the field",
  ),
  kind: "failure",
  summary: [
    During a crowded tea dance in the atrium of the Kansas City Hyatt Regency
    on 17 July 1981, two suspended walkways collapsed, killing 114 and
    injuring 216 — then the deadliest structural collapse in U.S. history.
    The cause was a connection detail changed during construction: the
    original design hung the walkways from single long rods; the as-built
    version used a two-rod arrangement that doubled the load on the upper
    connection. The structural engineer's office approved the change without
    recalculating the load, and the connection had in fact been overstressed
    from the start. Missouri revoked the responsible engineers' licenses, and
    the case became the foundational engineering-ethics example. The
    capability gap was institutional: nothing required a change to a
    load-bearing connection to be re-analyzed by the engineer of record.
  ],
  sections: (
    // -- Background --
    [
      The Kansas City Hyatt Regency's atrium featured walkways suspended from
      the ceiling, carrying crowds above an open public space where any
      failure would drop directly onto people below. The original engineering
      design hung them from single continuous steel rods, a configuration in
      which each rod carried one walkway's load to the structure above.#cn()
    ],
    // -- What Happened --
    [
      During construction the connection was changed — for ease of assembly,
      to avoid threading a single long rod through both walkways — to a
      two-rod arrangement that effectively doubled the load on the upper
      walkway's connection, and the structural engineer's office approved the
      change without recalculating it, treating an assembly convenience as if
      it carried no structural consequence. On 17 July 1981, during a crowded
      tea dance, the overstressed connection let go; two walkways fell onto
      the atrium floor, killing 114 people and injuring 216 — at the time the
      deadliest structural collapse in U.S. history.#cn()
    ],
    // -- The Investigation --
    [
      The National Bureau of Standards found the as-built connection carried
      roughly twice its intended load and had been inadequate even under the
      building code's requirements — so the original single-rod design had
      itself been marginal, and the field change pushed an already-thin
      connection past failure.#cn() The Missouri licensing board revoked the
      licenses of the responsible engineers, fixing accountability on the
      engineer of record, and the case became the foundational
      engineering-ethics example taught to undergraduates: how a small
      construction change, accepted casually, can turn a design that works
      into one that fails.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability gap was at the institutional review of construction
      changes. Nothing required a change to a load-bearing connection detail
      to be re-analyzed by the engineer of record before it was built — so a
      modification that doubled a critical load passed through the system
      without anyone computing what it did, the absence of a required check
      letting a fatal change look like a routine one. The missing capability
      was change control with the engineer's calculation in the loop, a gate
      that re-derives the consequence before the field accepts the change.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The collapse reshaped how the profession treats shop-drawing review and
      the engineer of record's responsibility for connection design,
      hardening into rule the accountability the failure had exposed, and it
      anchored modern engineering-ethics teaching.#cn() Its lesson
      generalizes well beyond steel: a change that looks trivial at the point
      of assembly can be catastrophic at the point of load, and the only
      defense is a review that re-derives the consequence rather than
      trusting that "it's a small change" — because triviality at assembly is
      no guarantee of triviality under load.
    ],
  ),
  beats: (
    "The Kansas City Hyatt's atrium walkways were originally designed to hang from single continuous steel rods",
    "A two-rod construction change doubled the upper connection's load; on 17 July 1981 the walkways fell, killing 114",
    "The National Bureau of Standards found the as-built connection had carried roughly twice its intended load",
    "Nothing required the engineer of record to re-analyze a load-bearing change before it was built",
    "Missouri revoked engineers' licenses; shop-drawing review and engineer-of-record responsibility hardened into rule",
  ),
  references: (
    [National Bureau of Standards, _Investigation of the Kansas City Hyatt Regency Walkways Collapse_, NBSIR 82-2465 (1982) — the doubled-load connection (quoted).],
    [The 17 July 1981 collapse — 114 killed and 216 injured.],
    [NBSIR 82-2465 (1982) — the as-built connection inadequate even under the building code.],
    [Missouri Board for Architects, Professional Engineers, and Land Surveyors disciplinary records (1986) — the license revocations.],
    [S. Pfatteicher, "'The Hyatt Horror': Failure and Responsibility in American Engineering," _Journal of Performance of Constructed Facilities_ 14(2) (2000).],
    [H. Petroski, _To Engineer Is Human_ (1985) — failure and the engineering process.],
  ),
  quote: [The change in the rod configuration doubled the load on the connection that failed.],
  quote-source: "Paraphrasing the National Bureau of Standards Investigation, NBSIR 82-2465, 1982",
  le-insight: [
    The Hyatt Regency case is the canonical engineering-ethics case
    for institutional review of construction changes. The change
    looked small; the load implication was catastrophic. The
    capability gap was at the review process that should have caught
    the doubled load.
  ],
  lens-approach: [
    LENS uses Hyatt Regency in LEN 5 for change-control deliverables
    and in LEN 7 for the engineering-licensure architecture that
    holds the engineer of record accountable. Studio projects examine
    the change-control deliverable.
  ],
  literature-items: (
    [NBS Report (1982)],
    [Pfatteicher (2000), "'The Hyatt Horror,'" _J. Performance of Constructed Facilities_],
    [Petroski, _To Engineer Is Human_ (1985)],
  ),
  reflection-list: (
    [Identify a "small change during construction" pattern in your domain. What is the institutional review that should accompany it?],
    [Design the change-control deliverable that would have surfaced the doubled-load issue at the Hyatt Regency before construction.],
    [The two-rod change was approved for ease of assembly by an office that never recalculated its load. What in your domain lets a convenience at the point of assembly pass without anyone re-deriving its consequence at the point of load?],
  ),
  approaches: (
    during: (
      [Require that any change to a load-bearing detail be re-analyzed by the engineer of record before it is built, with the calculation in the loop.],
      [Treat an assembly-convenience change as a structural decision, not a routine one, so ease of construction never substitutes for analysis.],
      [Set the original design margin so a connection is not already marginal under code before any field change touches it.],
    ),
    after: (
      [Audit as-built connections against the as-designed intent, catching field substitutions that altered a critical load path.],
      [Route shop-drawing and field changes through a review that re-derives the consequence rather than trusting "it's a small change."],
      [Hold the engineer of record accountable for connection design through construction, so responsibility for the integrated load does not dissolve in the field.],
    ),
  ),
  courses: ("LEN 5", "LEN 7"),
  scale: "big",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-5",
)

// ---- Case 159 — bhopal ----
#case(
  number: 159,
  slug: "bhopal",
  title: "Bhopal",
  year: "1984",
  domains-list: ("industrial",),
  modes-code: "TKNG",
  impact: "≈ 15,000–20,000 killed; ≈ 500,000 injured; worst industrial disaster in history",
  diagram: dgm.dgm-bhopal,
  kind: "failure",
  summary: [
    On the night of 2–3 December 1984, about forty tons of methyl isocyanate
    gas escaped from a Union Carbide pesticide plant in Bhopal, India — the
    worst industrial disaster in history. Thousands died within hours;
    estimates of total deaths run to 15,000–20,000, with roughly half a
    million exposed or injured. Safety systems had been off-line for months,
    the plant was understaffed, and workers were inadequately trained to
    recognize or handle the emergency. Investigators traced the catastrophe
    to operating errors, design flaws, maintenance failures, training
    deficiencies, and cost-cutting that endangered safety. Bhopal catalyzed
    the creation of the U.S. Chemical Safety Board and reshaped
    industrial-safety regulation for decades. It is the largest-magnitude
    capability-and-governance failure on record.
  ],
  sections: (
    // -- Background --
    [
      Union Carbide's pesticide plant in Bhopal, India, stored methyl
      isocyanate (MIC) — an extraordinarily toxic intermediate — in bulk,
      holding a lethal hazard in tanks beside a populated city. By 1984 the
      plant was running under heavy cost pressure: understaffed, with several
      key safety systems out of service for months, and workers inadequately
      trained to handle an MIC emergency or read its warning signs. Each
      economy was individually defensible on a ledger; together they thinned
      every layer of defense the process depended on.#cn()
    ],
    // -- What Happened --
    [
      On the night of 2–3 December 1984, water entered an MIC storage tank
      and triggered a runaway reaction; the safety systems that should have
      contained it were non-operational, so the one event the plant existed to
      prevent met no working barrier on its way out. About forty tons of gas
      vented over the sleeping city. Thousands died within hours; estimates of
      total deaths run to 15,000–20,000, and roughly half a million people
      were exposed or injured — the worst industrial disaster in history, its
      toll set by who happened to be downwind.#cn()
    ],
    // -- The Investigation --
    [
      Investigations found the catastrophe "resulted from operating errors,
      design flaws, maintenance failures, training deficiencies and economy
      measures that endangered safety" — a list with no single villain, which
      is precisely what made it hard to govern.#cn() Human-factors analysis
      placed Bhopal alongside Three Mile Island in its neglect of the human
      element, and the U.S. Chemical Safety Board would later find ineffective
      employee training an underlying cause in nine of its first twenty-three
      chemical-incident investigations — a pattern that traces to Bhopal and
      shows the same gap recurring long after the lesson was available.#cn()
    ],
    // -- The Capability Gap --
    [
      Bhopal is the largest-magnitude capability-and-governance failure on
      record, and a multi-layer one: training, maintenance, design, staffing,
      and oversight had all degraded together, and no layer above the plant
      was accountable for the whole. Because the erosion was spread across
      layers, no single inspection or metric saw it, and each degraded layer
      made the next one matter more. The capability to operate an
      extraordinarily hazardous process safely had been hollowed out by
      cost-cutting, and the governance that should have caught the hollowing
      did not exist to ask whether the whole was still safe.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The disaster reshaped industrial safety worldwide and, in the United
      States, catalyzed the creation of the Chemical Safety Board — an
      INPO-equivalent for industrial chemistry — and the process-safety
      regime that followed, an oversight layer built to own exactly the whole
      that no one had owned at Bhopal.#cn() The book's recurring arc runs
      through Bhopal in its starkest form: a catastrophe forces into being the
      institution the industry should have built before it, at a price no
      institution-building exercise should ever have to cost.
    ],
  ),
  beats: (
    "Union Carbide plant stored bulk MIC under cost pressure; understaffed, safety systems off-line, training thin",
    "Water entered an MIC tank; non-operational defenses let forty tons vent over the sleeping city",
    "Investigators cited operating errors, design flaws, maintenance failures, training deficiencies, economy measures endangering safety",
    "Capability hollowed across training, maintenance, design, staffing, oversight; no layer owned the integrated whole",
    "Reshaped industrial safety worldwide; catalyzed the U.S. Chemical Safety Board and process-safety regime",
  ),
  references: (
    [Union Carbide and government investigation reports (1985) — MIC storage, the disabled safety systems, and plant understaffing.],
    [Accounts of the 2–3 Dec. 1984 release — the contested toll (thousands of immediate deaths; 15,000–20,000 total estimates; ~500,000 exposed). _(Figures vary widely across sources; see AUDIT.)_],
    [New York Times investigation (1985) — "operating errors, design flaws, maintenance failures, training deficiencies and economy measures that endangered safety" (quoted).],
    [N. Meshkati, "Human Factors in Large-Scale Technological Systems' Accidents," _Industrial Crisis Quarterly_ (1991); U.S. CSB training-cause pattern.],
    [P. Shrivastava, _Bhopal: Anatomy of a Crisis_ (1992); C. Perrow, _Normal Accidents_ (1984).],
    [The creation of the U.S. Chemical Safety Board and the post-Bhopal process-safety regime.],
  ),
  quote: [Operating errors, design flaws, maintenance failures, training deficiencies and economy measures that endangered safety.],
  quote-source: "New York Times investigation, 1985",
  le-insight: [
    Bhopal is the largest-magnitude capability-and-governance failure on
    record. It is also the catalyst for the creation of the U.S.
    Chemical Safety Board, an INPO-equivalent for industrial chemistry.
    The pattern that follows nearly every case in this book — diagnose,
    then engineer remediation at scale — runs through Bhopal in
    canonical form.
  ],
  lens-approach: [
    LENS names the specific capability gap, not "governance matters" in
    the abstract: at a transferred and cost-pressured plant, the
    maintenance and operating capability had been hollowed out —
    refrigeration and scrubber safety systems off-line, maintenance
    deferred, staff and training cut, deviance quietly normalized. Each
    eroded layer was individually tolerated, so the failure is a
    multi-layer drift (induced 7.4) that no single inspection or metric
    could see. The teaching point is the multi-layer-drift analysis and
    the treatment of maintenance capability as a deliverable that must be
    sustained, not a ledger line available for trimming.
  ],
  literature-items: (
    [Meshkati (1991), _Industrial Crisis Quarterly_],
    [Shrivastava, _Bhopal: Anatomy of a Crisis_ (1992)],
    [Perrow, _Normal Accidents_ (1984)],
  ),
  reflection-list: (
    [Bhopal produced the CSB. What is the institution your domain has not yet built that a comparable disaster would force into existence?],
    [Identify a plant or facility in your domain that has had safety systems off-line for an extended period. What is the measurement gap that allowed it?],
    [At Bhopal training, maintenance, design, staffing, and oversight all degraded together while each looked acceptable alone. Whose job in your organization is to judge whether the whole is still safe — and what would they have to see to declare that it is not?],
  ),
  approaches: (
    during: (
      [Treat each safety system, staffing level, and training requirement as a non-negotiable layer of defense, not a cost line available for trimming under pressure.],
      [Assign a single accountable owner for the integrated hazard, so degradation spread across layers cannot fall between everyone's responsibilities.],
      [Require that operators be trained to recognize and respond to the specific emergency the process can produce before the process is run with that hazard in bulk.],
    ),
    after: (
      [Audit the whole defense-in-depth posture together rather than layer by layer, since each degraded barrier silently raises the stakes on the next.],
      [Track how long any safety system stays off-line and gate continued operation on its restoration, treating extended downtime as an unacceptable condition.],
      [Sustain an oversight layer — an INPO- or CSB-equivalent — with authority and reach above the individual plant to own the integrated risk.],
    ),
  ),
  courses: ("LEN 5", "LEN 7", "LEN 3",),
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "7.4",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-1, CLO-5",
)

// ---- Case 160 — davis-besse-reactor-head-corrosion ----
#case(
  number: 160,
  slug: "davis-besse-reactor-head-corrosion",
  title: "Davis-Besse Reactor Head Corrosion",
  year: "2002",
  domains-list: ("energy",),
  modes-code: "NKG",
  impact: "Football-sized cavity discovered in the reactor pressure-vessel head; near-miss; ~$600M recovery and extended outage",
  diagram: dgm.dgm-stat(
    "1/4″",
    "of stainless cladding remained",
    micro: "between a 6-inch corrosion cavity and reactor coolant at 2,200 psi",
    caption: "Davis-Besse — the post-TMI near-miss",
  ),
  kind: "failure",
  summary: [
    During a 2002 refueling outage at the Davis-Besse nuclear plant in Ohio,
    workers found a football-sized cavity eaten through six inches of the
    carbon-steel reactor-vessel head by leaking boric acid, leaving only a
    thin layer of stainless cladding between the cavity and reactor coolant
    at 2,200 psi — a serious near-miss for a loss-of-coolant accident. The
    leakage had been visible for years and inspections deferred; FirstEnergy
    had won an NRC deferral of a mandatory inspection to fit its refueling
    schedule, and the NRC's Inspector General later found the decision had
    weighted economics over safety. Davis-Besse is the canonical
    post-Three-Mile-Island near-miss — evidence that even an industry that
    built INPO to engineer safety can let regulator-operator dynamics erode
    it.
  ],
  sections: (
    // -- Background --
    [
      After Three Mile Island, U.S. commercial nuclear power had built —
      through INPO and a strengthened NRC — a reputation for engineering
      safety as a system. Davis-Besse, a pressurized-water reactor in Ohio,
      operated inside that regime, with a known industry-wide hazard: boric
      acid leaking from cracked nozzles could corrode the carbon-steel
      reactor-vessel head.#cn() The hazard was generic and understood across
      the fleet, which is what makes the case sharp: the danger was not a
      surprise mechanism but a recognized one the post-TMI regime was
      precisely supposed to keep inspected and contained.
    ],
    // -- What Happened --
    [
      During a refueling outage in early 2002, workers found a cavity about
      the size of a football eaten clean through six inches of the
      carbon-steel head, leaving only a thin layer of stainless-steel
      cladding between the corrosion and reactor coolant at 2,200 psi. Had
      the cladding given way, the result would have been a medium-break
      loss-of-coolant accident with a badly degraded safety margin.#cn() The
      thin remaining cladding was the entire distance between routine
      operation and the kind of accident the entire regulatory regime existed
      to prevent — a margin measured in a fraction of an inch of unintended
      material rather than in any engineered barrier.
    ],
    // -- The Investigation --
    [
      The boric-acid leakage had been observable for years, and inspections
      had been deferred. FirstEnergy had requested — and the NRC had granted
      — a deferral of a mandatory inspection (NRC Bulletin 2001-01) so it
      would align with the plant's February 2002 outage.#cn() The NRC's
      Office of Inspector General later found the agency had inappropriately
      weighted the utility's economic arguments over safety — its oversight,
      the OIG concluded, had not been adequate to ensure that safety would
      not be compromised.#cn() The deferral was not a covert lapse but a
      documented decision both parties signed off on, which is the unsettling
      part: the erosion happened through the regulator's normal process, in
      the open, agreed to be safe to wait.
    ],
    // -- The Capability Gap --
    [
      Davis-Besse is a near-miss in the dimension above operations: the
      regulator-operator relationship. The same industry that had shown,
      through INPO, that it knew how to engineer safety let a known corrosion
      mechanism go uninspected because inspecting it was inconvenient and
      expensive. Regulatory capture — the regulator adopting the operator's
      economic frame — is a capability failure at the institutional layer
      above the plant.#cn() The plant's own engineering competence was never
      the missing piece; what failed was the independence of the layer meant
      to overrule a utility's schedule when safety required it, and that layer
      had quietly adopted the schedule as its own.
    ],
    // -- Aftermath & Reform --
    [
      INPO and the NRC restructured significant parts of their inspection
      regimes, and reactor-head inspection requirements were tightened across
      the fleet. The lesson pairs with the book's TMI / INPO arc:
      institutional capability is not built once. It erodes if it is not
      re-engineered — and the erosion is quietest where the regulator and the
      regulated agree it is safe to wait.#cn() Tightening the head-inspection
      requirement across the fleet conceded that a mandatory inspection had
      been a real barrier all along — one the deferral process had been
      allowed to treat as negotiable against a refueling schedule.
    ],
  ),
  beats: (
    "Post-TMI U.S. nuclear regime knew the boric-acid corrosion hazard across the reactor fleet",
    "Refueling outage revealed football-sized cavity through the head; only thin cladding held back coolant",
    "FirstEnergy won an NRC inspection deferral; OIG found economics weighted over safety",
    "Plant engineering was sound; independence of the oversight layer above operations had quietly eroded",
    "INPO and NRC tightened head-inspection requirements; institutional capability erodes if not re-engineered",
  ),
  references: (
    [U.S. NRC Office of Inspector General, _NRC's Regulation of Davis-Besse Regarding Damage to the Reactor Vessel Head_ (Case No. 02-03S, December 2002) — the post-TMI regulatory regime and oversight failures.],
    [NRC event records and OIG (2002) — the ~6-inch corrosion cavity, the remaining cladding, and the 2,200-psi coolant margin.],
    [NRC Bulletin 2001-01 and the FirstEnergy inspection-deferral decision aligned to the February 2002 outage.],
    [NRC OIG (2002) — economic arguments weighted over safety, and the finding that NRC oversight had not been adequate to ensure safety (paraphrased).],
    [D. Lochbaum / Union of Concerned Scientists analysis (2002); U.S. GAO, GAO-04-415 (2004).],
    [J. V. Rees, _Hostages of Each Other_ (1994) — INPO and the fragility of institutional safety capability.],
  ),
  quote: [The NRC's actions were not adequate to ensure that safety would not be compromised.],
  quote-source: "Paraphrasing the NRC Office of Inspector General Davis-Besse report, 2002",
  le-insight: [
    Davis-Besse is the case for how regulator-operator dynamics can
    erode the capability of an industry that had previously
    demonstrated, through INPO, that it knew how to engineer safety.
    Regulatory capture is a capability failure at the institutional
    layer above operations.
  ],
  lens-approach: [
    LENS uses Davis-Besse in LEN 7 to study regulatory-capture
    dynamics and in LEN 8 to compare with INPO's earlier success. The
    case is a reminder that institutional capability requires sustained
    re-engineering.
  ],
  literature-items: (
    [NRC OIG Davis-Besse report (2002)],
    [Lochbaum (UCS) analyses],
    [Rees (1994), _Hostages of Each Other_],
  ),
  reflection-list: (
    [Identify a regulator-operator relationship in your domain in which the regulator may be at risk of accepting the operator's economic argument over its own safety judgment. What signal would surface it?],
    [Design the institutional control that would prevent a Davis-Besse-style deferral from being granted.],
    [The erosion here happened openly, through the regulator's normal process. What audit would distinguish a defensible deferral from one in which the regulator has quietly adopted the operator's schedule as its own?],
  ),
  approaches: (
    during: (
      [Make safety-critical inspections of known generic hazards non-deferrable, so a mandatory check cannot be traded against a refueling schedule.],
      [Require any deferral decision to be argued on safety margin alone, with the utility's economic case explicitly excluded from the record.],
      [Preserve the independence of the oversight layer so it can overrule an operator's timeline rather than adopt it.],
    ),
    after: (
      [Audit granted deferrals for whether the regulator reasoned from safety or from the operator's economics, and flag drift toward the latter.],
      [Track observable degradation (like boric-acid leakage) against inspection currency, so a known mechanism cannot run uninspected for years.],
      [Re-engineer institutional safety capability on a cadence, treating post-incident regimes like INPO as maintained, not permanent.],
    ),
  ),
  courses: ("LEN 7", "LEN 8"),
  scale: "big",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT5",
  clo-anchor: "CLO-5",
  evidence-source: "investigation",
)

// ---- Case 161 — texas-city-bp-refinery-explosion ----
#case(
  number: 161,
  slug: "texas-city-bp-refinery-explosion",
  title: "Texas City BP Refinery Explosion",
  year: "2005",
  domains-list: ("energy", "industrial"),
  modes-code: "NTKG",
  impact: "15 killed, 180 injured at BP's Texas City refinery; CSB found systemic safety-culture decay",
  diagram: dgm.dgm-compare(
    "personal\nsafety",
    "best in class",
    "process\nsafety",
    "drifting",
    framing: "the measurement system was blind in the dimension that killed people",
    caption: "Texas City — the wrong measurement, reported as a win",
  ),
  kind: "failure",
  summary: [
    On 23 March 2005 a startup at BP's Texas City refinery overfilled a
    distillation tower — operators were working from instruments that had
    malfunctioned for years — and venting hydrocarbon vapor found an
    ignition source and exploded, killing 15 workers in trailers parked
    beside the unit and injuring 180. The Chemical Safety Board found
    accumulated safety-culture decay, deferred maintenance, and a celebrated
    cost-cutting program. Its central finding reshaped U.S. industrial
    safety: BP's *personal*-safety metrics were among the best in the
    industry, while its *process*-safety state — the integrity of the
    hazardous process itself — had been drifting, unmeasured. Texas City is
    the canonical evidence that the wrong measurement, reported as a win, is
    worse than no measurement at all.
  ],
  sections: (
    // -- Background --
    [
      BP's Texas City refinery, one of the largest in the U.S., had absorbed
      years of deferred maintenance and corporate cost-cutting, with
      instruments and alarms tolerated in a degraded state. On the surface it
      looked safe: its personal-injury rates were among the best in the
      industry.#cn() The strong injury numbers actively reassured the
      organization, because the metric the company trusted most was the one
      that carried no information about the degrading instruments and alarms
      on which a safe startup actually depended.
    ],
    // -- What Happened --
    [
      On 23 March 2005, during a unit startup, operators overfilled a
      distillation tower far past its safe level, working from a level
      indicator that had malfunctioned for years and alarms that did not
      sound. Hydrocarbon vapor vented, drifted across the site, found an
      ignition source — an idling truck — and exploded. Fifteen workers in
      temporary trailers parked beside the unit were killed and about 180
      injured.#cn() Every contributor had been tolerated as routine for years
      — the broken indicator, the silent alarms, the trailers parked beside a
      hazardous unit — so the startup was run blind to a danger the site had
      long since stopped seeing.
    ],
    // -- The Investigation --
    [
      The U.S. Chemical Safety Board's investigation became the most
      influential in the agency's history.#cn() It found accumulated
      safety-culture decay, deferred maintenance, broken instruments
      tolerated as routine, trailers sited dangerously close to a hazardous
      unit, and a cost-cutting program — branded internally as "1000
      Day" and "Forward" — celebrated as a success while it consumed the
      process-safety margin. The CSB drew the distinction that would
      reshape the field: "indicators of personal safety are not
      indicators of process safety."#cn() The Board's force came from
      naming the deeper error as one of measurement: the company had not
      failed to measure but had measured the wrong dimension and then
      trusted the reassuring number it produced. BP's recordable
      personal-injury rate was excellent at the moment of the disaster,
      the front-page metric on which management-incentive plans paid out;
      the process-safety state of the unit that killed fifteen workers
      had no comparable reporting line at all.
    ],
    // -- The Capability Gap --
    [
      Texas City is the foundational evidence that an organization can
      measure the wrong thing and report excellent performance while its real
      capability gap widens. Personal-safety metrics — slips, trips,
      recordable injuries — carried no information about the integrity of the
      hazardous process, so the signal regime was blind in the very dimension
      that killed people. The wrong measurement, trusted, is worse than
      none.#cn() A blank dashboard at least invites suspicion; a confident
      green reading on the wrong axis manufactures false assurance, which is
      why the excellent injury record made the process-safety drift harder to
      see rather than easier.
    ],
    // -- Aftermath & Reform --
    [
      The Baker Panel — chaired by former Secretary of State James Baker,
      commissioned by BP at the CSB's recommendation — reported in 2007
      that the failure was a corporate one, not a Texas City one: a
      safety-culture decay extending across BP's five U.S. refineries,
      driven by cost pressure and management-of-change failures that the
      personal-safety metric system was structurally incapable of
      surfacing. BP invested heavily in process safety afterward, and the
      process-safety/personal-safety distinction — developed in the CCPS
      literature and codified in OSHA's 1992 process-safety-management
      standard — moved into mainstream U.S. industrial regulation after
      2005, with API Recommended Practice 754 (2010) establishing
      process-safety leading and lagging indicators as an industry
      standard. The case's lasting contribution is a measurement lesson:
      count the thing that can kill you, not the thing that is easy to
      count.#cn() That the distinction had been available in the CCPS
      literature and the OSHA standard before the explosion underscores
      the point: the knowledge existed, but the refinery's reporting had
      not been built to carry it upward where the hazard actually lived.
    ],
  ),
  beats: (
    "Deferred maintenance and degraded instruments tolerated; personal-injury rates among the industry's best",
    "Startup overfilled tower past safe level; vented vapor ignited, killing fifteen workers in trailers",
    "CSB drew the distinction reshaping the field; personal-safety indicators are not process-safety indicators",
    "Excellent injury record made process-safety drift harder to see; wrong measurement worse than none",
    "Baker Panel followed; process-safety distinction entered mainstream regulation; count what can kill you",
  ),
  references: (
    [U.S. Chemical Safety and Hazard Investigation Board, _Refinery Explosion and Fire_, Investigation Report 2005-04-I-TX (2007) — the startup, malfunctioning instruments, and 15 killed / 180 injured.],
    [CSB (2007) — accumulated safety-culture decay, deferred maintenance, and the siting of occupied trailers beside a hazardous unit.],
    [CSB (2007) — "indicators of personal safety are not indicators of process safety" (quoted).],
    [_Report of the BP U.S. Refineries Independent Safety Review Panel_ (the Baker Panel, 2007).],
    [A. Hopkins, _Failure to Learn: The BP Texas City Refinery Disaster_ (CCH, 2008).],
    [OSHA Process Safety Management standard (29 CFR 1910.119, 1992) and the CCPS process-safety literature — the personal-vs-process-safety distinction.],
  ),
  quote: [Indicators of personal safety are not indicators of process safety.],
  quote-source: "U.S. Chemical Safety Board, BP Texas City Final Investigation Report, 2007",
  le-insight: [
    Texas City is the foundational evidence that organizations can be
    measuring the wrong thing and reporting excellent performance while
    their actual capability gap widens. Personal-safety metrics had no
    information about process-safety state. The signal regime was
    blind in the dimension that killed people.
  ],
  lens-approach: [
    Texas City is the canonical "measuring the wrong failure mode"
    case (induced 2.1; LENS D4/PT5), with cue/alert design
    (induced 3.1) and change-control (induced 5.4) as alternate
    anchors. LENS uses it in LEN 4 as the wrong-measurement case
    and in LEN 7 for the governance failure that allowed years of
    cost-cutting to be reported as wins. Studio projects design the
    process-safety measurement deliverable BP's executives should
    have been receiving in 2003. Adjacent to Wells Fargo (Case 148)
    at the measurement-system-blind-to-the-real-failure-mode layer.
  ],
  literature-items: (
    [CSB Texas City Report (2007)],
    [Hopkins (2008), _Failure to Learn_],
    [Reason (1997), _Managing the Risks of Organizational Accidents_],
  ),
  reflection-list: (
    [Identify a "personal safety vs. process safety" equivalent in your domain. What capability gap is invisible to the metric your institution currently reports?],
    [Design the process-safety dashboard that BP Texas City's executives should have been receiving in 2003.],
  ),
  approaches: (
    during: (
      [Instrument process-safety state directly — barrier integrity, alarm health, instrument validity — rather than inferring safety from personal-injury rates.],
      [Treat degraded instruments and silent alarms as startup-blocking conditions, not routine items to defer past the next run.],
      [Set facility-siting rules that keep occupied trailers away from hazardous units as a design constraint, not a tolerated exception.],
    ),
    after: (
      [Audit whether the headline metric actually carries information about the hazard that can kill, and retire reassuring numbers that do not.],
      [Track deferred maintenance and tolerated-defect counts as process-safety leading indicators reported to executives.],
      [Verify that the process-vs-personal-safety distinction is wired into the reporting chain so it reaches the layer that funds maintenance.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 3",),
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "5.4",  // alternate framing adopted: change-control lens captures the "1000 Day"/"Forward" cost-cutting programs as program drivers; the personal-safety-vs-process-safety measurement insight (2.1) preserved as the canonical alternate,
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-5",
)

// ---- Case 162 — upper-big-branch-mine-explosion ----
#case(
  number: 162,
  slug: "upper-big-branch-mine-explosion",
  title: "Upper Big Branch Mine Explosion",
  year: "2010",
  domains-list: ("energy", "industrial"),
  modes-code: "NGK",
  impact: "29 killed in West Virginia coal mine; MSHA found systematic falsification of safety records; first U.S. mining-industry CEO convicted of a federal mine-safety charge (misdemeanor)",
  diagram: dgm.dgm-compare(
    "inspector\nlog",
    "compliant",
    "internal\nlog",
    "actual",
    framing: "two sets of records, sustained for years as institutional practice",
    caption: "Upper Big Branch — measurement engineered against the regulator",
  ),
  kind: "failure",
  summary: [
    On 5 April 2010 coal dust and methane ignited at Massey Energy's Upper
    Big Branch mine in West Virginia, killing 29 miners — the worst U.S.
    mine disaster in forty years. Investigators found Massey had kept two
    sets of records: an internal log of actual conditions and a separate,
    clean log for federal inspectors. Foremen were directed to suppress
    methane readings, disable monitors, and falsify pre-shift examinations —
    not as an aberration but as a stable routine across years and management
    layers. CEO Don Blankenship was convicted of a misdemeanor conspiracy to
    violate mine-safety standards — the first U.S. mining CEO criminally
    convicted on such a charge. Upper Big Branch is the dataset's clearest
    case of a measurement system engineered deliberately to defeat the
    regulator.
  ],
  sections: (
    // -- Background --
    [
      Massey Energy's Upper Big Branch mine in West Virginia operated under
      federal safety rules enforced through inspections and the records the
      mine kept. Massey kept two: an internal log of actual conditions, and a
      separate, clean log maintained for the inspectors.#cn() The enforcement
      regime depended entirely on the records reflecting reality, so a second,
      sanitized set of books did not merely break a rule — it disabled the
      very mechanism by which the regulator was supposed to see the mine at
      all.
    ],
    // -- What Happened --
    [
      On 5 April 2010 accumulated coal dust and methane ignited and tore
      through the mine, killing twenty-nine miners — the worst U.S. coal
      disaster in forty years. The conditions that fed the blast — high
      methane, inadequate ventilation, dust not rendered inert — were the
      very ones the clean, inspector-facing records had been built to
      hide.#cn() The records had done their intended work right up to the
      blast: they kept the conditions that killed twenty-nine men out of the
      regulator's view precisely while those conditions were building toward
      ignition.
    ],
    // -- The Investigation --
    [
      MSHA's investigation and a parallel U.S. Department of Justice probe
      found foremen instructed to suppress methane readings, disable
      monitors, and falsify pre-shift examinations.#cn() Massey CEO Don
      Blankenship was eventually convicted of a misdemeanor count of
      conspiring to willfully violate mine-safety standards — the first U.S.
      mining-industry CEO criminally convicted on a mine-safety charge —
      though acquitted on the felony counts.#cn() That the instructions ran
      down to foremen and the conviction reached up to the CEO marks the
      practice as vertical, not local: the deception was operated at the
      working level and conceived above it, spanning the management layers in
      between.
    ],
    // -- The Capability Gap --
    [
      The dual-records architecture was not the work of a few bad foremen; it
      was a stable institutional practice sustained across years and multiple
      management layers. The capability gap was not in the miners but in the
      executive ranks that designed and operated a measurement system
      specifically to defeat the regulator — which makes it the book's
      clearest case of measurement engineered as deception.#cn() Where other
      cases show measurement drifting or pointed at the wrong dimension, here
      it was deliberately constructed to mislead, so no improvement in the
      regulator's reading of the official records could ever have helped — the
      records were the lie.
    ],
    // -- Aftermath & Reform --
    [
      The case anchors the argument that decision-grade evidence needs
      structural protection from the institution that produces it, when that
      institution has a stake in what the evidence says. Blankenship's
      conviction set a marker for corporate-officer accountability — and left
      open the regulator-side question: what architecture would have detected
      two sets of books before twenty-nine people died?#cn() Holding a CEO
      criminally accountable raised the cost of designing such a system, but
      accountability after the fact is not detection; the unanswered question
      is what independent signal could have exposed the divergence between the
      two logs while the mine was still running.
    ],
  ),
  beats: (
    "Massey ran two sets of records; the clean log disabled the regulator's mechanism of sight",
    "Coal dust and methane ignited, killing twenty-nine; the sanitized records hid the conditions",
    "MSHA and DOJ found suppressed readings and disabled monitors; CEO Blankenship convicted of misdemeanor conspiracy",
    "Dual records were stable institutional practice spanning years; measurement engineered as deception",
    "Conviction set accountability marker; unanswered is what independent signal could expose divergence live",
  ),
  references: (
    [U.S. MSHA, _Internal Review of MSHA's Actions at Upper Big Branch_ and the accident investigation (2011–2012) — the dual records and the 29 deaths.],
    [Governor's Independent Investigation Panel (J. McAtee, 2011) — mine conditions: methane, ventilation, and coal-dust inerting.],
    [MSHA and U.S. DOJ findings — suppressed methane readings, disabled monitors, and falsified pre-shift examinations.],
    [_United States v. Blankenship_ (S.D.W. Va., 2015–2016) — the misdemeanor conviction and felony acquittals.],
    [H. Berkes / NPR investigative reporting on Massey Energy.],
    [A. Hopkins, _Disastrous Decisions: The Human and Organisational Causes of the Gulf of Mexico Blowout_ (2012) — corporate decision-making and safety (comparative).],
  ),
  quote: [Massey kept two sets of books — one for inspectors, one for itself.],
  quote-source: "Paraphrasing federal investigators, MSHA Upper Big Branch reviews (2011 – 2012)",
  le-insight: [
    Upper Big Branch is the case for deliberately engineered
    measurement deception. The dual-records practice was not error. It
    was capability design — by management, against the regulator. The
    case anchors the LENS argument that decision-grade evidence
    requires structural protection against the institution that
    produces it having a stake in what it reports.
  ],
  lens-approach: [
    LENS uses Upper Big Branch in LEN 4 as the most explicit case for
    measurement-system protection and in LEN 7 as a corporate-criminal
    accountability case. Studio projects examine what regulator-side
    architecture would have detected the dual-records system earlier.
  ],
  literature-items: (
    [MSHA UBB Internal Review (2012)],
    [Blankenship trial record],
    [Hopkins (2012), _Disastrous Decisions_],
  ),
  reflection-list: (
    [Where in your domain could two sets of records plausibly be kept? What architectural change would make that impossible?],
    [What does it mean for a measurement system to be "structurally protected" from the institution that produces it?],
    [Accountability after the fact is not detection. What independent signal could have exposed the divergence between the two logs while the mine was still running?],
  ),
  approaches: (
    during: (
      [Source safety-critical data from monitors the operator cannot disable or edit, so a clean official log cannot be constructed by hand.],
      [Design measurement so the producing institution has no unilateral control over the record the regulator relies on.],
      [Build cross-checks that compare independent streams, making a single sanitized set of books detectably inconsistent.],
    ),
    after: (
      [Establish whistleblower and anomaly-detection channels that can surface a divergence between actual and reported conditions while operations continue.],
      [Audit for the structural conditions that make dual records possible — operator-controlled monitors, no independent verification — not just for violations.],
      [Pair corporate-officer accountability with detection architecture, since raising the cost of deception does not by itself reveal it in time.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
  scale: "big",
  induced-anchor: "2.2",
  lens-anchor: "D4/PT2",
  clo-anchor: "CLO-4",
  evidence-source: "investigation",
)

// ---- Case 163 — deepwater-horizon ----
#case(
  number: 163,
  slug: "deepwater-horizon",
  title: "Deepwater Horizon",
  year: "2010",
  domains-list: ("energy",),
  modes-code: "TNK",
  impact: "11 killed; largest marine oil spill in U.S. history; $65B+ in damages",
  diagram: dgm.dgm-deepwater,
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "3.1",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4, CLO-5",
  summary: [
    On 20 April 2010 the Macondo well blew out beneath the Deepwater Horizon
    rig in the Gulf of Mexico, killing 11 workers and releasing roughly 4.9
    million barrels of oil — the largest marine spill in U.S. history, and
    more than \$65 billion in eventual costs to BP. The crew had misread the
    negative-pressure test, the primary check of well integrity, and kept
    working a well that was no longer sealed. The National Commission found
    human error, not equipment, the root cause, and judged the failures so
    systematic they cast doubt on the safety culture of the whole industry.
    Every defense — procedure, training, supervision, contractor
    coordination, equipment — had drifted independently until none caught the
    others. It is the book's canonical multi-layer normalization failure.
    Four major investigations — the National Commission, the joint Coast
    Guard / BOEMRE inquiry, the Chemical Safety Board's process-safety
    review, and the Deepwater Horizon Study Group at Berkeley — each
    surfaced a distinct facet of the same drift; the disagreements among
    them are themselves load-bearing for the case.
  ],
  sections: (
    // -- Background --
    [
      The Deepwater Horizon was drilling BP's Macondo exploratory well in the
      Gulf of Mexico when, on 20 April 2010, the well blew out. Eleven
      workers were killed, the rig burned and sank, and roughly 4.9 million
      barrels of oil flowed into the Gulf over 87 days — the largest marine
      oil spill in U.S. history, eventually costing BP more than \$65
      billion.#cn() The well sat at the end of a long chain of contractors and
      schedules, each operating to its own tolerance, so that the 87 days of
      uncontrolled flow stand as a measure not of one mistake but of how far
      the accumulated drift had to be unwound before the Gulf was sealed
      again.
    ],
    // -- What Happened --
    [
      The proximate trigger was a misread safety check. The crew ran a
      negative-pressure test — the primary test of whether the well was
      sealed — got anomalous readings, accepted an incorrect explanation for
      them, and proceeded to displace the heavy drilling mud. The well was
      not sealed; hydrocarbons surged up the riser to the rig and ignited.#cn()
      The anomalous pressure was the well speaking plainly that it remained
      live, but the explanation the crew accepted let the displacement proceed
      on schedule, and once the heavy mud was gone nothing stood between the
      reservoir and the rig but a barrier that had already failed.
    ],
    // -- The Investigation --
    [
      Four major investigations reached the wreck and pulled on different
      threads. The National Commission concluded that human error, not
      mechanical failure, was the root cause, and that the mistakes revealed
      "such systematic failures in risk management that they place in doubt
      the safety culture of the entire industry."#cn() The joint Coast
      Guard / BOEMRE inquiry traced the blowout-preventer failure to a
      buckled drill pipe and a maintenance backlog that the leasing-and-safety
      regulator had not caught. The Chemical Safety Board's separately
      published process-safety review made the load-bearing distinction
      explicit: BP's lost-time-injury rate had been industry-leading on the
      rig, yet personal-safety metrics had no purchase on the catastrophic
      process-safety risks that produced the blowout — the same inversion
      the CSB had already documented at Texas City. Government and academic
      reviews found training that had not covered the well-control situation
      the crew faced, an unclear chain of command, and a cascade of failed
      defenses — "a complex and interlinked series of mechanical failures,
      human judgments, engineering design, operational implementation and
      team interfaces."#cn() That the Commission reached past the rig to the
      whole industry's safety culture marked the failure as structural rather
      than local: the same drift, it judged, was latent wherever the same
      pressures and the same defenses operated unexamined.
    ],
    // -- The Capability Gap --
    [
      Deepwater Horizon is the canonical multi-layer failure: procedure,
      training, supervision, contractor coordination, and equipment had each
      drifted independently until none caught the others. The
      negative-pressure test was the trigger, but the system had been carrying
      accumulated procedural debt for years, and the capability to recognize
      an unsafe well-state was simply not present at the moment it was
      needed.#cn() Because each defense had degraded inside its own
      tolerance, no single review of any one layer would have flagged a
      crisis; the danger lived in the correlation between layers, which is
      precisely the property no individual procedure was designed to watch.
      The cement job, the blowout preventer's design and maintenance, the
      well-control culture before the incident, and the regulator's split
      mandate were each, on their own, a partial story; the failure was
      the alignment among them, and no defense layer had been instrumented
      to read that alignment in time.
    ],
    // -- Aftermath & Reform --
    [
      The blowout drove a restructuring of offshore regulation — the Minerals
      Management Service was broken up and replaced by the Bureau of Safety
      and Environmental Enforcement (BSEE) and the Bureau of Ocean Energy
      Management (BOEM), separating the leasing function from the safety
      function so revenue pressure could no longer erode well-integrity
      enforcement — and drilling-safety and well-integrity rules were
      tightened, while BP paid tens of billions in penalties and settlements.
      The deeper lesson is the normalization one: no single layer failed
      catastrophically on its own; each had quietly drifted within tolerance
      until the day the tolerances lined up.#cn() Splitting the regulator
      conceded that an agency both leasing acreage and policing safety
      carried a built-in conflict, and tightening the well-integrity rules
      conceded that the negative-pressure test had been a real barrier all
      along — one the system had been quietly permitted to misread. The
      hedges survive into the case: the process-safety / personal-safety
      distinction the CSB names is load-bearing and easy to lose; the
      OSHA-vs-EPA enforcement gap on offshore facilities was structural,
      not incidental; and the four investigations did not converge on a
      single cause precisely because the catastrophe had several, all of
      which had been quietly tolerated.
    ],
  ),
  beats: (
    "Macondo blowout killed eleven and unleashed the largest U.S. marine oil spill",
    "Crew misread the negative-pressure test, accepted a wrong explanation, and displaced the mud",
    "Commission found human error so systematic it indicted the whole industry's safety culture",
    "Procedure, training, supervision, contractors, and equipment had drifted independently until none caught the others",
    "Regulator was split, well-integrity rules tightened, and the multi-layer drift named as the deeper lesson",
  ),
  references: (
    [National Commission on the BP Deepwater Horizon Oil Spill, _Deep Water: The Gulf Oil Disaster and the Future of Offshore Drilling_ (Report to the President, 2011) — human error as root cause; the misread negative-pressure test.],
    [National Commission (2011) — the well-control sequence and mud-displacement decision.],
    [National Commission (2011) — "systematic failures in risk management… place in doubt the safety culture of the entire industry" (quoted); U.S. Chemical Safety Board, _Drilling Rig Explosion and Fire at the Macondo Well_ (final volumes, 2014–2016) — process-safety vs. personal-safety distinction and BP's industry-leading lost-time-injury rate as a misleading indicator.],
    [BOEMRE / U.S. Coast Guard Joint Investigation (2011) — blowout-preventer maintenance backlog and chain-of-command findings; National Academies, _Macondo Well Deepwater Horizon Blowout: Lessons for Improving Offshore Drilling Safety_ (2012) — training gaps and the interlinked cascade of failed defenses.],
    [Deepwater Horizon Study Group (UC Berkeley, 2011) final report; N. Leveson, systems-theoretic analysis of Deepwater Horizon — the multi-layer drift and the limits of single-cause framings.],
    [Spill-volume estimates (~4.9 million barrels) and BP cost disclosures (>\$65 billion); the reorganization of the Minerals Management Service into BSEE/BOEM (Secretarial Order 3299, 2010); A. Lustgarten, _Run to Failure: BP and the Making of the Deepwater Horizon Disaster_ (W.W. Norton, 2012) — long-arc account of accumulated procedural debt.],
  ),
  quote: [The immediate causes of the Macondo well blowout can be traced to a series of identifiable mistakes ... that reveal such systematic failures in risk management that they place in doubt the safety culture of the entire industry.],
  quote-source: "National Commission, Deep Water (Report to the President), 2011",
  le-insight: [
    Deepwater Horizon is the canonical multi-layer failure: training,
    procedure, supervision, contractor-coordination, and equipment all
    drifted independently until none caught the others. The
    negative-pressure test was the proximate trigger, but the system as a whole
    had been operating with accumulated procedural debt for years. The
    capability to recognize an unsafe well-state simply was not present
    at the moment it was needed. The CSB's process-safety / personal-safety
    distinction is load-bearing: BP's industry-leading lost-time-injury
    record was a measurement of the wrong construct, and reading it as
    safety was itself a normalization.
  ],
  lens-approach: [
    Deepwater Horizon anchors the cue-and-alert-design competency
    (induced 3.1; LENS D4/PT5): the negative-pressure test was the
    cue, and the cue's ambiguity at the moment of decision was the
    capability gap. LENS uses it in Domain 4 (Test and Evaluation)
    for the cue-design failure and the wrong-construct measurement;
    in Domain 1 (Systems Analysis) for multi-layer drift across
    procedure, training, supervision, contractor coordination, and
    equipment; and in Domain 5 (Navigating Sociotechnical
    Constraints) for the OSHA-vs-EPA enforcement gap and the
    leasing-vs-safety regulator conflict the BSEE/BOEM split conceded.
    Pair with Texas City (Case 161) on the
    process-safety-vs-personal-safety inversion, and with Challenger /
    Columbia (Case 111) on the multi-layer-drift form.
  ],
  literature-items: (
    [National Commission (2011), _Deep Water: The Gulf Oil Disaster_],
    [U.S. Chemical Safety Board, Macondo investigation final volumes (2014–2016)],
    [A. Lustgarten, _Run to Failure_ (2012) — book-length BP/Macondo account],
    [Reason, _Human Error_ (1990) — swiss-cheese model],
    [Vaughan, _The Challenger Launch Decision_ (1996)],
  ),
  reflection-list: (
    [Identify a multi-defense process in your domain. For each layer, what is the procedural debt that has accumulated since it was designed?],
    [The negative-pressure test was the proximate trigger. Design a capability check that would have caught the misinterpretation in real time — and specify what makes the cue unambiguous enough that an anomalous reading stops work rather than inviting a rationalizing explanation.],
    [The Commission judged the drift industry-wide, not rig-specific. What measure in your domain would reveal whether a single failure is a local lapse or a sample from a systemic distribution?],
    [BP's lost-time-injury rate had been industry-leading on the rig. Name the measurement in your domain that is most at risk of being the wrong construct — a personal-safety analog where the catastrophic process-safety risk lives elsewhere — and design the second instrument that would surface the harm the first one cannot see.],
  ),
  approaches: (
    during: (
      [Make the negative-pressure test a hard, instrumented gate: define the pass criteria so an anomalous reading stops work rather than inviting a rationalizing explanation.],
      [Specify a single, unambiguous well-control chain of command across operator and contractors before drilling begins, so no decision falls between organizations.],
      [Build well-control training around the ambiguous small-anomaly case the crew actually faced, not only the textbook blowout.],
    ),
    after: (
      [Audit each defense layer for drift independently — and audit the correlation between them, since the danger lived where tolerances aligned.],
      [Track accumulated procedural debt as a standing metric so silent degradation surfaces before tolerances coincide.],
      [Structurally separate the regulator's leasing and safety roles so revenue pressure cannot erode well-integrity enforcement.],
    ),
  ),
  courses: ("LEN 5", "LEN 8", "LEN 3",),
)

// ---- Case 164 — grenfell-tower ----
#case(
  number: 164,
  slug: "grenfell-tower",
  title: "Grenfell Tower",
  year: "2017",
  domains-list: ("industrial",),
  modes-code: "GTKN",
  impact: "72 killed in a residential tower fire in London; decades of regulatory failure",
  diagram: dgm.dgm-grenfell,
  kind: "failure",
  summary: [
    On 14 June 2017 a fire spread up the exterior of Grenfell Tower, a London
    public-housing block, killing 72 people. It raced because the tower had
    been wrapped in combustible aluminium-composite cladding during a
    refurbishment. The public inquiry found the disaster the culmination of
    decades of failure: cladding firms engaged in "systematic dishonesty,"
    marketing combustible materials as safe; regulators and inspectors missed
    effectively banned products across sixteen site visits; and the London
    Fire Brigade, whose "stay put" advice proved fatal, was unprepared for a
    cladding fire whose risks earlier incidents had already shown. The
    failure spanned manufacturers, regulators, inspectors, and responders —
    each contributing a piece, none owning the whole. Grenfell is the book's
    case for capability failure distributed across many hands.
  ],
  sections: (
    // -- Background --
    [
      Grenfell Tower was a 1970s public-housing block in West London,
      refurbished in 2015–16 with new exterior cladding intended to improve
      the building's appearance and efficiency. The cladding chosen used a
      combustible aluminium-composite material — installed despite safety
      experts' cautions that it was unsuitable for a high-rise, a warning that
      sat between the people who issued it and the people who specified the
      panels without ever stopping the decision.#cn()
    ],
    // -- What Happened --
    [
      On 14 June 2017 a kitchen fire broke out and, instead of staying
      contained as a tower's compartment design assumes, climbed the
      building's exterior on the combustible cladding, wrapping the tower in
      flame within minutes and defeating the very principle the building was
      meant to rely on. Residents, following long-standing "stay put" advice
      premised on that containment, remained in their flats as the route to
      safety closed around them; 72 people died.#cn()
    ],
    // -- The Investigation --
    [
      The Grenfell Tower Inquiry found the fire the culmination of decades of
      failure by central government and every body responsible. Cladding
      companies had engaged in "systematic dishonesty," marketing combustible
      products as safe and corrupting the very test data buyers relied on;
      inspectors visited the site sixteen times and none noticed that
      effectively banned materials were in use, so sixteen chances to catch
      the hazard each passed it by.#cn() The London Fire Brigade was
      unprepared: the risks of rapidly developing cladding fires were known
      from prior incidents — Knowsley Heights, Garnock Court, Shepherd's Court
      — but "this knowledge had not informed firefighting policies, practices
      or training," so each near-miss taught no one whose job was to act on
      it.#cn()
    ],
    // -- The Capability Gap --
    [
      Grenfell is the book's strongest evidence that capability failure can
      be distributed across many actors, each contributing a small piece and
      none accountable for the whole. Manufacturer fraud, regulatory capture,
      inspection incompetence, training gaps, and lost institutional memory
      all converged on one building, and because each actor saw only its
      fragment, each could regard its own part as tolerable. The inquiry
      called it a "grey elephant" — a danger known but ignored — and the
      missing capability was anyone owning the integrated risk that everyone
      could see in part but no one held in full.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The inquiry's Phase 2 report (2024) and the government response (2025)
      drove an overhaul of building-safety regulation, cladding remediation,
      and fire-service doctrine — reforms that, between them, tried to assign
      the ownership the original system had left vacant.#cn() Grenfell's
      lesson is the governance one this chapter turns on: when responsibility
      for a known risk is split across dozens of actors, the risk has, in
      effect, no owner — and a system with no owner for its gravest hazard
      will eventually pay for it, in the currency of the people living
      inside it.
    ],
  ),
  beats: (
    "1970s tower refurbished with combustible aluminium-composite cladding despite expert cautions against high-rise use",
    "Kitchen fire climbed the exterior cladding; stay-put advice held residents inside; seventy-two died",
    "Inquiry found systematic dishonesty by cladding firms; sixteen inspections missed effectively banned products",
    "Distributed capability failure; fraud, capture, incompetence, lost memory converged with no integrated owner",
    "Phase 2 report and government response drove building-safety, cladding, and fire-service reforms",
  ),
  references: (
    [Grenfell Tower Inquiry, _Phase 1 Report_ (2019) — the fire's spread up the cladding and the failure of "stay put."],
    [Grenfell Tower Inquiry, _Phase 2 Report_ (2024) — decades of failure and the combustible-cladding decision.],
    [Phase 2 Report (2024) — cladding firms' "systematic dishonesty" and the inspection failures across sixteen visits.],
    [Phase 1 Report (2019) — London Fire Brigade unpreparedness; "this knowledge had not informed firefighting policies, practices or training" (quoted).],
    [UK Government response to the Grenfell Phase 2 report (2025) — building-safety and fire-service reform.],
    [B. Hutter & M. Power (eds.), _Organizational Encounters with Risk_ (2005) — distributed risk ownership.],
  ),
  quote: [This knowledge had not informed firefighting policies, practices or training.],
  quote-source: "Grenfell Tower Inquiry, Phase 1, 2019",
  le-insight: [
    Grenfell is the strongest evidence in the dataset that capability
    failure can be distributed across many actors, each of whom contributes
    a small piece, none of whom is accountable for the whole. The
    inquiry's "grey elephant" framing — known but ignored — describes a
    pattern that LENS treats as a primary governance problem in any
    high-consequence domain.
  ],
  lens-approach: [
    LENS reads Grenfell through the institutional-memory-of-warnings
    channel (induced 7.4, with a 6.2 secondary): prior cladding-fire
    warnings existed — Lakanal House, the London Fire Brigade's own
    knowledge from earlier incidents — but none ever reached the
    refurbishment and cladding decision that could have acted on them.
    The capability deliverable is the channel that carries a known
    warning to the decision empowered to stop the work; the cladding
    firms' systematic dishonesty was a real aggravator but is the
    secondary thread, not the lesson.
  ],
  literature-items: (
    [Grenfell Tower Inquiry, full reports],
    [Hopkins (2024), public-inquiry analysis of Grenfell],
    [Hutter & Power (2005), _Organizational Encounters with Risk_],
  ),
  reflection-list: (
    [What is the "grey elephant" — the well-known risk that nobody owns — in your domain?],
    [Design the deliverable that forces a single actor to own the integration risk that Grenfell distributed across dozens.],
    [Sixteen inspections, prior fires, and expert cautions each touched a fragment of the Grenfell hazard, yet none assembled it. What mechanism in your domain could gather scattered partial warnings into one picture in front of someone empowered to stop the work?],
  ),
  approaches: (
    during: (
      [Assign one accountable actor to own the building's integrated fire risk end to end, so no hazard can fall into the gaps between manufacturers, inspectors, and responders.],
      [Verify combustible-material claims against independent evidence rather than trusting vendor marketing, treating "systematic dishonesty" as a threat the process must defeat.],
      [Preserve the containment principle the building relies on: gate any cladding choice on whether it keeps a compartment fire from climbing the exterior.],
    ),
    after: (
      [Route every site inspection and near-miss into a shared record so sixteen visits cannot each miss the same banned material in isolation.],
      [Feed prior-incident knowledge into firefighting policy, training, and "stay put" doctrine, so lessons from earlier cladding fires actually change practice.],
      [Sustain a single line of accountability for the integrated hazard through the building's life, not only at refurbishment.],
    ),
  ),
  courses: ("LEN 10", "LEN 7", "LEN 8", "LEN 3",),
  scale: "big",
  induced-anchor: "7.4",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-2, CLO-5",
)

// ---- Case 165 — camp-fire-pg-and-e ----
#case(
  number: 165,
  slug: "camp-fire-pg-and-e",
  title: "Camp Fire / PG&E",
  year: "2018",
  domains-list: ("energy",),
  modes-code: "GNK",
  impact: "85 killed in Paradise, California; deadliest U.S. wildfire in a century; PG&E pleaded guilty to 84 counts of involuntary manslaughter",
  diagram: dgm.dgm-stat(
    "85",
    "killed in Paradise · single transmission hook",
    micro: "infrastructure designed for one climate, operating in another",
    caption: "Camp Fire — capability mismatch under changed conditions",
  ),
  kind: "failure",
  summary: [
    On 8 November 2018 a worn hook on a nearly century-old PG&E transmission
    line failed in high winds and drought, igniting the Camp Fire, which
    swept into the town of Paradise faster than people could evacuate.
    Eighty-five died — the deadliest U.S. wildfire in a century — and PG&E
    later pleaded guilty to 84 counts of involuntary manslaughter.
    Investigators found PG&E had known for years that its transmission
    infrastructure across high-fire-risk areas was deteriorating, and had
    deferred maintenance to fund other priorities, under a regulatory regime
    that let the deferrals continue. Infrastructure built for one climate was
    operating in another. Camp Fire is the book's foundational climate-era
    case for utility capability under changed conditions, and it restructured
    how California regulates utility wildfire risk.
  ],
  sections: (
    // -- Background --
    [
      PG&E operated aging transmission lines across the wildfire-prone
      foothills of Northern California — some hardware approaching a century
      old — in a climate growing hotter and drier than the one the grid had
      been built for, so the operating environment had drifted away from the
      assumptions the infrastructure was designed against.#cn()
    ],
    // -- What Happened --
    [
      On 8 November 2018 a worn C-hook on a PG&E transmission tower failed in
      high winds, dropping a live line and igniting a fire under severe
      drought conditions — a single piece of aged hardware setting off a
      catastrophe the dry, windy conditions stood ready to amplify. The fire
      moved into the town of Paradise faster than its evacuation routes could
      clear it; 85 people died — the deadliest U.S. wildfire in a century.
      PG&E later pleaded guilty to 84 counts of involuntary manslaughter,
      accepting criminal responsibility at a scale rare for a utility.#cn()
    ],
    // -- The Investigation --
    [
      CalFire's investigation and the Butte County District Attorney's report
      found that PG&E had known for years about the deteriorating condition
      of its transmission infrastructure in high-fire-risk areas, and had
      deferred the maintenance to fund other corporate priorities — so the
      hazard was not unknown but a recognized risk repeatedly postponed.#cn()
      The gap was simultaneously at the utility's asset-maintenance decisions
      and at the regulatory architecture that had allowed the deferrals to
      continue, neither side holding a line that would have forced the work.#cn()
    ],
    // -- The Capability Gap --
    [
      Camp Fire is the climate-era case for utility-capability failure under
      changing risk. The infrastructure had been designed and maintained for
      one set of conditions and was operating in another, more dangerous one,
      so the safety margins the original design assumed had quietly eroded as
      the climate shifted beneath them. The capability to update operations —
      inspection cadence, vegetation management, de-energization, replacement —
      to match the actual risk did not exist as an institutional deliverable,
      on either the utility's side or the regulator's, leaving no one tasked
      with closing the widening gap.#cn()
    ],
    // -- Aftermath & Reform --
    [
      PG&E entered bankruptcy under tens of billions in wildfire liability,
      and California restructured how it regulates utility wildfire-risk
      planning — mandatory mitigation plans, inspections, and public-safety
      power shutoffs, turning the deferred work into requirements with teeth
      behind them.#cn() Paired with the Northeast Blackout (Case 146), Camp
      Fire shows utility capability failing in a second way: not a silent
      control-room failure but a slow, known erosion of physical
      infrastructure against a rising hazard the institution declined to fund
      against — a failure measured in years of deferral rather than seconds of
      cascade.
    ],
  ),
  beats: (
    "PG&E ran aging transmission lines across drying foothills, with hardware approaching a century old",
    "A worn C-hook failed in high winds, igniting a fire that overran Paradise; 85 died, the deadliest in a century",
    "CalFire and the Butte County DA found PG&E had known about deteriorating infrastructure and deferred maintenance",
    "Neither utility nor regulator owned the capability to update operations to the actual, hotter, drier risk",
    "PG&E pleaded guilty to 84 manslaughter counts; California mandated wildfire-mitigation plans and power shutoffs",
  ),
  references: (
    [CalFire, _Camp Fire Investigation Report_ (2019) — the worn transmission-line hardware as ignition source.],
    [The Camp Fire record — 85 killed; PG&E's guilty plea to 84 counts of involuntary manslaughter (2020).],
    [Butte County District Attorney, _The Camp Fire Public Report_ (2020) — PG&E's knowledge and deferred maintenance (quoted).],
    [California Public Utilities Commission, Order Instituting Investigation into PG&E (2019) — the regulatory dimension.],
    [PG&E bankruptcy and California wildfire-mitigation reforms (2019– ).],
    [Cf. the Northeast Blackout (Case 146); climate-and-infrastructure literature.],
  ),
  quote: [PG&E knew its equipment was failing in high-fire-risk areas and continued operating without remediation.],
  quote-source: "Paraphrasing the Butte County District Attorney's Camp Fire Report, 2020",
  le-insight: [
    The Camp Fire is the canonical climate-era case for utility-
    capability failure under changing risk conditions. The
    infrastructure was designed for one set of conditions and
    operated in another. The capability to update operations to match
    actual conditions did not exist as an institutional deliverable.
  ],
  lens-approach: [
    LENS uses the Camp Fire in LEN 7 as a legacy-asset case (induced
    7.3): infrastructure designed for one operating regime and run
    unchanged into another as the climate shifted the fire risk
    underneath it. The teaching point is the assumption-migration
    review as a recurring engineered obligation — an asset whose
    safety case rests on conditions that no longer hold needs a
    standing, funded re-verification that the original design
    assumptions still match the world, not a one-time sign-off. It is
    the single taught example of the legacy-asset-aged-past-its-regime
    pattern; the case pairs with the Northeast Blackout (Case 146) as
    utility-capability failures of different kinds.
  ],
  induced-anchor: "7.3",
  lens-anchor: "D5/PT1",
  clo-anchor: "CLO-1, CLO-5",
  literature-items: (
    [CalFire Camp Fire Investigation Report (2019)],
    [Wuebbles et al. (2017), Climate Science Special Report],
    [California PUC wildfire-mitigation orders (2019–present)],
  ),
  reflection-list: (
    [Identify infrastructure in your domain that was designed for one set of conditions and is now operating in another. What is the capability deliverable to bridge the gap?],
    [Design the regulatory architecture that would prevent a utility from deferring critical wildfire-risk maintenance.],
    [PG&E knew its hardware was deteriorating in high-fire-risk areas yet deferred the work for years, and the regulator let it. What in your domain lets a recognized, rising hazard be postponed indefinitely — and who would have to hold the line that forces the spending before the catastrophe?],
  ),
  approaches: (
    during: (
      [Re-derive the infrastructure's safety margins against current conditions, not the historical climate it was designed for, and treat the gap as a hazard to close.],
      [Make updating operations to match rising risk — inspection cadence, vegetation management, replacement — an explicit institutional deliverable with an accountable owner.],
      [Build de-energization and equipment-replacement triggers tied to known high-risk hardware in high-fire-risk areas.],
    ),
    after: (
      [Audit deferred maintenance against the hazard it guards against, so a recognized, deteriorating risk cannot be postponed year after year.],
      [Hold the regulator's line with mandatory mitigation plans, inspections, and penalties, so the cost of resilience is forced before the disaster rather than after.],
      [Monitor aging hardware in the highest-risk corridors as a standing priority, treating a worn critical component as an active threat, not a backlog item.],
    ),
  ),
  courses: ("LEN 7", "LEN 8"),
  scale: "big",
  evidence-source: "investigation",
)

#phase-mark("After the event — response and recovery")

// ---- Case 166 — three-mile-island ----
#case(
  number: 166,
  slug: "three-mile-island",
  title: "Three Mile Island",
  year: "1979",
  domains-list: ("energy",),
  modes-code: "TH",
  impact: "Partial meltdown of a Babcock & Wilcox PWR; minimal off-site dose; most serious accident in U.S. commercial nuclear history; catalyst for industry-wide reform",
  diagram: dgm.dgm-tmi,
  kind: "failure",
  summary: [
    On 28 March 1979 a small cooling fault at Three Mile Island's Unit 2, a
    Babcock & Wilcox reactor near Harrisburg, escalated into a partial core
    meltdown — the most serious accident in U.S. commercial nuclear history.
    A relief valve stuck open while a control-room light reported it closed,
    and operators trained for dramatic design-basis ruptures misread the
    slow, ambiguous cascade and cut the cooling the core needed. A nearly
    identical near-miss at Davis-Besse eighteen months earlier had never
    been propagated to the fleet. The Kemeny Commission concluded the
    fundamental problems were people-related, not equipment. Off-site
    radiation was minimal, but the accident produced a system of reform —
    most enduringly INPO — making it the book's paired example of a failure
    that engineered lasting capability.
  ],
  sections: (
    // -- Background --
    [
      Three Mile Island's Unit 2, a Babcock & Wilcox reactor near
      Harrisburg, was run by operators trained for large, fast,
      design-basis ruptures — not the slow, ambiguous small-break
      sequence that actually came.#cn() It should not have surprised
      anyone: in September 1977 a nearly identical stuck-open relief
      valve had occurred at Davis-Besse, but neither the utility, the
      vendor, nor the NRC grasped its significance or pushed the lesson
      out to the fleet — so the precise sequence that would later
      threaten the core had already been demonstrated and then quietly
      filed away rather than turned into a drill or a warning.#cn() The
      industry's posture rested on a probabilistic argument that
      catastrophic accidents in light-water reactors were vanishingly
      unlikely; that argument had become institutional doctrine, shaping
      what was trained for, what was instrumented, and what near-misses
      were treated as.
    ],
    // -- What Happened --
    [
      On 28 March 1979 a minor secondary-cooling upset tripped the
      reactor; a power-operated relief valve (PORV) opened and then
      stuck open, draining coolant from the primary loop. The
      control-room light reported the *command* to close it, not its
      actual position, so the panel read "closed" while the valve
      stayed open. Misreading the rising pressurizer level, the
      operators throttled back the high-pressure injection the starving
      core depended on — taking the one action that turned a
      recoverable upset into a meltdown, precisely because the
      instrument they trusted was telling them a state that was not
      true. About half the core melted; off-site radiation, as it
      turned out, was minimal, though the public-communication failure
      that accompanied the accident — the contradictory updates from
      utility, state, and federal officials — would shape every nuclear
      emergency-response standard built after.#cn()
    ],
    // -- The Investigation --
    [
      The Kemeny Commission (October 1979) inverted the industry's
      assumptions: "the fundamental problems are people-related
      problems and not equipment problems." The equipment was good
      enough that, but for the human failures, the accident would have
      been minor. The criticism reached past the operators to
      management, the utility, and the NRC — an institution-wide belief
      that serious accidents were effectively impossible, a complacency
      that had shaped training priorities, staffing, and oversight long
      before the relief valve ever stuck, so that the operators
      inherited a posture they had not chosen.#cn() The companion
      Rogovin report for the NRC documented the Davis-Besse precursor
      and the institutional failure to disseminate it, and the
      decades-long literature that followed — Walker's historical
      synthesis, Rees's institutional study — treated TMI as the
      moment U.S. nuclear stopped being able to assume away its own
      human factors.#cn()
    ],
    // -- The Capability Gap --
    [
      The gap was not intelligence but the right capability for the
      event that arrived. Operators drilled on design-basis ruptures
      had no model for an ambiguous cascade, and a control room
      reporting commands rather than states made correct diagnosis
      nearly impossible — the interface and the training were
      mismatched to the failure that actually arrived. Beneath that lay
      a second failure: the capacity to *learn* — to turn Davis-Besse
      into fleet knowledge — had itself broken down, so the industry
      kept making the same diagnosis blind, which is why the case
      resists any single-cause reading.#cn() The third layer was
      institutional: there was no organization whose job was to force
      operating experience from one utility into the training and
      procedures of every other, and no body the NRC trusted to do it
      on the industry's behalf.
    ],
    // -- Aftermath & Reform --
    [
      TMI produced not another accident but a system of reform. Within
      nine months the industry created the Institute of Nuclear Power
      Operations (INPO, December 1979) to set standards, run plant
      evaluations, and force the sharing of operating experience the
      Davis-Besse failure had lacked.#cn() The NRC overhauled licensing
      and inspection: it required plant-referenced simulators, placed
      resident inspectors at every commercial reactor, tied operator
      training and re-qualification to a national standard, and in
      Regulatory Guide 1.97 specified the post-accident instrumentation
      needed to give crews state — not command — information across the
      regimes accidents actually produce, with subsequent control-room
      human-factors standards (NUREG-0700) carrying the principle into
      every new and modernized plant.#cn() Each measure attacked one of
      the failures the accident had exposed: the training gap, the
      broken learning channel, the gulf between what indicators
      displayed and what crews inferred, and the institutional absence
      of a body responsible for cross-fleet learning. TMI is paired
      later with INPO (Case 172) as the book's strongest argument that
      failure can engineer durable industry-level reform.
    ],
  ),
  beats: (
    "Operators trained for design-basis ruptures; a near-identical Davis-Besse precursor was never propagated to the fleet",
    "Relief valve stuck open while panel reported closed; operators throttled injection the core needed",
    "Kemeny Commission concluded fundamental problems were people-related, reaching past operators to management and the NRC",
    "Training mismatched the failure that arrived; capacity to learn from precursors had broken down",
    "INPO formed within nine months; NRC required plant-referenced simulators and tied training to national standards",
  ),
  references: (
    [Kemeny Commission, _Report of the President's Commission on the Accident at Three Mile Island_ (Oct. 1979) — operator training oriented to large design-basis accidents.],
    [M. Rogovin & G. T. Frampton, _Three Mile Island: A Report to the Commissioners and to the Public_, NUREG/CR-1250 (U.S. NRC, 1980) — the September 1977 Davis-Besse stuck-PORV precursor and the failure to disseminate its lessons.],
    [U.S. Nuclear Regulatory Commission, #link("https://www.nrc.gov/reading-rm/doc-collections/fact-sheets/3mile-isle.html")[Backgrounder on the Three Mile Island Accident] — accident sequence, misleading PORV indication, throttled high-pressure injection, ~50% core damage, minimal off-site dose.],
    [Kemeny Commission (1979) — central conclusion that the fundamental problems were people-related, not equipment-related (quoted).],
    [C. Perrow, _Normal Accidents_ (1984); J. Reason, _Human Error_ (1990) — why ambiguous cascades defeat design-basis training and command-not-state interfaces.],
    [#link("https://www.inpo.info/history")[Institute of Nuclear Power Operations, "Our History"] — INPO established December 1979 to set standards and force sharing of operating experience; see also NEI, "Lessons from the 1979 Accident at Three Mile Island."],
    [J. V. Rees, _Hostages of Each Other: The Transformation of Nuclear Safety since Three Mile Island_ (Univ. of Chicago Press, 1994) — TMI as the origin of systematic capability reform.],
    [U.S. Nuclear Regulatory Commission, _Regulatory Guide 1.97_, _Criteria for Accident Monitoring Instrumentation for Nuclear Power Plants_ (revised post-TMI), and NUREG-0700, _Human-System Interface Design Review Guidelines_ — the control-room and post-accident-instrumentation standards that grew out of TMI; see also J. C. Walker, _Three Mile Island: A Nuclear Crisis in Historical Perspective_ (Univ. of California Press, 2004) on the operator-training-and-licensing overhaul.],
  ),
  quote: [The fundamental problems are people-related problems and not equipment problems.],
  quote-source: "Kemeny Commission Report on Three Mile Island, 1979",
  le-insight: [
    TMI is the textbook moment when an industry discovered that its
    capability assumptions did not survive contact with operational
    reality. Training to design-basis events left the operators blind
    to the genuinely ambiguous failures that complex systems actually
    produce; a control room that reported commands rather than states
    made correct diagnosis structurally hard; and the channel that
    should have carried Davis-Besse out to every plant did not exist.
    The reform — INPO, plant-referenced simulators, resident
    inspectors, RG 1.97 instrumentation, NUREG-0700 human-factors
    standards — built the missing infrastructure together rather than
    one piece at a time, which is the case's load-bearing teaching.
  ],
  lens-approach: [
    TMI is the worked example of induced sub-competency 6.1
    (industry-level institution building after catastrophe) and the
    LENS D5/PT4 pairing — Navigating Sociotechnical Constraints applied
    to the institutional architecture a catastrophic-system industry
    needs to learn at scale. Students reconstruct the capability
    requirements that the design-basis training framework missed (LENS
    D1), examine the control-room interface and post-accident
    instrumentation as evidence-architecture problems (LENS D3), and
    design the cross-fleet learning channel whose absence at
    Davis-Besse let TMI happen. The case pairs with INPO (Case 172) as
    the institution-building counterpart to the failure that produced
    it, and with Fitzgerald/McCain (Case 124) as the contrasting failure
    where the missing learning channel was internal to one service
    rather than across a civilian industry. CLO mapping: CLO-5
    (Sociotechnical Constraints) primary for the INPO/NRC institutional
    architecture; CLO-1 (Systems Analysis) for the
    interface-and-training requirements analysis the accident exposed.
  ],
  literature-items: (
    [Walker, _Three Mile Island: A Nuclear Crisis in Historical Perspective_ (2004)],
    [Perrow, _Normal Accidents_ (1984)],
    [Reason, _Human Error_ (1990)],
  ),
  reflection-list: (
    [TMI operators were trained for worst-case scenarios but failed in an ambiguous one. What is the equivalent training gap in your domain between the trained case and the messy case?],
    [The Kemeny Commission called the human element the dominant risk. What evidence would you need to demonstrate the same conclusion in your own domain?],
    [The Davis-Besse precursor occurred eighteen months earlier but never reached the operators who needed it. Design the channel in your domain that would turn a near-miss at one site into a drill at every other before the second event arrives.],
  ),
  approaches: (
    during: (
      [Design control-room indicators to report actual system state, not the command issued, so operators diagnose from truth rather than intent.],
      [Build training around ambiguous, slow-onset cascades — not only dramatic design-basis ruptures — using simulators that mirror the operators' own plant.],
      [Engineer a learning channel that propagates precursor events across the fleet as drills, so a near-miss at one site becomes practiced knowledge everywhere.],
    ),
    after: (
      [Audit whether near-misses are actually reaching operators as changed procedure and training, and force-share operating experience through an independent standards body (the INPO model).],
      [Sustain plant-referenced simulators and resident oversight so diagnostic skill on ambiguous transients does not decay back to textbook drills.],
      [Monitor the institutional assumption that serious accidents are impossible, and treat its persistence as a measurable readiness risk.],
    ),
  ),
  courses: ("LEN 1", "LEN 5"),
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "3.1",
  lens-anchor: "D3/PT4",
  clo-anchor: "CLO-3, CLO-1",
)

// ---- Case 167 — sago-mine-disaster ----
#case(
  number: 167,
  slug: "sago-mine-disaster",
  title: "Sago Mine Disaster",
  year: "2006",
  domains-list: ("energy", "industrial"),
  modes-code: "NTK",
  impact: "12 killed in a West Virginia coal-mine explosion; emergency-response failures compounded the initial event; MINER Act of 2006",
  diagram: dgm.dgm-cascade(
    ("seal design", "emergency plan", "self-rescue training", "communications"),
    outcome: "marginal in each dimension; combined inadequacy in the one minute that mattered",
    caption: "Sago — cumulative inadequacy across multiple defenses",
  ),
  kind: "failure",
  summary: [
    On 2 January 2006 lightning ignited methane in a sealed area of the Sago
    Mine in West Virginia; the seals failed, the explosion propagated, and
    thirteen miners were trapped behind it. Twelve died of carbon-monoxide
    poisoning over the hours that followed; only one, Randal McCloy Jr.,
    survived. A communications failure briefly told the nation — and the
    families — that twelve had been found alive, when the opposite was true.
    The MSHA investigation found seals built to an inadequate design, an
    inadequate emergency plan, and lapsed self-rescue training — each
    marginal for years, all inadequate together in the one window that
    mattered. Sago drove the MINER Act of 2006, strengthening mine-rescue
    requirements and mandating underground refuge chambers.
  ],
  sections: (
    // -- Background --
    [
      The Sago Mine in West Virginia had sealed off a mined-out area behind
      barriers built to a design that had not kept pace with current
      standards. Its emergency plan and the miners' self-rescue training
      were, like the seals, marginally adequate — good enough on an ordinary
      day, untested against the worst one.#cn() On any ordinary day each of
      these margins was invisible precisely because it was never tested at its
      edge, so the mine could run for years with every defense quietly thin
      and nothing to signal that the thinness was accumulating.
    ],
    // -- What Happened --
    [
      On 2 January 2006 lightning ignited methane in the sealed area. The
      seals failed and the explosion propagated, trapping thirteen miners
      behind it. Over the hours that followed twelve died of carbon-monoxide
      poisoning; only one, Randal McCloy Jr., survived. Compounding the
      tragedy, garbled communications briefly told the nation and the
      families that twelve had been found alive — the opposite of the
      truth.#cn() The hours of carbon-monoxide exposure were exactly the
      window the emergency plan and self-rescue provisions existed to bridge,
      so the marginal defenses failed in the one stretch of time their
      adequacy was supposed to guarantee.
    ],
    // -- The Investigation --
    [
      The Mine Safety and Health Administration found the seals had been
      built to a design that did not meet then-current standards, the mine's
      emergency plan was inadequate, and self-rescue training had not been
      kept current.#cn() The miners "faced multiple equipment, training, and
      emergency-response shortcomings that compounded their initial
      trapping" — no single failure decisive, the combination lethal.#cn()
      That each shortcoming was real but none was solely decisive is the
      finding's whole weight: an investigation looking for one nameable cause
      would have found several survivable ones and missed the lethal way they
      combined.
    ],
    // -- The Capability Gap --
    [
      Sago is the cumulative-inadequacy pattern. Each defense — seal design,
      emergency plan, self-rescue training, communications — was marginally
      adequate for years and recoverable on its own; none was the dramatic,
      nameable cause. They failed together in the only minute that mattered,
      which is exactly how normalization works: a system drifts within
      tolerance on several fronts until the tolerances align.#cn() The hazard
      lived not in any one margin but in their simultaneity, which no
      inspection of a single defense could surface, because each looked
      acceptable on its own and the danger was a property only of the set.
    ],
    // -- Aftermath & Reform --
    [
      Sago drove the federal MINER Act of 2006, which strengthened
      mine-rescue requirements, tightened seal standards, improved
      communications and tracking, and mandated breathable-air refuge
      chambers underground.#cn() The reform addressed the combination rather
      than a single cause — the right response to a failure whose lesson is
      that marginal-everywhere is itself a system-level hazard, even when no
      single margin looks alarming. The refuge-chamber mandate in particular
      conceded that survivable air over those carbon-monoxide hours had to be
      engineered in advance, not left to the chain of marginal defenses that
      failed together at Sago.
    ],
  ),
  beats: (
    "Seals, emergency plan, and self-rescue training were each marginally adequate, never tested at edge",
    "Lightning ignited methane; seals failed; twelve miners died of carbon-monoxide poisoning over hours",
    "MSHA found inadequate seal design, plan, and lapsed training; combined shortcomings proved lethal together",
    "No single failure was decisive; marginal-everywhere is itself a system-level hazard",
    "MINER Act strengthened rescue requirements; mandated refuge chambers; reform addressed the combination, not one cause",
  ),
  references: (
    [U.S. Mine Safety and Health Administration, _Report of Investigation: Sago Mine_ (2007) — the seal design, emergency plan, and self-rescue training.],
    [MSHA (2007) — the explosion sequence: lightning ignition in the sealed area, seal failure, twelve dead and one survivor.],
    [MSHA (2007) — the inadequate seal design, emergency plan, and lapsed self-rescue training.],
    [MSHA (2007) — "multiple equipment, training, and emergency-response shortcomings that compounded their initial trapping" (quoted).],
    [West Virginia state Sago investigation (2006) — the false "twelve alive" miscommunication and the families' ordeal.],
    [Mine Improvement and New Emergency Response (MINER) Act of 2006, Pub. L. 109-236 — refuge chambers and rescue requirements.],
  ),
  quote: [The miners faced multiple equipment, training, and emergency-response shortcomings that compounded their initial trapping.],
  quote-source: "Mine Safety and Health Administration, Sago Investigation Report, 2007",
  le-insight: [
    Sago is the case for the cumulative inadequacy pattern in
    industrial accidents. No single failure caused the disaster. Each
    failure on its own would have been recoverable. The combination
    was not, and the combination had been the operating condition of
    the mine for years.
  ],
  lens-approach: [
    LENS uses Sago in LEN 5 for cumulative-inadequacy analysis and in
    LEN 8 for the legislative-reform arc that followed. Studio projects
    compare Sago and Upper Big Branch (Case 162) as paired cases.
  ],
  literature-items: (
    [MSHA Sago report (2007)],
    [Hopkins, _Failure to Learn_ (2008)],
    [West Virginia governor's independent investigation],
  ),
  reflection-list: (
    [Identify a process in your domain that is marginally adequate across multiple parameters. What is the cumulative failure mode?],
    [Sago produced the MINER Act. What legislative change would your domain require if a Sago-equivalent occurred?],
    [The danger was a property of the set of defenses, not any single one. What assessment in your domain would evaluate defenses jointly rather than one at a time?],
  ),
  approaches: (
    during: (
      [Assess defenses jointly against the worst-case window, since each margin looks acceptable alone and the hazard lives in their simultaneity.],
      [Engineer a guaranteed survivable resource — like breathable air over the rescue window — rather than relying on a chain of marginal provisions.],
      [Keep seal design, emergency plans, and self-rescue training current to standards as a coupled set, not as independently deferred items.],
    ),
    after: (
      [Track how many defenses sit at the margin simultaneously, treating marginal-everywhere as a measurable system-level hazard.],
      [Stress-test the emergency response against the exact window it exists to bridge, so untested margins are exposed before an event.],
      [Investigate near-misses for combined inadequacy, not a single nameable cause, so survivable contributors are not dismissed individually.],
    ),
  ),
  courses: ("LEN 5", "LEN 8"),
  scale: "big",
  induced-anchor: "7.4",
  lens-anchor: "D1/PT1",
  clo-anchor: "CLO-1",
  evidence-source: "investigation",
)

// ---- Case 168 — fukushima-daiichi ----
#case(
  number: 168,
  slug: "fukushima-daiichi",
  title: "Fukushima Daiichi",
  year: "2011",
  domains-list: ("energy",),
  modes-code: "NGK",
  impact: "Three reactor meltdowns following the Tōhoku earthquake and tsunami; ~160,000 people displaced; cleanup projected at $200B+",
  diagram: dgm.dgm-stat(
    "3 of 6",
    "reactors melted down",
    micro: "tsunami exceeded design basis the institutional evidence had already questioned",
    caption: "Fukushima Daiichi — \"made in Japan,\" per the Diet inquiry",
  ),
  kind: "failure",
  summary: [
    On 11 March 2011 the Tōhoku earthquake and the tsunami it spawned
    overwhelmed TEPCO's Fukushima Daiichi plant: the wave topped the
    seawall, flooded the emergency diesel generators, and cut cooling to the
    reactors. Three of the six cores melted down and hydrogen explosions
    spread radioactive material, displacing some 160,000 people; cleanup is
    projected above \$200 billion. The independent Diet commission (NAIIC),
    chaired by Kiyoshi Kurokawa, called it a disaster "made in Japan" — the
    product of regulatory capture and a culture reluctant to challenge
    utility assumptions; evidence of large historical tsunamis had been
    discussed internally but never forced a change to the seawall. Other
    reviews stressed under-estimated external hazards. Fukushima is the
    post-TMI evidence that safety institutions like INPO must be deliberately
    built, not assumed.
  ],
  sections: (
    // -- Background --
    [
      Fukushima Daiichi sat on Japan's northeast coast, its reactors and
      their backup diesel generators protected by a seawall sized to a
      design-basis tsunami. Evidence of much larger historical waves — back
      to the ninth-century Jōgan event — had been discussed in TEPCO's own
      internal assessments, but no institutional path turned that evidence
      into a higher seawall.#cn() The gap was not in the data but in the
      conversion: the larger-wave evidence lived inside the utility's own
      assessments, where it could be discussed indefinitely without ever
      becoming a binding requirement to raise the wall it implicated.
    ],
    // -- What Happened --
    [
      On 11 March 2011 the Tōhoku earthquake struck and the tsunami that
      followed topped the seawall. The plant lost off-site power; the diesel
      generators meant to keep cooling running were inundated. Cooling
      failed, three of the six reactor cores melted down, and hydrogen
      explosions spread radioactive material across the region. Some 160,000
      people were displaced, and cleanup is projected above \$200 billion.#cn()
      Siting the backup generators where a wave that overtopped the seawall
      would reach them tied the entire cooling chain to that single design
      assumption, so once the wall was topped the loss of cooling followed
      almost mechanically from the layout itself.
    ],
    // -- The Investigation --
    [
      The independent investigation chaired by Kiyoshi Kurokawa for the
      National Diet (NAIIC) called the accident "made in Japan" — the product
      of regulatory capture, deference to authority, and an institutional
      reluctance to challenge utility assumptions.#cn() Other major reviews —
      the Hatamura government commission (2012) and the IAEA Director
      General's report (2015) — emphasized the under-estimation of external
      hazards and defense-in-depth assumptions over the cultural critique;
      the Kurokawa framing is the most-cited but not the only consensus
      reading.#cn() That serious independent reviews diverged on emphasis —
      cultural capture versus under-estimated external hazards — is itself
      part of the record, and the book treats Kurokawa's as the most-cited
      reading rather than the settled one.
    ],
    // -- The Capability Gap --
    [
      Fukushima is the post-TMI case showing that the INPO pattern (Case 172)
      is not self-executing. The U.S. industry built INPO to force operating
      discipline and shared learning; the Japanese industry did not build an
      equivalent with the independence to override a utility's optimistic
      assumptions. The internal tsunami evidence existed; the institutional
      capability to act on it did not.#cn() Evidence without an independent
      body empowered to act on it is inert: the larger-wave assessments could
      be acknowledged and shelved indefinitely because no institution stood
      outside the utility with the standing to convert them into a mandated
      change.
    ],
    // -- Aftermath & Reform --
    [
      The accident drove a restructuring of Japanese nuclear regulation — a
      new, more independent Nuclear Regulation Authority — and a global
      re-examination of external-hazard margins and station-blackout
      protection. Paired with INPO and Davis-Besse, it triangulates the
      book's claim: sustained nuclear-safety capability is an institution
      that must be deliberately built and rebuilt, not a property a competent
      industry simply has.#cn() Creating a more independent regulator after
      the fact conceded the structural diagnosis directly: the missing piece
      had been an authority sitting outside the utility, and the reform was
      precisely to build the independence that the pre-2011 arrangement had
      lacked.
    ],
  ),
  beats: (
    "Internal TEPCO assessments discussed larger historical waves; evidence never forced a higher seawall",
    "Tōhoku tsunami topped the seawall; inundated generators; three cores melted down, displacing thousands",
    "Kurokawa's NAIIC called it made in Japan; Hatamura and IAEA emphasized under-estimated external hazards",
    "Internal hazard evidence existed; Japan lacked an INPO-equivalent with independence to act on it",
    "New independent Nuclear Regulation Authority created; capability institutions must be deliberately built, not assumed",
  ),
  references: (
    [National Diet of Japan Fukushima Nuclear Accident Independent Investigation Commission (NAIIC; K. Kurokawa, chair), _Report_ (2012) — the internal tsunami evidence and the regulatory-capture finding.],
    [NAIIC (2012) — the accident sequence: seawall overtopping, generator inundation, and three core meltdowns.],
    [NAIIC (2012) — the "made in Japan" cultural and regulatory-capture conclusion (quoted).],
    [Investigation Committee on the Accident (Hatamura government commission, 2012); IAEA Director General, _The Fukushima Daiichi Accident_ (2015) — external-hazard under-estimation.],
    [C. Lochbaum, E. Lyman & S. Stranahan, _Fukushima: The Story of a Nuclear Disaster_ (2014).],
    [Y. Funabashi & K. Kitazawa, _Fukushima in Review_ (2012); cf. INPO (Case 172) and Davis-Besse (Case 160).],
  ),
  quote: [What must be admitted — very painfully — is that this was a disaster \"Made in Japan.\"],
  quote-source: "National Diet of Japan Fukushima Nuclear Accident Independent Investigation Commission, 2012",
  le-insight: [
    Fukushima is the post-TMI case that establishes that the INPO
    pattern (Case 172) is not self-executing. The U.S. industry built
    INPO; the Japanese industry did not. The cost of the difference,
    paid in 2011, is the strongest available evidence that capability
    institutions must be deliberately built, not assumed.
  ],
  lens-approach: [
    LENS uses Fukushima in LEN 8 as the cross-cultural comparison to
    INPO and in LEN 7 for the regulator-utility dynamics study. The
    case is paired with INPO and Davis-Besse to triangulate what
    sustained nuclear-safety capability requires.
  ],
  literature-items: (
    [Kurokawa Commission Report (2012)],
    [Lochbaum, Lyman & Stranahan (2014)],
    [Funabashi & Kitazawa (2012), _Fukushima in Review_],
  ),
  reflection-list: (
    [Identify a regulatory regime in your domain whose effectiveness depends on a cultural willingness to challenge authority. What if the culture changes?],
    [INPO is U.S.-specific. Design the structural features that would have to be in place for a comparable institution to function in a different national context.],
    [The tsunami evidence was discussed but never converted into a binding requirement. What institutional path in your domain turns an acknowledged hazard into a mandated change rather than a shelved assessment?],
  ),
  approaches: (
    during: (
      [Build an institutional path that converts an acknowledged hazard (like the larger-wave evidence) into a binding design requirement, not a discussable assessment.],
      [Site critical backups so a single overtopped barrier cannot disable the whole cooling chain at once.],
      [Establish an oversight body independent of the utility, with standing to override optimistic in-house assumptions about external hazards.],
    ),
    after: (
      [Audit whether internally held hazard evidence has actually driven design changes, treating shelved assessments as an open finding.],
      [Re-examine external-hazard margins on a cadence rather than freezing them at a design-basis figure set once.],
      [Verify that the regulator retains the independence to act, since institutional safety capability erodes if it is assumed rather than rebuilt.],
    ),
  ),
  courses: ("LEN 7", "LEN 8", "LEN 3",),
  scale: "big",
  induced-anchor: "7.4",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-5",
  evidence-source: "investigation",
)

// ---- Case 169 — crowdstrike-falcon-outage ----
#case(
  number: 169,
  slug: "crowdstrike-falcon-outage",
  title: "CrowdStrike Falcon Outage",
  year: "2024",
  domains-list: ("tech",),
  modes-code: "DKG",
  impact: "8.5 million Windows machines crashed; airlines, hospitals, broadcasters, and banks affected simultaneously; largest IT outage on record",
  diagram: dgm.dgm-stat(
    "8.5M",
    "machines · single configuration file",
    micro: "content treated differently from code in the deployment pipeline",
    caption: "CrowdStrike — the cost of a category boundary in a deployment",
  ),
  kind: "failure",
  summary: [
    On 19 July 2024 CrowdStrike pushed a content update to its Falcon
    endpoint sensor that contained a logic error in a small configuration
    file. On every Windows machine running the affected sensor, the file
    drove the kernel driver to crash, looping the blue screen of death and
    requiring hands-on recovery of each device. Roughly 8.5 million machines
    went down at once — across hospitals, airlines, banks, broadcasters, and
    governments worldwide — the largest IT outage on record. CrowdStrike's
    post-incident review found the content update had not been put through
    the same automated testing or staged rollout as code: the pipeline
    treated "content" as a lesser category than "code," though the operating
    system did not. CrowdStrike is the cybersecurity-vendor analog of Knight
    Capital, six orders of magnitude larger.
  ],
  sections: (
    // -- Background --
    [
      CrowdStrike's Falcon sensor runs deep inside Windows — in the kernel —
      to detect threats, and it updates constantly: not only its code, but
      "content," the rapid-response detection configuration pushed to
      customers continuously. The deployment pipeline treated that content as
      a lighter category than code, with less testing and no staged
      rollout.#cn() The distinction had a logic: content shipped fast and
      often, precisely so the sensor could keep pace with new threats, and
      slowing it down with full code-grade testing seemed to defeat its
      purpose. That speed was the very reason the safety gate was lowered on
      the artifact that could still crash a kernel.
    ],
    // -- What Happened --
    [
      On 19 July 2024 a content update contained a logic error in a small
      configuration file. On every Windows machine running the affected
      sensor, the file drove the kernel driver to read out of bounds and
      crash, looping the blue screen of death and requiring manual recovery
      of each device. Roughly 8.5 million machines failed at once —
      hospitals, airlines, banks, broadcasters, and governments worldwide —
      the largest IT outage on record.#cn() Because the file went to every
      affected sensor simultaneously with no staged rollout, there was no
      first wave to catch the fault and no blast radius short of the whole
      install base; the requirement for hands-on recovery of each device
      turned a single bad push into weeks of physical labor across the world.
    ],
    // -- The Investigation --
    [
      CrowdStrike's own post-incident review found the content update had
      not been put through the same depth of testing and staged rollout as
      its code releases. The fault was not exotic: a category boundary in the
      deployment pipeline — content treated as safer than code — that did not
      match the operational reality, in which a bad content file could crash
      the kernel exactly as bad code could. The boundary was an organizational
      convenience rather than a technical truth, and the kernel, which executes
      whatever reaches it, recognized no such distinction at all.#cn()
    ],
    // -- The Capability Gap --
    [
      The missing capability was the recognition that, for deployment safety,
      content *is* code: anything that can crash the kernel must clear the
      same testing and staged-rollout gates. CrowdStrike's customers had
      trusted the vendor's deployment safety, and that trust turned out to be
      load-bearing for the operation of a large slice of the global economy
      on a single morning. Each customer had implicitly outsourced a safety
      gate to the vendor's pipeline, so the one missing gate inside that
      pipeline was multiplied across every institution that ran the sensor,
      with no independent check standing between a bad push and their kernels.#cn()
    ],
    // -- Aftermath & Reform --
    [
      CrowdStrike moved content updates onto staged rollouts and stronger
      validation, Microsoft revisited kernel-level access for security
      vendors, and the episode prompted scrutiny of concentration risk in
      endpoint security.#cn() Each response targets a different layer of the
      same failure: staged rollout limits the blast radius of any one push,
      reconsidering kernel access limits how much a vendor fault can break,
      and the concentration-risk scrutiny acknowledges that a single vendor
      had become a shared point of failure for much of the economy. It is the
      cybersecurity-vendor analog of Knight
      Capital (Case 143) — an unverified deployment to a system wired into
      critical operations — at a scale six orders of magnitude larger.
    ],
  ),
  beats: (
    "Falcon sensor runs in Windows kernel; pipeline treated rapid content updates as lighter than code",
    "Faulty content config crashed kernel on 8.5 million machines simultaneously; no staged rollout existed",
    "Post-incident review found content lacked code-grade testing; category boundary did not match operational reality",
    "For deployment safety content is code; customers had outsourced a missing safety gate to the vendor",
    "Staged rollouts, kernel-access review, and scrutiny of vendor concentration risk followed the outage",
  ),
  references: (
    [CrowdStrike, _Falcon Content Update: Preliminary Post-Incident Review_ (July 2024) — the content-vs-code testing and staged-rollout gap (paraphrased).],
    [CrowdStrike PIR (2024) — the configuration-file logic error, the kernel crash, and ~8.5 million affected Windows machines.],
    [Microsoft resilient-engineering analyses and Windows kernel-access review (2024).],
    [U.S. GAO post-incident analysis and Senate Homeland Security hearings (2024) — concentration risk in endpoint security.],
    [B. Beyer et al. (eds.), _Site Reliability Engineering_ (2016) — staged rollout and canarying; cf. Knight Capital (Case 143).],
  ),
  quote: [Our content configuration update process did not include the same depth of testing and staged rollout as our code releases.],
  quote-source: "Paraphrasing CrowdStrike Preliminary Post-Incident Review, July 2024",
  le-insight: [
    The CrowdStrike outage is the live case for what happens when a
    deployment safety architecture treats categories of artifact
    differently than the operational system actually does. Content
    looked operationally identical to code; it was treated as
    different in the deployment pipeline. The mismatch became the
    largest IT outage in history.
  ],
  lens-approach: [
    LENS uses CrowdStrike in LEN 5 as a categories-and-boundaries
    capability case and in LEN 2 for the vendor-customer trust
    architecture: customers trusted CrowdStrike's deployment safety;
    that trust was load-bearing for the operation of the global
    economy on a single day.
  ],
  literature-items: (
    [CrowdStrike Post-Incident Review (2024)],
    [Allspaw, post-mortem culture literature],
    [Beyer et al. (eds.), _Site Reliability Engineering_ (2016)],
  ),
  reflection-list: (
    [Identify a vendor relationship in your domain whose deployment-safety practice your institution does not audit. What would the audit reveal?],
    [Design the cross-vendor staged-rollout protocol that should be standard for endpoint security software.],
    [CrowdStrike's pipeline treated content as safer than code, but the kernel did not. What category boundary in one of your systems is an organizational convenience that the operational reality ignores — and what would it cost if it broke?],
  ),
  approaches: (
    during: (
      [Define deployment-safety gates by operational impact, not artifact category: anything that can crash the kernel clears the same testing and staged rollout as code.],
      [Make staged rollout mandatory for every update, so a faulty push is caught by a first wave instead of reaching the entire install base at once.],
      [Design for recovery, not just prevention — assume a bad update will ship and ensure it does not require hands-on intervention at every device.],
    ),
    after: (
      [Audit vendor deployment-safety practices your institution depends on, rather than treating the outsourced safety gate as trustworthy by default.],
      [Map and reduce concentration risk so a single vendor fault cannot take down a large slice of critical operations simultaneously.],
      [Run post-incident reviews that interrogate category boundaries in the pipeline and feed the findings back into validation gates.],
    ),
  ),
  courses: ("LEN 5", "LEN 2"),
  scale: "big",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-5",
  evidence-source: "investigation",
)
