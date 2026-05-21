// ============================================================
// Chapter 1 — Training Gap
// "They Weren't Taught What They Needed to Know"
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#chapter-divider(
  part: "Part I — The Failure Modes",
  number: "1",
  title: "Training Gap",
  subtitle: "They weren't taught what they needed to know.",
  epigraph: [Individuals and groups of individuals could no longer recognize that the processes designed to identify and communicate readiness were no longer working.],
  epigraph-source: "Paraphrasing the U.S. Navy Strategic Readiness Review, 2017",
)

#case(
  number: 1,
  title: "USS Fitzgerald & USS John S. McCain",
  year: "2017",
  domains-list: ("defense",),
  modes-code: "TKN",
  impact: "17 sailors killed in two preventable destroyer collisions in the Western Pacific",
  diagram: dgm.dgm-fitzgerald,
  body: [
    The Navy's own review found both collisions "preventable" and "avoidable."
    Fitzgerald's crew did not understand fundamental rules of maritime
    transit or how to use their own radar systems. McCain's watch team was
    not properly trained to operate the ship-control console. A steering
    casualty that should have been resolved in seconds led instead to a
    collision because no one on the bridge knew the correct procedure.

    Root causes traced to years of deferred training and institutional
    knowledge loss. In 2003 the Navy cut the 16-week Surface Warfare Officers
    School course and replaced it with CD-ROM self-study. Operational tempo
    overrode readiness requirements for more than a decade. By 2017 the
    Western Pacific routinely operated ships whose crews were
    under-qualified for the conditions in which they sailed.

    The Strategic Readiness Review put the institutional failure plainly:
    risks accumulated over time and did so insidiously. The dynamic
    environment normalized to the point where individuals and groups could
    no longer recognize that the processes designed to surface the gap had
    themselves stopped working.
  ],
  quote: [The risks that were taken in the Western Pacific accumulated over time and did so insidiously.],
  quote-source: "U.S. Navy Strategic Readiness Review, 2017",
  sources-list: (
    [USN Comprehensive Review of Surface Force Incidents (2017)],
    [Strategic Readiness Review (2017); NTSB Marine Accident Reports MAR-20/01 (USS McCain, case DCA17PM029) and MAR-20/02 (USS Fitzgerald, case DCA17PM018)],
    [GAO-20-154; GAO-21-168],
    [USNI News, Fitzgerald & McCain coverage (2017–2020)],
  ),
  le-insight: [
    Fitzgerald/McCain is the canonical Training Gap case because the gap was
    invisible from inside the system. Operational tempo and self-study
    "training" combined to produce a fleet whose stated readiness and actual
    readiness diverged for more than a decade. Eight sailors died on
    Fitzgerald; nine on McCain. The cost of the divergence was paid in lives
    long after it could have been measured in dollars.
  ],
  lens-approach: [
    LENS treats this as the worked example of LEN 5 (Human Capability
    Analysis and Requirements) interacting with LEN 4 (Evidence and
    Measurement). Students reconstruct the capability requirements for
    underway watchstanding from operational analysis and design the
    evidence system that would have surfaced the gap before the
    collisions. LEN 8 covers the institutional dynamics of deferred
    training.
  ],
  literature-items: (
    [GAO-20-154, _Navy Readiness_ (2020)],
    [Rasmussen (1997), "Risk management in a dynamic society"],
    [Snook, _Friendly Fire_ (2000)],
  ),
  reflection-list: (
    [The Navy replaced 16 weeks of classroom and simulator training with CD-ROM self-study in 2003. What measurement would have detected the capability shortfall before 2017?],
    [Strategic Readiness Review found the readiness-reporting system had itself stopped working. Design a capability-evidence pipeline that would not normalize its own gaps.],
  ),
  courses: ("LEN 1", "LEN 5", "LEN 8", "LEN 3",),
)

