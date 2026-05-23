// ============================================================
// Chapter 1 — Training Gap (extras)
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 43,
  title: "Colgan Air Flight 3407",
  year: "2009",
  domains-list: ("aviation",),
  modes-code: "T",
  impact: "50 killed near Buffalo; precipitated the FAA's 1,500-hour rule and the Pilot Records Database",
  diagram: dgm.dgm-stat(
    "50",
    "killed, Clarence Center NY",
    micro: "the data was in the system; the data flow was not",
    caption: "Colgan 3407 — and the reform that followed",
  ),
  body: [
    On approach to Buffalo-Niagara International, the captain of Colgan
    Air 3407 responded to the activation of the aircraft's stick shaker
    by pulling back on the control column rather than lowering the nose.
    The Bombardier Q400 stalled and crashed into a house in Clarence
    Center, killing all forty-nine people on board and one person on the
    ground. The NTSB found the captain had a documented history of
    training failures earlier in his career, and that the first officer
    had been ill, fatigued, and was paid roughly sixteen thousand dollars
    a year. The airline knew about the training history. The hiring
    pipeline knew. The regulator did not.

    Family members of the victims organized one of the most effective
    aviation-safety lobbying efforts in a generation. The result was the
    Airline Safety and Federal Aviation Administration Extension Act of
    2010, which raised the minimum experience requirement for Part 121
    first officers from 250 to 1,500 hours and established the Pilot
    Records Database. The 1,500-hour rule remains controversial; the
    PRD has fundamentally restructured how pilot-history information
    flows between carriers.

    The capability gap was visible to everyone *except* the system that
    licensed the pilots.
  ],
  quote: [The captain's inappropriate response to the activation of the stick shaker led to an aerodynamic stall from which the airplane did not recover.],
  quote-source: "NTSB Aircraft Accident Report AAR-10/01, Probable Cause, 2010",
  sources-list: (
    [NTSB Aircraft Accident Report NTSB/AAR-10/01 (2010)],
    [Airline Safety and Federal Aviation Administration Extension Act of 2010, Public Law 111-216],
    [GAO-12-203, _Pilot Records Database Implementation_ (2012)],
  ),
  le-insight: [
    Colgan is the canonical case for the gap between the information an
    institution holds about its operators and the information that
    reaches the decisions about whether those operators should be in
    that seat. The data was already in the system — multiple failed
    training events. The data flow that would have made that data
    actionable at the hiring decision did not exist.
  ],
  lens-approach: [
    LENS uses Colgan in LEN 4 as a case for evidence-system design (the
    PRD as a designed information flow) and in LEN 8 as a case for
    advocacy-driven institutional change. Studio projects examine how
    families of victims became the load-bearing element of a reform
    the industry had resisted for years.
  ],
  literature-items: (
    [NTSB AAR-10/01 (2010)],
    [Families of Continental Flight 3407, public-facing campaign archive],
    [FAA Pilot Records Database technical documentation],
  ),
  reflection-list: (
    [What information about operators in your domain exists somewhere in the system but does not flow to the decisions that depend on it?],
    [Design the data-flow architecture that would make a Colgan-equivalent visible *before* the accident rather than after.],
  ),
  courses: ("LEN 4", "LEN 5", "LEN 8"),
)

