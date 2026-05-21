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
  body: [
    The National Commission concluded that "human error, rather than
    mechanical failings, was the root cause." The rig crew misinterpreted
    the negative pressure test — the primary safety check for well
    integrity — and proceeded with displacement operations on a well that
    was no longer sealed. The blowout that followed killed eleven men and
    released roughly five million barrels of oil into the Gulf of Mexico.

    BP and Transocean training programs had not sufficiently addressed
    well-control situations like the negative-pressure test and the
    displacement procedures the crew actually executed. The National
    Academies workshop found "a lack of preparation and experience and an
    unclear chain of command prevented key decisions at every step."
    Every one of Deepwater Horizon's many defenses failed — some were
    never engaged, some were engaged too late, and some did not work as
    designed.

    The investigators described the accident as "a complex and interlinked
    series of mechanical failures, human judgments, engineering design,
    operational implementation and team interfaces." Each layer of
    defense had drifted, over time, from its specification.
  ],
  quote: [Human error, rather than mechanical failings, was the root cause.],
  quote-source: "Paraphrasing the National Commission report and contemporaneous coverage (ENR), 2011",
  sources-list: (
    [National Commission on the BP Deepwater Horizon Oil Spill (2011)],
    [BOEMRE/Coast Guard Joint Investigation Report (2011)],
    [National Academies Workshop on Deepwater Drilling Safety (2018)],
    [Leveson analysis of Deepwater Horizon],
  ),
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
    20, 2010. LEN 9 examines contractor-coordination as a capability
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
  ),
  courses: ("LEN 5", "LEN 9"),
)

#case(
  number: 6,
  title: "Challenger & Columbia",
  year: "1986 / 2003",
  domains-list: ("aviation",),
  modes-code: "NKG",
  impact: "14 astronauts killed (7 per accident); 17 years between identical organizational pathologies",
  diagram: dgm.dgm-shuttle,
  body: [
    The Columbia Accident Investigation Board concluded plainly: "The NASA
    organizational culture had as much to do with this accident as the
    foam." Seventeen years after Challenger, CAIB found the same cultural
    patterns intact: a Shuttle Program in which flying with flaws was
    permissible when the flaws were defined as routine, and in which the
    organizational structure suppressed the upward flow of critical
    information.

    Diane Vaughan's concept of "normalization of deviance" — where
    deviations from safety protocols become ingrained through production
    pressures, poor communication, and workplace culture — was developed
    from the Challenger investigation and then validated, against the
    intent of its author, by Columbia. The CAIB report borrowed Vaughan's
    framing because it remained the most precise available description
    of the same pathology repeated. Two crews paid the price for an
    organizational learning failure that was diagnosed in 1986 and not
    repaired.

    The accidents are paired in this book because they constitute the
    strongest single-institution evidence that culture is engineerable —
    and that leaving it unengineered is a choice with consequences.
  ],
  quote: [These repeating patterns mean that flawed practices embedded in NASA's organizational system continued for 20 years and made substantial contributions to both accidents.],
  quote-source: "Columbia Accident Investigation Board, 2003",
  sources-list: (
    [Rogers Commission, _Report on the Space Shuttle Challenger Accident_ (1986)],
    [Columbia Accident Investigation Board, _CAIB Report Vol. I_ (2003)],
    [Vaughan, _The Challenger Launch Decision_ (1996)],
    [ScienceDirect, organizational analysis of NASA culture],
  ),
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
    a systems concept, in LEN 9 to examine why organizational learning
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
  ),
  courses: ("LEN 1", "LEN 7", "LEN 9"),
)

#case(
  number: 11,
  title: "V-22 Osprey",
  year: "1991 – present",
  domains-list: ("defense",),
  modes-code: "THN",
  impact: "62 killed across 16 hull-loss incidents (through 2023); mission-capable rates ~50–60%",
  diagram: dgm.dgm-osprey,
  body: [
    A 2025 NAVAIR review and accompanying GAO report found that "materiel
    failure and human-error factors were the most frequently cited causal
    factors in serious Osprey accidents." The 2000 Marana crash that
    killed nineteen Marines occurred during testing in which the program
    had cut corners on trials to keep pace with schedule. Poorly
    understood maintenance procedures and lack of communication across
    the three services operating the platform were identified as
    persistent factors. Mission-capable rates remain at half of design.

    The V-22 is structurally instructive because the platform has
    survived for thirty years in a state of normalized capability
    shortfall. The shortfall has been documented in successive GAO
    reports without producing the readiness regime that the platform
    requires. Each crash carries the same set of contributing factors;
    each is followed by service-level adjustments that do not converge
    across the three services that fly it.

    The capability problem here is not that no one knows it exists. It is
    that the system designed to remediate it has accepted its own
    incompleteness as the cost of operating the airframe at all.
  ],
  quote: [Materiel failure and human-error factors were the most frequently cited causal factors in serious Osprey accidents.],
  quote-source: "Paraphrasing the NAVAIR Independent Safety Review of the V-22, 2025",
  sources-list: (
    [NAVAIR Independent Safety Review of the V-22 (2025)],
    [GAO V-22 Sustainment Report (2025)],
    [USNI News, V-22 mishap coverage (2023–2025)],
    [PBS NewsHour V-22 investigative reporting],
  ),
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
    problem and in LEN 9 as a study in long-cycle organizational
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
  ),
  courses: ("LEN 5", "LEN 9"),
)