#case(
  number: 3,
  title: "Air France Flight 447",
  year: "2009",
  domains-list: ("aviation",),
  modes-code: "TH",
  impact: "228 killed; the deadliest accident in Air France's history",
  diagram: dgm.dgm-af447,
  body: [
    When the pitot tubes iced over at cruise altitude over the South
    Atlantic and the autopilot disconnected, the crew had to hand-fly the
    aircraft in conditions for which they had never trained. The pilot
    flying pulled the nose up — the opposite of correct stall recovery — and
    held that input almost continuously until the aircraft hit the ocean
    three and a half minutes later. The stall warning sounded for
    fifty-four seconds. The crew never identified the stall.

    Air France trained pilots in stall recovery at low altitude but not at
    cruise altitude. Simulators of the era could not faithfully reproduce
    aircraft behavior outside the normal flight envelope, so training
    focused on prevention rather than recovery. The BEA concluded:
    "The combination of the warning system ergonomics, the conditions
    under which pilots are trained and exposed to stalls during their
    professional and recurrent training, did not result in reasonably
    reliable expected behaviour patterns."

    The training matched one operational context. It did not match the one
    that killed two hundred and twenty-eight people.
  ],
  quote: [The crew never understood that they were stalling and consequently never applied a recovery manoeuvre.],
  quote-source: "BEA, Final Report on Air France Flight 447, July 2012",
  sources-list: (
    [Bureau d'Enquêtes et d'Analyses, _Final Report on Flight AF447_ (2012)],
    [IEEE Spectrum, "Air France Flight 447 Crash Caused by a Combination of Factors" (2014)],
    [BEA Safety Recommendations FRAN-2012-041, -045, -046],
  ),
  le-insight: [
    AF447 is the canonical case of training that matched one envelope of
    operation perfectly and another not at all. Stall *prevention* training
    was excellent. Stall *recovery from cruise altitude* training did not
    exist because the simulators could not produce it. The pilots
    performed exactly as trained. The training was the wrong training.
  ],
  lens-approach: [
    LENS uses AF447 in LEN 5 to teach the difference between the trained
    capability envelope and the operational capability envelope, and in
    LEN 2 to introduce human-AI handoff as a capability problem: the
    autopilot disconnection was a transition the crew had been trained to
    avoid rather than to handle. The case maps directly to canonical
    problem type three — Capability Cliff at Automation Boundary.
  ],
  literature-items: (
    [Dismukes, Berman & Loukopoulos (2007), _The Limits of Expertise_],
    [Casner & Hutchins (2019), "What Do We Tell the Drivers?"],
    [Sarter & Woods (1995), "How in the World Did We Ever Get into That Mode?"],
  ),
  reflection-list: (
    [The simulators of 2009 could not produce high-altitude stall behavior. What is the equivalent gap in your domain — the operational regime your training environment cannot reproduce?],
    [Design the recurrent-training curriculum that would have caught the AF447 gap. Be specific about cost, evidence, and what makes the curriculum falsifiable against the operational record.],
  ),
  courses: ("LEN 1", "LEN 5", "LEN 2"),
)

