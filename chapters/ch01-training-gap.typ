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
  summary: [
    In the summer of 2017 two U.S. Navy destroyers of the forward-deployed
    Seventh Fleet collided with merchant ships nine weeks apart, killing
    seventeen sailors — seven on the _Fitzgerald_, ten on the _John S.
    McCain_. Their crews' seamanship, navigation, and console skills had
    eroded under a decade of relentless operational tempo and the self-study
    "training" that replaced the in-person school the Navy cut in 2003.
    Investigations by the Navy and the NTSB judged both collisions avoidable
    and traced them to insufficient training and weak oversight; on the
    McCain, a confusing touch-screen helm let a watch team believe it had
    lost steering it never actually lost. The case is this book's canonical
    training gap: stated readiness and real readiness diverged for years, and
    the system could no longer see the difference.
  ],
  sections: (
    // -- Background --
    [
      The destroyers belonged to the forward-deployed Seventh Fleet in Japan,
      kept at the fleet's highest tempo — where training was the first thing
      spent. Unlike home-ported ships, which rotate through a dedicated
      work-up cycle before deploying, the forward-deployed force was expected
      to be continuously available, so there was rarely a quiet stretch in
      which to recover a lapsed qualification. In 2003 the Navy replaced its
      in-person Surface Warfare Officers School course with self-study
      CD-ROMs, "SWOS in a Box."#cn() By 2017 the GAO found 37% of the
      Japan-based ships' warfare certifications — including basic seamanship —
      expired, a fivefold rise since 2015, with the lapses routinely waived
      rather than fixed.#cn()
    ],
    // -- What Happened --
    [
      On 17 June 2017 the Fitzgerald, the give-way vessel in a busy shipping
      channel, took no early action and was struck by the container ship ACX
      Crystal off the coast of Japan; the sea poured into a berthing
      compartment where the crew slept, and seven sailors drowned before they
      could escape.#cn() Nine weeks later the John S. McCain collided with the
      tanker Alnic MC near Singapore, killing ten: while shifting throttle
      control between consoles, a watchstander unknowingly handed off steering
      to another station, the ship turned across the strait's traffic, and no
      one on the bridge understood the touch-screen helm well enough to see
      what had happened.#cn()
    ],
    // -- The Investigation --
    [
      The Navy's Comprehensive Review (2017) judged both collisions avoidable,
      citing failures in basic seamanship, navigation, and operating the
      ships' own equipment.#cn() The NTSB found the McCain's probable cause to
      be a lack of Navy oversight that produced insufficient training and
      inadequate bridge procedures,#cn() and faulted the design of the
      touch-screen helm, installed to modernize the bridge, whose blending of
      steering and throttle made an unintended transfer of control easy to
      trigger and hard to notice — a trap waiting for an under-trained crew.#cn()
    ],
    // -- The Capability Gap --
    [
      The gap was invisible from inside. The Strategic Readiness Review
      (2017) described risks that "accumulated over time and did so
      insidiously," the system no longer able to see that the processes
      meant to surface shortfalls had themselves failed.#cn() Each individual
      waiver was locally defensible — a deadline met, a deployment kept — but
      in aggregate they hollowed out the force while every readiness dashboard
      still reported green. Stated and actual readiness had diverged for a
      decade; the cost arrived as seventeen lives, not a failed inspection.
    ],
    // -- Aftermath & Reform --
    [
      The reforms were the deepest in a generation: the in-person officer
      pipeline was rebuilt and lengthened, a Ready-for-Sea Assessment and a
      forward-readiness command stood up, circadian watchbills adopted to
      fight fatigue, and the touch-screen helm slated for replacement by a
      conventional wheel and throttle.#cn() Each change conceded that the
      training and the interface had been real requirements all along — and
      that trading them for tempo had only moved the cost onto two ships full
      of people.
    ],
  ),
  references: (
    [T. C. Miller, M. Faturechi & R. Rotella, #link("https://features.propublica.org/navy-accidents/us-navy-crashes-japan-cause-mccain/")["Years of Warnings, Then Death and Disaster,"] _ProPublica_ (2019) — the 2003 SWOS-in-a-Box shift.],
    [GAO, _Navy Readiness_, #link("https://www.gao.gov/products/gao-17-809t")[GAO-17-809T] (Sept. 2017) — 37% of Japan-based warfare certifications expired by June 2017.],
    [NTSB, _Collision between USS Fitzgerald and MV ACX Crystal_, #link("https://www.ntsb.gov/investigations/AccidentReports/Reports/MAR2002.pdf")[NTSB/MAR-20/02] (2020), DCA17PM018.],
    [NTSB, _Collision between USS John S. McCain and Tanker Alnic MC_, #link("https://www.ntsb.gov/investigations/AccidentReports/Reports/MAR1901.pdf")[NTSB/MAR-19/01] (2019), DCA17PM029.],
    [U.S. Navy, _Comprehensive Review of Recent Surface Force Incidents_ (Nov. 2017) — both collisions judged avoidable.],
    [NTSB/MAR-19/01 (2019) — probable cause: insufficient training and inadequate bridge procedures from a lack of Navy oversight.],
    [R. Rotella et al., #link("https://features.propublica.org/navy-uss-mccain-crash/navy-installed-touch-screen-steering-ten-sailors-paid-with-their-lives/")["The Navy Installed Touch-Screen Steering Systems to Save Money,"] _ProPublica_ (2019).],
    [U.S. Navy, _Strategic Readiness Review_ (Dec. 2017) — risks that "accumulated over time and did so insidiously."],
    [U.S. Navy corrective actions (2017); NTSB/MAR-19/01 recommendations; #link("https://news.usni.org/2020/09/03/ntsb-unexplained-course-change-was-a-critical-error-in-fatal-uss-fitzgerald-collision")[USNI News] (2017–2020).],
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
    [Identify a capability in your organization that is certified by completion (a checked box) rather than demonstrated performance. What measure would convert it to evidence — and who would hold the authority to act on a red signal?],
  ),
  approaches: (
    during: (
      [Specify watchstanding proficiency as a measured deliverable — define the competency, instrument it, and gate qualification on demonstrated skill rather than sea time.],
      [Keep human-factors review in the procurement loop: validate that any interface change (e.g., the bridge console) is tested against operator performance before it is fielded.],
      [Design the readiness signal to report demonstrated capability, not self-attested course completion.],
    ),
    after: (
      [Audit the gap between reported and actual readiness with independent assessment (the Ready-for-Sea model) — with authority to pull a unit offline.],
      [Protect training time against operational tempo so the capability cannot erode silently when schedules tighten.],
      [Track leading indicators — qualification currency, near-miss reports — so divergence is visible before it is paid for in lives.],
    ),
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
  summary: [
    Air France Flight 447, an Airbus A330, fell into the South Atlantic on
    1 June 2009, killing all 228 aboard — the deadliest accident in the
    airline's history. At cruise altitude the pitot probes iced over, the
    airspeed readings failed, and the autopilot handed the jet to a crew
    that had never trained to fly it by hand in that regime. The pilot
    flying held the nose up into a full aerodynamic stall and never
    recognized it; the aircraft descended for nearly four and a half
    minutes. The BEA traced the loss to the airspeed failure, the crew's
    inappropriate inputs, and a training system that taught stall
    prevention at low altitude but never stall recovery at altitude — a gap
    between the trained envelope and the operational one that reshaped
    global pilot-training rules.
  ],
  sections: (
    // -- Background --
    [
      AF447 left Rio for Paris on 31 May 2009 with 228 aboard an Airbus
      A330 — a highly automated jet with an excellent safety record. Its
      route crossed the equatorial storm band, and it carried a known
      vulnerability: pitot probes prone to brief icing at altitude. A
      replacement program was underway, but the accident aircraft had not
      yet been modified, so the vulnerability the program existed to close
      was still live on the very jet that crossed the storm band — the
      retrofit recognized as necessary but not yet fitted where it
      mattered.#cn()
    ],
    // -- What Happened --
    [
      At 35,000 feet the probes iced, the airspeed readings went invalid,
      and the autopilot and autothrust disconnected into a degraded control
      law. The pilot flying responded with sustained nose-up input; the jet
      climbed, stalled, and never recovered, falling some 38,000 feet into
      the ocean in about four and a half minutes. The stall warning sounded,
      then cut out at extreme angle of attack and resumed when the nose
      dropped — warning against the one input that would have begun a
      recovery, so that the cue meant to guide the crew instead punished the
      correct action and rewarded the fatal one, an inversion no amount of
      hand-flying instinct could resolve in the time available.#cn()
    ],
    // -- The Investigation --
    [
      The BEA's 2012 final report named a chain: airspeed loss from pitot
      icing, inappropriate crew inputs, and the crew's failure to recognize
      and recover from the stall.#cn() The pilots were not incompetent — they
      were outside anything their training had prepared them for, and the
      BEA said so: "the conditions under which pilots are trained and
      exposed to stalls… did not result in reasonably reliable expected
      behaviour patterns." The finding reframed the loss from a question of
      individual airmanship to one of training design: the crew had been
      drilled in a regime that never produced the responses the emergency
      demanded.#cn()
    ],
    // -- The Capability Gap --
    [
      The gap was precise. Airlines trained stall recovery at low altitude;
      the simulators of the era could not reproduce a high-altitude stall,
      so crews never practiced the situation that arrived. Years of reliable
      automation had also let hand-flying skills atrophy, so when the
      autopilot handed back control the crew met an unfamiliar regime with
      rusty manual skills at the worst possible moment. The trained envelope
      and the operational envelope had quietly diverged, and AF447 fell into
      the gap between them — a gap no one had been positioned to see widen.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The BEA's recommendations reached far beyond one airline: the pitot
      probes were replaced, and the report pressed for training in manual
      high-altitude flight, stall recovery, and unreliable-airspeed
      handling.#cn() Regulators then made Upset Prevention and Recovery
      Training mandatory for airline pilots, closing at the regulatory level
      the gap that had been invisible at the airline level — moving the fix
      from a single carrier's discretion to a binding standard every airline
      had to meet. The crew performed exactly as trained; the training was
      the wrong training, and only a system-wide mandate could keep that
      mismatch from recurring elsewhere.#cn()
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
    [The autopilot handed control to a crew at the one moment it was least prepared to take it. Identify an automation-to-human handoff in your domain that occurs precisely when the human is least ready, and design the trigger or warning that would change that.],
  ),
  approaches: (
    during: (
      [Define the operational capability envelope explicitly — including degraded-automation and high-altitude regimes — and train to its edges, not only to the routine center.],
      [Engineer warning logic so that cues never punish the correct recovery input; validate stall-warning behavior across the full angle-of-attack range before fielding.],
      [Treat manual-flying proficiency in degraded modes as a measured deliverable, not an assumed residual of automated operation.],
    ),
    after: (
      [Audit recurrent training against the actual operational record so the trained envelope cannot silently diverge from the regimes crews encounter.],
      [Monitor for skill atrophy where reliable automation reduces hands-on exposure, and refresh manual competence before it erodes.],
      [Sustain the reform at the regulatory level (mandatory upset recovery) so a fix proven in one carrier propagates to all rather than lapsing.],
    ),
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
      Harrisburg, was run by operators trained for large, fast, design-basis
      ruptures — not the slow, ambiguous small-break sequence that actually
      came.#cn() It should not have surprised anyone: eighteen months
      earlier a nearly identical stuck-open relief valve had occurred at
      Davis-Besse, but neither the utility, the vendor, nor the NRC grasped
      its significance or pushed the lesson out to the fleet — so the precise
      sequence that would later threaten the core had already been
      demonstrated and then quietly filed away rather than turned into a
      drill or a warning.#cn()
    ],
    // -- What Happened --
    [
      On 28 March 1979 a minor secondary-cooling upset tripped the reactor;
      a relief valve opened and then stuck open, draining coolant. The
      control-room light reported the *command* to close it, not its actual
      position, so the panel read "closed" while the valve stayed open.
      Misreading the rising pressurizer level, the operators throttled back
      the high-pressure injection the starving core depended on — taking the
      one action that turned a recoverable upset into a meltdown, precisely
      because the instrument they trusted was telling them a state that was
      not true. About half the core melted; off-site radiation, as it turned
      out, was minimal.#cn()
    ],
    // -- The Investigation --
    [
      The Kemeny Commission (October 1979) inverted the industry's
      assumptions: "the fundamental problems are people-related problems and
      not equipment problems." The equipment was good enough that, but for
      the human failures, the accident would have been minor. The criticism
      reached past the operators to management, the utility, and the NRC —
      an institution-wide belief that serious accidents were effectively
      impossible, a complacency that had shaped training priorities,
      staffing, and oversight long before the relief valve ever stuck, so
      that the operators inherited a posture they had not chosen.#cn()
    ],
    // -- The Capability Gap --
    [
      The gap was not intelligence but the right capability for the event
      that arrived. Operators drilled on design-basis ruptures had no model
      for an ambiguous cascade, and a control room reporting commands rather
      than states made correct diagnosis nearly impossible — the interface
      and the training were mismatched to the failure that actually arrived.
      Beneath that lay a second failure: the capacity to *learn* — to turn
      Davis-Besse into fleet knowledge — had itself broken down, so the
      industry kept making the same diagnosis blind, which is why the case
      resists any single-cause reading.#cn()
    ],
    // -- Aftermath & Reform --
    [
      TMI produced not another accident but a system of reform. Within nine
      months the industry created INPO (December 1979) to set standards and
      force the sharing of operating experience the Davis-Besse failure had
      lacked.#cn() The NRC overhauled licensing, required plant-referenced
      simulators and resident inspectors, and tied training to a national
      standard so that diagnosing ambiguous transients — not just textbook
      ruptures — became something crews practiced on equipment that behaved
      like their own plant. Each measure attacked one of the failures the
      accident had exposed: the training gap, the broken learning channel,
      and the gulf between what indicators displayed and what crews inferred.
      TMI is paired later with INPO (Case 16) as the book's strongest
      argument that failure can engineer durable reform.#cn()
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
)

#case(
  number: 9,
  title: "Marine Corps Training in the INDOPACOM AOR",
  year: "ongoing",
  domains-list: ("defense",),
  modes-code: "TK",
  impact: "Structural readiness gap in DoD's stated top-priority theater",
  diagram: dgm.dgm-indopacom,
  kind: "failure",
  summary: [
    The 2022 National Defense Strategy names the Indo-Pacific the Pentagon's
    priority theater and China its "pacing challenge" — yet the theater so
    designated has among the least mature live-training infrastructure in
    the force. For nearly a decade the U.S. Marine Corps has been unable to
    meet its training requirements at Indo-Pacific ranges, papering over the
    gap with rotations back to U.S. ranges, virtual substitutes, and
    multinational exercises pressed into proxy duty. In May 2024 the GAO
    documented the decade-long shortfall and urged the Corps to analyze its
    unmet requirements and build a remediation plan. The case is this book's
    live, ongoing counterpart to its historical failures: a fully
    recognized, repeatedly documented capability gap that declared priority
    has not closed, because engineered priority — ranges, basing, certified
    units — is slow and expensive.
  ],
  sections: (
    // -- Background --
    [
      The 2022 National Defense Strategy names the Indo-Pacific the priority
      theater and China the "pacing challenge."#cn() Set against that is an
      awkward fact: the theater so designated has among the least mature
      live-training infrastructure in the force — the place called most
      important is, where forces can actually rehearse, one of the least
      built out, so the strategy's top priority and the physical means to
      prepare for it point in opposite directions, a contradiction the
      briefings do not resolve.#cn()
    ],
    // -- What Happened --
    [
      The failure is a condition, not an event. For nearly a decade the
      Marine Corps has been unable to meet its training requirements at
      Indo-Pacific ranges, papering over the shortfall with rotations back
      to U.S. ranges, virtual substitutes, and multinational exercises
      pressed into proxy duty. The workarounds keep units partially trained;
      the structural gap does not close, because each substitute buys a
      single cycle of readiness without building the ranges, basing, or
      instrumented airspace that would let the theater train its own force —
      treating a permanent shortfall as a series of temporary ones.#cn()
    ],
    // -- The Investigation --
    [
      In May 2024 the Government Accountability Office documented the unmet
      requirements, the decade over which they had gone unmet, and the
      workarounds standing in for the real thing, and recommended the Corps
      formally analyze its unmet requirements and build a remediation plan
      for Indo-Pacific ranges; the Department concurred.#cn() It was not the
      first warning — GAO has pressed the same readiness recommendations for
      years, and flagged the gap between overseas training and readiness
      reporting two decades ago, so the 2024 finding documents not a fresh
      discovery but the durability of a shortfall that survived repeated
      diagnosis, concurrence, and the passage of time without being
      engineered away.#cn()
    ],
    // -- The Capability Gap --
    [
      What makes INDOPACOM diagnostic is the inverse correlation between
      stated and engineered priority. A theater can be named the pacing
      challenge in every briefing while its training infrastructure stays
      short for ten years, because capability follows where construction and
      dollars flow, not where strategy points. Declared priority is cheap;
      engineered priority — ranges, instrumented airspace, basing, certified
      units — is slow and expensive, and the gap between them is the real
      measure of intent. A strategy document can be rewritten in a season; a
      range complex takes years of construction and budget, so the decade-long
      persistence of the shortfall says more about resourcing than any
      reassertion of priority could.
    ],
    // -- Aftermath & Reform --
    [
      The reform remains mostly prospective: the GAO recommendations were
      open as of 2024, an analysis and a funded remediation plan still to
      come.#cn() Whether the gap closes will be decided not by another
      strategy document but by whether the recommendation becomes programmed
      ranges, dollars, and schedule — converting a concurrence on paper into
      construction and certified units that a future review could actually
      measure. It sits at the front of this book as the live counterpart to
      its historical failures — a gap fully recognized, repeatedly
      documented, and still not engineered away.
    ],
  ),
  references: (
    [_2022 National Defense Strategy of the United States of America_ (U.S. Department of Defense, 2022) — the Indo-Pacific as priority theater and China as the "pacing challenge."],
    [U.S. Government Accountability Office, _Military Readiness: Actions Needed for DOD to Address Challenges_, #link("https://www.gao.gov/assets/gao-24-107463.pdf")[GAO-24-107463] (May 2024) — the least-mature training infrastructure in the priority theater.],
    [GAO-24-107463 (2024) — the Marine Corps unable to meet INDOPACOM training requirements for nearly a decade, and the CONUS-rotation, virtual, and multinational-exercise workarounds.],
    [GAO-24-107463 (2024) — recommendation that the Marine Corps analyze unmet training requirements and develop a remediation plan for Indo-Pacific ranges; DoD concurrence.],
    [GAO, _Military Readiness_ testimony before the Senate Armed Services Committee (D. C. Maurer) — the sustained pattern of readiness recommendations; see also GAO-02-525, _Military Training: Limitations Exist Overseas but Are Not Reflected in Readiness Reporting_ (2002).],
    [GAO-24-107463 (2024) — recommendation status (open as of 2024); the gap not yet remediated.],
  ),
  quote: [Without meeting these requirements, the Marine Corps cannot ensure that its forces will be ready for combat.],
  quote-source: "Paraphrasing GAO-24-107463, Military Readiness, 2024",
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
    [GAO documented this shortfall for years, the Department concurred, and the gap stayed open. Design the accountability mechanism that would convert a concurrence into programmed dollars and schedule, with a signal that fires when the plan slips.],
  ),
  approaches: (
    during: (
      [Tie any declared-priority designation to a funded engineering plan — ranges, basing, instrumented airspace, certified units — so strategy and resourcing cannot diverge unnoticed.],
      [Treat live-training infrastructure for a priority theater as a programmed deliverable with schedule and budget, not a workaround filled by rotations and exercises.],
      [Define the capability requirement for the theater explicitly, so the gap between what is needed and what is built is visible at the point of decision.],
    ),
    after: (
      [Audit declared versus engineered priority annually — measure where construction and dollars actually flowed against where strategy named as critical.],
      [Track recommendation status to closure with an authority that can escalate when a concurrence does not become programmed work.],
      [Monitor whether substitute training (rotations, virtual, multinational) is masking a structural shortfall rather than retiring it.],
    ),
  ),
  courses: ("LEN 5", "LEN 8"),
)

#case(
  number: 26,
  title: "F-35 Sustainment & Maintainer Shortage",
  year: "ongoing",
  domains-list: ("defense",),
  modes-code: "TKD",
  impact: "Fleet mission-capable rate about 55% (March 2023), far short of program goals; lifecycle cost exceeds $1.7T, with ~$1.3T in operating and support; maintainer, technical-data, and depot shortfalls are the binding readiness constraint (GAO-23-105341)",
  diagram: dgm.dgm-f35,
  kind: "failure",
  summary: [
    The F-35 is the most expensive weapons program in history — roughly
    2,500 jets planned and a lifecycle cost above \$1.7 trillion, about
    \$1.3 trillion of it in operating and support. The hard part was never
    the airplane but keeping a global fleet ready, and that half has lagged
    from the start. As of March 2023 the fleet's mission-capable rate was
    about 55%, far short of goal, with more than 10,000 components in
    the repair queue and depots behind schedule. GAO traced the shortfall to
    maintainer shortages, the military's lack of access to technical data,
    and contractor dependency, and urged a full reassessment of the
    sustainment strategy. It is the book's cleanest case of a platform
    fielded faster than the capability infrastructure to sustain it.
  ],
  sections: (
    // -- Background --
    [
      The F-35 is the most expensive weapons program in history: the Pentagon
      plans to buy nearly 2,500, at a lifecycle cost exceeding \$1.7 trillion
      — roughly \$1.3 trillion of it not the aircraft but the decades of
      operating and sustaining them.#cn() The flyaway jet is the finite part;
      keeping a global fleet ready — maintainers, technical data, depots — is
      the open-ended part, and the part that lagged, because the cost that
      dominates the program is not buying the aircraft but the decades of
      sustaining them, the very work that received the least attention as the
      jets rolled off the line.
    ],
    // -- What Happened --
    [
      The failure is a standing condition. As of March 2023 the fleet's
      mission-capable rate was about 55%, far short of goal; more
      than 10,000 components waited in the repair queue, and the depots
      averaged about 72 days per repair while still behind schedule in
      standing up the capacity to do the work at all — a backlog and a
      turnaround time that compound, since parts stuck in the queue keep jets
      grounded and the under-built depots cannot clear the queue fast enough
      to recover the mission-capable rate.#cn()
    ],
    // -- The Investigation --
    [
      GAO's September 2023 review was bluntly titled: the Department and
      services *need to reassess the future sustainment strategy*. It traced
      the shortfall to maintainer shortages, the military's lack of access to
      the technical data needed to do its own repairs, and the resulting
      dependence on the prime contractor.#cn() None of it was new — GAO has
      repeated the same diagnosis year after year, through a troubled
      logistics-software backbone and slow progress, even as procurement
      continued and readiness stayed flat, so the program kept buying more
      jets it could not fully sustain while the same three shortfalls were
      named in review after review without being closed.#cn()
    ],
    // -- The Capability Gap --
    [
      The F-35 is the cleanest modern case of a platform fielded faster than
      the capability infrastructure to sustain it. Aircraft arrived on
      schedule; the maintainers, technical data, and depots were treated as
      follow-on costs rather than deliverables that had to field with the
      jets. The hardest part is the data: much of what is needed to repair
      the aircraft stayed controlled by the contractor, so the services
      cannot freely write procedures, qualify depots, or compete the work,
      which locks the fleet into a single source for the knowledge needed to
      keep it flying — merely expensive in peacetime, dangerous in war, when
      a contractor-dependent sustainment chain is exactly the kind of
      bottleneck an adversary would seek to exploit.#cn()
    ],
    // -- Aftermath & Reform --
    [
      GAO urged a full reassessment of the sustainment strategy — government
      access to technical data, depot capacity, and a maintainer pipeline —
      rather than more patching.#cn() Those recommendations remain a work in
      progress, with later reviews showing costs still rising and readiness
      still below goal. The F-35 sits in this book as the live argument for
      treating capability infrastructure — people, data, the means to sustain
      them — as a fielding gate, not an afterthought. The bill for skipping
      that gate does not disappear; it compounds, arriving as grounded jets,
      a swelling repair queue, and a sustainment chain the services cannot
      control rather than as a line item caught early enough to fix cheaply.
    ],
  ),
  references: (
    [U.S. Government Accountability Office, _F-35 Aircraft: DOD and the Military Services Need to Reassess the Future Sustainment Strategy_, #link("https://www.gao.gov/products/gao-23-105341")[GAO-23-105341] (Sept. 2023) — ~2,500 planned aircraft and a lifecycle cost exceeding \$1.7 trillion, ~\$1.3 trillion of it in operating and support.],
    [GAO-23-105341 (2023) — ~55% fleet mission-capable rate (March 2023); over 10,000 components awaiting repair; ~72-day average depot turnaround; depot stand-up behind schedule.],
    [GAO-23-105341 (2023) — sustainment shortfall traced to maintainer shortages, lack of military access to technical data, and contractor dependency.],
    [GAO, _F-35 Sustainment: DOD Faces Several Uncertainties…_, #link("https://www.gao.gov/assets/gao-22-105995.pdf")[GAO-22-105995] (2022), and the broader GAO F-35 series — the recurring, year-over-year diagnosis.],
    [GAO-23-105341 (2023) — recommendation that DOD reassess the future sustainment strategy.],
    [GAO, _F-35 Sustainment: Costs Continue to Rise While Planned Use Has Decreased_, #link("https://www.gao.gov/assets/d24106703.pdf")[GAO-24-106703] (2024) — costs rising while readiness stays below goal.],
  ),
  quote: [Organizational-level maintenance has been affected by a number of issues, including a lack of technical data and training.],
  quote-source: "Paraphrasing GAO-23-105341, F-35 Aircraft, 2023",
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
    [Pick a current technology platform in your domain. Estimate the capability infrastructure that must field with it. What happens if half of that infrastructure is years behind the hardware?],
    [The F-35 program treated maintainer training as follow-on cost. Design a fielding gate that would prevent that decision being available to a future program manager.],
    [Much of the data needed to repair the F-35 stayed controlled by the contractor, foreclosing the government's ability to compete or qualify the work. For a platform in your domain, what data rights would you make a contractual deliverable up front, and how would you verify they were actually delivered?],
  ),
  approaches: (
    during: (
      [Make sustainment infrastructure — maintainers, technical data, depot capacity — a contractual deliverable that fields with each lot of aircraft, not a follow-on cost.],
      [Secure government rights to the technical data needed to write procedures, qualify depots, and compete the work, so the fleet is not locked to a single source.],
      [Gate fielding on demonstrated sustainment capacity, not just aircraft delivery, so readiness is engineered alongside the platform.],
    ),
    after: (
      [Audit the mission-capable rate against repair-queue depth and depot turnaround, and act when the backlog signals a structural, not transient, shortfall.],
      [Track recurring GAO-style diagnoses to closure, refusing to let procurement outpace the sustainment fixes named year after year.],
      [Monitor contractor dependency as a wartime risk, and sustain a government maintainer pipeline and depot capacity that can hold under pressure.],
    ),
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
  kind: "failure",
  summary: [
    On 8 January 1989 British Midland Flight 92, a nearly new Boeing
    737-400, crashed on the M1 motorway embankment near Kegworth, killing 47
    and seriously injuring 74. After a fan blade fractured in the left
    engine, the crew shut down the right engine — the one still working.
    Reasoning from older 737s, on which the right engine fed the cabin air,
    they misattributed the smoke; new, harder-to-read electronic engine
    displays did not correct them, and the cabin crew who saw flames never
    told the flight deck. The pilots' mental model was right for the airplane
    they had flown the week before, but the brief conversion course never
    overwrote it. The AAIB issued 31 recommendations; Kegworth became the
    textbook case of capability degrading under system change.
  ],
  sections: (
    // -- Background --
    [
      On 8 January 1989 British Midland Flight 92, a nearly new Boeing
      737-400 (G-OBME), left Heathrow for Belfast with 126 aboard. The -400
      was a recent variant — bigger engines, a partly redesigned cockpit
      with new electronic engine instruments. The crew were experienced 737
      pilots, but their conversion onto the variant had been brief and
      largely self-directed, the differences communicated as reading rather
      than drilled retraining — so the experience that made them confident
      on the type also seeded the prior model that would mislead them.#cn()
    ],
    // -- What Happened --
    [
      Climbing through 28,300 feet, a fan blade fractured in the left engine,
      filling the cabin with vibration and smoke. Reasoning from older 737s —
      on which the air-conditioning bleed drew from the right engine — the
      crew concluded the right engine was the source and throttled it back.
      The symptoms eased (partly because the autothrottle had also cut power
      on the failing left engine), seeming to confirm it, and they shut the
      right engine down. On final approach the damaged left engine failed
      completely; with the good engine off, the aircraft struck the M1
      embankment short of the runway — 47 killed, 74 seriously injured. The
      brief calm after the shutdown was the trap: it appeared to confirm a
      diagnosis that was wrong, removing the doubt that might have prompted a
      reassessment.#cn()
    ],
    // -- The Investigation --
    [
      The Air Accidents Investigation Branch traced the disaster to the
      shutdown of the serviceable engine, and to a mental model carried from
      earlier 737s and applied to a -400 whose bleed-air configuration
      Boeing had changed — a difference the conversion training never
      disturbed, so the crew reasoned correctly from a configuration that no
      longer applied to the airframe they were flying.#cn() The new
      electronic displays did not help: the vibration indicator that would
      have pointed at the failing engine was harder to read at a glance than
      the dials it replaced, so the one instrument that could have corrected
      the diagnosis was the least likely to be consulted under pressure.#cn()
      And though cabin crew and passengers could see flames from the left
      engine, that never reached the flight deck — a crew-resource-management
      gap aviation would later train hard against, because those with the
      decisive evidence had no path to those making the decision.#cn()
    ],
    // -- The Capability Gap --
    [
      The crew were skilled, and their mental model was correct — for the
      airplane they had flown the week before. The -400 was treated, for
      training, as an incremental change to a familiar type; under emergency
      pressure it behaved as a categorical one. Reading a manual note about
      revised bleed air is not the same as drilling a new reflex that fires
      before the old one, and the cockpit redesign had quietly removed
      perceptual cues a startled crew relies on. The change was filed as
      incremental precisely because nothing tested it until an emergency did.
      Capability had degraded under system change with no one noticing,
      because nothing failed until the day it did.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The AAIB issued thirty-one safety recommendations spanning conversion
      and difference training, engine-instrument and vibration-display
      design, cabin-to-flight-deck communication, and crashworthiness.#cn()
      Kegworth became a standard human-factors teaching case and a reference
      for how a transition program should be built — so the differences
      between an old system and a new one are made hard to overlook, and the
      people closest to the evidence have a path to those making the
      decision. Each recommendation traced back to a failure the accident
      exposed — the unforced mental model, the unreadable instrument, the
      silent cabin — treated together rather than as isolated faults.
    ],
  ),
  references: (
    [Air Accidents Investigation Branch, _Report on the accident to Boeing 737-400 G-OBME near Kegworth, Leicestershire, on 8 January 1989_, AAIB Aircraft Accident Report 4/90 (1990) — aircraft, route, and the limited conversion training; see also U.S. FAA, #link("https://www.faa.gov/lessons_learned/transport_airplane/accidents/G-OBME")[Lessons Learned: G-OBME].],
    [AAIB Report 4/90 (1990) — accident sequence: left-engine fan-blade failure, shutdown of the serviceable right engine, and total power loss on approach; 47 killed, 74 seriously injured.],
    [AAIB Report 4/90 (1990) — the older-737 bleed-air mental model misapplied to the 737-400's changed configuration.],
    [AAIB Report 4/90 (1990) — the new electronic engine instrumentation and the readability of the vibration indicator.],
    [AAIB Report 4/90 (1990) — the cabin-to-flight-deck communication gap (crew resource management).],
    [AAIB Report 4/90 (1990) — the 31 safety recommendations on difference training, instrument design, CRM, and crashworthiness.],
    [J. Reason, _Human Error_ (Cambridge Univ. Press, 1990) — Kegworth as a case in the misapplication of a correct mental model to a changed system.],
  ),
  quote: [The crew's mental model of the older 737 was inappropriately applied to the 737-400 on which they were operating.],
  quote-source: "Paraphrasing AAIB Aircraft Accident Report 4/90 on British Midland 92, 1990",
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
    [The cabin crew and passengers saw flames the flight deck never learned of. Identify a path in your domain by which the people closest to the evidence cannot reach the people making the decision, and design the channel that would carry it under emergency conditions.],
  ),
  approaches: (
    during: (
      [Classify any change that alters operator mental models — even a "minor" variant — as categorical, and gate it on drilled retraining rather than reading.],
      [Test new interface designs against startled-crew performance before fielding, so a redesign cannot quietly remove the perceptual cues operators rely on.],
      [Engineer a communication path from those closest to the evidence (cabin crew, passengers, sensors) to those making the decision, so decisive observations reach the flight deck.],
    ),
    after: (
      [Audit transition programs for capability that degraded silently — where nothing failed until an emergency tested the change — using simulator scenarios that force the new reflex.],
      [Monitor whether difference training actually overwrites the prior model, treating un-disturbed mental models as a measurable latent risk.],
      [Track that interface and communication recommendations are implemented together, not as isolated fixes, so the integrated failure mode does not recur.],
    ),
  ),
  courses: ("LEN 5", "LEN 8"),
)

#case(
  number: 33,
  title: "Military Fratricide — Desert Storm to Afghanistan",
  year: "1991 – 2014",
  domains-list: ("defense",),
  modes-code: "THK",
  impact: "24% of U.S. KIA in Desert Storm from friendly fire (35 of 146) — an order of magnitude above the historical baseline",
  diagram: dgm.dgm-fratricide,
  kind: "failure",
  summary: [
    Friendly fire killed an unusual share of coalition forces in the 1991
    Gulf War: 35 of 146 U.S. combat deaths (24%) and 72 of 467
    wounded (15%). (The often-cited "2% historical baseline"
    from Shrader's 1982 study is contested — later estimates run nearer
    10–15%, and Shrader stepped back from it.) Post-war reviews
    blamed the chaos of combat, weak situational awareness and fire-control
    discipline, and combat-identification failures — and noted the military
    lacked a shared record to even study its own pattern. Fratricide is the
    failure of several systems to integrate; despite a generation of
    combat-ID investment, recurrences in Afghanistan and after show the rate
    never fell to a confidently low level, because integration is the
    hardest property to engineer by program.
  ],
  sections: (
    // -- Background --
    [
      Friendly fire is as old as war, but its true rate is hard to pin down.
      The most-cited estimate, from Charles Shrader's 1982 study _Amicicide_,
      put it under 2% of battle casualties — a figure later analysts
      challenged as far too low (nearer 10–15%), and one Shrader
      himself stepped back from. The disputed baseline mattered because it
      became the yardstick against which a modern war would be measured — and
      a yardstick set too low makes any later rate look like a catastrophe.#cn()
    ],
    // -- What Happened --
    [
      The 1991 Gulf War made the question grim and concrete: of 146 U.S.
      service members killed in action, 35 — about 24% — died by
      friendly fire, and 72 of 467 wounded (15%) were hit by their own
      side.#cn() An A-10 strike on U.S. LAV-25s near Khafji killed seven
      Marines; a single A-10 attack on British Warrior vehicles killed nine —
      each an aircraft firing on friendly vehicles it had failed to identify,
      the recurring shape of the problem. Whatever the true baseline, a
      quarter of American combat deaths from one's own forces could not be
      waved off as the ordinary friction of battle.#cn()
    ],
    // -- The Investigation --
    [
      Post-war reviews converged on familiar causes: the chaos of combat,
      inadequate situational awareness, weak adherence to fire-control
      measures, and combat-identification failures.#cn() One finding cut
      deeper — the military lacked a comprehensive, shared record of
      fratricide incidents, so it could not study its own pattern, separate
      training failures from doctrine or equipment, or tell whether a fix was
      working. Without a common database, every incident was investigated in
      isolation and the aggregate signal that might have driven reform never
      formed. The capability to *learn* was itself missing, a second-order
      gap beneath the first.#cn()
    ],
    // -- The Capability Gap --
    [
      Fratricide is not one problem but the failure of several systems to
      integrate — situational awareness, fire-control discipline, combat
      identification, joint coordination — each the subject of dedicated
      programs, yet the rate never fell to anything negligible. In
      Afghanistan a satellite-guided strike went wrong after a controller's
      device reset its coordinates, and in 2014 a B-1's targeting pod could
      not detect the infrared strobes marking U.S. troops, killing five. Each
      contributor was worked on; the integration *across* them — which is
      what actually keeps friendly forces from killing each other — is the
      hardest thing to engineer by program, because no single office owns it
      and no single procurement can deliver it — and it is where the
      capability kept failing.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The response was a generation of combat-identification investment:
      better IFF systems, blue-force-tracking networks, and changes to
      fire-control doctrine and training. The improvements were real, yet
      fratricide never dropped to a confidently low, stable rate, and even
      measuring it remained contested.#cn() That is the lesson: where
      capability is an emergent property of many systems working together, no
      single program closes the gap — improving each contributor in isolation
      still leaves the integration between them unaddressed — and progress
      has to be measured against an honest baseline rather than a convenient
      one.
    ],
  ),
  references: (
    [C. R. Shrader, _Amicicide: The Problem of Friendly Fire in Modern War_ (U.S. Army Combat Studies Institute, 1982) — the under-2% estimate from 269 incidents, a baseline later challenged as too low (with estimates nearer 10–15%).],
    [#link("https://www.usni.org/magazines/proceedings/1994/june/friendly-fire-facts-myths-and-misperceptions")["Friendly Fire: Facts, Myths and Misperceptions," _U.S. Naval Institute Proceedings_ (June 1994)] — Desert Storm: 35 of 146 KIA (24%) and 72 of 467 wounded (15%) by friendly fire; critique of the 2% "historical norm."],
    [Khafji and Warrior fratricide incidents (Feb. 1991) — see USNI _Proceedings_ (1994) and #link("https://time.com/archive/6718429/gulf-war-they-didnt-have-to-die/")[Time, "They Didn't Have to Die"]. _(Per-incident casualty figures vary across sources; see AUDIT.)_],
    [U.S. GAO, _Operation Desert Storm_ fratricide investigations — Apache incident (OSI-93-4) and Army fratricide investigation (OSI-95-10) — causes and the Army's reviews.],
    [Post-war combat-identification reviews — leading causes (situational awareness, fire-control measures, combat ID) and the absence of a comprehensive incident database. _(Synthesized from secondary analyses; see AUDIT.)_],
    [Later-conflict recurrences (2001 coordinate-reset strike; 2014 B-1 infrared-strobe strike) and S. Snook, _Friendly Fire_ (Princeton Univ. Press, 2000) on the 1994 Black Hawk shootdown — the systems-integration archetype.],
    ["IFF Update: Stalled Again," _U.S. Naval Institute Proceedings_ (June 1994) — the combat-identification and identification-friend-or-foe programs pursued after Desert Storm, and how slowly they matured.],
  ),
  quote: [The lack of a comprehensive and accessible automated database prevented thorough examination of the problem.],
  quote-source: "Paraphrasing post–Desert Storm fratricide reviews, c. 1993",
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
    [The military lacked a shared incident database, so it could not study its own pattern. Identify a recurring harm in your domain that is investigated case-by-case but never aggregated, and design the shared record that would let the pattern become visible.],
  ),
  approaches: (
    during: (
      [Treat combat identification as a systems-of-systems requirement with a single owner for the integration, not as separate IFF, situational-awareness, and fire-control programs.],
      [Build a comprehensive, shared incident database from the outset so the pattern across events can be studied and fixes tested against it.],
      [Design fire-control discipline and identification into joint coordination, so the integration that prevents fratricide is engineered rather than left emergent.],
    ),
    after: (
      [Audit the friendly-fire rate against an honest baseline, distinguishing a temporary dip from a structural reduction before crediting any program.],
      [Monitor each contributor and the integration across them, since improving components in isolation can leave the joint failure mode untouched.],
      [Sustain the learning channel so later-conflict recurrences feed back into doctrine and training rather than being investigated in isolation.],
    ),
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
  kind: "intervention",
  summary: [
    After the 1984 death of Libby Zion focused decades of concern on
    resident-physician fatigue, the ACGME capped resident work at 80 hours a
    week in 2003 and limited first-year shifts to 16 hours in 2011. The logic
    was intuitive: tired doctors err, so cut the hours. But hours were one
    input to a many-variable system; cutting them multiplied error-prone
    hand-offs and cost residents continuity and procedural repetitions. Two
    large randomized trials — FIRST (2016) and iCOMPARE (2019) — found
    flexible schedules non-inferior to the strict caps on patient outcomes,
    so the promised safety gain never appeared, and in 2017 the ACGME relaxed
    the intern cap. The case is the book's clearest example of a
    single-variable intervention into a capability system — and of evidence
    catching up with a well-meant policy.
  ],
  sections: (
    // -- Background --
    [
      After the 1984 death of Libby Zion — blamed on overworked,
      under-supervised residents — resident fatigue became a decades-long
      argument. New York's Bell Commission produced the first hours limits in
      1989, and pressure for a national standard built from there — the
      reform's intuition, that exhausted physicians make errors, was strong
      enough that the simplest lever, capping the hours, became the obvious
      answer long before anyone tested what the long shift was producing.#cn()
    ],
    // -- The Intervention --
    [
      In 2003 the Accreditation Council for Graduate Medical Education capped
      resident work at 80 hours a week; in 2011 it limited first-year
      residents to 16-hour shifts. The logic was clean and intuitive —
      fatigue causes error, so reduce the hours. It was, in capability terms,
      a single-variable intervention: change one input and expect the outcome
      to move — a model that holds only if the rest of the system stays
      fixed, which in a teaching hospital it never does, since the hours
      removed had to be absorbed somewhere else.#cn()
    ],
    // -- How It Worked --
    [
      But hours were one input to a system with many. Cutting them
      redistributed the work and multiplied patient hand-offs — themselves a
      documented site of error — while reducing residents' continuity and the
      procedural repetitions that build skill; many reported feeling less
      prepared, not better rested. The long shift had quietly been doing work
      no one accounted for — sustaining a patient's care through one set of
      hands and accumulating the repetitions that turn a trainee into a
      clinician — and nothing was put in its place when it was cut.#cn()
    ],
    // -- The Evidence --
    [
      Two large randomized trials tested the policy. FIRST (Bilimoria et al.,
      _NEJM_ 2016), in surgery, found flexible duty hours non-inferior to the
      strict caps on patient outcomes and no worse for resident
      well-being — putting a randomized result against an intuition that had
      driven policy for years.#cn() iCOMPARE (Silber et al., _NEJM_ 2019), in
      internal medicine, reached a parallel result in a second specialty,
      making the finding harder to dismiss as an artifact of surgery.#cn()
      Neither found the safety gain the cap had promised, and in 2017 the
      ACGME relaxed the 16-hour intern limit. The trials did not show fatigue
      is harmless — only that cutting one input, without rebuilding
      supervision and hand-offs, did not produce a safer system.#cn()
    ],
    // -- What Transferred --
    [
      Duty-hour reform is the book's clearest case of a single-variable
      intervention into a multi-variable system. Read it against the
      successes here — the Keystone ICU project, crew resource management, the
      surgical safety checklist — which worked because they engineered
      supervision, hand-offs, and measurement *together with* the behavioral
      change, redesigning the surrounding architecture rather than pulling a
      single lever and hoping the rest would hold.#cn() The lesson is not
      that fatigue does not matter; it is that capability is a property of the
      whole system, and a reform that moves one variable while leaving the
      others untouched will be judged, in the end, by what it actually
      produced rather than by the plausibility of its intuition.
    ],
  ),
  references: (
    [B. H. Lerner, _The Libby Zion Case and the Reform of Medical Education_ (2006); and the 1989 New York State (Bell Commission) duty-hour regulations — the origin of the reform.],
    [Accreditation Council for Graduate Medical Education, _Common Program Requirements_ (2003 and 2011 revisions) — the 80-hour weekly cap and the 16-hour first-year shift limit.],
    [D. A. Asch et al., "Resident Duty Hours and Medical Education Policy," _NEJM_ 370: 1671–1673 (2014); Institute of Medicine (Ulmer, Wolman & Johns, eds.), _Resident Duty Hours: Enhancing Sleep, Supervision, and Safety_ (2008) — hand-offs and continuity trade-offs.],
    [Bilimoria, Chung, Hedges et al., "National Cluster-Randomized Trial of Duty-Hour Flexibility in Surgical Training" (FIRST), _NEJM_ 374: 713–727 (2016). #link("https://doi.org/10.1056/NEJMoa1515724")[doi:10.1056/NEJMoa1515724].],
    [Silber, Bellini, Shea et al., "Patient Safety Outcomes under Flexible and Standard Resident Duty-Hour Rules" (iCOMPARE), _NEJM_ 380: 905–914 (2019). #link("https://doi.org/10.1056/NEJMoa1810641")[doi:10.1056/NEJMoa1810641].],
    [ACGME, _Common Program Requirements_ (2017 revision) — relaxation of the 16-hour first-year shift limit.],
    [P. Pronovost et al., Keystone ICU intervention, _NEJM_ 355: 2725–2732 (2006), #link("https://doi.org/10.1056/NEJMoa061115")[doi:10.1056/NEJMoa061115]; A. B. Haynes et al., surgical safety checklist, _NEJM_ 360: 491–499 (2009), #link("https://doi.org/10.1056/NEJMsa0810119")[doi:10.1056/NEJMsa0810119] — integrated interventions that engineered the surrounding architecture.],
  ),
  quote: [Flexible, less-restrictive duty hour policies for first-year residents were associated with non-inferior patient outcomes and no significant difference in residents' satisfaction with overall well-being and education quality.],
  quote-source: "Paraphrasing iCOMPARE Trial (Silber et al., NEJM 2019)",
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
    [The reform was intuitive enough to set national policy years before FIRST and iCOMPARE tested it. Design the randomized or quasi-experimental check you would build into a future single-variable reform so its promised gain is measured before it is mandated, not after.],
  ),
  approaches: (
    during: (
      [Map the full set of variables the targeted input is coupled to — continuity, supervision, hand-offs, procedural reps — before changing one of them.],
      [Design the substitute for whatever the changed input was producing (e.g., structured hand-offs and supervision) into the same reform, not as a follow-on.],
      [Build the measurement that will test the reform's promised gain into the rollout, so the policy is falsifiable against the operational record.],
    ),
    after: (
      [Audit the intervention against patient and trainee outcomes with a controlled comparison, as FIRST and iCOMPARE did, rather than trusting the intuition.],
      [Monitor the variables that absorbed the change (hand-off frequency, procedural exposure) for the harms a single-lever fix can displace.],
      [Sustain a willingness to revise the policy when evidence catches up, as the 2017 relaxation did, rather than defending the original lever.],
    ),
  ),
  courses: ("LEN 5", "LEN 4", "LEN 10", "LEN 8"),
)
