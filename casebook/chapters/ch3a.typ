// ============================================================
// Part III — Aviation & Aerospace · What Fails (Chapter 5)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part III — Aviation & Aerospace",
  number: "5",
  title: "Aviation & Aerospace — What Fails",
  subtitle: "When automation, transition, and assumption meet an unforgiving envelope.",
  epigraph: [The aircraft did what it was designed to do. So did the crew. The designs disagreed.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Case 96 — aeroperu-flight-603 ----
#case(
  number: 96,
  slug: "aeroperu-flight-603",
  title: "AeroPerú Flight 603",
  year: "1996",
  domains-list: ("aviation",),
  modes-code: "HT",
  impact: "70 killed; Boeing 757 crashed into the Pacific after maintenance tape was left over static ports",
  diagram: dgm.dgm-cascade(
    ("altimeter", "airspeed indicator", "altitude alert", "Mach warning"),
    outcome: "every air-data instrument fed by the same blocked sensor; the radio-altimeter terrain warning stayed true and was discounted",
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
    cause but stressed that every air-data instrument depended on the same
    blocked sensor: the apparent redundancy was an illusion. One channel
    stayed correct — the radio altimeters, independent of the air data
    computers, drove the terrain warnings — and the crew's training had no
    procedure for "everything you see is wrong."
  ],
  sections: (
    // -- Background --
    [
      AeroPerú 603 was a Boeing 757 night departure from Lima to Santiago.
      Before the flight, ground crew had covered the aircraft's static
      ports with adhesive tape during cleaning and polishing of the
      fuselage, and the tape was not removed. The static ports feed the
      instruments that tell the crew their altitude and airspeed — a single
      physical source upstream of nearly every primary cockpit display, so
      blocking it corrupted not one instrument but the whole air-data picture
      the crew would rely on in the dark.#cn()
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
      aboard — the contradictory warnings offering no way to tell which, if
      any, instrument to trust, because every air-data instrument drew on the
      same blocked source and so failed in concert rather than disagreeing
      usefully. The true reading arrived as one more alarm in a cockpit where
      every alarm had already proved false: "too low — terrain" sounded twenty-two times in forty-five seconds some eight minutes out, and again continuously through the last minute to impact.#cn()
    ],
    // -- The Investigation --
    [
      The Peruvian accident investigation named the principal cause error of the maintenance staff including the crew: the tape was left on, and neither the release inspections nor the pilot-in-command's walk-around caught it. One channel stayed correct.
      The radio altimeters read height above the sea independently of the air
      data computers, and it was the radio altimeter that fired the
      ground-proximity warnings the crew heard for the rest of the flight. The
      board named the crew's failure to observe the radio altimeter and to fly
      the GPWS escape procedure as a contributing cause, and called the radio
      altimeter the only reliable element remaining to them. The crew's training had no
      procedure for the case in which all primary instruments are
      simultaneously wrong — that failure had been assumed away rather than
      planned for, leaving the crew to improvise against a problem the system
      design had quietly made possible and the curriculum never named.#cn()
    ],
    // -- The Capability Gap --
    [
      AeroPerú 603 is the case for redundancy that is not redundancy. The
      cockpit's apparent instrument redundancy was an illusion at the
      source — a common-cause failure that defeated every air-data display at
      once, while the one channel it did not reach went unheeded. The missing
      capability was both a maintenance
      control that made the blocked port impossible to miss and a
      procedure for flying when the instruments themselves cannot be
      trusted — the first preventing the common-cause failure at its source,
      the second giving the crew somewhere to stand when the apparent
      redundancy in front of them collapsed all at once.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The accident reinforced industry maintenance practices for
      conspicuous covering and mandatory removal-verification of static
      ports and pitot tubes, and entered the human-factors literature as
      a worked example of common-cause failure and the limits of crew
      training under total instrument corruption. It is paired with other
      pitot-static events in discussions of air-data integrity — its lesson
      being that redundancy counted at the display tells you nothing if the
      redundant paths share a single upstream point that can fail them all
      together.#cn()
    ],
  ),
  beats: (
    "Ground crew taped over the static ports during cleaning and the tape was never removed",
    "All air data instruments fed false contradictory readings; believing they were higher the crew struck the Pacific",
    "Peruvian investigators found the radio altimeter stayed true and drove the terrain warnings the crew discounted",
    "Apparent cockpit redundancy was illusory at the source and the training had assumed the case away",
    "Industry tightened conspicuous covering and removal verification for static ports and pitot tubes",
  ),
  references: (
    [Peru Dirección General de Transporte Aéreo, Accident Investigation Board, final report on AeroPerú 603 (2 October 1997; with NTSB/FAA/Boeing participation) — primary cause and the instrument cascade (paraphrased).],
    [Peru DGTA Accident Investigation Board report (2 October 1997) — the static-port tape and the contradictory warnings.],
    [Peru DGTA Accident Investigation Board report (2 October 1997) — the radio altimeter as "the only reliable element remaining to them," and the unheeded GPWS terrain warnings.],
    [Leveson, N. (2011), _Engineering a Safer World_ (STAMP) — common-cause failure.],
    [Dismukes, Berman & Loukopoulos (2007), _The Limits of Expertise_ — crew performance under instrument failure.],
  ),
  quote: [The crew received contradictory indications they could neither reconcile nor override.],
  quote-source: "Paraphrasing the Peruvian Directorate General of Air Transport Accident Investigation Board report on AeroPerú 603, 2 October 1997",
  le-insight: [
    AeroPerú 603 is the case for redundancy that is not redundancy.
    Every air-data indicator depended on the same physical sensor, and
    the apparent redundancy was an illusion at the source. One independent
    channel — the radio altimeter driving the terrain warnings — stayed
    correct and was disbelieved inside a flood of false alarms. The training
    did not include the failure case because the failure case had been
    assumed not to occur.
  ],
  lens-approach: [
    LENS uses AeroPerú in LEN 5 to teach the difference between
    apparent and actual redundancy and in LEN 2 for the human role
    when all interface data is unreliable. Studio projects examine the
    "trust nothing" procedure design.
  ],
  literature-items: (
    [Peru DGTA Accident Investigation Board report on AeroPerú 603 (1996)],
    [Leveson (2011), STAMP — common-cause failure],
    [Dismukes et al. (2007), _The Limits of Expertise_],
  ),
  reflection-list: (
    [Identify a redundant interface in your domain whose redundancy depends on a common upstream component. What is the operator procedure when the upstream component fails?],
    [Design the "trust nothing" procedure for the AeroPerú crew. What information remains reliable when all instruments are corrupted?],
    [A taped-over static port survived to takeoff because nothing made it conspicuous or forced its removal to be verified. Design the maintenance control in your domain that would make a blocked or covered critical component impossible to overlook before operation.],
  ),
  approaches: (
    during: (
      [Map redundant displays back to their upstream sources, and eliminate or instrument any common point whose failure would corrupt them all at once.],
      [Make critical sensor covers conspicuous and require verified removal, so a blocked static port cannot reach takeoff unnoticed.],
      [Provide an independent reference (e.g., a source not fed by the common component) so the crew can detect inconsistency at the source.],
    ),
    after: (
      [Audit maintenance controls for tasks that cover or block critical sensors, confirming each has a conspicuous marker and a removal-verification step.],
      [Train and rehearse a "trust nothing" procedure for total instrument corruption, the case the curriculum had assumed away.],
      [Monitor for common-cause failure modes whose probability was assumed negligible, and revisit that assumption when the consequence is catastrophic.],
    ),
  ),
  courses: ("LEN 5", "LEN 2"),
  scale: "big",
  induced-anchor: "3.1",
  lens-anchor: "D1/PT1",
  leo-anchor: "LEO-1",
  evidence-source: "investigation",
)