#case(
  number: 5,
  title: "Three Mile Island",
  year: "1979",
  domains-list: ("energy",),
  modes-code: "TH",
  impact: "Partial meltdown; most serious accident in U.S. commercial nuclear history; catalyst for industry-wide reform",
  diagram: dgm.dgm-tmi,
  body: [
    A relatively minor cooling-system malfunction at Unit 2 escalated to a
    partial meltdown because the operators were under-skilled for the
    failure they actually faced. They had been trained for worst-case
    scenarios; this was an ambiguous cascade, in which the most important
    indicator — a stuck-open pilot-operated relief valve — was misread on
    the control panel. The operators believed the valve was closed when it
    was open. They reduced safety injection flow precisely when more was
    needed.

    The post-incident consensus, captured by the Kemeny Commission, was
    that the human element of nuclear plant operations was a far more
    important risk factor than the industry had recognized. The criticism
    applied not only to the operators but to plant management, the
    utility, and the Nuclear Regulatory Commission itself. Training
    matched the design-basis events the engineers had imagined; the
    accident was not one of them.

    TMI did not produce another reactor accident. It produced INPO (see
    Case 16). It is the canonical example in this book of a failure that
    generated systematic capability reform.
  ],
  quote: [The fundamental problems are people-related problems and not equipment problems.],
  quote-source: "Kemeny Commission Report on Three Mile Island, 1979",
  sources-list: (
    [Kemeny Commission, _Report of the President's Commission on the Accident at Three Mile Island_ (1979)],
    [NRC Backgrounder on the Three Mile Island Accident],
    [Bulletin of the Atomic Scientists retrospective (2020)],
    [World Nuclear Association, TMI accident summary],
  ),
  le-insight: [
    TMI is the textbook moment when an industry discovered that its
    capability assumptions did not survive contact with operational
    reality. Training to design-basis events left the operators blind to
    the genuinely ambiguous failures that complex systems actually
    produce. The lesson — that the human element is not a residual risk
    but the dominant one — has shaped every high-reliability industry
    since.
  ],
  lens-approach: [
    LENS uses TMI in LEN 1 as the foundational problem-framing case: when
    your trained scenarios and your operational scenarios diverge, the
    divergence is your real risk. LEN 5 examines the control-room
    interface and the gap between what indicators displayed and what
    operators inferred. The pairing with INPO (Case 16) demonstrates the
    Failure-to-Reform arc that this book treats as the strongest argument
    for the discipline.
  ],
  literature-items: (
    [Walker, _Three Mile Island: A Nuclear Crisis in Historical Perspective_ (2004)],
    [Perrow, _Normal Accidents_ (1984)],
    [Reason, _Human Error_ (1990)],
  ),
  reflection-list: (
    [TMI operators were trained for worst-case scenarios but failed in an ambiguous one. What is the equivalent training gap in your domain between the trained case and the messy case?],
    [The Kemeny Commission called the human element the dominant risk. What evidence would you need to demonstrate the same conclusion in your own domain?],
  ),
  courses: ("LEN 1", "LEN 5"),
)

#case(
  number: 9,
  title: "INDOPACOM Training Gap",
  year: "ongoing",
  domains-list: ("defense",),
  modes-code: "TK",
  impact: "Structural readiness gap in DoD's stated top-priority theater",
  diagram: dgm.dgm-indopacom,
  body: [
    The 2022 National Defense Strategy designates the Indo-Pacific as DoD's
    priority theater and China as its "pacing challenge." The U.S. Marine
    Corps has nevertheless been unable to meet training requirements at
    Indo-Pacific training ranges for nearly a decade. GAO has documented
    workarounds — rotations back to CONUS for ranges that exist there,
    virtual training substitutes, multinational exercises pressed into
    proxy duty — but the structural gap persists.

    The problem is not unrecognized. Senior DoD leaders have testified to it
    in Congress; GAO has published remediation recommendations across
    successive reports; the services have published plans. None has closed
    the gap. The capability infrastructure to operate the U.S. military in
    its declared priority theater does not yet exist at scale.

    What makes INDOPACOM diagnostically useful is the inverse correlation
    between stated priority and actual capability investment. The theater
    is named the most important; the training infrastructure for it is the
    least mature. The pattern is general — capability follows resource
    decisions, not declarative ones.
  ],
  quote: [Without meeting these requirements, the Marine Corps cannot ensure that its forces will be ready for combat.],
  quote-source: "Paraphrasing GAO-24-107463, Marine Corps Training, 2024",
  sources-list: (
    [GAO-24-107463, _Marine Corps Training_ (2024)],
    [2022 National Defense Strategy of the United States],
    [Assistant Secretary of Defense for Indo-Pacific Security Affairs testimony (2022)],
  ),
  le-insight: [
    INDOPACOM illustrates the difference between declared priority and
    engineered priority. A theater designated as DoD's pacing challenge
    while the training infrastructure to operate in it remains
    structurally short is not a resourcing oversight — it is a capability
    architecture failure. Capability follows where resources actually
    flow, not where briefings name as critical.
  ],
  lens-approach: [
    LENS uses INDOPACOM in LEN 5 to teach the gap between stated
    requirements and engineered requirements, and in LEN 8 to examine the
    organizational dynamics that allow declared priorities to coexist with
    unfunded capability gaps for a decade. The case is also a live test
    for any student's claim about how to engineer cross-service capability
    at scale.
  ],
  literature-items: (
    [GAO-24-107463 and predecessor reports],
    [Fixsen et al. (2005), _Implementation Research_],
    [Rasmussen (1997), "Risk management in a dynamic society"],
  ),
  reflection-list: (
    [In your domain, what is the gap between *declared* priority and *engineered* priority? How would you measure it?],
    [Construct the capability requirements artifact for a theater you do not currently operate in. What would it cost, and who would sign for it?],
  ),
  courses: ("LEN 5", "LEN 8"),
)