#case(
  number: 44,
  title: "Asiana Airlines Flight 214",
  year: "2013",
  domains-list: ("aviation",),
  modes-code: "TH",
  impact: "3 killed, 187 injured; Boeing 777 struck the seawall short of SFO runway 28L",
  diagram: dgm.dgm-compare(
    "expected",
    "137 kt",
    "actual",
    "103 kt",
    framing: "the autothrottle was not maintaining the speed the crew believed it was",
    caption: "Asiana 214 — approach airspeed at the seawall",
  ),
  body: [
    On a clear afternoon at San Francisco, the crew of Asiana 214
    allowed the aircraft to slow well below approach speed without
    recognizing that the autothrottle was not in the mode they
    expected. The Boeing 777 struck the seawall short of runway 28L,
    killing three and seriously injuring forty-nine of the 304 on
    board. The NTSB found inadequate monitoring of airspeed and
    confusion about autothrottle behavior when the autopilot pitch
    channel was in FLCH SPD: after the pilots took the autopilot
    offline and pulled thrust to idle, the autothrottle reverted to
    HOLD and did not wake to maintain selected speed. The captain
    later said he believed the autothrottle would maintain speed; in
    that configuration, it does not.

    NTSB identified Boeing's design of the autothrottle and autopilot
    flight-director systems as a contributing factor — the documentation,
    training, and interface together did not make the system's actual
    state salient to the crew. The proximate cause was the crew's
    failure to monitor airspeed; the system-level cause was that the
    automation could silently leave the crew responsible for a parameter
    they believed it was holding.

    Asiana 214 is the most prominent recent case of automation surprise
    on a Western wide-body airliner.
  ],
  quote: [Complexities of the autothrottle and autopilot flight director systems contributed to the accident.],
  quote-source: "NTSB Aircraft Accident Report AAR-14/01, contributing factors, 2014",
  sources-list: (
    [NTSB Aircraft Accident Report NTSB/AAR-14/01 (2014)],
    [Boeing 777 Flight Crew Operating Manual, autothrottle and autoflight sections],
    [Casner, Geven & Williams (2013), "The Effectiveness of Airline Pilot Training for Abnormal Events," _Human Factors_],
  ),
  le-insight: [
    Asiana 214 is the aviation case for the LENS Human-AI Teaming
    proposition that automation transparency is a capability
    deliverable. The mode the autothrottle was actually in and the mode
    the crew believed it was in diverged silently — a textbook
    automation surprise. The training, the documentation, and the
    interface together did not surface the divergence.
  ],
  lens-approach: [
    LENS treats Asiana 214 in LEN 2 as a worked case for automation
    transparency requirements. Students design the interface and
    training intervention that would have made the mode disconnect
    salient to the crew at the moment the aircraft slowed.
  ],
  literature-items: (
    [Sarter & Woods (1995), "How in the world did we ever get into that mode?"],
    [Casner et al. (2014) on automation surprises],
    [Parasuraman & Manzey (2010), automation complacency],
  ),
  reflection-list: (
    [Identify a mode in an automated system you work with where the operator's mental model and the system's actual behavior can silently diverge. How would the operator know?],
    [Design the interface change that would have alerted the Asiana crew to the mode mismatch before the airspeed decayed.],
  ),
  courses: ("LEN 5", "LEN 2"),
)

#case(
  number: 45,
  title: "Mark 14 Torpedo Failures",
  year: "1941 – 1943",
  domains-list: ("defense",),
  modes-code: "TKG",
  impact: "Persistent torpedo failures across the first ~20 months of the Pacific War; resolved only after fleet-level testing forced acknowledgment of the defects",
  diagram: dgm.dgm-cascade(
    ("magnetic exploder fails",
     "contact pin bends on direct hit",
     "torpedo runs deep",
     "BuOrd: \"the weapon is fine\""),
    outcome: "submariners forced to use a weapon their bureau refused to repair",
    caption: "Mark 14 — multiple defects, single institutional refusal",
  ),
  body: [
    The U.S. Navy entered World War II with the Mark 14 torpedo, which
    had been so expensive to test in peacetime that the Bureau of
    Ordnance had effectively forbidden live trials. Submarine crews in
    1942 reported torpedo after torpedo running deep, running shallow,
    failing to detonate, or detonating prematurely. The Bureau of
    Ordnance insisted the weapon worked and that the operators were at
    fault. Submarine captains who reported failures faced career
    consequences.

    It took eighteen months and the personal intervention of Admiral
    Charles Lockwood (COMSUBPAC) — who ordered fleet-level testing,
    including a famous live-fire trial against the Kahoolawe cliff
    face and, separately, the USS Tinosa's July 1943 attack on the
    Tonan Maru in which fifteen hits produced a single detonation —
    to confirm that the weapon was running ten feet too deep, that
    its Mark 6 magnetic exploder failed routinely, and that even its
    contact firing pin crushed on perpendicular impact. The fixes
    were straightforward once the existence of the problem was
    acknowledged. The institutional resistance was the binding
    constraint.

    The Mark 14 is a foundational case in U.S. military capability
    history for what happens when the institution responsible for a
    weapon refuses to believe the operators using it.
  ],
  quote: [The Bureau certified the weapon; field reports of failure were treated as evidence of operator error.],
  quote-source: "Paraphrasing Blair, Silent Victory, 1975",
  sources-list: (
    [Blair, C. (1975), _Silent Victory: The U.S. Submarine War Against Japan_],
    [Rowland, B. & Boyd, W. (1953), _U.S. Navy Bureau of Ordnance in World War II_],
    [Naval History and Heritage Command, Mark 14 torpedo files],
  ),
  le-insight: [
    The Mark 14 is the canonical Navy case for the institutional refusal
    to believe operator feedback. The capability that was missing was
    not at the front. It was at the bureau that owned the weapon. The
    cost of the refusal was paid by the submariners forced to use it
    until the bureau yielded. The eventual fixes — re-setting depth
    calibration, replacing the magnetic exploder, redesigning the
    contact pin — were technical and small. The reform was
    institutional and slow. The capability that had to be built was
    the channel by which the bureau could be made to hear what the
    boats already knew.
  ],
  lens-approach: [
    LENS uses the Mark 14 in LEN 7 as a governance failure case and in
    LEN 8 as an organizational-learning case in which the operators had
    the diagnosis and the institution lacked the structure to receive
    it. Studio projects (LEN 10) examine what the equivalent
    operator-to-institution feedback channel should look like.
  ],
  literature-items: (
    [Blair (1975), _Silent Victory_],
    [Rowland & Boyd (1953)],
    [Edmondson (2018), _The Fearless Organization_],
  ),
  reflection-list: (
    [Identify a system in your domain whose owners are institutionally insulated from the operators using it. What feedback would they refuse to hear, and what would it cost?],
    [Design the operator-feedback channel that the U.S. Navy Bureau of Ordnance should have had in 1941. Who signs, who receives, what triggers action?],
    [The USS Tinosa fired fifteen torpedoes for one detonation before the bureau accepted the diagnosis. What is the operator-evidence threshold in your domain that would force the equivalent institutional acknowledgment — and how would you make sure it is reached before the cost is paid?],
  ),
  courses: ("LEN 10", "LEN 7", "LEN 8"),
)