// ---- Case 97 — boeing-737-max-mcas ----
#case(
  number: 97,
  slug: "boeing-737-max-mcas",
  title: "Boeing 737 MAX / MCAS",
  year: "2018 – 2019",
  domains-list: ("aviation",),
  modes-code: "DTH",
  impact: "346 killed across two crashes — Lion Air 610 and Ethiopian Airlines 302; 20-month worldwide grounding; ~\\$20B direct cost; FAA delegated-authority reform under the Aircraft Certification, Safety, and Accountability Act (2020)",
  diagram: dgm.dgm-737max,
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "1.1",
  lens-anchor: "D1+D5/PT4",
  leo-anchor: "LEO-1, LEO-5",
  summary: [
    The Boeing 737 MAX was a re-engined 737 meant to fly without new pilot
    training — the commercial promise that sold it against the Airbus
    A320neo. Its bigger, forward-mounted engines changed the jet's pitch
    behavior, so Boeing added software (MCAS) to mask the difference, then
    kept it out of the manuals and training and let it fire repeatedly on a
    single angle-of-attack sensor. When that sensor failed on Lion Air 610
    (October 2018), MCAS forced the nose down against a crew never told it
    existed; four months later, on Ethiopian 302, a crew warned of the symptom but not the system ran Boeing's cutout procedure and still could
    not recover; 346 people died and the fleet was grounded for twenty
    months. Five major
    investigations — the NTSB-supported KNKT (Lion Air) and EAIB (Ethiopian)
    reports, the US House Transportation Committee final report, the DOT
    Inspector General review, and the multinational Joint Authorities
    Technical Review (JATR) — converged on the same mechanism: an MCAS
    that could fire the nose down on a single failing sensor, waved through an
    FAA delegated-authority regime in which Boeing reviewed much of its own
    safety judgment. The House Transportation Committee's report went further,
    documenting the training omission as a cost-driven commercial choice —
    Boeing had promised Southwest a \$1-million-per-plane rebate if simulator
    training proved necessary. The MAX is the book's inverse case: human capability
    engineered out of a system to save the price of sustaining it, with
    the elision underwritten by a certification process that did not have
    the independence to catch it.
  ],
  sections: (
    // -- Background --
    [
      The 737 MAX was Boeing's answer to the Airbus A320neo: a re-engined
      version of its best-seller that airlines could fly without retraining
      pilots on a new type. But the MAX's larger, forward-mounted engines
      changed how it pitched at high angles of attack, so Boeing added
      software — the Maneuvering Characteristics Augmentation System,
      MCAS — to make it handle like the older 737 NG, papering over an
      aerodynamic change with a control law so the airframe would feel
      identical from the cockpit. The whole commercial logic depended on
      that software staying invisible: the less of a "new function" MCAS
      seemed, the less the MAX would trigger costly new training, and the
      lower the airline's switching cost away from the A320neo. Boeing
      reportedly promised Southwest a rebate of about a million dollars per
      jet if simulator training proved necessary — a clause that turned the
      training requirement into a direct line on the program's ledger, and
      one the House investigation later cited as a structural reason the
      "no new training" promise behaved as a binding constraint on the
      engineering rather than as an aspiration.#cn()
    ],
    // -- What Happened --
    [
      To keep MCAS in the background, it was left out of the manual and the
      type-rating training, and allowed to fire on a single angle-of-attack
      sensor with no second source to cross-check it. The system's
      authority was also expanded late in development — the trim it could
      command grew from 0.6° to 2.5° per cycle, and its firing was made
      repeatable rather than one-shot — without the corresponding
      reassessment of the failure modes that change implied. When the
      sensor failed on Lion Air Flight 610 in October 2018, MCAS
      repeatedly forced the nose down; the crew, never told the system
      existed, fought it cycle after cycle until the jet dove into the
      Java Sea, killing all 189. Four months later Ethiopian Airlines Flight 302 met the same sequence — sensor failure, repeated trim
      commands, unrecoverable nose-down attitude — with the difference that
      this crew had Boeing's post-Lion-Air bulletin and the FAA emergency
      directive, ran the runaway-stabiliser cutout they prescribed, and still
      lost the aircraft, killing 157, for 346 dead across the two crashes, and the entire MAX
      fleet grounded worldwide for what would become twenty months.#cn()
    ],
    // -- The Investigation --
    [
      The investigations made the decisions legible. The Indonesian KNKT
      and Ethiopian EAIB accident reports, with NTSB participation,
      established the accident sequences and the single-sensor design as
      the proximate cause. The multinational Joint Authorities Technical
      Review (JATR), convened by the FAA in 2019 with international
      regulators, concluded that MCAS had not been evaluated as the novel
      flight-control function it actually was. Internal 2013 Boeing
      meeting minutes showed employees noting that calling MCAS a new
      function would bring "greater certification and training impact" —
      the cost the program was built to avoid, written down years before
      either crash; a 2016 internal survey found 39% of certification
      staff felt undue management pressure. The House Transportation
      Committee's 2020 final report concluded Boeing's assumption that
      simulator training was unnecessary "diminished safety, minimized the
      value of pilot training, and inhibited technical design
      improvements," naming the omission as a choice rather than an
      oversight.#cn() The DOT Inspector General traced how the
      single-sensor design and the training omission passed through a
      certification process in which the FAA had delegated much of the
      safety judgment back to Boeing itself under the Organization
      Designation Authorization (ODA) program — so the company effectively
      reviewed its own most consequential trade-offs, and the regulator
      lacked both the technical depth and the institutional independence
      to challenge the assessment.#cn()
    ],
    // -- The Capability Gap --
    [
      The MAX inverts this book's usual case. Human capability was not
      overlooked by accident; it was deliberately engineered out to avoid
      the cost of the training that would have created it. The pilots
      were not undertrained by oversight but by design — the absence of
      training was, in effect, a contract deliverable promised to
      customers and protected by a rebate. The single-sensor architecture
      was a second engineered-out capability: a redundant cross-check on
      the angle-of-attack signal would have triggered the kind of design
      and certification work the program was built to avoid, and was left
      out for the same reason. Seen together, the crashes are not a
      training failure that befell a good airplane but exactly what the
      commercial and engineering decisions specified: a flight-control
      system that depended on pilots reacting correctly, in seconds, to a
      failure whose cause was withheld from them — unnamed in the manuals
      before Lion Air, and unnamed in the emergency directive after it — with no
      sensor cross-check that could keep the failure from arriving in the
      first place.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The MAX was grounded for some twenty months — the longest grounding
      of a US-certified airliner in the jet era. MCAS was redesigned to
      use both AOA sensors, to fire once rather than repeatedly, and with
      limited authority bounded by airspeed — restoring the margins the
      original had stripped away. The FAA's 2020 return-to-service
      directive required the simulator training the airplane had been
      built to avoid. The Aircraft Certification, Safety, and
      Accountability Act of 2020 then tightened FAA oversight of the ODA
      delegation regime, required disclosure to pilots of systems that move the flight controls without pilot input, and funded FAA engineering
      capacity that the delegation system had let atrophy. Boeing entered
      a Deferred Prosecution Agreement with the DOJ on a fraud charge
      tied to its disclosures to the FAA's Aircraft Evaluation Group.#cn()
      That agreement's oversight was tested when a door plug blew off a
      separate 737 MAX 9 (Alaska Airlines 1282) in January 2024, days
      before the DPA's probation period lapsed; the DOJ found Boeing had
      breached the agreement, a 2024 guilty plea was rejected by the
      court, and in May 2025 the parties settled on a non-prosecution
      agreement worth more than \$1.1 billion — no criminal conviction,
      over the objection of the crash victims' families.
      The reform conceded the point the program had spent years
      resisting: the training was a real requirement all along, the
      sensor cross-check was a real requirement all along, and removing
      them from the paperwork only deferred the cost — and then moved it
      onto two airplanes full of people.
    ],
  ),
  beats: (
    "Re-engined 737 sold on no new pilot training; MCAS hid the handling change",
    "Single-sensor MCAS forced two jets down, killing 346 across both crashes",
    "Internal records show training omission was deliberate; certification was largely delegated to Boeing itself",
    "Training absence was a contract deliverable, not an oversight; pilots engineered out",
    "Twenty-month grounding; MCAS redesigned, simulator training required, FAA oversight tightened",
  ),
  references: (
    [U.S. House Committee on Transportation and Infrastructure, _The Boeing 737 MAX Aircraft: Costs, Consequences, and Lessons from Its Design, Development, and Certification_ (Final Committee Report, Sept. 2020) — the MCAS omission, the 2013 minutes, the 2016 survey, and the "diminished safety" conclusion.],
    [U.S. House report (2020) and #link("https://en.wikipedia.org/wiki/Maneuvering_Characteristics_Augmentation_System")[MCAS design summary] — MCAS firing on a single angle-of-attack sensor; the Lion Air 610 (189 killed) and Ethiopian 302 (157 killed) accident sequences.],
    [U.S. House Transportation Committee report (2020) — Boeing internal communications and the certification-and-training-impact reasoning (quoted).],
    [U.S. Department of Transportation, Office of Inspector General, correspondence and review of FAA oversight of MCAS and the angle-of-attack systems (2019–2020) — the delegated-certification process.],
    [J. Herkert, J. Borenstein & K. Miller, "The Boeing 737 MAX: Lessons for Engineering Ethics," _Science and Engineering Ethics_ 26 (2020) — certification-by-omission as an engineering-ethics failure.],
    [Federal Aviation Administration, _Summary of the FAA's Review of the Boeing 737 MAX_ (Return-to-Service, 2020) — the MCAS redesign and the simulator-training requirement; and the Aircraft Certification, Safety, and Accountability Act (2020).],
  ),
  quote: [Boeing's assumption that simulator training was unnecessary diminished safety, minimized the value of pilot training, and inhibited technical design improvements.],
  quote-source: "House Transportation Committee Report, 2020",
  le-insight: [
    The 737 MAX is the documentary record of a design choice to remove human
    capability to avoid the regulatory and commercial cost of sustaining it.
    The pilots were not undertrained by accident — they were undertrained as
    a *requirement*. The omission of training was a contract deliverable.
    Once that is understood, the accident becomes legible as an engineering
    decision rather than a training failure.
  ],
  lens-approach: [
    The 737 MAX is the canonical engineered-out-capability failure
    (induced 1.1; LENS D1+D3/PT4). LENS uses it in Domain 1 (Systems
    Analysis) for the LEO-1 work of decomposing system performance
    requirements into measurable human-capability requirements:
    the elided pilot-training requirement is the traceable artifact
    a capability-requirements analysis would have surfaced before the
    omission could become a contract deliverable. LENS uses it in
    Domain 5 (Navigating Sociotechnical Constraints; LEO-5) for the
    delegated-authority regulatory regime in which Boeing reviewed
    its own most consequential safety judgments — the case is the
    governance counterpart to Therac-25 (Case 1) at the
    safeguard-removed-with-nothing-in-its-place layer, and pairs with
    Patriot/Dhahran (Case 129) at the layer of design assumptions
    that do not travel with a change of context.
  ],
  literature-items: (
    [Herkert, Borenstein & Miller (2020) on certification-by-omission ethics],
    [Leveson, _Engineering a Safer World_ (2011) — STAMP],
    [Casner & Hutchins (2019), "What Do We Tell the Drivers?"],
  ),
  reflection-list: (
    [If a customer contract required removing a training requirement you judged necessary, what artifact would you produce, who would you route it to, and what would you do if the routing failed?],
    [Reconstruct the MAX accident as a *capability-requirements* failure: what was the elided requirement, at what life-cycle stage was it elided, and who had the authority to insert it?],
    [MCAS was permitted to act on a single sensor with no cross-check. Identify a system you work on that takes a safety-critical action from one unverified input, and specify the redundancy or human confirmation it lacks.],
  ),
  approaches: (
    during: (
      [Treat any control law that masks a handling change as a new function in its own right — document it, surface it to pilots, and size its training as part of the design, not after it.],
      [Forbid safety-critical authority from resting on a single sensor; require an independent source or a cross-check before software can command the flight surfaces.],
      [Quarantine commercial commitments — rebates, "no new training" promises — from the engineering judgment about what capability the airplane actually requires.],
    ),
    after: (
      [Audit delegated certification so the party making a trade-off is never the same party that signs off on its safety, restoring independent review of the riskiest decisions.],
      [Monitor in-service AOA-disagree and uncommanded-trim events as leading indicators, with a route that reaches engineering before a second airframe is lost.],
      [Re-validate the "no new training needed" claim against real fleet incidents, and reopen the training requirement the moment operational data contradicts the assumption.],
    ),
  ),
  courses: ("LEN 1", "LEN 5", "LEN 2"),
)

// ---- Case 98 — mars-climate-orbiter-unit-mismatch ----
#case(
  number: 98,
  slug: "mars-climate-orbiter-unit-mismatch",
  title: "Mars Climate Orbiter — Unit Mismatch",
  year: "1999",
  domains-list: ("space",),
  modes-code: "DK",
  impact: "Orbiter lost on arrival at Mars, one of the two Mars '98 spacecraft whose development cost $193.1M; ground software produced thrust output in pound-force while navigation expected newtons",
  diagram: dgm.dgm-flow(
    ("Lockheed\nlbf·s", "interface", "NASA\nN·s", "trajectory error", "loss of signal"),
    framing: "the interface specification went unverified",
    caption: "Mars Climate Orbiter — the unowned interface",
  ),
  kind: "failure",
  summary: [
    The Mars Climate Orbiter, a NASA spacecraft built by Lockheed Martin and
    navigated by JPL, was lost on arrival at Mars in September 1999.
    Lockheed's ground software reported thruster impulse in pound-force
    seconds; JPL's navigation expected newton-seconds. The conversion — a
    factor of about 4.45 — was never applied at the boundary between the two
    teams, so every trajectory correction was mis-modeled and the error
    accumulated over the cruise. The orbiter arrived about 170 kilometres lower than planned and was either destroyed in the atmosphere or thrown back into heliocentric space; either way it was lost to a unit mismatch. The investigation did not stop at the coding error: the board's finding was that the project's processes never caught it. What failed was the interface between them: the specification existed and required newton-seconds, and nothing verified that the delivered software obeyed it. It
    is the canonical case of interface-as-requirement.
  ],
  sections: (
    // -- Background --
    [
      The Mars Climate Orbiter, launched in December 1998 to study the
      Martian atmosphere, was one of NASA's "faster, better, cheaper"
      missions, built on a compressed budget that trimmed margins across the
      program. Lockheed Martin built the spacecraft and its ground software;
      JPL navigated it from Earth. Across the months of interplanetary cruise
      the two teams exchanged data so JPL could command the small trajectory
      corrections that keep a spacecraft on course — an exchange that crossed
      a software interface between the two organizations.#cn()
    ],
    // -- What Happened --
    [
      Lockheed's ground software reported thruster impulse in pound-force
      seconds; JPL's navigation expected newton-seconds. The conversion — a
      factor of about 4.45 — was never applied at the boundary where the two
      systems met. Each firing was mis-modeled by that factor, and the error
      accumulated steadily over the long cruise until the predicted and actual
      trajectories had quietly diverged. When the orbiter reached Mars on 23 September 1999 it arrived about 170 kilometres too low, into the atmosphere it was built to study from orbit, and was either destroyed there or thrown back into heliocentric space. The orbiter was lost to a unit conversion no one made.#cn()
    ],
    // -- The Investigation --
    [
      The Mishap Investigation Board put the proximate cause exactly there —
      the failed English-to-metric translation in ground software — but was
      careful to name the deeper one rather than stop at the bug. The ground software did not follow the interface specification, and the processes meant to catch that never did. What failed was the boundary between them:
      the specification fixed the units at newton-seconds and nothing checked the delivered software against it, and there was no complete end-to-end verification of the navigation software and its models. Navigators had even noticed odd trajectory behavior in
      cruise, but the concern was never run fully to ground before arrival,
      and the chance to catch it passed.#cn()
    ],
    // -- The Capability Gap --
    [
      The missing capability was ownership of the interface itself. Where a
      system is split across two organizations, the place they meet is not a
      documentation footnote but an engineering deliverable in its own right —
      with an owner, a specification, and a verification step. Here the specification existed and called for metric units; what was missing was any check that the delivered software complied with it, and any escalation path for the navigators who saw the trajectory drifting for months. Each team treated its own side as complete and the
      boundary as someone else's concern, so the one assumption that had to be
      shared and checked — what units are we speaking in? — was precisely the
      one no one verified. The spacecraft did not fail; it performed as built;
      the seam between the two halves of the organization did.#cn()
    ],
    // -- Aftermath & Reform --
    [
      NASA tightened interface management and end-to-end verification and
      treated the loss as a cautionary tale about how far "faster, better,
      cheaper" could be pushed before the corners being cut turned out to be
      load-bearing. The orbiter became the canonical systems-engineering
      example of interface-as-requirement — the civilian, software parallel to
      the Patriot's untraveled assumption (Case 129): two competent halves of a
      system, a boundary nobody owned or verified, and a small unspecified
      thing at that boundary that quietly destroyed the whole.#cn()
    ],
  ),
  beats: (
    "Faster, better, cheaper mission split between Lockheed building and JPL navigating the orbiter.",
    "Ground software reported pound-force seconds while navigation expected newton-seconds; orbiter burned up at Mars.",
    "Board found the ground software ignored the interface specification and the project's processes never caught it.",
    "Missing capability was an owned, specified, verified interface between the two organizations.",
    "Loss tightened interface management and became the canonical software case of interface-as-requirement.",
  ),
  references: (
    [NASA, _Mars Climate Orbiter Mishap Investigation Board: Phase I Report_ (Nov. 1999) — mission, the Lockheed/JPL split, and the program context.],
    [NASA MCO MIB Report (1999) — the pound-force-second vs newton-second mismatch (factor ~4.45), the accumulated navigation error, and atmospheric destruction on 23 Sept. 1999 (root-cause statement quoted).],
    [NASA MCO MIB Report (1999) — the missing verified interface specification, the absent end-to-end validation, and the unresolved cruise-trajectory anomalies.],
    [N. G. Leveson, _Engineering a Safer World_ (MIT Press, 2011) — interfaces as engineering deliverables requiring an owner and a verification step.],
    [Sauser, B. J., Reilly, R. R., & Shenhar, A. J. (2009), "Why projects fail? How contingency theory can provide new insights — A comparative analysis of NASA's Mars Climate Orbiter loss," _International Journal of Project Management_ 27(7), 665–679.],
  ),
  quote: [The "root cause" of the loss of the spacecraft was the failed translation of English units into metric units in a segment of ground-based, navigation-related mission software.],
  quote-source: "Arthur Stephenson, chairman, Mars Climate Orbiter Mission Failure Investigation Board, NASA Release 99-134, 10 November 1999",
  le-insight: [
    Mars Climate Orbiter is the textbook case for interface boundaries
    as engineering deliverables. Each half flew as built. The specification at the boundary was not enforced. The capability that was missing was the interface-specification verification step.
  ],
  lens-approach: [
    LENS uses Mars Climate Orbiter in LEN 5 to teach interface-as-
    requirement and in LEN 8 to discuss cross-contractor capability
    boundaries. The case is the foundational software-engineering
    parallel to Patriot (Case 129).
  ],
  literature-items: (
    [NASA MCO MIB Report (1999)],
    [Leveson (2011), _Engineering a Safer World_],
    [Brooks, _The Mythical Man-Month_ (1995)],
  ),
  reflection-list: (
    [Identify a contractor-to-contractor interface in your domain whose specification ownership is unclear. What would the equivalent unit-mismatch look like there?],
    [Design the interface-verification deliverable that would have caught the pound-force / newton boundary before launch.],
    [Navigators noticed odd trajectory behavior in cruise but the concern was never run to ground before arrival. Specify the threshold and process by which an in-flight anomaly in your domain must be resolved before a point of no return, rather than carried past it.],
  ),
  approaches: (
    during: (
      [Make the interface between two organizations an owned deliverable with a written specification of units and formats, not a footnote each side assumes the other handles.],
      [Fix and verify the unit convention at the boundary explicitly, requiring both sides to confirm agreement before data crosses the seam.],
      [Run end-to-end validation across the combined system, since each half can be correct within its own assumptions while their composition is wrong.],
    ),
    after: (
      [Treat in-cruise anomalies, like the noticed trajectory behavior, as signals to run to ground before a point of no return rather than concerns to revisit after arrival.],
      [Monitor predicted-versus-actual trajectory continuously so an accumulating boundary error surfaces while there is still time to correct it.],
      [Audit cross-contractor seams for unowned assumptions whenever a program trims margins under "faster, better, cheaper," confirming the corners cut are not load-bearing.],
    ),
  ),
  courses: ("LEN 5", "LEN 8"),
  scale: "big",
  induced-anchor: "1.3",
  lens-anchor: "D1/PT1",
  leo-anchor: "LEO-1",
  evidence-source: "investigation",
)

// ---- Case 99 — boeing-737-rudder-hardovers ----
#case(
  number: 99,
  slug: "boeing-737-rudder-hardovers",
  title: "Boeing 737 Rudder Hardovers",
  year: "1991, 1994",
  domains-list: ("aviation",),
  modes-code: "HD",
  impact: "157 killed across United 585 (Colorado Springs, 1991) and USAir 427 (Pittsburgh, 1994); rudder Power Control Unit malfunctions traced to a thermal-shock condition",
  diagram: dgm.dgm-flow(
    ("cold soak", "valve jam", "rudder reverse", "no recovery"),
    framing: "an unrecoverable operational state hidden inside a working aircraft",
    caption: "737 rudder — the failure mode certification did not anticipate",
  ),
  kind: "failure",
  summary: [
    Two Boeing 737s fell out of controlled flight when their rudders
    reversed — moving opposite to the pilots' input: United 585 near
    Colorado Springs in 1991 (25 killed) and USAir 427 near Pittsburgh in
    1994 (132 killed), 157 in all. The NTSB investigation took years because
    the failure was rare and unrecoverable. It traced the cause to a
    thermal-shock condition in the rudder's power-control-unit servo valve —
    hot hydraulic fluid hitting a cold-soaked valve — that could jam the
    valve and reverse the rudder. The pilots had no procedure to recognize
    or recover the failure; the manuals and training never anticipated it,
    and in that state no available control input could save the aircraft.
    The 737 rudder cases are the book's case for an unrecoverable failure
    mode hidden inside a working aircraft.
  ],
  sections: (
    // -- Background --
    [
      The Boeing 737, the most-produced jetliner in history, steers in yaw
      with a rudder driven by a hydraulic power control unit (PCU). The PCU's
      servo valve was a dual-concentric design intended to be fault-tolerant
      — a reassuring assumption that had passed certification.#cn() Because
      the design was believed to be fault-tolerant, a single jam was treated
      as something the redundant geometry would contain; that confidence is
      precisely what let the failure mode hide in plain sight across a fleet
      flying millions of hours without incident.
    ],
    // -- What Happened --
    [
      Twice, 737s rolled and dove out of level flight unrecoverably: United
      Airlines Flight 585 near Colorado Springs in 1991 (25 killed) and USAir
      Flight 427 near Pittsburgh in 1994 (132 killed) — 157 deaths between
      them. In each, the rudder had swung hard over, opposite to what the
      crew commanded.#cn() A control that moves opposite to its input is the
      cruelest failure a pilot can face: every corrective action deepens the
      upset, and the three years separating the two losses meant the first
      crash yielded no usable answer in time to protect the second.
    ],
    // -- The Investigation --
    [
      The NTSB investigation took years, because the failure was both rare
      and unrecoverable, leaving little to reconstruct.#cn() An unrecoverable
      event tends to destroy its own evidence, and a rare one offers no
      pattern to work from, so the board had to reason toward a mechanism the
      wreckage could only hint at. It eventually
      identified a thermal-shock condition in the rudder servo valve —
      hot hydraulic fluid striking a cold-soaked valve under specific
      conditions — that could jam the secondary valve and let the rudder move
      opposite to commanded input, a convergence of cold, heat, and timing so
      narrow it had eluded every test the design had been put through.#cn()
    ],
    // -- The Capability Gap --
    [
      The gap was not in the pilots: in the failure mode no control input
      available to them could recover the aircraft, and they had no procedure
      even to recognize a rudder reversal, because the manuals and training
      never anticipated it. The missing capability sat upstream — in a
      certification process that had not surfaced the failure mode, and
      maintenance procedures that did not test for it. When no human action
      is recoverable, capability engineering must move to the design and
      certification, not the cockpit — no amount of pilot skill or training
      can close a gap that lives in a part the crew cannot reach and a state
      no procedure names, which is why the only real fix was upstream of the
      flight deck entirely.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Boeing redesigned the rudder PCU and the fleet was retrofitted, and the
      cases reshaped how rare, unrecoverable failure modes are hunted in
      certification and flight test.#cn() Retrofitting the entire fleet
      conceded that the original fault-tolerant assumption had been wrong,
      and the changed approach to certification testing accepted that a part
      passing its tests is not the same as a part proven safe across every
      condition it will meet. The 737 rudder sits at the
      intersection of mechanical design, certification testing, and crew
      capability — all three would have had to fail together for the
      accidents to occur, and all three did.
    ],
  ),
  beats: (
    "737 rudder PCU servo valve presumed fault-tolerant by certification, hiding a latent failure mode",
    "United 585 and USAir 427 rolled and dove unrecoverably; rudders moved opposite to commanded input",
    "NTSB took years to identify thermal-shock servo-valve jam from cold fluid striking hot valve",
    "No recoverable cockpit action existed; gap sat in certification and maintenance, not pilots",
    "Boeing redesigned PCU, retrofitted fleet, and reshaped how rare unrecoverable modes are hunted",
  ),
  references: (
    [NTSB, _Uncontrolled Descent and Collision With Terrain, USAir Flight 427_, NTSB-AAR-99-01 (1999) — the thermal-shock servo-valve finding.],
    [NTSB, _Aircraft Accident Report: United Airlines Flight 585_, NTSB-AAR-92-06 (1992) — the initial (undetermined) Colorado Springs investigation, later reopened.],
    [NTSB-AAR-99-01 (1999) — the servo-valve reversal mechanism and the absence of any recoverable crew action.],
    [Boeing 737 rudder PCU service bulletins and redesign program (1996–2002).],
    [W. Langewiesche, _Inside the Sky_ (1998) — the multi-year investigation narrative.],
    [NTSB-AAR-99-01 (1999) — the certification and maintenance gaps that left the failure mode unsurfaced.],
  ),
  quote: [The aircraft was operated for years with a design feature that, under specific conditions, was unrecoverable.],
  quote-source: "Paraphrasing NTSB Aircraft Accident Report NTSB-AAR-99-01 on the 737 rudder PCU, 1999",
  le-insight: [
    The 737 rudder cases are the case for an unrecoverable
    operational state hidden inside an apparently working system. The
    capability gap was not in the pilots — there was no capability
    that would have recovered the aircraft. The gap was in the
    certification process that had not surfaced the failure mode and
    in the maintenance procedures that did not test for it.
  ],
  lens-approach: [
    LENS uses the 737 rudder cases in LEN 5 as a capability-limits
    case (when no human action is recoverable, capability engineering
    must move upstream) and in LEN 7 for certification governance.
  ],
  literature-items: (
    [NTSB 737 rudder reports (1992, 1999)],
    [Langewiesche, _Inside the Sky_ (1998)],
    [Sweginnis et al., aircraft accident investigation literature],
  ),
  reflection-list: (
    [Where in your domain might an unrecoverable failure mode exist that has not yet manifested? How would you find it?],
    [Design the certification-test specification that should have caught the 737 rudder thermal-shock failure in development.],
    [The 737 rudder passed certification yet was not safe across every condition it met. What is a component in your domain certified as fault-tolerant on an assumption no one re-tests — and how would you challenge that assumption before it fails?],
  ),
  approaches: (
    during: (
      [Test components against the full envelope of conditions they will meet in service — including rare combinations like thermal shock — rather than only the nominal cases certification asks for.],
      [Treat any "fault-tolerant" claim as a hypothesis to be falsified in flight test, not an assumption that lets a single jam go unexamined.],
      [Provide crews a procedure to recognize and respond to control reversals, while accepting that for unrecoverable modes the real fix must sit in the design.],
    ),
    after: (
      [Reopen and reconcile investigations of rare, unexplained events instead of leaving them undetermined, since a buried first case left the second crew unwarned.],
      [Build maintenance procedures that actively test for the surfaced failure mode across the fielded fleet, not just the redesigned units.],
      [Hunt for unrecoverable failure modes proactively in service data, treating their absence in the record as unproven rather than as evidence of safety.],
    ),
  ),
  courses: ("LEN 5", "LEN 7", "LEN 3",),
  scale: "big",
  induced-anchor: "1.2",
  lens-anchor: "D1/PT1",
  leo-anchor: "LEO-1",
  evidence-source: "investigation",
)