#case(
  number: 26,
  title: "F-35 Sustainment & Maintainer Shortage",
  year: "ongoing",
  domains-list: ("defense",),
  modes-code: "TKD",
  impact: "Fleet mission-capable rate ~51–55% vs. 90% target; Air Force short ~1,500 maintainers; $1.58T lifecycle sustainment cost",
  diagram: dgm.dgm-f35,
  body: [
    The F-35 is the most expensive weapons program in history. GAO has
    documented year after year that maintenance challenges — driven by
    training deficits, technical-data gaps, and personnel shortages —
    are the binding constraint on the fleet's readiness. None of the
    three variants met desired mission-capable rates from FY2018 to
    FY2023. Average depot repair turnaround is 141 days against a 60- to
    90-day target. The Air Force alone is short approximately fifteen
    hundred trained maintainers.

    Of sixty-eight essential maintenance tasks, the military cannot
    independently perform twenty-four — creating dependence on contractor
    logistics that is operationally vulnerable in contested environments.
    Depot maintenance establishment is six years behind schedule. The
    training system exists but cannot keep pace with fleet growth and
    complexity.

    The structural shape of the F-35 problem is *Capability-System
    Misalignment at Transition*: the platform was fielded faster than the
    human-capability infrastructure to sustain it could be built. Aircraft
    arrived; the people to keep them flying did not.
  ],
  quote: [Organizational-level maintenance has been affected by a number of issues, including a lack of technical data and training.],
  quote-source: "GAO-23-105341, F-35 Sustainment, 2023",
  sources-list: (
    [GAO-23-105341, _F-35 Sustainment_ (2023)],
    [GAO-25-107632 and predecessors],
    [USNI News F-35 readiness coverage (2023)],
    [NGAUS state-by-state readiness analysis (2024)],
  ),
  le-insight: [
    F-35 is the live, current example of fielding a platform faster than
    its capability infrastructure can be built. The aircraft is the easy
    part; the maintainers are the hard part. A decade of program
    schedules treated maintainer training as a follow-on cost, not a
    fielding gate. The fleet is now operating at half of its design
    readiness, and the program of record is more than a trillion dollars
    over its 2018 estimate.
  ],
  lens-approach: [
    LENS treats the F-35 in LEN 5 as the canonical case of *Capability-
    System Misalignment at Transition*, the program's first canonical
    problem type. Students design the capability infrastructure that
    should have accompanied each lot of aircraft delivered, including the
    training pipeline, technical-data deliverables, and depot
    establishment.
  ],
  literature-items: (
    [GAO F-35 series, 2014–present],
    [Fixsen et al. (2005), _Implementation Research_],
    [Augustine, _Augustine's Laws_ (1986)],
  ),
  reflection-list: (
    [Pick a current technology platform in your domain. Estimate the capability infrastructure that must field with it. What happens if half of that infrastructure is six years late?],
    [The F-35 program treated maintainer training as follow-on cost. Design a fielding gate that would prevent that decision being available to a future program manager.],
  ),
  courses: ("LEN 5", "LEN 8", "LEN 3",),
)