#case(
  number: 46,
  title: "Operation Eagle Claw",
  year: "1980",
  domains-list: ("defense",),
  modes-code: "TK",
  impact: "8 servicemembers killed in Iran; mission to rescue 52 American hostages aborted; catalyst for the founding of U.S. Special Operations Command",
  diagram: dgm.dgm-ring(
    "Eagle\nClaw",
    ("Army", "Navy", "Marines", "Air Force", "CIA"),
    framing: "five organizations · no joint command · no shared training",
    caption: "the absence of an institution that could own the mission",
  ),
  body: [
    The mission to rescue fifty-two American hostages from the U.S.
    embassy in Tehran was aborted at a desert refueling point in eastern
    Iran when three of eight helicopters were lost to mechanical or
    weather failures. During the withdrawal a helicopter collided with
    a C-130, killing eight servicemembers. The hostages remained in
    Iranian custody for another nine months.

    The Holloway Commission identified the mission's "ad hoc-ery": each
    service contributed its own units, equipment, command relationships,
    and communications systems; the aircrews had not trained together;
    the RH-53D Sea Stallions had been chosen for range and a
    minesweeping cover story rather than fitness for a desert rescue.
    There was no standing joint special-operations command to own the
    mission. The capability had to be improvised, and the improvisation
    failed.

    Eagle Claw produced the Holloway Commission, JSOC (1980), and
    ultimately the Nunn-Cohen Amendment establishing USSOCOM (1987);
    Goldwater-Nichols (1986) drew on it alongside Beirut and Grenada in
    mandating joint command structures across the U.S. military.
  ],
  quote: [The mission was ad hoc — assembled from units, equipment, and command relationships that had never operated together.],
  quote-source: "Paraphrasing the Holloway Special Operations Review Group, 1980",
  sources-list: (
    [Holloway Special Operations Review Group, _Rescue Mission Report_ (1980)],
    [Goldwater-Nichols Department of Defense Reorganization Act of 1986],
    [Locher, _Victory on the Potomac_ (2002)],
  ),
  le-insight: [
    Eagle Claw is the canonical case in U.S. defense for the absence of
    institutionalized cross-service capability. Each service was
    competent inside its own boundary; the integration across them did
    not exist as a deliverable — until the reform that followed built
    the institution the mission had needed and not had.
  ],
  lens-approach: [
    LENS uses Eagle Claw in LEN 5 as a worked case for cross-
    organizational capability requirements and in LEN 8 for the
    institutional reform that followed; it pairs with INPO (Case 16) as
    the defense analog of failure-driven institution building. The
    seven-year arc to Goldwater-Nichols (1986) and USSOCOM (1987) is
    itself a measurement: the institutional response time when the fix
    requires statutory action.
  ],
  literature-items: (
    [Locher (2002), _Victory on the Potomac_],
    [Holloway Commission report (1980)],
  ),
  reflection-list: (
    [Where in your domain does a cross-organizational capability exist on paper but not in practice? What would force its institutionalization?],
    [Eagle Claw produced USSOCOM and Goldwater-Nichols six years later. Sketch the institutional design that an equivalent failure in your domain would force into existence.],
    [The Holloway Commission named the mission's ad-hoc-ery as the diagnosis. What standing capability — institution, command, training pipeline — does your domain currently lack that an Eagle-Claw-class failure would force into existence?],
  ),
  courses: ("LEN 5", "LEN 8"),
)

