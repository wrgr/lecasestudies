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
  impact: "17 sailors killed in two avoidable destroyer collisions in the Western Pacific within nine weeks",
  diagram: dgm.dgm-fitzgerald,
  kind: "failure",
  sections: (
    // -- Background --
    [
      The two destroyers that collided in the summer of 2017 belonged to
      the U.S. Navy's forward-deployed forces in Japan — the Seventh Fleet
      ships kept at the highest operational tempo in the surface fleet. For
      more than a decade that tempo had been paid for out of training. In
      2003 the Navy disestablished the in-person Surface Warfare Officers
      School division-officer course that had taught new officers
      seamanship, navigation, and the international rules of the road, and
      replaced it with a set of self-study CD-ROMs — known in the fleet as
      "SWOS in a Box" — that officers were expected to complete on their own
      at sea.#cn() The change saved schoolhouse time and money; it also
      removed the structured setting in which the fundamentals had been
      taught, practiced, and tested. Forward-deployed ships compounded the
      problem: unlike vessels based in the United States, which rotate
      through a defined cycle of maintenance, training, and deployment, the
      Japan-based ships were treated as continuously available, and the
      training time that cycle protects was the first thing spent when
      demand rose.

      By 2017 the erosion was measurable. The Government Accountability
      Office reported that, as of June 2017, 37 percent of the warfare
      certifications held by the cruiser and destroyer crews based in
      Japan — including the certifications for basic seamanship — had
      expired, a fivefold increase since 2015.#cn() Ships were operating in
      some of the world's busiest waterways with lapsed qualifications
      because the schedule never left room to renew them, and expired
      certifications had become so routine that they were waived rather than
      corrected.
    ],
    // -- What Happened --
    [
      On 17 June 2017 the USS Fitzgerald, steaming off the Izu Peninsula
      south of Tokyo Bay, crossed into the path of the container ship ACX
      Crystal and was struck on the starboard side; seven sailors drowned
      in their flooding berthing compartment. The Fitzgerald was the
      give-way vessel in a crossing situation and had the clearer picture,
      yet its bridge team took no early or substantial action to avoid the
      much larger ship, and an unexplained course change in the final
      minutes turned the destroyer directly into the collision.#cn() The
      container ship, many times the destroyer's displacement, opened the
      hull below the waterline and flooded two berthing compartments where
      the crew was sleeping; only the damage-control efforts of the
      surviving sailors kept the Fitzgerald from sinking.

      Nine weeks later, on 21 August 2017, the USS John S. McCain collided
      with the tanker Alnic MC in the Singapore Strait; ten sailors died and
      dozens more were injured. In the minutes before impact the watch team
      believed it had lost steering. It had not. While shifting control of
      the throttles between consoles, a watchstander had unintentionally
      transferred steering to a different station — steering was available
      the entire time, but no one on the bridge understood the ship-control
      console well enough to recognize what had happened or to take it
      back.#cn() The destroyer swung across the strait and into the path of
      the tanker, which struck it on the port side at the berthing
      compartments, repeating in nine weeks the same lethal geometry.
    ],
    // -- The Investigation --
    [
      The Navy's own Comprehensive Review, completed in November 2017,
      judged both collisions avoidable and traced them to deficiencies in
      the most basic skills of mariners — watchstanding, navigation, and the
      operation of the ships' own equipment.#cn() The National
      Transportation Safety Board, investigating independently, arrived at
      the same place by a different road: its report on the McCain found the
      probable cause to be a lack of effective operational oversight by the
      Navy that produced insufficient training and inadequate bridge
      operating procedures.#cn() The board also faulted the console itself.
      The McCain's integrated bridge used a touch-screen steering and
      throttle system the Navy had adopted across the destroyer fleet, and
      its design made the unintended, unilateral transfer of control not
      merely possible but easy — a human-factors trap waiting for an
      under-trained crew.#cn() The two investigations reinforced each other.
      On the Fitzgerald the NTSB found a bridge team that did not use its
      radars or lookouts effectively and did not communicate as the
      situation developed; on the McCain it found watchstanders who had
      never been drilled on the casualty they now faced. In both cases the
      crews were fatigued, working watch rotations that left little room for
      rest, and in both cases the proximate errors sat on top of the same
      foundation — sailors asked to do, in the dark and at speed, things
      their training had never reliably given them.
    ],
    // -- The Capability Gap --
    [
      What makes Fitzgerald and McCain the canonical training-gap case is
      that the gap was invisible from inside the system. The Strategic
      Readiness Review, delivered in December 2017, described risks that had
      accumulated over time and done so insidiously: the dynamic environment
      of the Western Pacific had normalized to the point where individuals
      and groups could no longer recognize that the very processes meant to
      surface readiness shortfalls had themselves stopped working.#cn()
      Stated readiness and actual readiness had diverged for more than a
      decade, and the instruments that should have caught the divergence
      kept reporting that all was well. The divergence was not a secret kept
      from leadership so much as a fact the system had stopped being able to
      see: commanders who asked for more time to train were told the
      mission came first, and the readiness reports continued to register
      green. The cost of the gap was not paid in a failed inspection. It was
      paid in seventeen lives, two ships, and two months.
    ],
    // -- Aftermath & Reform --
    [
      The response was the most far-reaching surface-warfare reform in a
      generation. The Navy reconstituted formal, in-person officer
      training, rebuilding and lengthening the junior-officer pipeline it
      had dismantled in 2003; stood up a Ready-for-Sea Assessment and
      tighter oversight of forward-deployed readiness; and adopted circadian
      watchbills to manage the crew fatigue the reviews had documented.#cn()
      Acting on the NTSB's findings, the Navy also moved to replace the
      touch-screen throttle and helm controls with physical throttles and a
      traditional wheel — an admission that the interface, not only the
      people, had been part of the failure. Commanding officers and senior
      watchstanders were relieved and disciplined, and the Navy stood up a
      dedicated command in Japan to oversee the readiness of its
      forward-deployed ships, so that certification and training could no
      longer be quietly traded away for operational tempo. The case opens
      this book because it shows both how far a capability system can erode
      before anyone notices and what it costs to rebuild one after the fact
      rather than before — when the bill arrives not as a budget line but as
      a casualty list.
    ],
  ),
  references: (
    [#link("https://features.propublica.org/navy-accidents/us-navy-crashes-japan-cause-mccain/")[T. C. Miller, M. Faturechi & R. Rotella, "Years of Warnings, Then Death and Disaster: How the Navy Failed Its Sailors," _ProPublica_ (2019)] — documents the 2003 shift from the in-person SWOS course to self-study CD-ROMs.],
    [U.S. Government Accountability Office, _Navy Readiness: Actions Needed to Address Persistent Maintenance, Training, and Other Challenges Affecting the Fleet_, #link("https://www.gao.gov/products/gao-17-809t")[GAO-17-809T] (Sept. 2017) — 37% of Japan-based cruiser/destroyer warfare certifications expired as of June 2017.],
    [National Transportation Safety Board, _Collision between USS Fitzgerald and MV ACX Crystal_, #link("https://www.ntsb.gov/investigations/AccidentReports/Reports/MAR2002.pdf")[NTSB/MAR-20/02] (2020), case DCA17PM018 — sequence and probable cause.],
    [National Transportation Safety Board, _Collision between USS John S. McCain and Tanker Alnic MC_, #link("https://www.ntsb.gov/investigations/AccidentReports/Reports/MAR1901.pdf")[NTSB/MAR-19/01] (2019), case DCA17PM029 — sequence of events.],
    [U.S. Navy, _Comprehensive Review of Recent Surface Force Incidents_ (Nov. 2017) — both collisions judged avoidable; deficiencies in seamanship, navigation, and equipment operation.],
    [NTSB/MAR-19/01 (2019) — analysis and probable cause: insufficient training and inadequate bridge operating procedures stemming from a lack of effective Navy operational oversight.],
    [#link("https://features.propublica.org/navy-uss-mccain-crash/navy-installed-touch-screen-steering-ten-sailors-paid-with-their-lives/")[R. Rotella et al., "The Navy Installed Touch-Screen Steering Systems to Save Money. Ten Sailors Paid With Their Lives.," _ProPublica_ (2019)] — the McCain's ship-control console design.],
    [U.S. Navy, _Strategic Readiness Review_ (Dec. 2017) — systemic erosion of readiness; risks that "accumulated over time and did so insidiously."],
    [U.S. Navy, _Comprehensive Review_ (2017), corrective actions; NTSB/MAR-19/01 safety recommendations; #link("https://news.usni.org/2020/09/03/ntsb-unexplained-course-change-was-a-critical-error-in-fatal-uss-fitzgerald-collision")[USNI News] coverage of the reforms (2017–2020).],
  ),
  quote: [The risks that were taken in the Western Pacific accumulated over time and did so insidiously.],
  quote-source: "U.S. Navy Strategic Readiness Review, 2017",
  le-insight: [
    Fitzgerald/McCain is the canonical Training Gap case because the gap was
    invisible from inside the system. Operational tempo and self-study
    "training" combined to produce a fleet whose stated readiness and actual
    readiness diverged for more than a decade. Seven sailors died on
    Fitzgerald; ten on McCain. The cost of the divergence was paid in lives
    long after it could have been measured in dollars or inspections.
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
    [GAO-17-809T, _Navy Readiness_ (2017)],
    [Rasmussen (1997), "Risk management in a dynamic society"],
    [Snook, _Friendly Fire_ (2000)],
  ),
  reflection-list: (
    [The Navy replaced classroom and simulator instruction with CD-ROM self-study in 2003. What measurement would have detected the capability shortfall before 2017?],
    [The Strategic Readiness Review found the readiness-reporting system had itself stopped working. Design a capability-evidence pipeline that would not normalize its own gaps.],
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
  kind: "failure",
  sections: (
    // -- Background --
    [
      Air France Flight 447 left Rio de Janeiro for Paris on the night of
      31 May 2009 with 228 people aboard an Airbus A330 — a highly
      automated, fly-by-wire airliner with one of the best safety records
      in the sky. Its route crossed the Intertropical Convergence Zone, the
      band of towering equatorial thunderstorms that long-haul crews
      routinely pick their way around. What the crew could not see was a
      vulnerability already known to the manufacturer and the airline: the
      aircraft's pitot probes, which measure airspeed, were prone to brief
      blockage by high-altitude ice crystals. A series of unreliable-airspeed
      events on A330s and A340s had already prompted a program to replace
      the probes, and Air France had begun retrofitting its fleet — but the
      accident aircraft had not yet been modified.#cn()
    ],
    // -- What Happened --
    [
      A few hours into the flight, at 35,000 feet, the pitot probes iced
      over. The airspeed readings became invalid and the systems that depend
      on them responded as designed: the autopilot and autothrust
      disconnected and handed the aircraft to the crew, with the
      flight-control law degraded so that the envelope protections the
      pilots normally relied on were no longer there. The pilot flying
      responded with sustained nose-up inputs. The aircraft zoom-climbed,
      bled off speed, and entered an aerodynamic stall from which it never
      recovered, descending some 38,000 feet into the ocean in about four
      and a half minutes. The captain was on a scheduled rest break when the
      trouble began; the two first officers left at the controls could not
      reconcile the contradictory indications, and when the captain hurried
      back into the cockpit moments into the emergency, the attitude, the
      alarms, and the readouts gave him no quick way to see that his
      airplane was stalling. For much of the descent neither pilot seems to
      have registered that the other was holding the sidestick nearly full
      aft. The stall warning sounded for roughly fifty seconds; then, at the
      extreme angles of attack the aircraft reached, the airspeed data fell
      below the threshold the warning logic trusted and the alarm went
      silent — only to sound again each time the nose was lowered, which was
      the one input that would have begun a recovery. The system, in effect,
      warned against the correct action.#cn()
    ],
    // -- The Investigation --
    [
      The Bureau d'Enquêtes et d'Analyses (BEA), France's accident
      investigator, published its final report in July 2012. The probable
      cause was a chain: the temporary loss of valid airspeed from pitot
      icing, the crew's inappropriate control inputs that destabilized the
      flight path, and — decisively — the crew's failure to recognize that
      the aircraft had stalled and to apply the standard recovery.#cn() The
      pilots were not incompetent; they were operating outside anything
      their training had prepared them for, and the cues that should have
      told them they were stalling never registered. The BEA stated the
      training failure in institutional terms: "the combination of the
      warning system ergonomics, the conditions under which pilots are
      trained and exposed to stalls during their professional and recurrent
      training, did not result in reasonably reliable expected behaviour
      patterns."#cn()
    ],
    // -- The Capability Gap --
    [
      The gap was specific and, in hindsight, glaring. Airlines trained
      stall recognition and recovery at low altitude, in the takeoff and
      landing regime where stalls were thought to be the real risk. The
      flight simulators of the era could not faithfully reproduce how an
      airliner behaves in a fully developed stall at cruise altitude, so
      that scenario was simply never practiced. Crews were trained to
      *prevent* stalls and to manage an automated aircraft; they were not
      trained to *recover* a large jet hand-flown into a stall at 35,000
      feet, because the industry's training environment could not produce
      the situation. The trained capability envelope and the operational
      capability envelope had quietly diverged, and AF447 fell precisely
      into the gap between them.#cn() There was a deeper version of the same
      gap. Years of reliable automation had let routine hand-flying skills
      atrophy across the profession; pilots spent their careers managing
      systems rather than flying raw, and the rare moment when the
      automation handed control back — at night, in weather, with
      instruments in disagreement — was the moment they were least equipped
      to meet. The capability the airline assumed its pilots held was a
      capability the operation itself had slowly eroded.
    ],
    // -- Aftermath & Reform --
    [
      The BEA's final report carried dozens of safety recommendations whose
      reach went far beyond one airline. The vulnerable pitot probes were
      replaced across the fleet. The recommendations pressed for training in
      manual flying at high altitude, in approach-to-stall and full-stall
      recovery, and in handling unreliable airspeed, and for better
      angle-of-attack information in the cockpit.#cn() Most consequentially,
      the accident reshaped the global training standard: regulators moved
      to require Upset Prevention and Recovery Training — explicit
      instruction in manual handling and in recovering an aircraft from
      unusual attitudes and stalls — for airline pilots, closing at the
      regulatory level the gap that had been invisible at the airline
      level.#cn() AF447 is in this book because the crew performed exactly
      as trained. The training was the wrong training.
    ],
  ),
  references: (
    [Bureau d'Enquêtes et d'Analyses (BEA), _Final Report on the accident on 1 June 2009 to the Airbus A330-203 registered F-GZCP operated by Air France flight AF447_ (July 2012) — #link("https://www.faa.gov/sites/faa.gov/files/AirFrance447_BEA.pdf")[full report]: flight, aircraft, and the known pitot-icing vulnerability with retrofit pending.],
    [BEA, _Final Report AF447_ (2012) — accident sequence: autopilot/autothrust disconnection, degraded control law, sustained nose-up input, stall, and the stall-warning logic dropping out at high angle of attack.],
    [BEA, _Final Report AF447_ (2012) — probable cause: airspeed inconsistency from pitot icing, inappropriate control inputs, and failure to recognize and recover from the stall.],
    [BEA, _Final Report AF447_ (2012) — finding on warning-system ergonomics and stall-training conditions (quoted).],
    [G. Palmer / E. Strickland, "Air France Flight 447 Crash Caused by a Combination of Factors," _IEEE Spectrum_ (2014) — analysis of the divergence between the trained and operational envelopes.],
    [BEA, _Final Report AF447_ (2012), safety recommendations — pitot-probe replacement, manual high-altitude flying, approach-to-stall and stall recovery, unreliable-airspeed procedures, and angle-of-attack indication.],
    [European Union Aviation Safety Agency, Upset Prevention and Recovery Training (UPRT) requirements for airline pilots (phased in by 2019); ICAO, _Manual on Aeroplane Upset Prevention and Recovery Training_ (Doc 10011).],
  ),
  quote: [The crew never understood that they were stalling and consequently never applied a recovery manoeuvre.],
  quote-source: "BEA, Final Report on Air France Flight 447, July 2012",
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
  impact: "Partial meltdown of a Babcock & Wilcox PWR; minimal off-site dose; most serious accident in U.S. commercial nuclear history; catalyst for industry-wide reform",
  diagram: dgm.dgm-tmi,
  kind: "failure",
  sections: (
    // -- Background --
    [
      Unit 2 at Three Mile Island, near Harrisburg, Pennsylvania, was a
      Babcock & Wilcox pressurized-water reactor run by operators whose
      training emphasized large, fast, design-basis accidents — the
      worst-case ruptures the industry believed it most needed to guard
      against. The slow, ambiguous, small-break sequence that actually
      unfolded was not the scenario they had drilled.#cn() It should not
      have been a surprise. Eighteen months earlier, in September 1977, a
      nearly identical stuck-open relief valve had occurred at the
      Davis-Besse plant, another B&W reactor; operators there caught it, but
      neither the utility, the vendor, nor the Nuclear Regulatory Commission
      grasped the event's significance or pushed its lesson out to the
      fleet. The warning that might have prepared TMI's crew never reached
      them.#cn() Many of the operators had come up through the Navy's
      nuclear program and were capable, disciplined people; what they had
      been given was a body of training and a set of procedures built around
      the accidents the industry expected, not the one that the plant would
      actually hand them at four in the morning.
    ],
    // -- What Happened --
    [
      Early on 28 March 1979 a minor disturbance in the secondary cooling
      system tripped the reactor. A pilot-operated relief valve opened to
      bleed off pressure, as designed — and then stuck open, quietly
      draining coolant from the core. The control room gave the operators no
      honest picture of this: the indicator light reported the *command* to
      close the valve, not its actual position, so the panel said "closed"
      while the valve stayed open. Reading the rising pressurizer level as a
      sign the system was about to go "solid" with water, the operators
      throttled back the high-pressure injection that was the one thing
      feeding the starving core — cutting the coolant precisely when more was
      needed. About half the core melted. The crisis then deepened for days
      before it was understood: a hydrogen bubble in the reactor vessel
      raised fears of an explosion, conflicting information reached officials
      and the public, and the governor advised pregnant women and
      pre-school children within five miles to leave. The reactor was
      eventually brought to cold shutdown and Unit 2 was destroyed; off-site
      radiation release, as it turned out, was minimal.#cn()
    ],
    // -- The Investigation --
    [
      The President's Commission on the Accident at Three Mile Island — the
      Kemeny Commission — reported in October 1979. Its central finding
      inverted the industry's assumptions: "the fundamental problems are
      people-related problems and not equipment problems." The equipment, it
      judged, was good enough that, but for the human failures, the accident
      would have been a minor incident. The criticism reached past the
      operators to plant management, the utility, and the NRC itself — an
      institution-wide mindset that treated serious accidents as
      effectively impossible.#cn() The commission was specific about where
      capability had failed: operator training was too narrow and too
      oriented to theory rather than to the diagnosis of real,
      messy transients; the control room was a wall of nearly identical
      gauges and annunciators that buried the few signals that mattered; and
      procedures gave little help in an event that did not match the script.
    ],
    // -- The Capability Gap --
    [
      The gap was not a deficit of intelligence or diligence but of the
      right capability for the situation that arrived. Operators trained to
      recognize design-basis ruptures had no rehearsed model for an
      ambiguous cascade, and a control room whose indicators reported
      commands rather than states made the correct diagnosis nearly
      impossible to assemble in real time. Layered beneath that was a
      second-order failure: the capability to *learn* — to turn the
      Davis-Besse near-miss into fleet-wide knowledge — had itself broken
      down. The accident sat at the intersection of training, interface, and
      institutional memory, which is why it resists any single-cause
      reading.#cn()
    ],
    // -- Aftermath & Reform --
    [
      TMI did not produce another reactor accident. It produced a system of
      capability reform. Within nine months the industry created the
      Institute of Nuclear Power Operations (December 1979) to set operating
      standards, evaluate plants against them, and — directly addressing the
      Davis-Besse failure — force the systematic sharing of operating
      experience among utilities.#cn() The NRC overhauled operator licensing
      and required plant-referenced simulators and human-factors review of
      control rooms; it stationed resident inspectors at every plant,
      rebuilt off-site emergency planning, and tied operator training to a
      national accreditation standard so that the diagnosis of ambiguous
      transients — not just textbook ruptures — became something crews
      actually practiced. TMI is paired later in this book with INPO
      (Case 16) as
      its strongest argument: the same incident that exposed how training,
      interface, and institutional memory can fail together also generated
      the most durable example of engineered reform in the book.#cn()
    ],
  ),
  references: (
    [Kemeny Commission, _Report of the President's Commission on the Accident at Three Mile Island_ (Oct. 1979) — operator training oriented to large design-basis accidents.],
    [M. Rogovin & G. T. Frampton, _Three Mile Island: A Report to the Commissioners and to the Public_, NUREG/CR-1250 (U.S. NRC, 1980) — the September 1977 Davis-Besse stuck-PORV precursor and the failure to disseminate its lessons.],
    [U.S. Nuclear Regulatory Commission, #link("https://www.nrc.gov/reading-rm/doc-collections/fact-sheets/3mile-isle.html")[Backgrounder on the Three Mile Island Accident] — accident sequence, misleading PORV indication, throttled high-pressure injection, ~50% core damage, minimal off-site dose.],
    [Kemeny Commission (1979) — central conclusion that the fundamental problems were people-related, not equipment-related (quoted).],
    [C. Perrow, _Normal Accidents_ (1984); J. Reason, _Human Error_ (1990) — why ambiguous cascades defeat design-basis training and command-not-state interfaces.],
    [#link("https://www.inpo.info/history")[Institute of Nuclear Power Operations, "Our History"] — INPO established December 1979 to set standards and force sharing of operating experience; see also NEI, "Lessons from the 1979 Accident at Three Mile Island."],
    [J. V. Rees, _Hostages of Each Other: The Transformation of Nuclear Safety since Three Mile Island_ (Univ. of Chicago Press, 1994) — TMI as the origin of systematic capability reform.],
  ),
  quote: [The fundamental problems are people-related problems and not equipment problems.],
  quote-source: "Kemeny Commission Report on Three Mile Island, 1979",
  le-insight: [
    TMI is the textbook moment when an industry discovered that its
    capability assumptions did not survive contact with operational
    reality. Training to design-basis events left the operators blind to
    the genuinely ambiguous failures that complex systems actually
    produce. The human element is not a residual risk but the dominant
    one.
  ],
  lens-approach: [
    LENS uses TMI in LEN 1 as the foundational problem-framing case: when
    trained scenarios and operational scenarios diverge, the divergence
    is the real risk. LEN 5 examines the control-room interface and the
    gap between what indicators displayed and what operators inferred;
    the pairing with INPO (Case 16) is the Failure-to-Reform arc this
    book treats as its strongest argument.
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
  title: "Marine Corps Training in the INDOPACOM AOR",
  year: "ongoing",
  domains-list: ("defense",),
  modes-code: "TK",
  impact: "Structural readiness gap in DoD's stated top-priority theater",
  diagram: dgm.dgm-indopacom,
  body: [
    The 2022 National Defense Strategy designates the Indo-Pacific as DoD's
    priority theater and China as its "pacing challenge." The U.S. Marine
    Corps has nevertheless been unable to meet training requirements at
    Indo-Pacific training ranges for nearly a decade. GAO-24-107463
    examined military readiness across services and domains; this case
    focuses on the Marine Corps strand, where the agency documented
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
  impact: "Fleet mission-capable rate ~51–55% vs. 90% target; Air Force short ~1,000 F-35A maintainers (GAO-23-105341); ~$1.58T projected lifecycle sustainment cost (CAPE 2023)",
  diagram: dgm.dgm-f35,
  body: [
    The F-35 is the most expensive weapons program in history. GAO has
    documented year after year that maintenance challenges — driven by
    training deficits, technical-data gaps, and personnel shortages —
    are the binding constraint on the fleet's readiness. None of the
    three variants met desired mission-capable rates from FY2018 to
    FY2023. Average depot repair turnaround is 141 days against a 60- to
    90-day target. The Air Force alone is short approximately one
    thousand trained F-35A maintainers (GAO-23-105341).

    Of sixty-eight essential maintenance tasks, the military cannot
    independently perform twenty-four — a dependence on contractor
    logistics that is operationally vulnerable in contested environments.
    Depot establishment is six years behind schedule, and the training
    system cannot keep pace with fleet growth. The platform was fielded
    faster than the human-capability infrastructure to sustain it:
    aircraft arrived; the people to keep them flying did not.
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
  impact: "24% of U.S. KIA in Desert Storm from friendly fire (35 of 148, per the DoD friendly-fire report) — an order of magnitude above the historical baseline",
  diagram: dgm.dgm-fratricide,
  body: [
    Friendly fire in Desert Storm produced an unprecedented share of
    coalition casualties: thirty-five of one hundred forty-eight U.S.
    combat dead, and nine of the British dead — eight of the British
    KIA from a single A-10 attack on Warrior infantry-fighting
    vehicles. The rate was an order of magnitude above the historical
    two-percent baseline documented by Shrader in 1982. In another
    incident, A-10 fire on LAV-25 light-armored vehicles near Khafji
    killed seven Marines after a forward controller cleared the
    strike without realizing the vehicles were friendly. In
    Afghanistan, a B-52 JDAM strike on a position near Qala-i-Jangi
    killed three U.S. Special Forces after a controller's GPS reset
    its coordinates following a battery change; in 2014 a B-1
    targeting pod could not detect the infrared strobes worn by U.S.
    SOF on the ground, and the resulting strike killed five.

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
    hospital — focal point of a multi-decade argument about resident
    physician fatigue — the Accreditation Council for Graduate
    Medical Education (ACGME) imposed an 80-hour weekly cap on
    resident work hours in 2003. In 2011 the rules tightened
    further: first-year residents were capped at 16-hour shifts. The
    intent was to address a documented training-gap pattern:
    residents making fatigue-related errors they would not have made
    rested.

    The intervention was a single-variable change to a complex
    capability system. Two large RCTs — FIRST (Bilimoria et al.,
    NEJM 2016) and iCOMPARE (Silber et al., NEJM 2019) — compared
    flexible duty-hour policies with the strict caps. Both found no
    difference in 30-day patient outcomes; both surfaced increased
    hand-offs per admission, themselves a documented site of error.
    Resident continuity-of-care and procedural exposure decreased;
    residents reported feeling less prepared rather than more
    rested. In 2017 ACGME relaxed the 16-hour intern cap.
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
    The clearest healthcare case in the dataset of a single-variable
    intervention into a multi-variable capability system. Pairs with
    Case 33 (fratricide) and Case 11 (V-22). The success cases —
    Keystone (14), CRM (12), Korean Air (23) — engineered
    supervisory, hand-off, and measurement architecture *together
    with* the behavioral change.
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