// ---- Case 100 — glass-cockpit-transition-in-light ----
#case(
  number: 100,
  slug: "glass-cockpit-transition-in-light",
  title: "Glass-Cockpit Transition in Light Aircraft — Technology Outran Training",
  year: "2010",
  domains-list: ("general aviation", "avionics", "pilot training"),
  modes-code: "HNK",
  impact: "An NTSB safety study of ~8,000 piston aircraft manufactured 2002–2006, with accidents analyzed for 2002–2008, found that glass-cockpit aircraft had lower total accident rates but higher fatal accident rates than comparable conventional-instrument aircraft, and no significant overall improvement in safety; the Board did not resolve why the fatal rate diverged, but found no FAA equipment-specific training requirement for glass-cockpit pilots and issued recommendations A-10-36 through A-10-41",
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "7.1",
  lens-anchor: "D1+D3/PT1",
  leo-anchor: "LEO-1, LEO-2",
  summary: [
    Glass cockpits — integrated digital primary flight displays and
    multifunction displays replacing the inherited six-pack of
    analog instruments — were introduced into light piston aircraft
    over the 2000s as a fleet-wide modernization. The NTSB safety
    study NTSB/SS-10/01 examined approximately 8,000 small piston aircraft manufactured 2002–2006 and reached a finding the technology's own advocates did not expect: glass-cockpit aircraft had lower total accident rates than comparable conventional-instrument aircraft over the period studied but higher fatal accident rates, and no significant overall improvement in safety. The NTSB did not resolve why the fatal rate diverged — it recorded that additional research is warranted — and identified the absence of equipment-specific training requirements as the safety issue in reach. The Board issued recommendations
    A-10-36 through A-10-41 on knowledge-testing standards,
    simulator availability, and training requirements. The study
    is explicit that advanced avionics "can increase the safety potential" of light aircraft but that, "for the aircraft and time period studied," the transition "has not yet resulted in the anticipated improvement in safety" — an open, not closed, verdict. The case is the canonical 7.1 failure of an inherited
    capability regime (pilot proficiency) not being re-verified
    against the new envelope the technology transition introduced.
    Pair with the aging-system transition cases (Cases 114–116, 154, 156, 174, and 194, drafted in parallel).
  ],
  sections: (
    [
      Glass-cockpit avionics — integrated digital primary flight
      displays and multifunction displays replacing the inherited
      six-pack of analog round-dial instruments — were introduced
      into light piston aircraft over the 2000s. The fleet
      conversion was largely industry-driven; new-build aircraft
      came with glass as standard, retrofits became increasingly
      common, and the FAA's certification framework treated the
      transition as a positive safety move on the strength of the
      capability the displays delivered to pilots: integrated
      situational awareness, moving-map navigation, terrain and
      traffic display, system-status integration. The
      operationally critical assumption was that pilots
      transitioning from analog to glass would carry their
      proficiency across the change.#cn()
    ],
    [
      The NTSB safety study NTSB/SS-10/01 examined that assumption
      directly. The Board studied approximately 8,000 small piston
      airplanes registered in the United States over the period
      2002–2006, comparing accident rates between
      conventional-instrument and glass-cockpit fleets matched on
      model and operational class. The headline finding ran against expectation. Glass-cockpit aircraft had lower total accident rates than comparable conventional-instrument aircraft over the period, but a higher fatal accident rate, and no significant improvement in safety overall. The expected fleet-wide safety
      gain from the displays had not yet materialized in the
      accident record.#cn()
    ],
    [
      The NTSB's attribution is careful. It did not name a cause for the fatal-rate gap, and said further research is needed. The
      transitioning pilot population was certificated and current
      under the inherited training regime that assumed analog
      instruments, and the glass displays — for all their
      situational-awareness advantages — introduced new failure
      modes (mode confusion, automation surprises, attention
      capture by integrated displays, degraded scan in degraded
      modes) that the inherited training did not address. The
      Board issued recommendations A-10-36 through A-10-41 to the
      FAA: equipment-specific knowledge-testing standards,
      simulator and training-device availability for transitioning
      pilots, and structured training requirements before
      operating glass-cockpit aircraft.#cn()
    ],
    [
      The study's language is open rather than closed. Advanced avionics "can increase the safety potential" of light aircraft, but "for the aircraft and time period studied" the transition "has not yet resulted in the anticipated improvement in safety." The verdict is not that glass is unsafe; it
      is that the inherited certification of pilot proficiency,
      built around analog instruments, did not transfer to the
      new envelope without re-engineered training. The case is
      the canonical 7.1 failure: a capability regime (pilot
      proficiency) was not re-verified when the cockpit's
      interface envelope changed, and the inherited training
      assumptions silently became inadequate to the new
      operational reality.#cn()
    ],
    [
      Drafted alongside the aging-system transitions in Cases
      22–76, the glass-cockpit GA study carries the
      capability-under-system-change pattern at the
      consumer-aviation scale where the analog cases run at the
      defense and commercial-aviation scale. The structural
      lesson is the same: when a system's interface envelope
      changes — and even when the change is a capability-enhancing
      one — the inherited certification of operator proficiency
      has to be re-verified against the new envelope, or the
      transition outruns the training and the accident record
      moves in the wrong direction. The NTSB recommendations are
      the engineering response to that pattern, and their
      implementation is what closes (or fails to close) the open
      verdict the study left.
    ],
  ),
  beats: (
    "Glass-cockpit avionics introduced into light piston aircraft over the 2000s as fleet-wide modernization; assumed positive safety move",
    "NTSB safety study NTSB/SS-10/01 examined ~8,000 small piston aircraft manufactured 2002–2006; matched comparison glass vs. conventional fleets",
    "Headline against expectation: lower total accident rates but a higher fatal accident rate for the glass-cockpit fleet, and no significant overall safety improvement",
    "NTSB named no cause for the fatal-rate gap and called for further research; the safety issue in reach was the absent equipment-specific training requirement; recommendations A-10-36 through A-10-41 to the FAA",
    "Open verdict preserved: advanced avionics 'can increase the safety potential' but 'has not yet resulted in the anticipated improvement in safety'",
  ),
  approaches: (
    during: (
      [Specify the inherited certification of operator proficiency in advance of a technology transition, and design the re-verification against the new envelope as part of the transition's deliverable, not as a downstream training catch-up.],
      [Treat capability-enhancing transitions with the same re-verification discipline as capability-degrading ones; the glass-cockpit transition was a positive technology move that nevertheless required training re-verification the field skipped.],
      [Name the new failure modes the transition introduces (mode confusion, automation surprises, attention capture) at the design stage of the equipment-specific training, rather than waiting for the accident record to surface them.],
    ),
    after: (
      [Preserve the NTSB's open-verdict language ("can increase the safety potential ... has not yet resulted in the anticipated improvement in safety") in any report on the transition's outcome; the study did not say glass is unsafe, and the precise language is what makes the recommendation set actionable.],
      [Track implementation of the NTSB recommendation set (A-10-36 through A-10-41) as the engineering response to the open verdict; the verdict closes when the recommendations are implemented and the next round of evidence is collected.],
      [Carry the structural lesson into adjacent transitions — the aging-system transition cases (Cases 114–116, 154, 156, 174, 194) — as evidence that the inherited certification of operator proficiency has to be re-verified against the new envelope across consumer, commercial, and defense scales.],
    ),
  ),
  references: (
    [National Transportation Safety Board (2010). _Introduction of Glass Cockpit Avionics into Light Aircraft_, Safety Study NTSB/SS-10/01. https://www.ntsb.gov/safety/safety-studies/Documents/SS1001.pdf — the case's primary investigation document.],
    [NTSB Safety Recommendations A-10-36 through A-10-41 (2010), issued to the FAA — the engineering response the open verdict points to.],
    [Wiener, E. L., \& Curry, R. E. (1980). Flight-deck automation: Promises and problems. _Ergonomics_, 23(10):995–1011 — the foundational literature on automation-induced failure modes that the glass-cockpit transition re-introduced at the GA scale.],
    [Sarter, N. B., Woods, D. D., \& Billings, C. E. (1997). Automation surprises. In _Handbook of Human Factors and Ergonomics_ (2nd ed.) — the mode-confusion / automation-surprise literature the NTSB findings cross-reference.],
  ),
  quote: [Advanced avionics and electronic displays can increase the safety potential of general aviation aircraft operations by providing pilots with more operational and safety-related information and functionality, but more effort is needed to ensure that pilots are prepared to realize that potential.],
  quote-source: "NTSB Safety Study NTSB/SS-10/01 (2010).",
  le-insight: [
    The NTSB's glass-cockpit GA study is the canonical
    capability-under-system-change failure at the
    consumer-aviation scale: a positive technology transition
    that nevertheless outran the inherited certification of
    operator proficiency. The Board named no cause for the fatal-rate gap and asked for more research, and the verdict
    is open — the safety potential is there, and the
    transition has not yet realized it.
  ],
  lens-approach: [
    Glass-cockpit GA is the small-fleet capability-under-
    transition failure (induced 7.1; LENS D3/PT1). LENS uses
    it in Domain 1 (Systems Analysis) for the inherited
    certification of operator proficiency that has to be
    re-verified against the new envelope, and in Domain 3 (Human-System Collaboration) for the new
    automation-induced failure modes (mode confusion,
    automation surprises, attention capture) the transition
    introduced. Pair with the aging-system
    transition cases (Cases 114–116, 154, 156, 174, 194)
    at the cross-scale capability-under-change layer.
  ],
  literature-items: (
    [NTSB Safety Study NTSB/SS-10/01 (2010)],
    [Wiener \& Curry (1980), _Ergonomics_],
    [Sarter, Woods, \& Billings (1997), automation surprises],
  ),
  reflection-list: (
    [Identify a technology transition in your domain that is positive on its capability claim and that nevertheless puts the inherited certification of operator proficiency under question. What re-verification of operator proficiency would the transition require — and is it currently part of the deliverable, or assumed away?],
    [The NTSB declined to name a cause for the fatal-rate gap and pointed instead at the absent equipment-specific training requirement. What is the analog distinction in your context — between the engineered artifact and the operator-proficiency regime that has to track it?],
  ),
  courses: ("LEN 5", "LEN 7", "LEN 9"),
)

// ---- Case 101 — ariane-5-flight-501 ----
#case(
  number: 101,
  slug: "ariane-5-flight-501",
  title: "Ariane 5 Flight 501",
  year: "1996",
  domains-list: ("space",),
  modes-code: "DKH",
  impact: "Maiden flight destroyed itself 39 seconds after launch; four Cluster science satellites lost, replaced at 214 MECU; reused Ariane 4 code never re-verified for Ariane 5",
  diagram: dgm.dgm-stat(
    "39s", "after launch · 16-bit integer overflow",
    micro: "code path disabled by the previous vehicle's profile; re-enabled by the new one",
    caption: "Ariane 5 — the fallacy of risk-free code reuse",
  ),
  kind: "failure",
  summary: [
    On its 1996 maiden flight, the Ariane 5 rocket destroyed itself 39 seconds after launch, losing the four Cluster science satellites aboard.
    The cause was reused software: the inertial reference system inherited
    code from Ariane 4, where a horizontal-velocity value never exceeded a
    16-bit integer's range. Ariane 5's steeper, faster trajectory pushed it
    past that range; the integer overflow crashed both redundant reference
    systems almost simultaneously, the vehicle lost guidance and broke up.
    The inquiry found the offending code path had been irrelevant on Ariane 4
    and was never removed or re-verified for Ariane 5 — software reuse had
    been treated as risk-free. Ariane 5 is the foundational safety-critical-
    software case for the hazard of reusing code without re-verifying it
    against the new system's operating envelope.
  ],
  sections: (
    // -- Background --
    [
      The Ariane 5 heavy-lift rocket reused proven components from its
      successful predecessor, Ariane 4 — including, in its inertial reference
      system, software that had flown reliably for years. Reuse of
      flight-proven code was regarded as a way to reduce risk and cost.#cn()
      The reasoning was seductive precisely because the code's flight record
      was genuine: software that had worked on Ariane 4 looked like the
      safest possible choice, and that confidence is what allowed it to cross
      onto a different vehicle without being re-examined against the new
      vehicle's conditions.
    ],
    // -- What Happened --
    [
      On 4 June 1996, Ariane 5 Flight 501 — its maiden flight — veered off
      course and broke up under aerodynamic stress 39 seconds after launch;
      the on-board self-destruct fired as designed, and the four Cluster science satellites were lost.#cn() The vehicle was destroyed in well under a minute of flight, before it had done anything but climb — the whole loss flowing from a fault that triggered almost immediately at liftoff, when the new trajectory first pushed the inherited code outside the range it had been built to handle.
    ],
    // -- The Investigation --
    [
      The inquiry board traced the cause to the reused code. A
      horizontal-velocity value that never exceeded a 16-bit signed integer
      on Ariane 4's trajectory did exceed it on Ariane 5's faster one; the
      resulting overflow shut down both redundant inertial reference systems
      almost simultaneously, and the vehicle lost guidance.#cn() Redundancy
      gave no protection here because both units ran the identical inherited
      code and met the identical out-of-range value at the same instant, so
      the backup failed a data cycle ahead of the primary, leaving nothing to switch to — duplicating a system
      defends against a part breaking, not against a shared assumption being
      wrong. The offending code path had become irrelevant to Ariane 5's
      flight after liftoff, yet had neither been removed nor re-verified
      against the new vehicle's envelope — reuse had been treated as
      risk-free.#cn()
    ],
    // -- The Capability Gap --
    [
      Ariane 5 is the canonical software-engineering case for the fallacy of
      risk-free reuse. Code is fit for the envelope it was written and
      verified against; reusing it in a different envelope is a new design
      decision and must be re-verified as one. The institutional capability
      that was missing was the requirement that reused safety-critical code
      be re-verified, not merely trusted because it had worked before.#cn()
      The flaw was never in the Ariane 4 code, which was correct for the
      trajectory it was written against; the flaw was the institutional
      assumption that a record of working in one envelope carried over to
      another, an assumption no test was required to challenge.
    ],
    // -- Aftermath & Reform --
    [
      The fix and the lesson reshaped safety-critical software practice:
      reuse became a verification event, with explicit checking of every
      inherited assumption against the new system's operating
      conditions.#cn() The case rhymes with the Patriot (Case 129) and the
      Mars Climate Orbiter (Case 98) — small, unexamined assumptions
      inherited across a boundary, fatal when the boundary's conditions
      changed. What unites the three is that each inherited a quantity sound
      in its original setting and lethal in the new one, so the reform is the
      same in every case: make the boundary crossing the moment the
      assumption is re-checked, rather than the moment it is silently trusted.
    ],
  ),
  beats: (
    "Ariane 5 reused inertial reference software flown reliably on Ariane 4 to reduce risk",
    "The 1996 maiden flight veered off course at 37 seconds and broke up at 39 seconds after launch",
    "A horizontal-velocity overflow shut down the back-up reference system and then the active one 0.05 seconds later, through identical inherited code",
    "Code is fit only for the envelope it was verified against; reuse demands re-verification",
    "Safety-critical reuse became a verification event with every inherited assumption explicitly re-checked",
  ),
  references: (
    [J. L. Lions (chair), _Ariane 5 Flight 501 Failure Inquiry Board Report_ (1996) — the data-conversion overflow (quoted).],
    [Lions Report (1996) — the 39-second disintegration and the automatic self-destruct.],
    [ESA Science & Technology, "Cluster — Summary" — the loss of the four Cluster spacecraft and the 214 MECU recovery mission approved by the SPC.],
    [Lions Report (1996) — the 64-bit-to-16-bit conversion overflow and the simultaneous shutdown of both inertial reference systems.],
    [Lions Report (1996) — the reused code path neither removed nor re-verified for Ariane 5's envelope.],
    [N. Leveson, _Safeware_ (1995) — software-reuse hazards; G. Le Lann, "An Analysis of the Ariane 5 Flight 501 Failure" (1997).],
    [Cf. Patriot (Case 129) and Mars Climate Orbiter (Case 98).],
  ),
  quote: [The internal SRI software exception was caused during execution of a data conversion from 64-bit floating point to 16-bit signed integer value.],
  quote-source: "Ariane 5 Flight 501 Failure Inquiry Board, 1996",
  le-insight: [
    Ariane 5 is the canonical software-engineering case for the
    fallacy of risk-free code reuse. Code is fit for its envelope of
    operation. Reusing it in a different envelope is a new design
    decision and must be re-verified as one. The institutional
    capability that was missing was the requirement to re-verify.
  ],
  lens-approach: [
    LENS uses Ariane 5 in LEN 5 for software-engineering capability
    deliverables and in LEN 8 for the institutional discipline that
    treats reuse as a verification event rather than as a savings.
  ],
  literature-items: (
    [Lions Report (1996)],
    [Leveson (1995), _Safeware_],
    [Wing, "A Specifier's Introduction to Formal Methods" (1990)],
  ),
  reflection-list: (
    [Identify a piece of reused infrastructure in your domain whose original operating envelope is not documented. What is the silent assumption?],
    [Design the verification deliverable that should accompany every reuse of safety-critical software.],
    [Both redundant reference systems failed at the same instant because they shared the same inherited assumption. Identify a place in your domain where redundancy gives false comfort because the duplicated units share a common flaw rather than fail independently.],
  ),
  approaches: (
    during: (
      [Treat every reuse of safety-critical code as a new design decision: re-verify each inherited assumption against the new system's operating envelope before flight.],
      [Document the original operating envelope a component was verified against, so a later reuse can be checked against it rather than blindly trusted.],
      [Design redundancy to fail independently — diverse implementations or inputs — so a shared inherited assumption cannot take out primary and backup at once.],
    ),
    after: (
      [Audit reused components for code paths that are irrelevant in the new system but still active, and remove or re-verify them rather than leaving them dormant.],
      [Make boundary crossings — code moving onto a new vehicle, a new envelope — a mandatory re-verification event in the institution's process, not a savings.],
      [Review past reuse decisions for the Ariane / Patriot / Mars Climate Orbiter pattern: a quantity sound in its original setting and unchecked in the new one.],
    ),
  ),
  courses: ("LEN 5", "LEN 8"),
  scale: "big",
  induced-anchor: "7.2",
  lens-anchor: "D1/PT1",
  leo-anchor: "LEO-1",
)

// ---- Case 102 — air-france-flight-447 ----
#case(
  number: 102,
  slug: "air-france-flight-447",
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
    recognized it; the upset ran four minutes and twenty-three seconds from autopilot disconnection to impact. The BEA traced the loss to the airspeed failure, the crew's
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
      vulnerability: Thales AA pitot probes prone to brief icing at high
      altitude in heavy precipitation, a pattern documented across the
      A330/A340 fleet in the years before the accident. A replacement
      program with newer probes was underway, but the accident aircraft
      had not yet been modified, so the vulnerability the program existed
      to close was still live on the very jet that crossed the storm
      band — the retrofit recognized as necessary but not yet fitted
      where it mattered.#cn() The A330's fly-by-wire architecture also
      carried a design choice that would matter later: the two sidesticks
      were not mechanically linked, so an input on one was not felt on
      the other, a philosophy that traded the visual cue of yoke movement
      for sidestick lightness and independence.
    ],
    // -- What Happened --
    [
      At 35,000 feet the probes iced, the airspeed readings went invalid,
      and the autopilot and autothrust disconnected into Alternate Law —
      a degraded control regime in which stall protection no longer
      held. The pilot flying responded with sustained nose-up input; the
      jet climbed, stalled, and never recovered, falling some 38,000 feet into the ocean in about three and a half minutes. The stall
      warning sounded, then cut out at extreme angle of attack and
      resumed when the nose dropped — warning against the one input that
      would have begun a recovery, so that the cue meant to guide the
      crew instead punished the correct action and rewarded the fatal
      one, an inversion no amount of hand-flying instinct could resolve
      in the time available.#cn() The other pilot's correcting inputs
      on his own sidestick went unfelt on the flying pilot's: the
      design's clean independence became, under stress, an inability to
      see what the other crew member was doing.
    ],
    // -- The Investigation --
    [
      The BEA's three-year investigation, concluded in the 2012 final
      report, named a chain: airspeed loss from pitot icing,
      inappropriate crew inputs, and the crew's failure to recognize and
      recover from the stall.#cn() The pilots were not incompetent —
      they were outside anything their training had prepared them for,
      and the BEA said so: "the conditions in which airline pilots are trained and exposed to stalls… does not generate the expected behaviour in any acceptable reliable way."#cn() The finding reframed
      the loss from a question of individual airmanship to one of
      training design: the crew had been drilled in a regime that never
      produced the responses the emergency demanded. The BEA report
      also surfaced the longer industry debate over fly-by-wire
      philosophies — the Airbus convention of independent sidesticks and
      protected envelopes versus the Boeing convention of linked yokes
      and trim feedback — not to adjudicate which was safer in steady
      state but to argue that whichever a manufacturer chose, the
      training had to make the degraded-mode behavior of that choice
      reflexive rather than novel.
    ],
    // -- The Capability Gap --
    [
      The gap was precise. Airlines trained stall recovery at low
      altitude — the regime certification required and the one
      simulators could reproduce — while the simulators of the era could
      not faithfully reproduce a high-altitude stall, so crews never
      practiced the situation that arrived. Years of reliable
      automation had also let hand-flying skills atrophy, so when the
      autopilot handed back control the crew met an unfamiliar regime
      with rusty manual skills at the worst possible moment. The
      trained envelope and the operational envelope had quietly
      diverged, and AF447 fell into the gap between them — a gap no one
      had been positioned to see widen, because the training record
      showed full compliance and the operational record showed an
      excellent safety performance, right up until the regime that
      neither had covered arrived together with degraded control law.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The BEA's recommendations reached far beyond one airline: the
      pitot probes were replaced fleet-wide, and the report pressed for
      training in manual high-altitude flight, stall recovery from
      cruise altitude, unreliable-airspeed handling, and angle-of-attack
      indication.#cn() Regulators then made Upset Prevention and
      Recovery Training mandatory for airline pilots — FAA Part 121
      adopted UPRT-aligned stall-recovery training in 2014; EASA phased
      UPRT into ATPL training by 2019; ICAO codified it in Doc 10011 —
      closing at the regulatory level the gap that had been invisible
      at the airline level, and moving the fix from a single carrier's
      discretion to a binding standard every airline had to meet.#cn()
      Simulator manufacturers were pushed to extend their aerodynamic
      models into the post-stall regime so the training could actually
      take place. The crew performed exactly as trained; the training
      was the wrong training, and only a system-wide mandate could keep
      that mismatch from recurring elsewhere.
    ],
  ),
  beats: (
    "Highly automated A330 crossed equatorial storm band carrying a known but unfitted pitot-probe vulnerability",
    "Pitot probes iced, autopilot disconnected, sustained nose-up input stalled the jet for four minutes",
    "BEA cited airspeed loss, inappropriate inputs, and training that never produced reliable stall responses",
    "Simulators could not reproduce high-altitude stall; reliable automation had also let manual skills atrophy",
    "Pitot probes replaced; regulators mandated Upset Prevention and Recovery Training across all airlines",
  ),
  references: (
    [Bureau d'Enquêtes et d'Analyses (BEA), _Final Report on the accident on 1 June 2009 to the Airbus A330-203 registered F-GZCP operated by Air France flight AF447_ (July 2012) — #link("https://www.faa.gov/sites/faa.gov/files/AirFrance447_BEA.pdf")[full report]: flight, aircraft, and the known pitot-icing vulnerability with retrofit pending.],
    [BEA, _Final Report AF447_ (2012) — accident sequence: autopilot/autothrust disconnection, degraded control law, sustained nose-up input, stall, and the stall-warning logic dropping out at high angle of attack.],
    [BEA, _Final Report AF447_ (2012) — probable cause: airspeed inconsistency from pitot icing, inappropriate control inputs, and failure to recognize and recover from the stall.],
    [BEA, _Final Report AF447_ (2012) — finding on warning-system ergonomics and stall-training conditions (quoted).],
    [G. Palmer / E. Strickland, "Air France Flight 447 Crash Caused by a Combination of Factors," _IEEE Spectrum_ (2014) — analysis of the divergence between the trained and operational envelopes.],
    [BEA, _Final Report AF447_ (2012), safety recommendations — pitot-probe replacement, manual high-altitude flying, approach-to-stall and stall recovery, unreliable-airspeed procedures, and angle-of-attack indication.],
    [European Union Aviation Safety Agency, Upset Prevention and Recovery Training (UPRT) requirements for airline pilots (phased in by 2019); ICAO, _Manual on Aeroplane Upset Prevention and Recovery Training_ (Doc 10011).],
    [Federal Aviation Administration, _Qualification, Service, and Use of Crewmembers and Aircraft Dispatchers_, final rule, 78 FR 67800 (2013, effective 2014) — Part 121 stall and upset recovery training, directed by the Airline Safety and FAA Extension Act of 2010; FAA Advisory Circular 120-109A, _Stall Prevention and Recovery Training_.],
  ),
  quote: [The crew never understood that they were stalling and consequently never applied a recovery manoeuvre.],
  quote-source: "BEA, Final Report on Air France Flight 447, July 2012",
  le-insight: [
    AF447 is the canonical case of training that matched one envelope of
    operation perfectly and another not at all. Stall *prevention*
    training was excellent. Stall *recovery from cruise altitude*
    training did not exist because the simulators of the era could not
    faithfully produce it. Layered on top was an automation-to-human
    handoff that arrived in a degraded control law the crew had never
    flown and a sidestick architecture that hid one pilot's inputs from
    the other. The pilots performed exactly as trained. The training was
    the wrong training, and the reform had to reach the regulator,
    because no single airline could close the gap unilaterally.
  ],
  lens-approach: [
    AF447 is the worked example of induced sub-competency 1.2
    (capability envelope at the edge of training) and the LENS D2/PT4
    pairing — Iterative Development applied to training-program updates
    that must keep pace with operational regimes. Students use the case
    to specify training requirements from degraded-mode operational
    analysis (LENS D1), to design the evidence the BEA used to identify
    a training-design rather than airmanship failure (LENS D3), and to
    examine the human-AI handoff as a capability problem (LENS D5): the
    autopilot disconnection was a transition crews were trained to
    avoid rather than to handle. The case pairs with Kegworth (Case 103)
    as the canonical pair on transition-training failure across a
    changed system, and with the Boeing 737 MAX MCAS sequence as the
    near-current echo. LEO mapping: LEO-2 (Iterative Development)
    primary; LEO-4 (Test and Evaluation) for the BEA investigation
    framing; LEO-3 (Human-System Collaboration) for the
    automation-handoff dimension.
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
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "1.2",
  lens-anchor: "D2/PT4",
  leo-anchor: "LEO-2, LEO-4",  // alternate framing adopted: LEO-5 dropped; reserve LEO-5 (Human-System Collaboration) for AI-mediated cases; AF447 is automation-handoff under classical FBW, not AI-mediated,
)

// ---- Case 103 — kegworth-british-midland-92 ----
#case(
  number: 103,
  slug: "kegworth-british-midland-92",
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
    They acted before reading the engine displays: the first officer named the right engine and could not afterwards say what he had seen, and the commander accepted it. The new, harder-to-read electronic displays did not correct them, and the cabin crew who saw flames never told the flight deck. The commander later explained his suspicion of the right engine by an air-conditioning layout that did not hold on the -400; the AAIB thought it unlikely that reasoning had time to matter. The AAIB issued 31 recommendations; Kegworth became the
    textbook case of capability degrading under system change.
  ],
  sections: (
    // -- Background --
    [
      On 8 January 1989 British Midland Flight 92, a nearly new Boeing
      737-400 (G-OBME), left Heathrow for Belfast with 126 aboard. The -400
      was a recent variant — bigger engines, a partly redesigned cockpit
      with new electronic engine instruments. The crew were experienced 737
      pilots, but their conversion onto the variant was a one-day ground course on the differences, taken with no EIS-equipped simulator available anywhere in the airline — so the display they would have to read under pressure had never been flown, only shown.#cn()
    ],
    // -- What Happened --
    [
      Climbing through 28,300 feet, a fan blade fractured in the left engine,
      filling the cabin with vibration and smoke. Without waiting to read the engine displays, the first officer named the right engine and the commander throttled it back eleven seconds after the autopilot came out.
      The symptoms eased (because disconnecting the autothrottle let the left engine stop surging), seeming to confirm it, and they shut the right engine down. On final approach the damaged left engine failed
      completely; with the good engine off, the aircraft struck the M1
      embankment short of the runway — 47 killed, 74 seriously injured. The
      brief calm after the shutdown was the trap: it appeared to confirm a
      diagnosis that was wrong, removing the doubt that might have prompted a
      reassessment.#cn()
    ],
    // -- The Investigation --
    [
      The Air Accidents Investigation Branch traced the disaster to the shutdown of the serviceable engine, and among its contributory factors to the crew reacting prematurely and contrary to their training, and not assimilating the engine instrument display before throttling back the No 2 engine. The commander's later account — that an air-conditioning layout pointed him at the right engine — the Board recorded and set aside, judging it unlikely to have had time to shape the decision.#cn() The new
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
  beats: (
    "New 737-400 variant with redesigned cockpit; conversion was a one-day differences course with no EIS-equipped simulator available",
    "Fan blade fractured left engine; crew shut down the right without assimilating the engine instrument display",
    "AAIB cited premature action contrary to training, unread engine instruments, and the silent cabin-to-flight-deck channel",
    "Variant treated as incremental change; manual notes never overwrote the prior reflex under emergency pressure",
    "AAIB issued 31 recommendations spanning conversion training, instrument design, CRM, and crashworthiness",
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
  quote: [They did not assimilate the indications on the engine instrument display before they throttled back the No. 2 engine.],
  quote-source: "AAIB Aircraft Accident Report 4/1990, cause and contributory factors, 1990",
  le-insight: [
    Kegworth is the textbook example of Capability Degradation Under System Change. The pilots were competent and current. What the AAIB found was that they acted before reading the instruments that would have told them which engine was failing, on a variant whose engine display they had met in one day of ground school and never in a simulator. The new airframe was treated as an incremental change. The crew's response revealed it was a categorical one.
  ],
  lens-approach: [
    LENS treats Kegworth in LEN 5 as the canonical *system-change*
    capability problem and in LEN 8 as the institutional version: how
    knowledge about what has changed travels from engineering to
    operations and what gets lost in transit. The case sits alongside
    Patriot (Case 129) in the canonical problem-type pair for system
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
  scale: "big",
  induced-anchor: "3.3",
  lens-anchor: "D3/PT6",
  leo-anchor: "LEO-3",
  evidence-source: "investigation",
)

// ---- Case 104 — asiana-airlines-flight-214 ----
#case(
  number: 104,
  slug: "asiana-airlines-flight-214",
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
    caption: "Asiana 214 — lowest approach airspeed, seconds from the seawall",
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
      glideslope out of service for construction — so a pilot still learning
      the type's automation was hand-flying an approach stripped of the
      vertical guidance that would normally have anchored it, exactly the
      conditions under which an unfamiliar mode is most likely to bite.#cn()
    ],
    // -- What Happened --
    [
      On 6 July 2013, on final approach to runway 28L, the aircraft
      descended below the proper path and slowed. The crew had set an
      autopilot mode that left the autothrottle in HOLD, where it would
      not advance thrust to hold the selected speed. Airspeed decayed to
      about 103 knots against a target of 137; the 777 struck the seawall
      short of the runway, killing three and injuring nearly two hundred
      of the 307 aboard. The thirty-four-knot shortfall built up silently
      while the crew believed the automation was holding the speed, so the
      first unambiguous signal of trouble was the airframe itself running out
      of energy on short final.#cn()
    ],
    // -- The Investigation --
    [
      The NTSB found the probable cause to be the crew's mismanagement of the descent, the pilot flying's unintended deactivation of automatic airspeed control, inadequate monitoring of airspeed, and a delayed go-around — the deactivation traced, in the Board's analysis, to the pilot flying's faulty mental model of the automation, and the automation's complexity inadequately described in Boeing's documentation and Asiana's training.
      The captain told investigators he had assumed the autothrottle
      would maintain speed; in that configuration, it does not — a gap
      between the system's documented behavior and the mental model the
      training had left him with, the kind of mismatch that surfaces only
      when the automation is asked to do what the operator wrongly believes
      it is already doing.#cn()
    ],
    // -- The Capability Gap --
    [
      Asiana 214 is the textbook automation surprise on a Western
      wide-body: the mode the autothrottle was actually in and the mode
      the crew believed it was in diverged silently. The missing
      capability was not raw pilot skill but transparency — a system
      that made its own state, and the fact that the crew now owned the
      airspeed, salient at the moment it mattered, rather than leaving the
      handoff of responsibility to be inferred from a silent mode change the
      interface did nothing to announce.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The NTSB issued recommendations on autoflight training, low-energy alerting, and the intuitiveness of flight-crew/autoflight interfaces, and emphasized
      training that preserves manual-flying proficiency to counter
      automation dependence. The accident became a standard reference in
      airline automation-policy reviews and in the push toward
      "automation airmanship" curricula — shifting the lesson from one crew's
      error to a recurring design problem about how modes are annunciated and
      how monitoring is taught when the automation is doing most of the
      flying.#cn()
    ],
  ),
  beats: (
    "Captain new to the 777 hand flew a visual approach with the glideslope out of service",
    "Autothrottle sat in HOLD; airspeed decayed silently to 103 knots and the 777 struck the seawall",
    "NTSB cited mismanaged descent, unintended deactivation of airspeed control, weak airspeed monitoring, and a delayed go-around",
    "The mode the autothrottle was in and the mode the crew believed diverged silently without annunciation",
    "Recommendations targeted autoflight training, context-dependent low-energy alerting, and the intuitiveness of autoflight interfaces",
  ),
  references: (
    [NTSB, _Aircraft Accident Report: Asiana Airlines Flight 214_, NTSB/AAR-14/01 (2014) — probable cause and contributing factors (quoted).],
    [NTSB/AAR-14/01 (2014) — the autothrottle HOLD reversion and airspeed decay to ~103 kt.],
    [NTSB/AAR-14/01 (2014) — the captain's mental model of the autothrottle.],
    [Sarter, N. & Woods, D. (1995), "How in the world did we ever get into that mode?," _Human Factors_ — automation surprise.],
    [NTSB/AAR-14/01 (2014), safety recommendations A-14-37 to A-14-43 and A-14-55 on autoflight training, low-energy alerting, interface intuitiveness, and manual flight.],
  ),
  quote: [The complexities of the autothrottle and autopilot flight director systems that were inadequately described in Boeing's documentation and Asiana's pilot training, which increased the likelihood of mode error.],
  quote-source: "NTSB Aircraft Accident Report NTSB/AAR-14/01, probable cause, 2014",
  le-insight: [
    Asiana 214 is the aviation case for the LENS Human-System Collaboration
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
    [The autothrottle's HOLD reversion handed airspeed back to a crew that did not know it now owned it. Design the annunciation that would make a transfer of responsibility between automation and operator unmissable at the instant it occurs.],
  ),
  approaches: (
    during: (
      [Make automation transparency a design requirement: the system must announce its active mode and any silent reversion, not leave it to be inferred.],
      [Annunciate transfers of responsibility (e.g., when the crew now owns airspeed) explicitly at the moment they occur, so no handoff is implicit.],
      [Design and validate mode logic against operator mental models during development, so configurations that "do not do what pilots assume" are caught before fielding.],
    ),
    after: (
      [Train and audit energy-state monitoring so a slow, silent airspeed decay is caught by the crew before the airframe signals it.],
      [Preserve manual-flying proficiency through recurrent practice to counter the automation dependence that hid the decay.],
      [Monitor operations for mode-confusion events and feed them into automation-policy and annunciation-design reviews.],
    ),
  ),
  courses: ("LEN 5", "LEN 2"),
  scale: "big",
  induced-anchor: "3.3",
  lens-anchor: "D3/PT6",
  leo-anchor: "LEO-3",
  evidence-source: "investigation",
)

// ---- Case 105 — helios-airways-flight-522 ----
#case(
  number: 105,
  slug: "helios-airways-flight-522",
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
    a pilot hears the horn, across a career, only in the takeoff case.
  ],
  sections: (
    // -- Background --
    [
      Helios 522 was a Boeing 737 departing Larnaca, Cyprus, for Athens.
      The night before, engineers had run a pressurization leak check and
      left the cabin-pressurization selector in the "manual" position.
      The pre-flight checks did not catch it, and the aircraft departed
      with its pressurization system not set to maintain cabin altitude
      automatically — a maintenance setting left in an abnormal position the
      following morning, the kind of latent configuration error that a
      pre-flight verification exists precisely to catch and here did not.#cn()
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
      fuel exhaustion and crashed, killing all 121 aboard. The crew spent
      their few useful minutes diagnosing a configuration fault that did not
      exist, the ambiguous horn having steered them away from the one problem
      — climbing cabin altitude — that was quietly disabling them.#cn()
    ],
    // -- The Investigation --
    [
      The Hellenic Air Accident Investigation Board found the crew's
      misidentification of the cabin-altitude warning as a
      takeoff-configuration warning a direct cause of the accident.
      The single horn carried two meanings with no differentiation between
      them, and a pilot's career exposure to it was the ground
      meaning; the in-flight case was an edge condition the crew had not
      been prepared to recognize — so an ambiguous cue and a one-sided
      training regime combined to make the wrong interpretation the natural
      one, with hypoxia closing the window before the error could be caught.#cn()
    ],
    // -- The Capability Gap --
    [
      Helios 522 is the textbook example of a single cue carrying two
      meanings without differentiation — an interface that lied by
      ambiguity while the training filled in only one of the two meanings.
      The missing capability was a cue, or a training regime, that
      distinguished the deadly in-flight meaning from the routine ground
      one before the operators had to guess under hypoxia — a way to resolve
      the ambiguity at the interface or in training, rather than leaving it
      to be resolved by a crew already losing the cognition the decision
      required.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The investigation drove changes to Boeing's warning logic and to
      pressurization-related training and checklists across operators;
      the FAA in 2011 required warning lights that separate cabin altitude from the
      takeoff-configuration warning. The accident is a standard case
      study in cue ambiguity, pre-flight verification, and the physiology
      of hypoxia in human-factors curricula — its remedies attacking the
      failure on both fronts at once, differentiating the warning at the
      interface and reinforcing the in-flight meaning in training so neither
      gap could be papered over by the other.#cn()
    ],
  ),
  beats: (
    "A maintenance leak check left the pressurization selector on manual and pre flight checks missed it",
    "Cabin failed to pressurize; the crew treated the warning horn as a configuration fault and went hypoxic",
    "Hellenic investigators listed non identification of the warnings among the direct causes",
    "One horn carried two meanings without differentiation while training drilled only the ground meaning",
    "Reforms changed Boeing warning logic, pressurization checklists, and pre flight verification training",
  ),
  references: (
    [FAA Airworthiness Directive 2011-03-14, Amendment 39-16598, 76 FR 6529 (7 February 2011) — the mandated installation of separate CABIN ALTITUDE and TAKEOFF CONFIG warning lights on the 737 Classic fleet.],
    [Hellenic Air Accident Investigation & Aviation Safety Board, _Aircraft Accident Report_ 11/2006 — probable cause and the warning misinterpretation (paraphrased).],
    [AAIASB Report 11/2006 — the manual pressurization selector and failure to pressurize.],
    [AAIASB Report 11/2006 — the dual-meaning warning horn and the training emphasis.],
    [Boeing 737 Flight Crew Operations Manual — configuration and cabin-altitude warnings.],
    [Reason, J. (1990), _Human Error_ — the cue-ambiguity / human-error framing the case draws on.],
  ),
  quote: [The Board concluded that the flight crew confused the two meanings of the warning horn. Similar occurrences had been reported by flight crews worldwide in the past.],
  quote-source: "Hellenic AAIASB Aircraft Accident Report 11/2006 on Helios 522, §2.6.1",
  le-insight: [
    Helios 522 is the textbook example of a single cue carrying two
    meanings without differentiation. The interface lied by ambiguity.
    The training filled in only one meaning. The combination produced a window of a few minutes — the crew's last useful ones — in which they were solving the wrong problem.
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
    [A maintenance setting left in "manual" survived the pre-flight checks and reached the air. Design the pre-flight verification step in your domain that would make an abnormal maintenance configuration impossible to depart with unnoticed.],
  ),
  approaches: (
    during: (
      [Differentiate cues that carry distinct meanings in distinct contexts, so a single signal cannot be read as the wrong one under stress.],
      [Train both meanings of any dual-purpose cue, not just the routine one, so the rare-but-deadly interpretation is recognized first.],
      [Design pre-flight verification to catch abnormal maintenance configurations, so a setting left in "manual" cannot survive into operation.],
    ),
    after: (
      [Audit checklists and warning logic for cues whose meaning depends on phase or context, and resolve the ambiguity before an operator must guess.],
      [Monitor maintenance-to-operations handoffs for latent configuration errors that pre-flight checks have historically missed.],
      [Sustain training on the physiology that degrades the operator (e.g., hypoxia), so the window for self-correction is understood and guarded.],
    ),
  ),
  courses: ("LEN 5", "LEN 2"),
  scale: "big",
  induced-anchor: "3.1",
  lens-anchor: "D3/PT3",
  leo-anchor: "LEO-3",
  evidence-source: "investigation",
)

// ---- Case 106 — transasia-airways-flight-235 ----
#case(
  number: 106,
  slug: "transasia-airways-flight-235",
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
    framing: "the working engine; the wrong lever moved five seconds after the warning",
    caption: "TransAsia 235 — the same wrong-engine pattern as Kegworth (Case 103)",
  ),
  kind: "failure",
  summary: [
    About thirty-seven seconds after takeoff from Taipei Songshan in February
    2015, the right engine of a TransAsia ATR 72 auto-feathered following
    a sensor fault. Working from memory under acute time pressure, the
    crew shut down the left engine — the one still producing thrust —
    leaving the aircraft with no power and too little altitude to recover.
    It clipped a viaduct, struck a taxi, and crashed into the Keelung
    River, killing 43 of the 58 aboard. The Aviation Safety Council found the captain had failed his command-upgrade simulator check in May 2014, and that the crew skipped required items of the published engine-flameout drill and dropped the cross-check callouts that precede a shutdown.
    The wrong-engine error mirrors Kegworth (Case 103) twenty-six years
    earlier.
  ],
  sections: (
    // -- Background --
    [
      TransAsia 235 was an ATR 72-600 twin-turboprop departing Taipei
      Songshan. The captain had failed his command-upgrade simulator check in
      May 2014, passed a re-check, and had been noted for weak handling
      of abnormal procedures. The published response to an engine failure was a memory-item drill, and the drill carried mandatory cross-check callouts before any lever moved — so a captain already flagged for weak abnormal-procedure handling was exactly the operator most likely to skip the confirming callout precisely when it mattered, a known weakness meeting a known failure mode.#cn()
    ],
    // -- What Happened --
    [
      On 4 February 2015, about thirty-seven seconds after takeoff, the right
      engine's autofeather system activated following a faulty sensor
      signal — the engine itself was capable of producing power. The crew,
      identifying an engine problem, shut down the left engine, which was
      operating normally. With neither engine now producing useful thrust
      and the aircraft low and slow, it stalled, clipped a viaduct and a
      taxi, and crashed into the Keelung River, killing 43 of the 58
      aboard. A recoverable single-engine event became unrecoverable the
      moment the working engine was shut down, leaving an aircraft with no
      thrust and no altitude in the seconds just after takeoff when both are
      least forgiving.#cn()
    ],
    // -- The Investigation --
    [
      The Taiwan Aviation Safety Council found the crew failed to identify
      which engine had actually failed and shut down the wrong one. They did not perform the documented failure-identification procedure and skipped required items of the flameout drill; the pilot flying called to pull the wrong lever back five seconds after the master warning, and that engine was shut off 46 seconds after it. The captain's documented proficiency
      deficiencies and the airline's training and crew-resource-management
      shortfalls were contributing factors — the individual lapse sitting
      atop an organizational one, the carrier having left the very weaknesses
      its own proficiency checks had recorded uncorrected before the flight.#cn()
    ],
    // -- The Capability Gap --
    [
      TransAsia 235 is the modern recurrence of the wrong-engine pattern
      that destroyed British Midland 92 at Kegworth in 1989 (Case 103).
      Crews under acute time pressure default to memory; if the memory is
      incomplete, the action follows the flawed memory rather than the
      checklist. The missing capability is a procedure design and training
      regime that keeps the verification step in the loop precisely when
      stress pushes operators to skip it — engineering the confirm-which-engine
      step so it fires under startle, rather than trusting it to a memory
      that time pressure is actively eroding.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The ASC issued recommendations on TransAsia's pilot training,
      proficiency-check standards, and crew-resource management; the
      airline ceased operations in November 2016; GE235 was its second fatal crash in seven months, after Flight GE222 at Magong in July 2014. The case is used to argue that the persistence of the
      wrong-engine pattern across a quarter-century reflects an
      un-engineered intervention, not merely individual error — the same
      failure recurring across crews, airframes, and decades points to a
      design and training gap that no amount of blaming the individual pilot
      has ever closed.#cn()
    ],
  ),
  beats: (
    "Captain had failed his May 2014 upgrade simulator check and was flagged for weak abnormal procedure handling",
    "About thirty-seven seconds after takeoff the right engine auto feathered and the crew shut down the working left engine",
    "Taiwan ASC found the crew skipped the documented failure identification and shut the wrong engine off 46 seconds after the warning",
    "Under acute time pressure crews default to memory; incomplete memory drives action away from the checklist",
    "TransAsia ceased operations in 2016; the case argues the wrong engine pattern is an un engineered intervention",
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
    [The captain failed his upgrade simulator check in May 2014 and passed a re-check, and the airline never addressed the weakness the check had recorded. Design the proficiency-check regime in your domain whose red signal would actually remove an operator from duty before, not after, the failure it predicts.],
  ),
  approaches: (
    during: (
      [Design the abnormal-procedure response so the confirm-which-unit verification step is forced under startle, not left to memory.],
      [Build proficiency checks whose red signals have the authority to ground an operator before the predicted failure, not merely to document a weakness.],
      [Train the checklist-driven response under realistic time pressure, so the trained reflex survives the stress that pushes crews to memory.],
    ),
    after: (
      [Audit whether documented proficiency deficiencies are actually acted on, treating an uncorrected red check as an organizational, not individual, failure.],
      [Monitor for recurrence of well-known patterns (wrong-engine shutdown) across crews and airframes as evidence the intervention is un-engineered, not merely human error.],
      [Sustain crew-resource-management and checklist discipline so the verification step does not erode back to memory under operational pressure.],
    ),
  ),
  courses: ("LEN 5", "LEN 2"),
  scale: "big",
  induced-anchor: "3.1",
  lens-anchor: "D3/PT3",
  leo-anchor: "LEO-3",
  evidence-source: "investigation",
)