#case(
  number: 47,
  title: "Helios Airways Flight 522",
  year: "2005",
  domains-list: ("aviation",),
  modes-code: "TH",
  impact: "121 killed; cabin failed to pressurize after a maintenance setting was left on \"manual\" and the crew misread the warning",
  diagram: dgm.dgm-compare(
    "actual",
    "cabin alt.",
    "interpreted",
    "T/O config.",
    framing: "one horn, two meanings · the training had drilled only one",
    caption: "Helios 522 — a cue carrying two meanings without differentiation",
  ),
  body: [
    The crew of Helios 522 ignored a warning horn shortly after
    takeoff from Larnaca because the same intermittent horn used on
    the Boeing 737 to indicate incorrect takeoff configuration on the
    ground sounds, in flight, when cabin altitude exceeds
    approximately 10,000 feet. The pressurization selector had been
    left in "manual" after a pressurization leak check the previous
    night, and the cabin failed to pressurize. By the time the aircraft reached altitude the crew
    was hypoxic; by the time it neared Athens, only one cabin attendant
    remained conscious. The aircraft circled Athens on autopilot until
    fuel exhaustion and crashed into a hillside.

    The accident investigation found the single warning horn carried
    different meanings on the ground and in flight, with no
    differentiation in the cue. The training had drilled the
    ground-configuration meaning. The in-flight meaning was an edge
    case that the airline's training had not made salient. The crew
    spent twenty minutes troubleshooting a problem they had
    misidentified, by which time it was already too late.
  ],
  quote: [The crew's interpretation of the cabin-altitude warning horn as a takeoff-configuration warning was a critical and irrecoverable error.],
  quote-source: "Paraphrasing the Hellenic AAIB Final Report on Helios 522, 2006",
  sources-list: (
    [Hellenic AAIB Aircraft Accident Investigation Report 11/2006],
    [Boeing 737 Flight Crew Operations Manual, configuration warnings],
    [Reason (1990), _Human Error_ — Helios 522 as worked case],
  ),
  le-insight: [
    Helios 522 is the textbook example of a single cue carrying two
    meanings without differentiation. The interface lied by ambiguity.
    The training filled in only one meaning. The combination produced a
    twenty-minute window in which the crew was solving the wrong
    problem.
  ],
  lens-approach: [
    LENS uses Helios in LEN 5 as a case in cue ambiguity and in LEN 2
    as a Human-AI Teaming case where the interface failed to
    communicate which of two possible system states it was warning
    about. Students redesign the cue.
  ],
  literature-items: (
    [Hellenic AAIB Report 11/2006],
    [Endsley (1995), situation awareness theory],
    [Sarter, Woods & Billings (1997), automation surprise literature],
  ),
  reflection-list: (
    [Identify a cue in your domain that carries two meanings in different operational contexts. How would the operator know which?],
    [Redesign the Helios configuration warning to distinguish ground- and in-flight meaning without adding cognitive load.],
  ),
  courses: ("LEN 5", "LEN 2"),
)