#case(
  number: 30,
  title: "Kegworth / British Midland 92",
  year: "1989",
  domains-list: ("aviation",),
  modes-code: "THK",
  impact: "47 killed and 74 seriously injured when the crew shut down the wrong engine",
  diagram: dgm.dgm-kegworth,
  body: [
    After a fan blade fractured in the left engine, the crew shut down the
    *right* engine — the one that was working. They flew for twenty
    minutes on the failing engine before it gave out on approach to East
    Midlands. The aircraft crashed on the embankment of the M1 motorway,
    short of the runway.

    The AAIB found that the pilots had applied the mental model from
    earlier 737 variants, in which the right engine supplied cabin air
    conditioning, to a 737-400 in which Boeing had changed the
    configuration. The difference training had not communicated the
    change. The new LED vibration displays were harder to read than the
    older circular dials. Cabin crew and passengers could see the left
    engine on fire from the window but did not communicate that to the
    flight deck — a textbook CRM failure that predated Korean Air's
    transformation (see Case 23). The AAIB issued thirty-one safety
    recommendations.

    The crew's mental model was correct for the previous variant. Their
    training had not updated when the system did.
  ],
  quote: [The crew's mental model of the older 737 was inappropriately applied to the 737-400 on which they were operating.],
  quote-source: "Paraphrasing AAIB Aircraft Accident Report 4/90 on British Midland 92, 1990",
  sources-list: (
    [Air Accidents Investigation Branch, AAIB Report 4/90 (1990)],
    [Human Reliability analysis of Kegworth, AeroTime (2024)],
    [Reason, _Human Error_ (1990) — Kegworth as case study],
  ),
  le-insight: [
    Kegworth is the textbook example of Capability Degradation Under
    System Change. The pilots were excellent. Their mental model was
    excellent — for the airframe they had flown the previous week. The
    difference training had not been engineered to disturb the prior
    model with enough force to keep it from being misapplied. The new
    airframe was treated as an incremental change. The crew's response
    revealed it was a categorical one.
  ],
  lens-approach: [
    LENS treats Kegworth in LEN 5 as the canonical *system-change*
    capability problem and in LEN 8 as the institutional version: how
    knowledge about what has changed travels from engineering to
    operations and what gets lost in transit. The case sits alongside
    Patriot (Case 19) in the canonical problem-type pair for system
    transition.
  ],
  literature-items: (
    [Wickens, _Engineering Psychology and Human Performance_ (multiple eds.)],
    [Sarter & Woods (1995), "How in the World Did We Ever Get into That Mode?"],
    [Boeing 737 NG/MAX difference-training literature (post-2020)],
  ),
  reflection-list: (
    [The Kegworth crew's mental model was right for the previous variant. What change in your domain currently risks an analogous misapplication?],
    [Difference training is a generic deliverable in transition programs. Design the artifact that would make differences hard to overlook rather than easy.],
  ),
  courses: ("LEN 5", "LEN 8"),
)

#case(
  number: 33,
  title: "Military Fratricide — Desert Storm to Afghanistan",
  year: "1991 – 2014",
  domains-list: ("defense",),
  modes-code: "THK",
  impact: "17% of U.S. casualties in Desert Storm from friendly fire — eight times the historical baseline",
  diagram: dgm.dgm-fratricide,
  body: [
    Friendly fire in Desert Storm killed eighty-one Americans and two
    British in seventeen ground incidents, and twenty-six Americans and
    twenty British in ten air-to-ground incidents. The seventeen-percent
    rate was a dramatic increase from the historical two-percent baseline
    documented by Shrader in 1982. In one incident two A-10s strafed
    Marine vehicles, killing ten Marines, after a forward controller
    cleared the strike without realizing the vehicles were friendly. In
    Afghanistan, a B-52 GPS bomb killed three Special Forces when a
    controller's GPS reset coordinates after a battery change; a B-1
    bombed U.S. forces wearing identifying pods the bomber could not
    detect.

    The Army identified leading causes as "chaos and confusion of warfare;
    inadequate situational awareness; inadequate employment of, and
    adherence to, fire control measures; and combat-identification
    failures." A 1993 external study found that the lack of a
    comprehensive and accessible automated database prevented thorough
    examination of the problem — meaning the capability to learn from
    fratricide was itself a capability gap. Two decades later, the rate
    had not returned to baseline.
  ],
  quote: [The lack of a comprehensive and accessible automated database prevented thorough examination of the problem.],
  quote-source: "Paraphrasing post–Desert Storm fratricide reviews, c. 1993",
  sources-list: (
    [Shrader, _Amicicide: The Problem of Friendly Fire in Modern War_ (1982)],
    [Air & Space Forces Magazine, friendly-fire historical analysis],
    [Time, "The Fog of War" (2014)],
    [Army Center for Lessons Learned, IFF and CID reports],
  ),
  le-insight: [
    Fratricide is a multi-decade capability problem that resists single-
    intervention solutions. Each of the contributing causes — situational
    awareness, fire-control discipline, combat identification, joint
    coordination — has been the subject of dedicated programs. The rate
    persists because the integration across the contributors is itself
    the capability, and integration is the hardest property to engineer
    by program.
  ],
  lens-approach: [
    LENS uses fratricide in LEN 5 to teach systems-of-systems capability
    analysis and in LEN 2 to introduce combat identification as a
    Human-AI Teaming problem (operators rely on automated IFF systems
    whose limitations are not in their training). LEN 8 examines why
    decades of awareness have not produced a sustained reduction.
  ],
  literature-items: (
    [Shrader, _Amicicide_ (1982)],
    [Snook, _Friendly Fire_ (2000) on Black Hawk shootdown over Iraq],
    [Joint and Coalition Operations Analysis literature],
  ),
  reflection-list: (
    [Identify a capability problem in your domain that has been the subject of repeated programs without sustained improvement. What is the integration gap that the programs do not address?],
    [Design a measurement system that would distinguish a temporary improvement in fratricide rate from a structural one.],
  ),
  courses: ("LEN 5", "LEN 2", "LEN 8"),
)