// ---- Case 107 — eastern-air-lines-flight-401 ----
#case(
  number: 107,
  slug: "eastern-air-lines-flight-401",
  title: "Eastern Air Lines Flight 401",
  year: "1972",
  domains-list: ("aviation",),
  modes-code: "HT",
  impact: "101 killed in the Everglades; the entire flight crew fixated on a landing-gear indicator bulb while the autopilot silently disengaged",
  diagram: dgm.dgm-cascade(
    ("captain attends to bulb", "first officer attends to bulb", "flight engineer attends to bulb", "altitude warning unattended"),
    outcome: "no one on watch as the aircraft descended",
    caption: "Eastern 401 — three crew, one task, no monitor",
  ),
  kind: "failure",
  summary: [
    On 29 December 1972 an Eastern Air Lines L-1011 descended into the
    Florida Everglades after breaking off its night approach to Miami, killing 101 of the 176
    aboard. The cause was attention, not mechanics: all three flight-deck
    crew became absorbed in a landing-gear indicator bulb that had failed to
    light, and while they worked it, the autopilot's altitude hold was
    inadvertently disengaged. The aircraft sank slowly; an altitude alert
    chimed once and no crewmember remarked on it, and no one was
    monitoring the flight path. The NTSB findings launched decades of
    research into attention, monitoring, and cockpit-alert design, and the
    accident is a formative event behind Crew Resource Management. Eastern
    401 is the canonical case of a low-priority task crowding out a
    life-critical one.
  ],
  sections: (
    // -- Background --
    [
      Eastern Air Lines Flight 401, a wide-body Lockheed L-1011, broke off its night approach to Miami on 29 December 1972 when the nose-gear light failed to come on, and held west of the airport at 2,000 feet with a captain, first officer, flight engineer, and an Eastern maintenance specialist on the jumpseat.#cn() Three crew was the
      era's safeguard against any one person being overloaded, the assumption
      being that more eyes meant more coverage; the night would show that
      without a designed division of those eyes, three people could converge
      on a single trivial problem as easily as one.
    ],
    // -- What Happened --
    [
      The crew noticed that the landing-gear indicator light had not
      illuminated, and all three focused on the bulb. While they worked the
      problem, one of them inadvertently nudged the controls and disengaged
      the autopilot's altitude hold. The TriStar began a slow descent into
      the Everglades; a single half-second chime sounded at 250 feet off the selected altitude, and no crewmember remarked on it. The aircraft hit the
      swamp, killing 101 of the 176 aboard.#cn() The descent was gentle
      enough to go unfelt, the flight engineer was below deck in the electronics bay hunting for the gear indices, and the amber altitude-alert light was inhibited below 2,500 feet on Eastern's L-1011s — so a half-second tone was the whole of the warning the cockpit got.
    ],
    // -- The Investigation --
    [
      The NTSB found the crew had become so engrossed in the landing-gear
      difficulty that they failed to monitor the flight path.#cn() A
      burned-out indicator bulb had absorbed the attention of an entire
      qualified crew while a wide-body airliner descended unwatched — the
      disproportion
      between the trigger and the outcome is exactly what made the case so
      durable a teaching example. The
      findings inaugurated decades of research into attention, monitoring,
      and the design of cockpit alerts — the accident is cited in nearly
      every introductory cognitive-engineering course as the example of how a
      low-priority task can crowd out a life-critical one when attention is
      undivided among the available channels.#cn()
    ],
    // -- The Capability Gap --
    [
      The missing capability was a designed division of attention across the
      crew, and an alert that carried the priority its message deserved.
      Three competent people attended to a burned-out bulb while no one
      watched the altitude; the chime existed but did not cut through. The
      flight deck had the people and the information — it lacked the design
      that would have kept one channel of attention on the thing that could
      kill them. Attention had been treated as something the crew would
      naturally allocate well, rather than as a resource the cockpit had to
      be built to protect, and that unexamined assumption was the gap.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Eastern 401 was one of the formative events behind Crew Resource
      Management (Case 117) — the explicit allocation of monitoring and
      cross-checking roles — and behind modern standards for prioritized
      cockpit alerting.#cn() Both reforms encode the same correction: CRM
      assigns someone to keep flying the aircraft while others troubleshoot,
      and prioritized alerting ensures the most dangerous condition is the
      loudest one — turning the night's two failures into permanent
      structural defenses. Its lesson is that attention is a designable
      parameter, not a personal virtue: a system that lets all eyes converge
      on one task must guarantee the critical channel is still watched.
    ],
  ),
  beats: (
    "L-1011 holding west of Miami after a broken-off approach, with no designed division of attention",
    "Crew fixated on a burned-out gear bulb while autopilot disengaged and chime went unheeded",
    "NTSB found crew failed to monitor flight path; trivial trigger produced catastrophic outcome",
    "No designed division of attention across crew; alert lacked priority weight to cut through",
    "Formative event behind Crew Resource Management and prioritized cockpit alerting standards",
  ),
  references: (
    [NTSB, _Aircraft Accident Report: Eastern Air Lines Flight 401_, NTSB-AAR-73-14 (1973) — the night approach and full flight deck.],
    [NTSB-AAR-73-14 (1973) — the landing-gear-bulb fixation, the inadvertent autopilot disengagement, and 101 deaths of 176 aboard.],
    [NTSB-AAR-73-14 (1973) — the crew's preoccupation with the landing-gear indication that distracted them from maintaining altitude (paraphrased).],
    [C. D. Wickens et al., _Engineering Psychology and Human Performance_ — attention, monitoring, and alert design.],
    [R. Helmreich & H. Foushee (1993), aircrew-coordination research — the Crew Resource Management origins.],
    [Cooper, G. E., White, M. D. & Lauber, J. K. (1980), _Resource Management on the Flightdeck_, NASA CP-2120 — proceedings of the 1979 NASA/industry workshop that named Crew Resource Management.],
  ),
  quote: [Preoccupation with a malfunction of the nose landing gear position indicating system distracted the crew's attention from the instruments and allowed the descent to go unnoticed.],
  quote-source: "NTSB Aircraft Accident Report NTSB-AAR-73-14 on Eastern 401, 1973, probable cause",
  le-insight: [
    Eastern 401 is the canonical attention-failure case. The capability
    that was missing was a designed division of attention across the
    crew. Eastern 401 is one of the accidents behind CRM, and the discipline
    of cockpit alert design exists because the altitude warning chime
    did not carry the priority weight it needed to.
  ],
  lens-approach: [
    LENS uses Eastern 401 in LEN 5 to teach attention as a designable
    parameter and in LEN 2 to introduce alert prioritization as a
    capability deliverable. The case anchors the CRM origin story.
  ],
  literature-items: (
    [NTSB AAR-73-14 (1973)],
    [Wickens et al. (2021), Engineering Psychology and Human Performance],
    [Helmreich & Foushee (1993), aircrew coordination research],
  ),
  reflection-list: (
    [Identify a low-priority task in your domain that could plausibly absorb all of an operator's attention. What is the life-critical task that would be displaced?],
    [Redesign the altitude warning chime of an L-1011 so that it cuts through a focused troubleshooting conversation.],
    [Eastern 401 had three qualified people and still left the flight path unwatched. How would you assign and verify a "someone is always watching the critical channel" role so it cannot collapse when the whole team is drawn to one problem?],
  ),
  approaches: (
    during: (
      [Build an explicit division of attention into the operating procedure, so at least one role is always assigned to the life-critical channel while others troubleshoot.],
      [Design alerts with a priority hierarchy, ensuring the most dangerous condition is also the most salient rather than one indistinguishable chime among many.],
      [Treat attention as a resource the system must protect by design, not a virtue the operators are assumed to supply on their own.],
    ),
    after: (
      [Drill crews on scenarios where a trivial problem competes with a critical one, and verify the monitoring role actually holds under that pressure.],
      [Audit whether alerts in service are heard and acted on, retiring or redesigning any that get lost in routine clutter.],
      [Track distraction-related near-misses so attention-displacement failures are visible before they cause a loss.],
    ),
  ),
  courses: ("LEN 5", "LEN 2"),
  scale: "big",
  induced-anchor: "3.1",
  lens-anchor: "D3/PT3",
  leo-anchor: "LEO-3",
  evidence-source: "investigation",
)

// ---- Case 108 — nasa-eva-23-water-intrusion-inside-a ----
#case(
  number: 108,
  slug: "nasa-eva-23-water-intrusion-inside-a",
  title: "NASA EVA-23 — Water Intrusion Inside a Spacesuit",
  year: "2013",
  domains-list: ("space", "human spaceflight", "safety engineering"),
  modes-code: "HND",
  impact: "During the second of two ISS spacewalks, ESA astronaut Luca Parmitano's helmet filled with up to 1.5 liters of water from the suit's cooling-and-ventilation loop, blinding him, fouling his communications, and threatening drowning in vacuum; the EVA was terminated and Parmitano recovered to the airlock guided by tether feel — the NASA Mishap Investigation Board classified it a High Visibility Close Call and called the condition life threatening",
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "3.4",
  lens-anchor: "D3/PT5",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    On July 16, 2013, during EVA-23 outside the International Space
    Station, water began collecting inside the helmet of European
    Space Agency astronaut Luca Parmitano. The contamination grew
    until the water covered his eyes, ears, and nose, fouled his
    communications microphone, and would have drowned him in vacuum
    had the spacewalk continued. The crew terminated the EVA and
    Parmitano made his way back to the airlock partly by feel along
    the tether. The NASA Mishap Investigation Board (MIB) report
    issued later that year identified the proximate cause as
    blocked separator holes in the suit's Fan/Pump/Separator
    assembly that allowed cooling-loop water into the ventilation
    loop, and the deeper cause as a missed opportunity at the
    previous EVA-22 a week earlier when a similar (but smaller)
    water event had been mis-attributed to in-suit drink-bag
    leakage. The case is the canonical instance in modern human
    spaceflight of a failure mode the suit was not instrumented to
    detect, surfacing first as a near-fatal event because the
    earlier weak signal was rationalized away. The MIB's
    recommendations span hardware redesign, in-suit water-detection
    instrumentation, and the safety-culture response to anomalous
    EVA telemetry.
  ],
  sections: (
    [
      EVA-23 was the second of two scheduled spacewalks for ISS
      Expedition 36. Parmitano and NASA astronaut Chris Cassidy
      exited the Quest airlock to continue tasks begun during
      EVA-22 a week earlier. Roughly 44 minutes into the EVA,
      Parmitano reported water at the back of his head inside
      the helmet. The EVA ran on for roughly 23 more minutes while ground
      controllers assessed; the water continued accumulating,
      eventually reaching the front of the helmet where it
      pooled across Parmitano's eyes, blocked his nose, and
      fouled the communications microphone. The EVA was
      terminated and Parmitano made the return traverse to the
      airlock with degraded vision and communication, partly
      guided by his sense of the tether.#cn()
    ],
    [
      The proximate hardware fault, identified by the NASA Mishap
      Investigation Board, was in the suit's Fan/Pump/Separator
      assembly — the component that separates cooling water from
      the breathing-gas ventilation loop. Contamination had
      blocked drum-holes in the water separator. Once the
      separator could not perform its function, water from the
      cooling loop migrated into the ventilation loop and was
      pushed up into the helmet by the suit's fan. The hardware
      had no in-suit instrumentation to detect free water in the
      ventilation path; the crew detected the failure only when
      Parmitano felt liquid on his skin.#cn()
    ],
    [
      The MIB's deeper finding was about EVA-22, the prior
      spacewalk one week earlier. Parmitano had reported a
      smaller volume of water in his helmet during EVA-22 as
      well. At the time, the event was attributed to a drink-bag
      leak — a plausible but unverified hypothesis. No suit
      teardown or anomaly investigation was completed before
      EVA-23 was approved. The MIB characterized this as a
      missed opportunity: the EVA-22 event was the weak signal
      of the same failure mode that nearly killed Parmitano a
      week later, and the institutional response treated an
      unverified benign explanation as adequate clearance to
      proceed.#cn()
    ],
    [
      The corrective actions span three layers. At the hardware
      layer the suit's water-separator and ventilation-loop
      hygiene were re-engineered, and a Helmet Absorption Pad
      and a snorkel were added so a future water event would not
      immediately threaten the airway. At the operations layer water-quality specifications and monitoring were tightened, but no free-water sensor was added to the ventilation loop: a smaller helmet water event recurred on EVA-80 in March 2022 and NASA paused US spacewalks again.
      At the safety-culture layer the MIB pressed the
      documented-and-investigated discipline: an unexplained EVA event
      requires investigation rather than the most convenient
      explanation, particularly when the next planned EVA reuses
      the same hardware.#cn()
    ],
    [
      The hedge that survives into the case is about attribution
      depth. The MIB was clear that the in-helmet
      and hardware fixes address the specific failure mode that
      produced EVA-23. The harder, lifecycle question — how a
      suit certified for decades of use developed a contamination
      pathway not represented in its anomaly catalog, and how
      future suits will avoid the analogous category of
      uninstrumented failure — is left as an open
      sustainment-engineering problem. The case is the canonical
      modern human-spaceflight instance of a recovery from a
      near-fatal event whose proximate cause was hardware and
      whose deeper cause was the institutional decision to accept
      the most convenient explanation for an anomalous prior
      event.
    ],
  ),
  beats: (
    "EVA-23 (July 16 2013) — Parmitano's helmet fills with up to 1.5 L of water; EVA terminated, return traverse by tether feel",
    "Proximate cause (NASA MIB): blocked drum-holes in the Fan/Pump/Separator allowed cooling-loop water into the ventilation loop",
    "Deeper cause: EVA-22 the week prior had a smaller water event mis-attributed to a drink-bag leak; no teardown before EVA-23 was approved",
    "Corrective actions: hardware fix, Helmet Absorption Pad and snorkel, tighter water-quality specs, anomaly-investigation discipline",
    "Open lifecycle question: how decades-certified hardware developed a contamination pathway not represented in its anomaly catalog",
  ),
  approaches: (
    during: (
      [Instrument the failure modes the system was not designed for. EVA-23 was detectable only by skin contact because the ventilation loop had no free-water sensor; instrumentation is the precondition for recovery.],
      [Treat the previous occurrence of an anomaly as the strongest available signal of the next one. EVA-22's smaller water event was the warning EVA-23 ignored; the institutional decision to accept the convenient explanation is what made the second event near-fatal.],
      [Engineer the recovery margin into the suit itself — the post-EVA-23 Helmet Absorption Pad and snorkel — so a contamination event has a survivable buffer before it becomes an airway emergency.],
    ),
    after: (
      [Require an anomaly investigation, not a hypothesis, before reusing the same hardware for a subsequent high-consequence operation; the cost of a teardown is small against the cost of the failure mode.],
      [Build the in-suit instrumentation expectation into the certification process for future suits so the lesson generalizes beyond the specific Fan/Pump/Separator failure.],
      [Carry the sustainment-engineering hedge into program communication: hardware certified for decades can still develop pathways not represented in its anomaly catalog, and the certification process has to keep pace.],
    ),
  ),
  references: (
    [NASA International Space Station Program (2013), "International Space Station EVA Suit Water Intrusion High Visibility Close Call" — Mishap Investigation Board final report, December 2013.],
    [NASA Aerospace Safety Advisory Panel (2014), Annual Report — EVA-23 follow-up actions including helmet absorption pad and snorkel.],
    [Parmitano, L. (2013), "EVA 23: exploring the frontier," ESA astronaut blog, 20 August 2013 — the crewmember's account of the water event and the return traverse.],
    [Chappell, Norcross, Abercromby et al. (2017), "Risk of Injury and Compromised Performance Due to EVA Operations," NASA Human Research Program Evidence Report — broader EVA risk context.],
  ),
  quote: [The previous occurrence is the strongest available signal of the next one; the institutional decision to accept the convenient explanation is what made the second event near-fatal.],
  quote-source: "Editors' synthesis of the NASA MIB EVA-23 report.",
  le-insight: [
    EVA-23 is the canonical modern human-spaceflight case of a
    failure mode the suit was not instrumented to detect,
    surfacing first as a near-fatality because the prior weak
    signal was rationalized away. The hardware fix and the new
    helmet pad and snorkel are necessary; the safety-culture
    half — every instance of free water gets investigated — is what generalizes.
  ],
  lens-approach: [
    EVA-23 is the human-spaceflight uninstrumented-failure case
    (induced 3.4; LENS D3/PT5). LENS uses it in Domain 3 (Human-System Collaboration) for the operator's
    detection-by-skin-contact at the edge of the engineered
    envelope, and in Domain 4 (Test and Evaluation) for the
    anomaly-investigation discipline the MIB pressed. Pair with
    Case 27 (anesthesia monitoring) at the cue/alert-as-
    capability layer and with Case 132 (F-22 OBOGS) as the
    aerospace companion in instrumentation-gap failure.
  ],
  literature-items: (
    [NASA MIB (2013), EVA-23 report],
    [NASA ASAP (2014), Annual Report],
    [Chappell et al. (2017), NASA HRP Evidence Report],
  ),
  reflection-list: (
    [Identify an operational system in your domain where a failure mode is detectable only by direct human sensing (skin contact, smell, the operator noticing). What instrumentation would convert that failure mode from sensed-late to sensed-early?],
    [Specify the anomaly-investigation threshold you would set in your program: an unexplained prior event of the same class requires what level of teardown before the next operation is approved? EVA-22 to EVA-23 is the worked example of the cost of getting that threshold wrong.],
    [The post-EVA-23 fixes addressed the specific failure mode. What is the lifecycle question your program owes for decades-certified hardware: how does the certification process keep pace with contamination pathways the original anomaly catalog did not represent?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 7"),
)

// ---- Case 109 — colgan-air-flight-3407 ----
#case(
  number: 109,
  slug: "colgan-air-flight-3407",
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
    The regulator held the record; the airline never retrieved it — PRIA
    obliged Colgan to collect prior-employer files, not the FAA's notices of
    disapproval, so the hiring decision ran on the captain's own account,
    which disclosed one failure of three. Victims' families mounted one of the most effective
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
      year. The FAA held the captain's record of checkride disapprovals; Colgan did
      not obtain it. PRIA required a hiring carrier to gather five years of
      prior-employer records, not the regulator's own certification file, and
      the FAA route was optional and consent-gated — so the facts that should
      have shaped who sat in that seat stayed with the licensing authority and
      never crossed into the hiring decision.#cn()
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
  beats: (
    "Captain's three FAA checkride disapprovals held by the regulator, never retrieved by the hiring carrier",
    "On approach to Buffalo the captain pulled back at the stick shaker and stalled",
    "NTSB cited fatigue, weak training, and a hiring system blind to the captain's history",
    "Pilot training history existed in the regulator's file but never reached the hiring decision",
    "Families drove the 2010 law raising hours to 1,500 and creating the Pilot Records Database",
  ),
  references: (
    [NTSB, _Aircraft Accident Report: Colgan Air Flight 3407_, NTSB/AAR-10/01 (2010) — probable cause (quoted).],
    [NTSB/AAR-10/01 (2010) — the captain's training history, and the first officer's fatigue and pay.],
    [NTSB/AAR-10/01 (2010), §2.7.3 — PRIA and FAA guidance did not require operators to obtain notices of disapproval; recommendation A-05-1 reiterated as "Open—Unacceptable Response".],
    [Airline Safety and Federal Aviation Administration Extension Act of 2010, Pub. L. 111-216 — the 1,500-hour rule and the Pilot Records Database.],
    [DOT Office of Inspector General, _FAA Delays in Establishing a Pilot Records Database Limit Air Carriers' Access to Background Information_, AV-2015-079 (2015); the Families of Continental Flight 3407 campaign.],
  ),
  quote: [The captain's inappropriate response to the activation of the stick shaker, which led to an aerodynamic stall from which the airplane did not recover.],
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
    [The 2010 reform was driven by victims' families, not the industry that had resisted it. What load-bearing constituency in your domain could force a stalled data-flow fix into existence, and what evidence would mobilize them?],
  ),
  approaches: (
    during: (
      [Make a pilot's documented training history a required, structured input to the hiring and licensing decision, not a record held passively in carrier files.],
      [Design the data flow so that adverse signals (failed training events) are pushed to the decision point rather than waiting to be requested.],
      [Define record retention and transfer obligations across carriers up front, so a clean-looking application cannot conceal a known history.],
    ),
    after: (
      [Audit whether the records actually reach hiring decisions, treating a complete file that never arrives as a live failure, not a solved one.],
      [Monitor the pipeline for operators whose adverse history is not surfacing, and act before the gap is paid for in an accident.],
      [Sustain the records database against drift and gaps in coverage, since a data-flow remedy decays as fast as its weakest link.],
    ),
  ),
  courses: ("LEN 4", "LEN 5", "LEN 8"),
  scale: "big",
  induced-anchor: "2.1",
  lens-anchor: "D4/PT2",
  leo-anchor: "LEO-4",
  evidence-source: "investigation",
)

// ---- Case 110 — atlas-air-flight-3591 ----
#case(
  number: 110,
  slug: "atlas-air-flight-3591",
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
    mandated by Congress after Colgan Air 3407 (Case 109) was not yet
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
      only five years of records — a window too short to surface a pattern
      of training failures spread across several prior employers, so the
      record Atlas could legally obtain was structurally incapable of showing
      what it most needed to see.#cn()
    ],
    // -- What Happened --
    [
      On 23 February 2019, during a turbulent descent toward Houston, the
      first officer inadvertently activated the aircraft's go-around mode,
      which commanded a pitch-up. Experiencing a somatogravic illusion
      that the nose was rising into a stall, he pushed forward hard. The
      767 entered a steep dive from which the crew did not recover and
      crashed into Trinity Bay, killing all three aboard. The startle and
      spatial disorientation that drove the fatal push were the same kind of
      breakdown his prior training failures had repeatedly recorded, had that
      history been visible to the carrier that hired him.#cn()
    ],
    // -- The Investigation --
    [
      The NTSB found the probable cause to be the first officer's
      inappropriate response to the inadvertent go-around activation,
      driven by a startle and spatial-disorientation response, and
      identified his pattern of training deficiencies and Atlas's
      inability to access his full record as contributing factors. The
      records that would have informed the hiring decision existed but
      did not reach it — the same information-flow failure named after
      Colgan a decade earlier, recurring here because the remedy built to
      fix it was authorized but not yet carrying the full history.#cn()
    ],
    // -- The Capability Gap --
    [
      Atlas Air 3591 is the iteration test of the Colgan reform. The
      reform partially worked — the Pilot Records Database had been
      authorized — but it was not yet operational and its coverage was
      incomplete, so the same information-flow gap that killed fifty
      people in 2009 was still partly open in 2019. Partial implementation
      of a remedy leaves a measurable harm inside the aperture — the years
      between authorization and full coverage are not a neutral transition
      but a window in which the original failure can recur on the cases the
      incomplete remedy does not yet reach.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The PRD final rule was published in 2021 and became effective for
      Part 121 carriers in 2022, with full historical coverage phasing in
      through 2024 — closing the gap the case exposed. Atlas 3591 is cited
      in implementation-fidelity discussions as evidence that a remedy is
      only as good as its completed coverage — that the date a rule is
      authorized and the date it actually reaches every carrier are
      different dates, and the distance between them is where the avoidable
      harm accumulates.#cn()
    ],
  ),
  beats: (
    "PRIA fetched records only from the employers the first officer named, and he left two of them off",
    "After an inadvertent go around activation a somatogravic illusion drove a hard push and a dive into Trinity Bay",
    "NTSB cited spatial disorientation, the captain's failure to intervene, industry selection practices, and the missing PRD",
    "PRD authorization without full coverage left the same Colgan era information flow gap partly open in 2019",
    "The PRD final rule took effect for Part 121 in 2022 with full historical coverage phasing in through 2024",
  ),
  references: (
    [NTSB, _Aircraft Accident Report: Atlas Air Flight 3591_, NTSB/AAR-20/02 (2020) — probable cause and contributing factors (paraphrased).],
    [NTSB/AAR-20/02 (2020) — the inadvertent go-around activation and the dive into Trinity Bay.],
    [NTSB/AAR-20/02 (2020) — the first officer's training history and Atlas's record-access limits.],
    [FAA Pilot Records Database final rule (_Federal Register_, 10 June 2021; subpart B/C compliance from June 2022, full historical coverage by September 2024); Pilot Records Improvement Act of 1996.],
    [DOT Office of Inspector General, _FAA Delays in Establishing a Pilot Records Database Limit Air Carriers' Access to Background Information_, AV-2015-079 (2015) — the decade of implementation delay.],
  ),
  quote: [Thus, if a pilot intentionally omits a previous employer, as the FO did, the hiring operator may never know the pilot's complete background.],
  quote-source: "NTSB Aircraft Accident Report AAR-20/02, section 2.5.1, 2020",
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
    
    [Fixsen et al. (2005), implementation fidelity],
  ),
  reflection-list: (
    [Identify a regulatory remedy in your domain whose coverage is partial. What harm is occurring inside the aperture?],
    [Design the deliverable that would close the PRD coverage gap in advance of a future Atlas Air 3591.],
    [The PRD was authorized in 2010 but not fully effective until 2024, and Atlas 3591 fell inside that gap. For a remedy in your domain, design the interim control that would protect the cases the remedy does not yet reach while its coverage phases in.],
  ),
  approaches: (
    during: (
      [Design the records system to require a full operator history, not a fixed-length window that can hide a multi-employer pattern.],
      [Plan the coverage phase-in explicitly, with interim controls protecting the cases the remedy does not yet reach.],
      [Specify the data the hiring decision needs and make its delivery mandatory before the decision, not optional or self-reported.],
    ),
    after: (
      [Audit coverage completeness, not just authorization, and treat the gap between the two as an active source of harm until closed.],
      [Monitor for adverse events occurring inside the aperture of a partially implemented remedy, and use them to accelerate full coverage.],
      [Sustain attention through the full phase-in, since a remedy authorized but not yet universal leaves the original gap measurably open.],
    ),
  ),
  courses: ("LEN 4", "LEN 8"),
  scale: "big",
  induced-anchor: "2.4",
  lens-anchor: "D4/PT2",
  leo-anchor: "LEO-4",
  evidence-source: "investigation",
)

// ---- Case 111 — challenger-and-columbia ----
#case(
  number: 111,
  slug: "challenger-and-columbia",
  title: "Challenger & Columbia",
  year: "1986 / 2003",
  domains-list: ("space",),
  modes-code: "NKG",
  impact: "14 astronauts killed (7 per accident); 17 years between identical organizational pathologies",
  diagram: dgm.dgm-shuttle,
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "7.4",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-1, LEO-5",
  summary: [
    NASA lost two Space Shuttle crews to the same organizational pathology
    seventeen years apart: Challenger in 1986, when O-ring seals failed in
    cold weather, and Columbia in 2003, when foam debris breached the wing's
    thermal protection — fourteen astronauts in all. Both flaws had been
    seen repeatedly and accepted as routine; foam shedding had been
    documented on at least sixteen prior missions before Columbia, and
    O-ring erosion in the field joints had been on the engineering record
    since the early flights. Sociologist Diane Vaughan named the mechanism
    "normalization of deviance" from the Challenger investigation; the
    Columbia Accident Investigation Board found the same culture intact
    seventeen years later and concluded NASA's organizational culture had
    as much to do with the accident as the foam. The pair is the strongest
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
      decision that overrode engineers' cold-weather warnings — the Thiokol
      teleconference on the eve of launch, at which the engineering position
      ("do not launch below 53°F") was reversed under management pressure
      and the launch went ahead at 36°F.#cn() Diane Vaughan's _The Challenger
      Launch Decision_ (1996) re-examined the same teleconference with a
      decade's documentary access and reframed the decision: not deviant
      individuals overriding good engineering, but a working group whose
      rules of evidence had drifted, one accepted anomaly at a time, until
      a launch at 36°F was inside what the group's own decision rules
      counted as acceptable risk. Seventeen years later the Columbia
      Accident Investigation Board found the same patterns intact — flying
      with flaws defined as routine, foam strikes filed under "in-family"
      across at least sixteen prior missions, and a structure that
      suppressed the upward flow of safety concerns — and concluded that
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
      author's intent — Vaughan herself was retained by the CAIB and the
      Board's final report cites the mechanism by name. The pathology had
      been diagnosed in 1986 and never engineered away — which is the point:
      culture is a system property, and a diagnosis without a remediation
      decays.#cn() Naming the mechanism did not arrest it, because a name
      lives in a report while the production pressure and the suppressed
      warnings live in the daily flow of work, where they kept doing what
      they had always done. The institutional-learning gap is itself the
      load-bearing finding: between 1986 and 2003 NASA had reorganized
      twice, lost an administrator, and adopted multiple safety initiatives,
      and the structural pathway from a dissenting engineer to a launch
      decision was substantially unchanged.
    ],
    // -- Aftermath & Reform --
    [
      Each accident produced reform — the Rogers Commission's redesign of the
      booster joint, the CAIB's call to treat culture as a safety variable,
      the establishment of the NASA Engineering and Safety Center, and the
      Board's instruction to rebuild independent technical authority — and
      the Shuttle was retired in 2011 after completing the International
      Space Station assembly. The pair stands as the book's strongest
      evidence that organizational culture is engineerable, and that
      leaving it unengineered is a choice with a recurring, lethal
      cost.#cn() The CAIB's insistence on independent technical authority
      conceded the deeper lesson the booster-joint redesign alone had
      missed in 1986: the upward path for a dissenting engineer is itself a
      piece of safety hardware, and one that has to be rebuilt and defended
      rather than assumed. The hedge that survives into the case: Vaughan's
      "normalization of deviance" is the load-bearing analytic claim across
      both accidents and is never to be smoothed; the seventeen-year
      institutional-learning gap is the empirical claim, and the CAIB's
      cross-referencing of Rogers Commission language ("the same
      decision-making structures") is the documentary anchor.
    ],
  ),
  beats: (
    "Shuttle flew with known O-ring and foam flaws reclassified flight by flight as routine",
    "Challenger broke apart on a cold morning; Columbia disintegrated on reentry seventeen years later",
    "Both boards found the same suppressed safety concerns and the same culture intact",
    "Vaughan named normalization of deviance; the diagnosis sat on record without engineered remediation",
    "Reforms followed each loss, yet the cultural mechanism stayed unrepaired until the Shuttle retired",
  ),
  references: (
    [Rogers Commission, _Report of the Presidential Commission on the Space Shuttle Challenger Accident_ (1986) — the O-ring failure, the Thiokol teleconference, and the cold-weather launch decision.],
    [D. Vaughan, _The Challenger Launch Decision: Risky Technology, Culture, and Deviance at NASA_ (Univ. of Chicago Press, 1996) — normalization of deviance; the working group's drift of decision rules.],
    [Columbia Accident Investigation Board, _Report Vol. I_ (2003) — the foam strike, findings F3.2-5 and F3.2-7 on foam loss across the imaged missions and its filing as "in-family," the recurrence of the cultural pattern, and the call for an independent technical authority.],
    [CAIB (2003) — "the NASA organizational culture had as much to do with this accident as the foam" (quoted); Rogers Commission (1986) and CAIB (2003) jointly on the suppressed upward flow of safety information across both accidents.],
    [W. Starbuck & M. Farjoun (eds.), _Organization at the Limit: Lessons from the Columbia Disaster_ (2005) — independent academic re-analyses of the institutional-learning gap.],
    [NASA Engineering and Safety Center founding documents (2003 – present) — institutional response to the CAIB's call for independent technical authority; Shuttle retirement (STS-135, July 2011).],
  ),
  quote: [These repeating patterns mean that flawed practices embedded in NASA's organizational system continued for 20 years and made substantial contributions to both accidents.],
  quote-source: "Columbia Accident Investigation Board, 2003",
  le-insight: [
    Challenger/Columbia is the strongest documentary evidence that
    organizational culture is an engineerable property of a system, and
    that diagnoses without engineered remediations decay. The same
    pathology, twice, seventeen years apart, in the same institution,
    with the same human cost — and with the diagnosis already on the
    record. Vaughan's "normalization of deviance" names the mechanism
    and is the load-bearing analytic claim across both accidents.
    Capability engineering treats culture as a deliverable.
  ],
  lens-approach: [
    Challenger/Columbia anchors the multi-layer-drift-and-cumulative-
    inadequacy competency (induced 7.4; LENS D1/PT4): a cascade of
    marginal-but-tolerable conditions across decision rules, schedule
    pressure, and communication structure aligned twice, seventeen
    years apart. LENS uses the pair in Domain 1 (Systems Analysis)
    for normalization of deviance as a systems concept and the
    institutional-learning gap as a measurable property; in Domain 5
    (Navigating Sociotechnical Constraints) for the governance
    failure that allowed a diagnosed pathology to persist and for
    the upward-channel design the CAIB called a piece of safety
    hardware. Pair with Deepwater Horizon (Case 163) on the
    multi-layer-drift form, and with Bhopal (Case 159) and Fukushima
    (Case 169) on cumulative inadequacy in catastrophic-system
    operations.
  ],
  literature-items: (
    [Rogers Commission (1986) — primary record of the Thiokol teleconference],
    [Vaughan (1996), _The Challenger Launch Decision_],
    [CAIB (2003), _Report Vol. I_ — the load-bearing cultural finding],
    [Starbuck & Farjoun (eds.) _Organization at the Limit: Lessons from the Columbia Disaster_ (2005)],
    [Weick & Sutcliffe, _Managing the Unexpected_ (2007)],
  ),
  reflection-list: (
    [What is the equivalent "diagnosed but not repaired" pathology in your domain? What evidence would close the loop?],
    [The CAIB called culture engineerable. Sketch the engineering deliverable for the cultural intervention you would propose in your domain — including its measurement signal.],
    [Seventeen years separated two accidents with the same root pathology. What mechanism in your organization would verify that a past diagnosis has actually been remediated rather than merely documented?],
    [Vaughan reframed the Thiokol teleconference not as deviant override but as a working group whose decision rules had drifted. Identify a recurring decision in your domain whose rules of evidence may have drifted incrementally, and specify the audit that would surface the drift before the next high-consequence call.],
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

// ---- Case 112 — nasa-saturn-v-documentation ----
#case(
  number: 112,
  slug: "nasa-saturn-v-documentation",
  title: "NASA Saturn V Documentation",
  year: "1972 – present",
  domains-list: ("aviation",),
  modes-code: "K",
  impact: "Foundational U.S. aerospace case for the cost of losing the institutional capability to build a system",
  diagram: dgm.dgm-compare(
    "1969",
    "built it",
    "2005",
    "couldn't rebuild",
    framing: "drawings persist; tacit institutional knowledge walks out with retirees",
    caption: "Saturn V — documentation is not capability",
  ),
  kind: "failure",
  summary: [
    When NASA returned to heavy-lift rockets in the 2000s, it confronted an
    uncomfortable fact: the institutional capability to build a Saturn V —
    the rocket that sent Apollo to the Moon — had been lost. The drawings
    and documents survived; the practical knowledge of how the components
    were manufactured, tested, and assembled, and why each choice was made,
    had walked out with the workforce that retired by the 1990s. The vehicle
    could be redesigned but not reproduced. Apollo was documented to an
    unprecedented degree, yet the documentation was not the capability: when
    the engineers who built the system left, the system left with them.
    Saturn V is the book's strongest evidence that institutional capability
    lives in people and sustaining practices, not in the artifacts an
    institution leaves behind.
  ],
  sections: (
    // -- Background --
    [
      The Saturn V that launched Apollo to the Moon was, by any measure, one
      of the best-documented engineering programs in history — exhaustive
      drawings, specifications, and test records.#cn() That thoroughness is
      what makes the case bite: the program left behind close to everything a
      successor could ask for on paper, so any later difficulty in rebuilding
      it cannot be blamed on a thin archive but must lie in what the archive
      could not hold.
    ],
    // -- What Happened --
    [
      Yet by the mid-2000s, as NASA worked the Constellation program, it
      had become apparent that the institutional capability to build a Saturn
      V had been lost. The drawings existed; the practical knowledge of how
      the components were manufactured, tested, and assembled — and why
      particular choices had been made — had walked out with the workforce
      that retired by the 1990s. The vehicle could be redesigned. It could
      not be reproduced.#cn() The distinction is exact: redesign starts from
      requirements and rebuilds the reasoning afresh, while reproduction needs
      the original making-knowledge, and it was that knowledge — not the
      paperwork describing it — that had left with the people who held it.
    ],
    // -- The Investigation --
    [
      The case is canonical for the difference between documentation and
      institutional capability. Apollo's documentation was unprecedented, but
      it captured the *what*, not the tacit *how* — the judgment, the
      workarounds, the undocumented reasons — that lived in the people who
      did the work. When they left, that knowledge was in no archive to
      recover.#cn() A drawing records the decision but not the deliberation
      behind it; the workaround that made a part manufacturable and the reason
      a tolerance was set where it was lived in the doing, and once the doers
      retired there was no document from which to reconstruct it.
    ],
    // -- The Capability Gap --
    [
      Saturn V is the strongest available evidence that institutional
      capability is not the same as the artifacts an institution produces.
      Capability lives in people and in the practices that sustain them; a
      library of drawings is a necessary record but not a transferable
      ability. An institution that treats documentation as preservation of
      capability is, quietly, letting the capability expire.#cn() The danger
      is that the archive looks like insurance: its very completeness can
      reassure managers that the capability is safe, so the people and
      practices that actually carry it are allowed to disperse precisely
      because the paperwork seems to stand in for them.
    ],
    // -- Aftermath & Reform --
    [
      The lesson reshaped how serious programs think about knowledge
      retention — apprenticeship, continuity of teams, deliberate capture of
      tacit reasoning, and not letting a critical capability rest in a
      handful of soon-to-retire heads.#cn() It pairs with the chapter's other
      memory cases: knowledge, unlike a document, has to be actively kept
      alive, or it is gone in a generation. Each of the retention practices
      addresses the same root cause the Saturn V exposed — that tacit making-
      knowledge transfers only person to person — so apprenticeship and team
      continuity are not nice-to-haves but the actual mechanism by which a
      capability outlives the people who first held it.
    ],
  ),
  beats: (
    "Saturn V was one of history's best-documented engineering programs with exhaustive drawings and records",
    "By the 2000s NASA could redesign Saturn V but no longer reproduce its making-knowledge",
    "Documentation captured the what; the tacit how walked out with the retired workforce",
    "Institutional capability lives in people and practices, not in the artifacts they leave behind",
    "Serious programs now use apprenticeship and team continuity to keep tacit capability alive",
  ),
  references: (
    [NASA Constellation Program documentation and reviews (2005–2010) — the difficulty of reproducing Saturn V capability.],
    [R. E. Bilstein, _Stages to Saturn: A Technological History of the Apollo/Saturn Launch Vehicles_ (NASA SP-4206, 1980) — the program and its workforce.],
    [The documentation-vs-capability distinction (editors' synthesis of the Saturn V record).],
    [M. Polanyi, _The Tacit Dimension_ (1966); I. Nonaka & H. Takeuchi, _The Knowledge-Creating Company_ (1995).],
    [J. S. Brown & P. Duguid, _The Social Life of Information_ (2000) — tacit and institutional knowledge.],
  ),
  quote: [The Saturn V drawings exist. The Saturn V does not.],
  quote-source: "Paraphrasing the NASA Constellation-era capability discussion, c. 2005",
  le-insight: [
    The Saturn V case is the canonical evidence that institutional
    knowledge is not equivalent to documentation. The documents
    persist; the capability does not. Capability engineering must
    treat the people who hold tacit knowledge as a primary
    institutional asset.
  ],
  lens-approach: [
    LENS uses the Saturn V case in LEN 8 to teach that retaining and
    overlapping the expert personnel who hold tacit making-knowledge
    is itself an engineered deliverable (induced 6.3) — not a
    by-product of writing better documents. The capability to rebuild
    a Saturn V was lost because workforce overlap and retention were
    never treated as a designed retention deliverable, and
    documentation alone cannot carry tacit process knowledge across a
    generation. The teaching point in LEN 1 is therefore not
    "document more thoroughly" but "engineer the personnel continuity
    that the archive can never substitute for."
  ],
  literature-items: (
    [Polanyi (1966), _The Tacit Dimension_],
    [Brown & Duguid (2000), _The Social Life of Information_],
    [Nonaka & Takeuchi (1995), _The Knowledge-Creating Company_],
  ),
  reflection-list: (
    [Identify a capability in your domain that is currently held in the tacit knowledge of a small number of senior practitioners. What is your institution's capacity to reproduce it after they retire?],
    [Design the institutional practice that would preserve a capability against the retirement of its holders.],
    [Saturn V was exhaustively documented yet could not be reproduced, because the archive captured the *what* and not the tacit *how*. Identify a capability in your institution whose documentation might be giving false reassurance — and describe what the paperwork is failing to capture.],
  ),
  approaches: (
    during: (
      [Capture tacit reasoning as the work happens — the why behind a choice, the workaround that made a part buildable — not just the resulting drawing.],
      [Build capability into teams and apprenticeship, so the making-knowledge has a living carrier rather than resting in a handful of soon-to-retire heads.],
      [Treat documentation as a record, never as a substitute for the people and practices that hold the capability.],
    ),
    after: (
      [Audit critical capabilities for single points of human failure — knowledge held by a few near-retirement practitioners — and transfer it before they leave.],
      [Periodically test reproducibility, not just whether the archive is complete, since a full archive can mask a capability that has already expired.],
      [Sustain continuity of teams and practice deliberately, so a capability is kept alive across generations rather than rediscovered at need.],
    ),
  ),
  courses: ("LEN 1", "LEN 8"),
  scale: "big",
  induced-anchor: "6.3",
  lens-anchor: "D5/PT2",
  leo-anchor: "LEO-2",
)

// ---- Case 113 — boeing-starliner ----
#case(
  number: 113,
  slug: "boeing-starliner",
  title: "Boeing Starliner",
  year: "2019 – 2025",
  domains-list: ("space",),
  modes-code: "KD",
  impact: "Multiple delays; the 2024 crewed flight left two NASA astronauts at the ISS for months; contemporary case for capability erosion at a legacy contractor",
  diagram: dgm.dgm-cascade(
    ("software (2019)", "valves (2021)", "propulsion (2024)", "integration test"),
    outcome: "erosion visible across multiple engineering disciplines",
    caption: "Starliner — capability decay at a legacy contractor",
  ),
  kind: "failure",
  summary: [
    Boeing's Starliner, meant to be the second U.S. commercial crew vehicle
    alongside SpaceX's Crew Dragon, accumulated failures across a decade:
    software errors on its 2019 uncrewed flight, valve corrosion scrubbing a
    2021 launch, and propulsion-system trouble on its 2024 crewed test that
    left two NASA astronauts on the ISS rather than returning them as
    contracted — NASA brought them home on SpaceX months later. GAO and NASA
    reviews found capability erosion across multiple engineering disciplines
    at a contractor whose human-spaceflight record had once been definitive.
    The erosion looks partly generational (Apollo- and Shuttle-era engineers
    retired) and partly institutional (cost and schedule pressure, and the
    thinning of NASA's in-house depth to challenge the contractor). Starliner
    is the contemporary case for capability erosion at a legacy contractor.
  ],
  sections: (
    // -- Background --
    [
      Boeing was awarded a NASA Commercial Crew contract to build Starliner
      as the second U.S. vehicle to carry astronauts to the ISS, alongside
      SpaceX's Crew Dragon — drawing on a human-spaceflight heritage that had
      once been definitive in American aerospace.#cn() The award rested in
      part on that heritage: a contractor with a definitive human-spaceflight
      record was a presumed safe choice, and that presumption is exactly what
      the program would go on to test, since reputation was standing in for a
      current measurement of capability.
    ],
    // -- What Happened --
    [
      Instead Starliner stumbled across a decade: software errors marred its
      2019 uncrewed test flight, valve corrosion scrubbed a 2021 launch, and
      propulsion-system problems on the 2024 crewed test flight left the two
      NASA astronauts aboard the ISS rather than returning on the contracted
      spacecraft — NASA brought them home on a SpaceX vehicle months
      later.#cn() The three failures fell in different subsystems across three
      separate years, which is itself telling: a single bad part is bad luck,
      but software, valves, and propulsion failing in succession points to
      something broader than any one component — a decline running across the
      engineering organization rather than within one of its parts.
    ],
    // -- The Investigation --
    [
      GAO and NASA reviews identified the program as exhibiting capability
      erosion across multiple engineering disciplines — software, valves,
      propulsion, integration testing — at a contractor whose track record
      had previously been definitive.#cn() The erosion looked partly
      generational, as Apollo- and Shuttle-era engineers retired, and partly
      institutional: cost pressure, schedule-driven decisions, and the loss
      of NASA's own in-house engineering depth to challenge the
      contractor.#cn() The two causes compound: as the contractor's senior
      depth thinned through retirement, the buyer's own engineering depth had
      also eroded, so the very expertise NASA would have needed to catch the
      slipping contractor was the expertise it had let go of.
    ],
    // -- The Capability Gap --
    [
      Starliner is the contemporary case for capability erosion at scale at a
      legacy contractor. The decline happened over decades and was visible
      only in retrospect, because the institutional architecture for catching
      a supplier's slow capability decay — and updating the buyer's
      confidence to match — did not exist. Reputation outran reality, and no
      instrument was measuring the gap.#cn() Slow decay is the hard case to
      catch: no single year's results look alarming, the brand keeps the
      buyer's confidence high, and without an instrument that tracks the
      supplier's actual current capability the divergence is only legible once
      a crewed flight forces the reckoning.
    ],
    // -- Aftermath & Reform --
    [
      NASA leaned harder on independent reviews and on SpaceX as the reliable
      alternative, and the episode sharpened questions about how to
      sustain — and verify — capability at sole-source and legacy
      suppliers.#cn() Starliner returned uncrewed in September 2024, and its
      two astronauts finally came home aboard a SpaceX Crew Dragon in March
      2025 after roughly nine months aboard the station. By late 2025 NASA
      had downgraded Boeing's next flight to cargo-only, no earlier than
      April 2026, and by mid-2026 — with propulsion problems still
      unresolved — the agency's own inspector general judged crew
      certification unlikely before 2027, NASA openly uncertain the vehicle
      would ever be certified at all. It pairs with Saturn V (Case 112): where that case lost
      a capability to retirement, Starliner shows the same erosion in slow
      motion at a living institution still carrying the brand of the
      capability it had let thin. Having a second supplier to fall back on is
      what let NASA absorb the failure, which is itself the lesson: where a
      capability can erode unseen, a verified alternative is the difference
      between an embarrassment and a crew with no way home.
    ],
  ),
  beats: (
    "Boeing won Commercial Crew on a human-spaceflight heritage once definitive in American aerospace",
    "Software errors in 2019, valve corrosion in 2021, and 2024 propulsion trouble stranded astronauts",
    "NASA's inspector general found overconfidence in heritage systems, an unmeetable schedule, and underused data rights",
    "Reputation outran reality because no instrument measured the legacy contractor's current capability",
    "NASA leaned on independent reviews and SpaceX as the verified alternative absorbing the failure",
  ),
  references: (
    [U.S. GAO, _NASA Commercial Crew Program: Significant Work Remains to Begin Operational Missions to the Space Station_, GAO-20-121 (Jan. 2020); _Schedule Uncertainty Persists for Start of Operational Missions_, GAO-19-504 (June 2019).],
    [NASA and Boeing joint Independent Review Team, Orbital Flight Test findings (7 July 2020) — 80 recommendations across software requirements, testing and simulation, process, and hardware.],
    [NASA OIG, _NASA's Management of Its Commercial Crew Program_, IG-26-011 (30 June 2026); NASA, _Starliner Propulsion System Anomalies during the Crewed Flight Test_ (redacted, February 2026).],
    [NASA Aerospace Safety Advisory Panel, annual reports (2020–2025) — Commercial Crew oversight and the Panel's criticism of NASA's mishap-classification requirements.],
    [NASA, Starliner's uncrewed landing at White Sands Space Harbor (6 September 2024) and the Crew-9 return of Wilmore and Williams aboard a SpaceX Dragon (18 March 2025).],
    [Cf. Saturn V (Case 112); N. Augustine, _Augustine's Laws_ (1986).],
  ),
  quote: [NASA was overconfident in Boeing's design and potential success based on the provider's use of heritage systems and its long-standing space flight experience.],
  quote-source: "NASA Office of Inspector General, IG-26-011, 30 June 2026",
  le-insight: [
    Starliner is the case for sustained capability erosion at a legacy
    contractor whose track record had previously been definitive. The
    erosion happened over decades and was visible in retrospect; the
    institutional architecture for catching it did not exist.
  ],
  lens-approach: [
    LENS uses Starliner in LEN 5 to teach one clean capability gap:
    the contractor-NASA interface capability that thinned over a
    decade. As NASA shifted to fixed-price commercial contracting, its
    own oversight and insight capacity eroded, so the problems an
    integrated review would have caught instead surfaced in flight
    (against the cross-subsystem troubles as the visible symptom). The
    teaching point is that the buyer's review capability is an
    engineered deliverable in its own right — let it thin and a
    slipping supplier becomes legible only when a crewed flight forces
    the reckoning.
  ],
  literature-items: (
    [GAO Commercial Crew reports (GAO-19-504; GAO-20-121)],
    [NASA Aerospace Safety Advisory Panel reports],
    [Augustine, _Augustine's Laws_ (1986)],
  ),
  reflection-list: (
    [Identify a legacy supplier in your domain whose capability track record may have eroded faster than your institutional confidence in them has updated. What is the signal?],
    [Design the contractor-capability review that would have caught the Starliner gaps before the 2024 crewed flight.],
    [Starliner's failures spanned software, valves, and propulsion across three separate years — a pattern, not a single bad part. In your domain, what would distinguish a one-off component failure from organization-wide capability erosion, and how soon could you tell them apart?],
  ),
  approaches: (
    during: (
      [Verify a supplier's current capability against present evidence rather than awarding on reputation and a once-definitive track record.],
      [Preserve enough in-house engineering depth to genuinely challenge a contractor, since a buyer who has let its own expertise erode cannot catch a slipping supplier.],
      [Maintain a verified second supplier where the stakes are crewed, so a capability that erodes unseen does not become a single point of failure.],
    ),
    after: (
      [Instrument supplier capability so slow, multi-year decay is visible before a high-stakes flight forces the reckoning.],
      [Watch for cross-subsystem patterns — failures in software, valves, and propulsion in succession — as a signal of organization-wide erosion, not isolated bad luck.],
      [Update institutional confidence to match measured reality, so a contractor's brand cannot keep outrunning its current performance.],
    ),
  ),
  courses: ("LEN 5", "LEN 8", "LEN 6",),
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "6.3",
  lens-anchor: "D5/PT2",
  leo-anchor: "LEO-1",
)
