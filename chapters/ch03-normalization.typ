// ============================================================
// Chapter 3 — Normalization of Deviance
// "Known Risks Became Routine"
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#chapter-divider(
  part: "Part I — The Failure Modes",
  number: "3",
  title: "The Slow Erosion",
  subtitle: "Known risks became routine.",
  epigraph: [NASA culture allowed flying with flaws when problems were defined as normal and routine.],
  epigraph-source: "Columbia Accident Investigation Board, 2003",
)

#case(
  number: 4,
  title: "Deepwater Horizon",
  year: "2010",
  domains-list: ("energy",),
  modes-code: "TNK",
  impact: "11 killed; largest marine oil spill in U.S. history; $65B+ in damages",
  diagram: dgm.dgm-deepwater,
  kind: "failure",
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
      The National Commission concluded that human error, not mechanical
      failure, was the root cause, and that the mistakes revealed "such
      systematic failures in risk management that they place in doubt the
      safety culture of the entire industry."#cn() Government and academic
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
      drifted independently until none caught the others. The negative-
      pressure test was the trigger, but the system had been carrying
      accumulated procedural debt for years, and the capability to recognize
      an unsafe well-state was simply not present at the moment it was
      needed.#cn() Because each defense had degraded inside its own
      tolerance, no single review of any one layer would have flagged a
      crisis; the danger lived in the correlation between layers, which is
      precisely the property no individual procedure was designed to watch.
    ],
    // -- Aftermath & Reform --
    [
      The blowout drove a restructuring of offshore regulation — the Minerals
      Management Service was broken up and replaced, and drilling-safety and
      well-integrity rules were tightened — while BP paid tens of billions in
      penalties and settlements. The deeper lesson is the normalization one:
      no single layer failed catastrophically on its own; each had quietly
      drifted within tolerance until the day the tolerances lined up.#cn()
      Splitting the regulator conceded that an agency both leasing acreage and
      policing safety carried a built-in conflict, and tightening the
      well-integrity rules conceded that the negative-pressure test had been a
      real barrier all along — one the system had been quietly permitted to
      misread.
    ],
  ),
  references: (
    [National Commission on the BP Deepwater Horizon Oil Spill, _Deep Water: The Gulf Oil Disaster and the Future of Offshore Drilling_ (Report to the President, 2011) — human error as root cause; the misread negative-pressure test.],
    [National Commission (2011) — the well-control sequence and mud-displacement decision.],
    [National Commission (2011) — "systematic failures in risk management… place in doubt the safety culture of the entire industry" (quoted).],
    [BOEMRE / U.S. Coast Guard Joint Investigation (2011) and National Academies study of deepwater-drilling safety — training gaps, unclear chain of command, and the interlinked cascade of failed defenses.],
    [National Commission (2011); N. Leveson, systems-theoretic analysis of Deepwater Horizon — the multi-layer drift.],
    [Spill-volume estimates (~4.9 million barrels) and BP cost disclosures (>\$65 billion); the reorganization of the Minerals Management Service into BSEE/BOEM.],
  ),
  quote: [The immediate causes of the Macondo well blowout can be traced to a series of identifiable mistakes ... that reveal such systematic failures in risk management that they place in doubt the safety culture of the entire industry.],
  quote-source: "National Commission, Deep Water (Report to the President), 2011",
  le-insight: [
    Deepwater Horizon is the canonical multi-layer failure: training,
    procedure, supervision, contractor-coordination, and equipment all
    drifted independently until none caught the others. The negative-
    pressure test was the proximate trigger, but the system as a whole
    had been operating with accumulated procedural debt for years. The
    capability to recognize an unsafe well-state simply was not present
    at the moment it was needed.
  ],
  lens-approach: [
    LENS uses Deepwater Horizon in LEN 5 as the canonical case for
    multi-layer capability analysis. Students reconstruct each defense
    layer, identify the deviation accumulated in each, and design the
    measurement system that would have surfaced the drift before April
    20, 2010. LEN 8 examines contractor-coordination as a capability
    boundary problem.
  ],
  literature-items: (
    [National Commission (2011), _Deep Water: The Gulf Oil Disaster_],
    [Reason, _Human Error_ (1990) — swiss-cheese model],
    [Vaughan, _The Challenger Launch Decision_ (1996)],
  ),
  reflection-list: (
    [Identify a multi-defense process in your domain. For each layer, what is the procedural debt that has accumulated since it was designed?],
    [The negative-pressure test was the proximate trigger. Design a capability check that would have caught the misinterpretation in real time.],
    [The Commission judged the drift industry-wide, not rig-specific. What measure in your domain would reveal whether a single failure is a local lapse or a sample from a systemic distribution?],
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

#case(
  number: 6,
  title: "Challenger & Columbia",
  year: "1986 / 2003",
  domains-list: ("space",),
  modes-code: "NKG",
  impact: "14 astronauts killed (7 per accident); 17 years between identical organizational pathologies",
  diagram: dgm.dgm-shuttle,
  kind: "failure",
  summary: [
    NASA lost two Space Shuttle crews to the same organizational pathology
    seventeen years apart: Challenger in 1986, when O-ring seals failed in
    cold weather, and Columbia in 2003, when foam debris breached the wing's
    thermal protection — fourteen astronauts in all. Both flaws had been
    seen repeatedly and accepted as routine. Sociologist Diane Vaughan named
    the mechanism "normalization of deviance" from the Challenger
    investigation; the Columbia Accident Investigation Board found the same
    culture intact and concluded NASA's organizational culture had as much
    to do with the accident as the foam. The pair is the strongest
    single-institution evidence that culture is an engineerable property of
    a system — and that a pathology diagnosed but left unrepaired will recur,
    at the same cost.
  ],
  sections: (
    // -- Background --
    [
      The Space Shuttle flew with two flaws its engineers knew about. The
      solid-rocket booster joints sealed with O-rings that stiffened in cold;
      the external tank shed foam insulation that struck the orbiter on
      ascent. Both had appeared on flight after flight without catastrophe,
      and both were progressively reclassified from hazards to accepted,
      "routine" features of flying.#cn() Each survived flight became evidence
      that the flaw was tolerable, so the very absence of disaster fed the
      reclassification — the safety margin redefined downward not by decision
      but by the accumulating habit of getting away with it.
    ],
    // -- What Happened --
    [
      On 28 January 1986 Challenger launched on an unusually cold morning; an
      O-ring failed to seal, and the vehicle broke apart 73 seconds after
      liftoff, killing all seven aboard. Seventeen years later, on 1 February
      2003, foam that had struck Columbia's wing on ascent had opened a
      breach in its thermal protection; the orbiter disintegrated on reentry,
      killing its seven.#cn() Both flaws were the ones engineers had already
      flagged and the institution had already filed as routine, so each
      accident was less a surprise than the arrival of a bill the system had
      decided, repeatedly, not to pay.
    ],
    // -- The Investigation --
    [
      The Rogers Commission traced Challenger to the O-ring and to a launch
      decision that overrode engineers' cold-weather warnings.#cn() Seventeen
      years later the Columbia Accident Investigation Board found the same
      patterns intact — flying with flaws defined as routine, and a structure
      that suppressed the upward flow of safety concerns — and concluded that
      "the NASA organizational culture had as much to do with this accident
      as the foam."#cn() That the same board found the same structure
      seventeen years on is the case's sharpest point: the first reform had
      fixed the hardware and the schedule pressure but not the mechanism by
      which a flaw becomes redefined as acceptable.
    ],
    // -- The Capability Gap --
    [
      Diane Vaughan's "normalization of deviance," developed from Challenger,
      named the mechanism: deviations from the safety baseline become
      acceptable through production pressure, weak communication, and habit,
      one small step at a time. Columbia validated the concept against its
      author's intent. The pathology had been diagnosed in 1986 and never
      engineered away — which is the point: culture is a system property, and
      a diagnosis without a remediation decays.#cn() Naming the mechanism did
      not arrest it, because a name lives in a report while the production
      pressure and the suppressed warnings live in the daily flow of work,
      where they kept doing what they had always done.
    ],
    // -- Aftermath & Reform --
    [
      Each accident produced reform — the Rogers Commission's redesign of the
      booster joint, the CAIB's call to treat culture as a safety variable
      and rebuild independent technical authority — and the Shuttle was
      retired in 2011. The pair stands as the book's strongest evidence that
      organizational culture is engineerable, and that leaving it unengineered
      is a choice with a recurring, lethal cost.#cn() The CAIB's insistence on
      independent technical authority conceded the deeper lesson the
      booster-joint redesign alone had missed in 1986: the upward path for a
      dissenting engineer is itself a piece of safety hardware, and one that
      has to be rebuilt and defended rather than assumed.
    ],
  ),
  references: (
    [Rogers Commission, _Report of the Presidential Commission on the Space Shuttle Challenger Accident_ (1986) — the O-ring failure and the cold-weather launch decision.],
    [Columbia Accident Investigation Board, _Report Vol. I_ (2003) — the foam strike and the recurrence of the cultural pattern.],
    [CAIB (2003) — "the NASA organizational culture had as much to do with this accident as the foam" (quoted).],
    [D. Vaughan, _The Challenger Launch Decision: Risky Technology, Culture, and Deviance at NASA_ (Univ. of Chicago Press, 1996) — normalization of deviance.],
    [Rogers Commission (1986) and CAIB (2003) — the suppressed upward flow of safety information across both accidents.],
    [W. Starbuck & M. Farjoun (eds.), _Organization at the Limit: Lessons from the Columbia Disaster_ (2005); the Shuttle's 2011 retirement.],
  ),
  quote: [These repeating patterns mean that flawed practices embedded in NASA's organizational system continued for 20 years and made substantial contributions to both accidents.],
  quote-source: "Columbia Accident Investigation Board, 2003",
  le-insight: [
    Challenger/Columbia is the strongest documentary evidence that
    organizational culture is an engineerable property of a system, and
    that diagnoses without engineered remediations decay. The same
    pathology, twice, seventeen years apart, in the same institution,
    with the same human cost — and with the diagnosis already on the
    record. Capability engineering treats culture as a deliverable.
  ],
  lens-approach: [
    LENS uses the pair in LEN 1 to introduce normalization of deviance as
    a systems concept, in LEN 8 to examine why organizational learning
    failed across a 17-year interval, and in LEN 7 to address the
    governance failure that allowed a known pathology to persist.
  ],
  literature-items: (
    [Vaughan (1996), _The Challenger Launch Decision_],
    [Starbuck & Farjoun (eds.) _Organization at the Limit: Lessons from the Columbia Disaster_ (2005)],
    [Weick & Sutcliffe, _Managing the Unexpected_ (2007)],
  ),
  reflection-list: (
    [What is the equivalent "diagnosed but not repaired" pathology in your domain? What evidence would close the loop?],
    [The CAIB called culture engineerable. Sketch the engineering deliverable for the cultural intervention you would propose in your domain — including its measurement signal.],
    [Seventeen years separated two accidents with the same root pathology. What mechanism in your organization would verify that a past diagnosis has actually been remediated rather than merely documented?],
  ),
  approaches: (
    during: (
      [Hold known flaws as open hazards with explicit owners, so a clean flight cannot silently reclassify a deviation as routine.],
      [Build independent technical authority into the launch decision, giving dissenting engineers a path that production pressure cannot override.],
      [Define the safety baseline quantitatively at design time, so any drift below it is a flagged change rather than an unremarked habit.],
    ),
    after: (
      [Re-audit every diagnosed-but-unrepaired pathology on a fixed cadence, verifying remediation in practice rather than on paper.],
      [Track the upward flow of safety concerns as a measured signal — count and resolve dissents — so suppression becomes visible.],
      [Treat the cultural mechanism, not just the hardware fix, as the deliverable that must persist between major incidents.],
    ),
  ),
  courses: ("LEN 1", "LEN 7", "LEN 8", "LEN 3",),
)

#case(
  number: 11,
  title: "V-22 Osprey",
  year: "1991 – present",
  domains-list: ("defense",),
  modes-code: "THN",
  impact: "~65 killed across ~17 hull-loss accidents since 1991; serious-mishap rate above comparable fleets (GAO-26-108905, 2025); some fixes stretch to the 2030s",
  diagram: dgm.dgm-osprey,
  kind: "failure",
  summary: [
    The V-22 Osprey — the tiltrotor flown by the Marines, Air Force, and
    Navy — has had about 17 hull-loss accidents and roughly 65 fatalities
    since 1991, including 19 Marines in a single 2000 test crash and 8
    airmen off Yakushima, Japan, in 2023. The Yakushima crash traced to
    cracks in a transmission gear (a flaw in the X-53 steel alloy) and a
    pilot's decision to keep flying through warnings. In December 2025, GAO
    and a NAVAIR review found the V-22's joint program office had failed for
    years to assess and address mounting safety risks, that serious-mishap
    rates exceeded comparable fleets, and that some fixes stretch toward
    2034. The Osprey is the steady-state form of normalization of deviance:
    a documented, reviewed shortfall accepted as the cost of flying the
    airframe.
  ],
  sections: (
    // -- Background --
    [
      The V-22 Osprey tilts its rotors to take off like a helicopter and
      cruise like a turboprop — an ambitious capability shared awkwardly
      across three services and a joint program office. Since development
      began in the 1980s it has suffered about 17 hull-loss accidents and
      roughly 65 fatalities, including 19 Marines in a single crash during
      2000 testing.#cn() The same configuration that makes the tiltrotor
      uniquely useful makes it uniquely demanding to sustain, and the joint
      arrangement diffused ownership of that burden across three services that
      each carried the airframe but none of which fully owned its safety
      trajectory.
    ],
    // -- What Happened --
    [
      On 29 November 2023 a CV-22B broke up off Yakushima, Japan, killing
      all eight airmen aboard. The Air Force traced it to cracks in a
      transmission gear — rooted in metallic inclusions in the X-53 steel
      alloy used for the gears — and to the pilot's decision to keep flying
      despite warnings to land. The crash grounded Osprey fleets worldwide
      for months.#cn() The materiel flaw and the human decision to press on
      through warnings were the same paired factors earlier reviews had named,
      so Yakushima read less as a novel failure than as one more draw from a
      pattern the program had already characterized but not closed.
    ],
    // -- The Investigation --
    [
      In December 2025 the Government Accountability Office and a NAVAIR
      review reported together that the joint program office had failed for
      years to adequately assess and address mounting safety risks, even as
      service members died.#cn() Serious-mishap rates generally exceeded
      those of comparable Navy and Air Force fixed- and rotary-wing fleets
      from FY2015 to FY2024 and spiked in 2023–2024; a gearbox flaw dating to
      2006 was not evaluated until 2024, and full fixes for some issues are
      not expected until the 2030s.#cn() An eighteen-year gap between a
      gearbox flaw arising and its being evaluated is the timescale of
      normalization made literal: the deviation persisted long enough to
      become the airframe's accepted background condition rather than an open
      defect demanding action.
    ],
    // -- The Capability Gap --
    [
      The V-22 is the steady-state form of normalization of deviance. The
      shortfall is not unknown — it has been documented across successive
      reviews — but the system built to remediate it has accepted its own
      incompleteness as the cost of operating the airframe. Each crash
      carries a familiar set of factors (materiel failure, human error, weak
      coordination across the three services), and each is followed by
      adjustments that do not converge.#cn() Convergence is the missing
      property: three services adjusting in parallel, none holding final
      authority over the whole, produce motion without resolution, so the
      mishap rate stays elevated while every individual response looks
      reasonable on its own terms.
    ],
    // -- Aftermath & Reform --
    [
      Groundings, gear-inspection regimes, and a redesign program have
      followed, with full fixes for some gearbox issues stretching toward
      2034. The case is instructive precisely because the problem is
      recognized: a known, reviewed capability gap can persist for decades
      when each incident is treated as an isolated event rather than a sample
      from a distribution the program keeps drawing from.#cn() Fixes that
      stretch toward 2034 mean the airframe will keep flying for years inside
      a margin already judged worse than comparable fleets — the program in
      effect electing to operate the distribution it has been told it is
      drawing fatalities from.
    ],
  ),
  references: (
    [#link("https://en.wikipedia.org/wiki/Accidents_and_incidents_involving_the_V-22_Osprey")[Compiled V-22 accident record] — ~17 hull losses and ~65 fatalities since 1991, including the 2000 Marana test crash (19 Marines).],
    [U.S. Air Force Accident Investigation Board findings, via #link("https://news.usni.org/2024/08/02/investigation-into-2023-u-s-air-force-cv-22b-osprey-crash-off-japan")[USNI News] (Aug. 2024) — the 29 Nov. 2023 Yakushima CV-22B crash: transmission-gear cracks (X-53 inclusions) and continued flight despite warnings.],
    [U.S. GAO, _Osprey Aircraft: Additional Oversight and Information Sharing Would Improve Safety Efforts_, #link("https://files.gao.gov/reports/GAO-26-108905/index.html")[GAO-26-108905] (Dec. 2025) — the joint program office's failure to assess and address risks.],
    [GAO-26-108905 (2025) — serious-mishap rates exceeding comparable Navy/Air Force fleets (FY2015–FY2024); the 2006 gearbox flaw evaluated only in 2024; fixes into the 2030s.],
    [NAVAIR independent review of the V-22 (Dec. 2025) — materiel and cross-service-coordination factors and unresolved catastrophic parts issues.],
    [#link("https://news.usni.org/2025/12/12/navy-and-gao-reports-v-22-osprey-program")[USNI News, V-22 program coverage] (2024–2025).],
  ),
  quote: [Materiel failure and human-error factors were the most frequently cited causal factors in serious Osprey accidents.],
  quote-source: "Paraphrasing the NAVAIR Independent Review of the V-22, 2025",
  le-insight: [
    V-22 demonstrates the steady-state version of normalization of
    deviance: a platform whose shortfall has been documented, reviewed,
    and acted on across multiple administrations without producing
    sustained improvement. The capability gap has itself been normalized.
    Each incident is treated as an event rather than as a sample from a
    distribution the program continues to draw from.
  ],
  lens-approach: [
    LENS treats V-22 in LEN 5 as a multi-service capability-coordination
    problem and in LEN 8 as a study in long-cycle organizational
    learning failure. Students design the evidence system that would
    distinguish a true reduction in mishap rate from the natural
    variation of a chronically marginal platform.
  ],
  literature-items: (
    [Rasmussen (1997), "Risk management in a dynamic society"],
    [Weick, "Organizational Culture as a Source of High Reliability" (1987)],
    [Snook, _Friendly Fire_ (2000)],
  ),
  reflection-list: (
    [Identify a platform or process in your domain that has been operating in a documented shortfall for years. What measurement would have to change for the shortfall to become unacceptable?],
    [The V-22's three services do not converge on remediation. Design the governance structure that would force convergence.],
    [A gearbox flaw went eighteen years between arising and being evaluated. What mechanism in your domain converts a long-tolerated defect back into an open item that demands action?],
  ),
  approaches: (
    during: (
      [Assign one accountable owner for the airframe's safety trajectory rather than diffusing it across three services with no final authority.],
      [Treat each known materiel flaw as an open defect on a clock, so a problem like the gearbox cannot quietly become accepted background condition.],
      [Define an absolute mishap-rate threshold against comparable fleets that triggers mandatory action, not merely review.],
    ),
    after: (
      [Aggregate incidents as samples from one distribution, not isolated events, so the elevated rate itself becomes the thing being managed.],
      [Audit whether parallel service-level adjustments are actually converging on a lower rate, and escalate when they are not.],
      [Gate continued operation on remediation progress, so fixes stretching toward 2034 do not silently license years of degraded margin.],
    ),
  ),
  courses: ("LEN 5", "LEN 8", "LEN 3",),
)