#case(
  number: 34,
  title: "ACGME 80-Hour Resident Duty-Hour Reform",
  year: "2003–2017",
  domains-list: ("healthcare",),
  modes-code: "TKN",
  impact: "ACGME capped U.S. resident physician work hours at 80/week to reduce fatigue-related errors; subsequent RCTs (FIRST, iCOMPARE) showed mixed effects on patient outcomes and increased hand-off-related errors",
  diagram: dgm.dgm-timeline(
    (("2003 — 80-hr cap", "fatigue↓"), ("2011 — 16-hr intern cap", "—"), ("2016 — FIRST trial", "no difference"), ("2017 — duty-hour cap relaxed", "back to 80-hr only")),
    emphasis: 2,
    caption: "ACGME duty-hour reform — capping hours did not, on its own, engineer the capability",
  ),
  body: [
    Following the 1984 death of Libby Zion at a New York teaching
    hospital — a case that became the focal point of a multi-decade
    argument about resident physician fatigue — the Accreditation
    Council for Graduate Medical Education (ACGME) imposed an
    80-hour weekly cap on resident work hours in 2003. In 2011 the
    rules tightened further: first-year residents were capped at
    16-hour shifts. The intent was to address a well-documented
    training-gap pattern: residents making fatigue-related errors
    they would not have made rested.

    The intervention was a single-variable change to a complex
    capability system. Two large randomized trials — FIRST (Bilimoria
    et al., NEJM 2016) in general surgery and iCOMPARE (Silber et al.,
    NEJM 2019) in internal medicine — compared flexible duty-hour
    policies with the strict caps. Both found no difference in
    30-day patient outcomes between the arms. Both surfaced an
    unintended consequence: the 16-hour cap had increased the number
    of patient hand-offs per admission, and hand-offs are themselves
    a documented site of error. Resident continuity-of-care exposure
    decreased; procedural exposure for surgical residents decreased;
    in qualitative reports residents described feeling less prepared
    rather than more rested. In 2017 ACGME relaxed the 16-hour intern
    cap, reverting to the 80-hour-only ceiling.

    Duty-hour reform is in the dataset not because the original
    fatigue problem was unreal — it was — but because the discipline
    addressed it by capping the input rather than by engineering the
    capability. The hand-off, the continuity of care, the procedural
    exposure, the supervisory structure, and the documentation
    architecture were all part of the capability that the long hours
    had been (poorly) producing. Reforming the input without
    redesigning the system surfaced the missing components only by
    their absence.
  ],
  quote: [Flexible, less-restrictive duty hour policies for first-year residents were associated with non-inferior patient outcomes and no significant difference in residents' satisfaction with overall well-being and education quality.],
  quote-source: "Silber, Bellini, Shea et al., iCOMPARE Trial, NEJM 2019",
  sources-list: (
    [#link("https://doi.org/10.1056/NEJMoa1515724")[Bilimoria, Chung, Hedges et al. (2016), "National Cluster-Randomized Trial of Duty-Hour Flexibility in Surgical Training," _NEJM_ 374: 713–727. doi:10.1056/NEJMoa1515724]],
    [#link("https://doi.org/10.1056/NEJMoa1810641")[Silber, Bellini, Shea et al. (2019), "Patient Safety Outcomes under Flexible and Standard Resident Duty-Hour Rules," _NEJM_ 380: 905–914. doi:10.1056/NEJMoa1810641]],
    [Asch et al. (2014), "Resident Duty Hours and Medical Education Policy," _NEJM_ 370: 1671–1673],
    [ACGME, _Common Program Requirements_ (2003, 2011, 2017 revisions)],
    [Lerner (2006), _The Libby Zion Case and the Reform of Medical Education_],
  ),
  le-insight: [
    Duty-hour reform is the clearest healthcare case in the dataset
    of a single-variable intervention into a multi-variable capability
    system. Pairs with Case 33 (fratricide) and Case 11 (V-22) as
    examples of multi-decade capability problems where each
    component reform shifts the failure to an adjacent component
    that was carrying load the original system was not designed to
    surface. The success cases — Keystone ICU (14), CRM (12), Korean
    Air (23) — succeeded because they engineered the supervisory,
    hand-off, and measurement architecture *together with* the
    behavioral change.
  ],
  lens-approach: [
    LENS uses duty-hour reform in LEN 5 as the foundational
    capability-system case (what was the long-hour regime
    *producing* that was lost when the input was capped?), in LEN 4
    to discuss measurement architecture (what FIRST and iCOMPARE
    measured, and what they did not), and in LEN 10 as a studio
    prompt for the integrated resident-training redesign that the
    reforms did not deliver.
  ],
  literature-items: (
    [Bilimoria et al. (2016), FIRST trial; Silber et al. (2019), iCOMPARE trial],
    [Lerner (2006), _The Libby Zion Case and the Reform of Medical Education_],
    [Ulmer, Wolman & Johns, eds. (2008), _Resident Duty Hours: Enhancing Sleep, Supervision, and Safety_, Institute of Medicine],
  ),
  reflection-list: (
    [What capability is the long-hours / heavy-workload regime in your domain currently producing — supervisory exposure, continuity, procedural reps, tacit-knowledge transfer — that a simple cap would lose?],
    [Design the integrated redesign — supervision, hand-off, measurement, exposure — that would substitute for the capability the input cap removes.],
  ),
  courses: ("LEN 5", "LEN 4", "LEN 10", "LEN 8"),
)
