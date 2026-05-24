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
  kind: "failure",
  summary: [
    On approach to Buffalo in February 2009, the captain of Colgan Air 3407
    responded to a stall warning by pulling back on the controls instead of
    lowering the nose; the Bombardier Q400 stalled and crashed into a house
    in Clarence Center, killing all 49 aboard and one person on the ground.
    The NTSB found the captain had a documented history of training failures,
    and the first officer was ill, fatigued, and paid about \$16,000 a year.
    The airline and the hiring pipeline knew the training history; the
    regulator did not. Victims' families mounted one of the most effective
    aviation-safety campaigns in a generation, producing the 2010 law that
    raised first-officer experience requirements to 1,500 hours and created
    the Pilot Records Database. The capability gap was visible to everyone
    except the system that licensed the pilots.
  ],
  sections: (
    // -- Background --
    [
      Colgan Air 3407, a Bombardier Q400 flying a regional route to Buffalo,
      was crewed by a captain with a documented history of training failures
      and a first officer who was ill, fatigued, and paid roughly \$16,000 a
      year. The airline and the hiring pipeline knew the captain's record;
      the regulator did not — the information that should have shaped who sat
      in that seat lived inside the carrier's files and never crossed into
      the licensing system that was supposed to vouch for the crew.#cn()
    ],
    // -- What Happened --
    [
      On 12 February 2009, on approach to Buffalo, the aircraft slowed and
      its stall-warning stick shaker activated. The captain responded by
      pulling back on the control column — the opposite of stall recovery —
      and the Q400 stalled and crashed into a house in Clarence Center,
      killing all 49 aboard and one person on the ground. The reflex he
      reached for was exactly wrong for the situation, the kind of error a
      pattern of failed training events should have predicted long before he
      was handed the controls.#cn()
    ],
    // -- The Investigation --
    [
      The NTSB found the probable cause to be the captain's inappropriate
      response to the stick shaker, against a backdrop of fatigue, weak
      airline training, and a hiring system blind to the captain's history.
      The data that should have flagged him existed — multiple failed
      training events — but did not flow to the decision that put him in the
      seat, so the hiring choice was made on a record that omitted the very
      facts that mattered most, an absence that looked like a clean slate.#cn()
    ],
    // -- The Capability Gap --
    [
      Colgan is the canonical case for the gap between the information an
      institution holds about its operators and the information that reaches
      the decisions about those operators. The capability that was missing
      was not pilot skill in the abstract but a data flow: a way to make a
      pilot's documented training history actionable at the hiring and
      licensing decision, rather than buried in files no one consulted — a
      record can exist in full and still fail completely if it never reaches
      the moment and the person whose choice it was meant to inform.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The victims' families organized one of the most effective
      aviation-safety lobbying efforts in a generation, producing the Airline
      Safety and FAA Extension Act of 2010 — which raised the minimum
      experience for airline first officers to 1,500 hours and created the
      Pilot Records Database to make pilot history flow between carriers.#cn()
      The 1,500-hour rule remains debated; the records database fundamentally
      restructured how the information that was missing in 2009 now moves,
      converting a buried file into a record a hiring carrier is required to
      retrieve — the difference between a fact that exists and one that
      arrives where the decision is made.
    ],
  ),
  references: (
    [NTSB, _Aircraft Accident Report: Colgan Air Flight 3407_, NTSB/AAR-10/01 (2010) — probable cause (quoted).],
    [NTSB/AAR-10/01 (2010) — the captain's training history, and the first officer's fatigue and pay.],
    [NTSB/AAR-10/01 (2010) — the information-flow gap between known pilot history and the hiring decision.],
    [Airline Safety and Federal Aviation Administration Extension Act of 2010, Pub. L. 111-216 — the 1,500-hour rule and the Pilot Records Database.],
    [GAO-12-203, _Pilot Records Database Implementation_ (2012); the Families of Continental Flight 3407 campaign.],
  ),
  quote: [The captain's inappropriate response to the activation of the stick shaker led to an aerodynamic stall from which the airplane did not recover.],
  quote-source: "NTSB Aircraft Accident Report AAR-10/01, Probable Cause, 2010",
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
  kind: "failure",
  summary: [
    On a clear afternoon at San Francisco in July 2013, the crew of
    Asiana 214 allowed their Boeing 777 to slow far below approach
    speed without recognizing that the autothrottle was not maintaining
    it. The aircraft struck the seawall short of runway 28L, killing
    three of the 307 aboard and injuring nearly two hundred. The NTSB
    found the crew had mismanaged the approach and inadequately
    monitored airspeed — but also that the complexity of Boeing's
    autoflight systems contributed: after the pilots disconnected the
    autopilot and pulled thrust to idle, the autothrottle reverted to
    a HOLD mode in which it would not wake to hold the selected speed.
    The captain believed it would. Asiana 214 is the most prominent
    recent case of automation surprise on a Western wide-body airliner.
  ],
  sections: (
    // -- Background --
    [
      Asiana 214 was a scheduled Boeing 777 flight from Seoul to San
      Francisco. The captain was experienced on other types but new to
      the 777 and flying it under the supervision of a training captain;
      the approach was a visual one, with the airport's instrument
      glideslope out of service for construction.#cn()
    ],
    // -- What Happened --
    [
      On 6 July 2013, on final approach to runway 28L, the aircraft
      descended below the proper path and slowed. The crew had set an
      autopilot mode that left the autothrottle in HOLD, where it would
      not advance thrust to hold the selected speed. Airspeed decayed to
      about 103 knots against a target of 137; the 777 struck the seawall
      short of the runway, killing three and injuring nearly two hundred
      of the 307 aboard.#cn()
    ],
    // -- The Investigation --
    [
      The NTSB found the probable cause to be the crew's mismanagement
      of the approach and inadequate monitoring of airspeed, complicated
      by the complexity of the autothrottle and autopilot flight-director
      systems and by the crew's faulty mental model of the automation.
      The captain told investigators he had assumed the autothrottle
      would maintain speed; in that configuration, it does not.#cn()
    ],
    // -- The Capability Gap --
    [
      Asiana 214 is the textbook automation surprise on a Western
      wide-body: the mode the autothrottle was actually in and the mode
      the crew believed it was in diverged silently. The missing
      capability was not raw pilot skill but transparency — a system
      that made its own state, and the fact that the crew now owned the
      airspeed, salient at the moment it mattered.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The NTSB issued recommendations on autoflight training, energy-state
      monitoring, and the design of mode annunciation, and emphasized
      training that preserves manual-flying proficiency to counter
      automation dependence. The accident became a standard reference in
      airline automation-policy reviews and in the push toward
      "automation airmanship" curricula.#cn()
    ],
  ),
  references: (
    [NTSB, _Aircraft Accident Report: Asiana Airlines Flight 214_, NTSB/AAR-14/01 (2014) — probable cause and contributing factors (quoted).],
    [NTSB/AAR-14/01 (2014) — the autothrottle HOLD reversion and airspeed decay to ~103 kt.],
    [NTSB/AAR-14/01 (2014) — the captain's mental model of the autothrottle.],
    [Sarter, N. & Woods, D. (1995), "How in the world did we ever get into that mode?," _Human Factors_ — automation surprise.],
    [NTSB/AAR-14/01 (2014), safety recommendations on autoflight training and mode annunciation.],
  ),
  quote: [Complexities of the autothrottle and autopilot flight director systems contributed to the accident.],
  quote-source: "NTSB Aircraft Accident Report AAR-14/01, contributing factors, 2014",
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
  kind: "failure",
  summary: [
    The U.S. Navy entered World War II with the Mark 14 torpedo, so
    expensive that the Bureau of Ordnance had effectively forbidden
    live testing in peacetime. Through 1942 submarine crews reported
    torpedoes running deep, failing to detonate, or exploding
    prematurely; the Bureau insisted the weapon was sound and blamed
    the operators. It took eighteen months and the personal intervention
    of Admiral Charles Lockwood — who ordered fleet-level live-fire
    tests — to confirm three separate defects: the torpedo ran about
    ten feet too deep, its magnetic exploder fired erratically, and its
    contact pin crushed on a square hit. The fixes were simple once the
    defects were acknowledged. The binding constraint was institutional:
    a bureau insulated from the operators who knew the weapon did not work.
  ],
  sections: (
    // -- Background --
    [
      The Mark 14 was the U.S. Navy's standard submarine torpedo at the
      start of the Pacific War. It had been so expensive to test that
      the Bureau of Ordnance had effectively forbidden live trials in
      the 1930s; the weapon went to war essentially unproven against
      realistic conditions.#cn()
    ],
    // -- What Happened --
    [
      From early 1942, submarine crews reported a litany of failures:
      torpedoes that ran far below their set depth, magnetic exploders
      that detonated prematurely or not at all, and contact firing pins
      that crushed on a direct hit. The Bureau of Ordnance insisted the
      weapon worked and attributed the misses to crew error; captains
      who reported failures risked their careers.#cn()
    ],
    // -- The Investigation --
    [
      It took eighteen months and the intervention of Admiral Charles
      Lockwood, commander of the Pacific submarine force, who ordered
      fleet-level testing. A live-fire trial — and the USS Tinosa's
      July 1943 attack on the Tonan Maru, in which eleven torpedoes struck
      the stopped ship squarely and failed to detonate — forced the issue.
      The tests confirmed the
      torpedo ran about ten feet too deep, that the Mark 6 magnetic
      exploder failed routinely, and that the contact pin buckled on
      perpendicular impact.#cn()
    ],
    // -- The Capability Gap --
    [
      The defects were real and separate, but the binding constraint was
      institutional. The capability that was missing was not at the
      front; it was a channel by which the bureau that owned the weapon
      could be made to hear what the boats already knew. The fixes —
      recalibrating depth, deactivating the magnetic exploder, redesigning
      the contact pin — were small. The refusal to believe the operators
      was the expensive part.#cn()
    ],
    // -- Aftermath & Reform --
    [
      By late 1943 the three defects were corrected and the Mark 14
      became an effective weapon for the rest of the war. The episode
      entered U.S. Navy institutional history as the canonical case of a
      procurement bureau insulated from operator feedback, and is cited
      in modern organizational-learning literature on the cost of
      suppressing field reports.#cn()
    ],
  ),
  references: (
    [Blair, C. (1975), _Silent Victory: The U.S. Submarine War Against Japan_ — operator reports and the Bureau's resistance (paraphrased).],
    [Rowland, B. & Boyd, W. (1953), _U.S. Navy Bureau of Ordnance in World War II_ — testing policy and the three defects.],
    [Blair (1975) — the USS Tinosa's July 1943 attack (eleven consecutive duds on a stopped target) and Lockwood's fleet-level testing.],
    [Naval History and Heritage Command, Mark 14 torpedo files — depth error, Mark 6 magnetic exploder, contact-pin failure.],
    [Edmondson, A. (2018), _The Fearless Organization_ — suppression of field reports as an organizational-learning failure.],
  ),
  quote: [The Bureau certified the weapon; field reports of failure were treated as evidence of operator error.],
  quote-source: "Paraphrasing Blair, Silent Victory, 1975",
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
    [The USS Tinosa fired a string of torpedoes that struck a stopped ship and failed to detonate before the bureau accepted the diagnosis. What is the operator-evidence threshold in your domain that would force the equivalent institutional acknowledgment — and how would you make sure it is reached before the cost is paid?],
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
  kind: "failure",
  summary: [
    The April 1980 mission to rescue fifty-two American hostages held at
    the U.S. embassy in Tehran was aborted at a desert staging point when
    three of eight helicopters were lost to mechanical and weather
    problems. During the withdrawal a helicopter collided with a refueling
    C-130, killing eight servicemembers; the hostages remained captive for
    another nine months. The Holloway Commission found the operation had
    been assembled ad hoc: each service contributed its own units,
    equipment, and command relationships, the aircrews had not trained
    together, and there was no standing joint special-operations command
    to own the mission. The capability had to be improvised, and the
    improvisation failed. Eagle Claw catalyzed the creation of JSOC, the
    Goldwater-Nichols reforms, and ultimately U.S. Special Operations Command.
  ],
  sections: (
    // -- Background --
    [
      In November 1979, Iranian revolutionaries seized the U.S. embassy
      in Tehran and took fifty-two Americans hostage. After months of
      failed diplomacy, the Carter administration authorized a military
      rescue. No standing joint special-operations command existed to
      plan or execute it; the force had to be assembled from units drawn
      separately from the Army, Navy, Marines, and Air Force.#cn()
    ],
    // -- What Happened --
    [
      On 24 April 1980, the mission staged at a remote site code-named
      Desert One. Three of the eight RH-53 helicopters were disabled by
      a dust storm and mechanical failure, dropping the force below the
      minimum needed; the commander aborted. During the withdrawal a
      helicopter collided with a C-130 tanker, and the resulting fire
      killed eight servicemembers. The mission failed before reaching
      Tehran.#cn()
    ],
    // -- The Investigation --
    [
      The Holloway Special Operations Review Group identified the
      operation's "ad hoc-ery" as central: each service contributed its
      own units, equipment, command relationships, and communications;
      the aircrews had not trained together as a unit; the RH-53D had
      been selected partly for a minesweeping cover story rather than for
      fitness for a desert rescue. There was no standing organization to
      own the mission end to end.#cn()
    ],
    // -- The Capability Gap --
    [
      Each service was competent inside its own boundary. The capability
      that did not exist was the integration across them — a joint
      command, a common communications architecture, and a force that had
      trained together. That integration had to be improvised for a
      single high-stakes mission, and the improvisation could not hold.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Eagle Claw produced the Holloway Commission, the creation of the
      Joint Special Operations Command in 1980, and — alongside the 1983
      Beirut bombing and the Grenada invasion — the impetus for the
      Goldwater-Nichols Act of 1986 and the Nunn-Cohen Amendment
      establishing U.S. Special Operations Command in 1987. The reform
      built the institution the mission had needed and not had.#cn()
    ],
  ),
  references: (
    [Holloway Special Operations Review Group, _Rescue Mission Report_ (1980) — the ad-hoc assembly and equipment choices (paraphrased).],
    [Holloway Commission (1980) — the Desert One sequence and the helicopter–C-130 collision.],
    [Goldwater-Nichols Department of Defense Reorganization Act of 1986, Pub. L. 99-433.],
    [Nunn-Cohen Amendment (1986), establishing U.S. Special Operations Command (1987).],
    [Locher, J. (2002), _Victory on the Potomac_ — the reform arc from Desert One to Goldwater-Nichols.],
  ),
  quote: [The mission was ad hoc — assembled from units, equipment, and command relationships that had never operated together.],
  quote-source: "Paraphrasing the Holloway Special Operations Review Group, 1980",
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
  kind: "failure",
  summary: [
    Shortly after takeoff from Larnaca in August 2005, the crew of
    Helios 522 misread a warning horn. The same intermittent horn that
    signals an incorrect takeoff configuration on the ground sounds, in
    flight, when cabin altitude climbs past about 10,000 feet — and the
    pressurization selector had been left in "manual" after a leak check
    the night before. The cabin never pressurized. The crew,
    troubleshooting the wrong fault, lost consciousness to hypoxia; the
    Boeing 737 flew on autopilot until it ran out of fuel and crashed
    into a hillside near Athens, killing all 121 aboard. The investigation
    found a single cue carried two meanings with no differentiation, and
    the airline's training had drilled only the ground meaning.
  ],
  sections: (
    // -- Background --
    [
      Helios 522 was a Boeing 737 departing Larnaca, Cyprus, for Athens.
      The night before, engineers had run a pressurization leak check and
      left the cabin-pressurization selector in the "manual" position.
      The pre-flight checks did not catch it, and the aircraft departed
      with its pressurization system not set to maintain cabin altitude
      automatically.#cn()
    ],
    // -- What Happened --
    [
      As the aircraft climbed on 14 August 2005, the cabin failed to
      pressurize and a warning horn sounded. On the 737 the same horn
      indicates an incorrect takeoff configuration on the ground and
      excessive cabin altitude in flight. The crew interpreted it as a
      configuration warning and spent minutes troubleshooting the wrong
      problem while hypoxia set in. By the time the aircraft neared Athens
      the flight crew was incapacitated; it circled on autopilot until
      fuel exhaustion and crashed, killing all 121 aboard.#cn()
    ],
    // -- The Investigation --
    [
      The Hellenic Air Accident Investigation Board found the crew's
      misidentification of the cabin-altitude warning as a
      takeoff-configuration warning to be a critical, irrecoverable error.
      The single horn carried two meanings with no differentiation between
      them, and the airline's training had emphasized only the ground
      meaning; the in-flight case was an edge condition the crew had not
      been prepared to recognize.#cn()
    ],
    // -- The Capability Gap --
    [
      Helios 522 is the textbook example of a single cue carrying two
      meanings without differentiation — an interface that lied by
      ambiguity while the training filled in only one of the two meanings.
      The missing capability was a cue, or a training regime, that
      distinguished the deadly in-flight meaning from the routine ground
      one before the operators had to guess under hypoxia.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The investigation drove changes to Boeing's warning logic and to
      pressurization-related training and checklists across operators;
      later 737 variants distinguish the cabin-altitude warning from the
      takeoff-configuration warning. The accident is a standard case
      study in cue ambiguity, pre-flight verification, and the physiology
      of hypoxia in human-factors curricula.#cn()
    ],
  ),
  references: (
    [Hellenic Air Accident Investigation & Aviation Safety Board, _Aircraft Accident Report_ 11/2006 — probable cause and the warning misinterpretation (paraphrased).],
    [AAIASB Report 11/2006 — the manual pressurization selector and failure to pressurize.],
    [AAIASB Report 11/2006 — the dual-meaning warning horn and the training emphasis.],
    [Boeing 737 Flight Crew Operations Manual — configuration and cabin-altitude warnings.],
    [Reason, J. (1990), _Human Error_ — Helios 522 as a worked case of cue ambiguity.],
  ),
  quote: [The crew's interpretation of the cabin-altitude warning horn as a takeoff-configuration warning was a critical and irrecoverable error.],
  quote-source: "Paraphrasing the Hellenic AAIB Final Report on Helios 522, 2006",
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
  kind: "failure",
  summary: [
    While polishing the fuselage of a Boeing 757 in Lima in October 1996,
    maintenance staff taped over the static ports and failed to remove the
    tape before flight. With the static system blocked, the aircraft's
    altimeters, airspeed indicators, and altitude-alert and overspeed
    warnings all read inconsistently. The crew received a cascade of
    contradictory warnings — overspeed, stick shaker, ground proximity —
    and could not determine their true altitude or speed. Believing they
    were higher than they were, they flew into the Pacific, killing all 70
    aboard. The investigation named the maintenance error as the primary
    cause but stressed that every cockpit instrument depended on the same
    blocked sensor: the apparent redundancy was an illusion, and the
    crew's training had no procedure for "everything you see is wrong."
  ],
  sections: (
    // -- Background --
    [
      AeroPerú 603 was a Boeing 757 night departure from Lima to Santiago.
      Before the flight, ground crew had covered the aircraft's static
      ports with adhesive tape during cleaning and polishing of the
      fuselage, and the tape was not removed. The static ports feed the
      instruments that tell the crew their altitude and airspeed.#cn()
    ],
    // -- What Happened --
    [
      On 2 October 1996, the aircraft took off into darkness over the
      ocean with its static system blocked. Altimeters, airspeed
      indicators, and the altitude-alert and overspeed systems all
      produced false and contradictory readings. The crew received
      simultaneous overspeed and stall warnings and ground-proximity
      alerts they could not reconcile. Believing they were higher than
      they were, they descended and struck the Pacific, killing all 70
      aboard.#cn()
    ],
    // -- The Investigation --
    [
      The Peruvian accident investigation identified the failure to remove
      the static-port tape as the primary cause, but emphasized that the
      cockpit had no independent reference by which to detect the
      inconsistency. Every instrument that should have flagged the failure
      drew on the same blocked source. The crew's training had no
      procedure for the case in which all primary instruments are
      simultaneously wrong.#cn()
    ],
    // -- The Capability Gap --
    [
      AeroPerú 603 is the case for redundancy that is not redundancy. The
      cockpit's apparent instrument redundancy was an illusion at the
      source — a common-cause failure that defeated every downstream
      display at once. The missing capability was both a maintenance
      control that made the blocked port impossible to miss and a
      procedure for flying when the instruments themselves cannot be
      trusted.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The accident reinforced industry maintenance practices for
      conspicuous covering and mandatory removal-verification of static
      ports and pitot tubes, and entered the human-factors literature as
      a worked example of common-cause failure and the limits of crew
      training under total instrument corruption. It is paired with other
      pitot-static events in discussions of air-data integrity.#cn()
    ],
  ),
  references: (
    [Peru Dirección General de Aeronáutica Civil, accident investigation board, final report on AeroPerú 603 (December 1996; with NTSB/FAA/Boeing participation) — primary cause and the instrument cascade (paraphrased).],
    [Peru CIAA report (1996) — the static-port tape and the contradictory warnings.],
    [Peru CIAA report (1996) — the absence of an independent cockpit reference.],
    [Leveson, N. (2011), _Engineering a Safer World_ (STAMP) — common-cause failure.],
    [Dismukes, Berman & Loukopoulos (2007), _The Limits of Expertise_ — crew performance under instrument failure.],
  ),
  quote: [The crew received contradictory indications they could neither reconcile nor override.],
  quote-source: "Paraphrasing the Peruvian DGAC / Comisión Investigadora de Accidentes de Aviación report on AeroPerú 603, 1996",
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
  kind: "failure",
  summary: [
    On approach to Houston in February 2019, the first officer of Atlas
    Air 3591 — an Amazon Prime Air cargo flight — inadvertently triggered
    the go-around mode during a turbulent descent. Experiencing a
    somatogravic illusion that the aircraft was pitching up, he pushed the
    nose down sharply and dove the Boeing 767 freighter into Trinity Bay,
    killing all three aboard. The NTSB found the first officer had a long,
    undisclosed history of training failures across multiple carriers —
    and that Atlas could not see it, because the Pilot Records Database
    mandated by Congress after Colgan Air 3407 (Case 43) was not yet
    operational. Atlas relied on the older PRIA system, which surfaced
    only five years of history. The case is the live recurrence of Colgan:
    the information existed; the data-flow system was not yet complete.
  ],
  sections: (
    // -- Background --
    [
      Atlas Air 3591 was a Boeing 767 freighter operating for Amazon
      Prime Air from Miami to Houston. The first officer had failed
      training events at several previous employers and had not disclosed
      them on his Atlas application. At the time of hiring, the Pilot
      Records Database directed by Congress after Colgan Air 3407 was not
      yet operational; Atlas used the older PRIA system, which required
      only five years of records.#cn()
    ],
    // -- What Happened --
    [
      On 23 February 2019, during a turbulent descent toward Houston, the
      first officer inadvertently activated the aircraft's go-around mode,
      which commanded a pitch-up. Experiencing a somatogravic illusion
      that the nose was rising into a stall, he pushed forward hard. The
      767 entered a steep dive from which the crew did not recover and
      crashed into Trinity Bay, killing all three aboard.#cn()
    ],
    // -- The Investigation --
    [
      The NTSB found the probable cause to be the first officer's
      inappropriate response to the inadvertent go-around activation,
      driven by a startle and spatial-disorientation response, and
      identified his pattern of training deficiencies and Atlas's
      inability to access his full record as contributing factors. The
      records that would have informed the hiring decision existed but
      did not reach it.#cn()
    ],
    // -- The Capability Gap --
    [
      Atlas Air 3591 is the iteration test of the Colgan reform. The
      reform partially worked — the Pilot Records Database had been
      authorized — but it was not yet operational and its coverage was
      incomplete, so the same information-flow gap that killed fifty
      people in 2009 was still partly open in 2019. Partial implementation
      of a remedy leaves a measurable harm inside the aperture.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The PRD final rule was published in 2021 and became effective for
      Part 121 carriers in 2022, with full historical coverage phasing in
      through 2024 — closing the gap the case exposed. Atlas 3591 is cited
      in implementation-fidelity discussions as evidence that a remedy is
      only as good as its completed coverage.#cn()
    ],
  ),
  references: (
    [NTSB, _Aircraft Accident Report: Atlas Air Flight 3591_, NTSB/AAR-20/02 (2020) — probable cause and contributing factors (paraphrased).],
    [NTSB/AAR-20/02 (2020) — the inadvertent go-around activation and the dive into Trinity Bay.],
    [NTSB/AAR-20/02 (2020) — the first officer's training history and Atlas's record-access limits.],
    [FAA Pilot Records Database final rule (_Federal Register_, 10 June 2021; subpart B/C compliance from June 2022, full historical coverage by September 2024); Pilot Records Improvement Act of 1996.],
    [GAO reports on Pilot Records Database implementation (2014–2024).],
  ),
  quote: [Atlas Air did not have access to portions of the first officer's training record that would have informed its hiring decision.],
  quote-source: "Paraphrasing NTSB Aircraft Accident Report AAR-20/02, 2020",
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
  kind: "failure",
  summary: [
    Forty-three seconds after takeoff from Taipei Songshan in February
    2015, the right engine of a TransAsia ATR 72 auto-feathered following
    a sensor fault. Working from memory under acute time pressure, the
    crew shut down the left engine — the one still producing thrust —
    leaving the aircraft with no power and too little altitude to recover.
    It clipped a viaduct, struck a taxi, and crashed into the Keelung
    River, killing 43 of the 58 aboard. The Aviation Safety Council found
    the captain had failed proficiency checks in the year before the
    accident and that the crew had not used the published engine-shutdown
    checklist, responding instead from a flawed memory of the procedure.
    The wrong-engine error mirrors Kegworth (Case 30) twenty-six years
    earlier.
  ],
  sections: (
    // -- Background --
    [
      TransAsia 235 was an ATR 72-600 twin-turboprop departing Taipei
      Songshan. The captain had failed simulator proficiency checks in
      the year before the accident and had been noted for weak handling
      of abnormal procedures. The published response to an engine failure
      was a checklist-driven procedure; under stress, crews tend to revert
      to memory.#cn()
    ],
    // -- What Happened --
    [
      On 4 February 2015, forty-three seconds after takeoff, the right
      engine's autofeather system activated following a faulty sensor
      signal — the engine itself was capable of producing power. The crew,
      identifying an engine problem, shut down the left engine, which was
      operating normally. With neither engine now producing useful thrust
      and the aircraft low and slow, it stalled, clipped a viaduct and a
      taxi, and crashed into the Keelung River, killing 43 of the 58
      aboard.#cn()
    ],
    // -- The Investigation --
    [
      The Taiwan Aviation Safety Council found the crew failed to identify
      which engine had actually failed and shut down the wrong one. They
      did not follow the published engine-flameout and shutdown checklist,
      acting from memory under time pressure; the misidentification took
      roughly fifteen seconds. The captain's documented proficiency
      deficiencies and the airline's training and crew-resource-management
      shortfalls were contributing factors.#cn()
    ],
    // -- The Capability Gap --
    [
      TransAsia 235 is the modern recurrence of the wrong-engine pattern
      that destroyed British Midland 92 at Kegworth in 1989 (Case 30).
      Crews under acute time pressure default to memory; if the memory is
      incomplete, the action follows the flawed memory rather than the
      checklist. The missing capability is a procedure design and training
      regime that keeps the verification step in the loop precisely when
      stress pushes operators to skip it.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The ASC issued recommendations on TransAsia's pilot training,
      proficiency-check standards, and crew-resource management; the
      airline ceased operations in 2016, after a second fatal accident the
      year before. The case is used to argue that the persistence of the
      wrong-engine pattern across a quarter-century reflects an
      un-engineered intervention, not merely individual error.#cn()
    ],
  ),
  references: (
    [Aviation Safety Council (Taiwan), _Aviation Occurrence Report: TransAsia Airways Flight GE235_, final report (2016) — findings and the wrong-engine shutdown (paraphrased).],
    [ASC final report (2016) — the autofeather event and the crash sequence.],
    [ASC final report (2016) — non-use of the checklist and the captain's proficiency record.],
    [AAIB (UK), _British Midland Flight 92 (Kegworth)_ report (1990) — the antecedent wrong-engine case.],
    [Dismukes, Berman & Loukopoulos (2007), _The Limits of Expertise_ — memory-driven response under time pressure.],
  ),
  quote: [The flight crew was unable to identify which engine had failed and shut down the operating engine in error.],
  quote-source: "Paraphrasing the Aviation Safety Council (Taiwan) Final Report on TransAsia 235, 2016",
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