#case(
  number: 48,
  title: "AeroPerú Flight 603",
  year: "1996",
  domains-list: ("aviation",),
  modes-code: "HT",
  impact: "70 killed; Boeing 757 crashed into the Pacific after maintenance tape was left over static ports",
  diagram: dgm.dgm-cascade(
    ("altimeter", "airspeed indicator", "GPWS / altitude alert", "Mach warning"),
    outcome: "every instrument fed by the same blocked sensor",
    caption: "AeroPerú 603 — redundancy that was not redundancy",
  ),
  body: [
    Maintenance staff in Lima taped over the Boeing 757's static ports
    while polishing the fuselage and failed to remove the tape before
    flight. With the static ports blocked, the aircraft's altimeters,
    airspeed indicators, and altitude alert system all read
    inconsistently. The crew received contradictory warnings —
    overspeed, stick shaker, ground proximity — and could not determine
    the aircraft's actual state. They believed they were higher than
    they were. They flew into the ocean.

    The Peruvian accident report identified the maintenance error as
    the primary cause but emphasized that the cockpit had no
    independent reference to detect the inconsistency. Every instrument
    that should have flagged the failure depended on the same blocked
    sensor. The crew's training did not include a procedure for
    "everything you see is wrong."

    AeroPerú 603 sits at the intersection of maintenance procedure,
    cockpit interface design, and the limits of crew training under
    instrument failure.
  ],
  quote: [The crew received contradictory indications they could neither reconcile nor override.],
  quote-source: "Paraphrasing the Peruvian DGAC / Comisión Investigadora de Accidentes de Aviación report on AeroPerú 603, 1996",
  sources-list: (
    [Peru Dirección General de Aeronáutica Civil (DGAC), Comisión Investigadora de Accidentes de Aviación, accident report on AeroPerú 603 (1996)],
    [Boeing 757 Flight Crew Training Manual],
    [Wiener, _Human Factors of Cockpit Automation_ (NASA, 1989)],
  ),
  le-insight: [
    AeroPerú 603 is the case for redundancy that is not redundancy.
    Every cockpit indicator depended on the same physical sensor. The
    apparent redundancy in the cockpit was an illusion at the source.
    The training did not include the failure case because the failure
    case had been assumed not to occur.
  ],
  lens-approach: [
    LENS uses AeroPerú in LEN 5 to teach the difference between
    apparent and actual redundancy and in LEN 2 for the human role
    when all interface data is unreliable. Studio projects examine the
    "trust nothing" procedure design.
  ],
  literature-items: (
    [Peru DGAC / CIA report on AeroPerú 603 (1996)],
    [Leveson (2011), STAMP — common-cause failure],
    [Dismukes et al. (2007), _The Limits of Expertise_],
  ),
  reflection-list: (
    [Identify a redundant interface in your domain whose redundancy depends on a common upstream component. What is the operator procedure when the upstream component fails?],
    [Design the "trust nothing" procedure for the AeroPerú crew. What information remains reliable when all instruments are corrupted?],
  ),
  courses: ("LEN 5", "LEN 2"),
)

#case(
  number: 49,
  title: "Atlas Air Flight 3591",
  year: "2019",
  domains-list: ("aviation",),
  modes-code: "TK",
  impact: "3 killed; Boeing 767 cargo flight crashed in Texas after the first officer mistakenly activated go-around mode",
  diagram: dgm.dgm-timeline(
    (("Colgan 3407", "2009"), ("PRD created", "2010"), ("partial coverage", "2010–24"), ("Atlas 3591", "2019"), ("PRD mandatory", "2024")),
    emphasis: 3,
    caption: "the cost of partial implementation between Colgan and the PRD's final coverage",
  ),
  body: [
    The first officer of Atlas Air 3591 — Conrad Aska, an Amazon Prime
    Air cargo flight — inadvertently activated the TOGA (go-around)
    mode during a turbulent descent, then, in a somatogravic illusion
    that the aircraft was pitching up, pushed the nose down sharply
    in response to a perceived stall, and crashed the Boeing 767
    freighter into Trinity Bay, Texas. The NTSB found that the first
    officer had a documented history of training failures spanning
    multiple prior carriers and had not disclosed those failures on
    his Atlas Air application. Atlas could not detect the omissions
    because the Pilot Records Database — directed by Congress after
    Colgan Air 3407 (Case 43) — was not yet operational at the time
    of hiring; Atlas relied on the older PRIA records system, which
    only required five years of training history.

    The case is the live, current version of the Colgan story. The
    information existed. The data-flow system had not yet been built.
    The first officer had been advanced past failures that should have
    ended his career. The reform that Colgan's families had won was
    not yet complete enough to stop the next iteration.

    The PRD final rule was published in 2021 and became effective for
    Part 121 carriers in June 2022, with full historical coverage
    phasing in through 2024.
  ],
  quote: [Atlas Air did not have access to portions of the first officer's training record that would have informed its hiring decision.],
  quote-source: "Paraphrasing NTSB Aircraft Accident Report AAR-20/02, 2020",
  sources-list: (
    [NTSB Aircraft Accident Report AAR-20/02 (2020)],
    [FAA Pilot Records Improvement Act of 1996; updates 2010, 2024],
    [_New York Times_ coverage of Atlas Air 3591],
  ),
  le-insight: [
    Atlas Air 3591 is the iteration test of the Colgan reform. The
    reform partially worked: the PRD exists. The reform was incomplete:
    not all carriers were covered. The case is a cautionary worked
    example of why partial implementation of a regulatory remedy
    leaves the original capability gap partially open.
  ],
  lens-approach: [
    LENS uses Atlas Air 3591 in LEN 4 as a case for measurement-system
    coverage (the PRD had been built but its mandatory coverage was
    incomplete), and in LEN 8 for the iteration cycle of reform: an
    intervention that leaves an aperture creates a measurable harm
    inside the aperture.
  ],
  literature-items: (
    [NTSB AAR-20/02],
    [GAO reports on the Pilot Records Database, 2014–2024],
    [Fixsen et al. (2005), implementation fidelity],
  ),
  reflection-list: (
    [Identify a regulatory remedy in your domain whose coverage is partial. What harm is occurring inside the aperture?],
    [Design the deliverable that would close the PRD coverage gap in advance of a future Atlas Air 3591.],
  ),
  courses: ("LEN 4", "LEN 8"),
)

#case(
  number: 50,
  title: "TransAsia Airways Flight 235",
  year: "2015",
  domains-list: ("aviation",),
  modes-code: "TH",
  impact: "43 killed in Taiwan; crew shut down the only working engine after the other failed",
  diagram: dgm.dgm-compare(
    "right",
    "auto-feathered",
    "left",
    "shut down by crew",
    framing: "the working engine; misidentified in ~15 seconds under stress",
    caption: "TransAsia 235 — the same wrong-engine pattern as Kegworth (Case 30)",
  ),
  body: [
    Forty-three seconds after takeoff from Taipei Songshan, the ATR
    72's right engine auto-feathered following a sensor malfunction.
    The crew, working from memory under stress, shut down the *left*
    engine — the one still producing thrust — and committed the
    aircraft to a glide for which it was much too low. The aircraft
    clipped a taxicab on the Huandong Viaduct and crashed into the Keelung River.

    The Aviation Safety Council (Taiwan) found the captain had failed
    proficiency checks twice in the year before the accident and had
    not been retrained against the specific failure scenario the
    aircraft actually presented. The crew did not use the published
    engine-shutdown checklist; they responded from memory. The
    misidentification took place in roughly fifteen seconds.

    TransAsia 235 sits in the same conceptual family as Kegworth (Case
    30): a crew shut down the wrong engine because the mental model
    they applied did not match the configuration they were in.
  ],
  quote: [The flight crew was unable to identify which engine had failed and shut down the operating engine in error.],
  quote-source: "Paraphrasing the Aviation Safety Council (Taiwan) Final Report on TransAsia 235, 2016",
  sources-list: (
    [Aviation Safety Council (Taiwan) Final Report (2016)],
    [Reason (1990), Human Error — wrong-engine cases],
    [Dismukes, Berman & Loukopoulos (2007), _The Limits of Expertise_],
  ),
  le-insight: [
    TransAsia 235 is the modern recurrence of the Kegworth pattern under
    stress. Crews under acute time pressure default to memory; if the
    memory is incomplete or wrong, the action follows the memory. The
    capability gap was the same as in 1989. The intervention pattern
    needed is also the same.
  ],
  lens-approach: [
    LENS uses TransAsia 235 in LEN 5 as a recurrence case for
    well-known capability problems (wrong-engine shutdown) and in
    LEN 2 to teach the difference between checklist-driven response
    and memory-driven response under stress.
  ],
  literature-items: (
    [Taiwan ASC report (2016)],
    [Dismukes et al. (2007)],
    [Klein (1998), _Sources of Power_],
  ),
  reflection-list: (
    [Identify a procedure in your domain that is supposed to be checklist-driven but is actually memory-driven under stress. What is the gap?],
    [Why has the wrong-engine shutdown pattern persisted across 25 years of aviation reform? What intervention has not yet been engineered?],
  ),
  courses: ("LEN 5", "LEN 2"),
)
