// ============================================================
// Chapter 4 — Interface Problem (extras)
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 63,
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
    Florida Everglades on a night approach to Miami, killing 101 of the 176
    aboard. The cause was attention, not mechanics: all three flight-deck
    crew became absorbed in a landing-gear indicator bulb that had failed to
    light, and while they worked it, the autopilot's altitude hold was
    inadvertently disengaged. The aircraft sank slowly; an altitude alert
    chimed but went unheeded in the cockpit clutter, and no one was
    monitoring the flight path. The NTSB findings launched decades of
    research into attention, monitoring, and cockpit-alert design, and the
    accident is a formative event behind Crew Resource Management. Eastern
    401 is the canonical case of a low-priority task crowding out a
    life-critical one.
  ],
  sections: (
    // -- Background --
    [
      Eastern Air Lines Flight 401, a wide-body Lockheed L-1011, was on a
      night approach to Miami on 29 December 1972 with a full flight deck —
      captain, first officer, and flight engineer.#cn()
    ],
    // -- What Happened --
    [
      The crew noticed that the landing-gear indicator light had not
      illuminated, and all three focused on the bulb. While they worked the
      problem, one of them inadvertently nudged the controls and disengaged
      the autopilot's altitude hold. The TriStar began a slow descent into
      the Everglades; an altitude-warning chime sounded but, in the auditory
      clutter of the cockpit, no one registered it. The aircraft hit the
      swamp, killing 101 of the 176 aboard.#cn()
    ],
    // -- The Investigation --
    [
      The NTSB found the crew had become so engrossed in the landing-gear
      difficulty that they failed to monitor the flight path.#cn() The
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
      kill them.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Eastern 401 was one of the formative events behind Crew Resource
      Management (Case 12) — the explicit allocation of monitoring and
      cross-checking roles — and behind modern standards for prioritized
      cockpit alerting.#cn() Its lesson is that attention is a designable
      parameter, not a personal virtue: a system that lets all eyes converge
      on one task must guarantee the critical channel is still watched.
    ],
  ),
  references: (
    [NTSB, _Aircraft Accident Report: Eastern Air Lines Flight 401_, NTSB-AAR-73-14 (1973) — the night approach and full flight deck.],
    [NTSB-AAR-73-14 (1973) — the landing-gear-bulb fixation, the inadvertent autopilot disengagement, and 101 deaths of 176 aboard.],
    [NTSB-AAR-73-14 (1973) — the crew "became so engrossed in the landing-gear difficulty that they failed to maintain altitude" (quoted).],
    [C. D. Wickens et al., _Engineering Psychology and Human Performance_ — attention, monitoring, and alert design.],
    [R. Helmreich & H. Foushee (1993), aircrew-coordination research — the Crew Resource Management origins.],
    [Eastern 401 as a formative case behind CRM (Case 12) and prioritized cockpit alerting standards.],
  ),
  quote: [The crew became so engrossed in the landing-gear difficulty that they failed to maintain altitude.],
  quote-source: "Paraphrasing NTSB Aircraft Accident Report NTSB-AAR-73-14 on Eastern 401, 1973",
  le-insight: [
    Eastern 401 is the canonical attention-failure case. The capability
    that was missing was a designed division of attention across the
    crew. CRM exists because Eastern 401 happened, and the discipline
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
  ),
  courses: ("LEN 5", "LEN 2"),
)

#case(
  number: 64,
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
    cold-soaked hydraulic fluid hitting a hot valve — that could jam the
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
      — a reassuring assumption that had passed certification.#cn()
    ],
    // -- What Happened --
    [
      Twice, 737s rolled and dove out of level flight unrecoverably: United
      Airlines Flight 585 near Colorado Springs in 1991 (25 killed) and USAir
      Flight 427 near Pittsburgh in 1994 (132 killed) — 157 deaths between
      them. In each, the rudder had swung hard over, opposite to what the
      crew commanded.#cn()
    ],
    // -- The Investigation --
    [
      The NTSB investigation took years, because the failure was both rare
      and unrecoverable, leaving little to reconstruct.#cn() It eventually
      identified a thermal-shock condition in the rudder servo valve —
      cold-soaked hydraulic fluid striking a hot valve under specific
      conditions — that could jam the secondary valve and let the rudder move
      opposite to commanded input.#cn()
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
      certification, not the cockpit.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Boeing redesigned the rudder PCU and the fleet was retrofitted, and the
      cases reshaped how rare, unrecoverable failure modes are hunted in
      certification and flight test.#cn() The 737 rudder sits at the
      intersection of mechanical design, certification testing, and crew
      capability — all three would have had to fail together for the
      accidents to occur, and all three did.
    ],
  ),
  references: (
    [NTSB, _Uncommanded Flight Control Movements_ (USAir 427 / 737 rudder PCU), NTSB-AAR-99-01 (1999) — the thermal-shock servo-valve finding.],
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
  ),
  courses: ("LEN 5", "LEN 7", "LEN 3",),
)

#case(
  number: 65,
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
      rollout.#cn()
    ],
    // -- What Happened --
    [
      On 19 July 2024 a content update contained a logic error in a small
      configuration file. On every Windows machine running the affected
      sensor, the file drove the kernel driver to read out of bounds and
      crash, looping the blue screen of death and requiring manual recovery
      of each device. Roughly 8.5 million machines failed at once —
      hospitals, airlines, banks, broadcasters, and governments worldwide —
      the largest IT outage on record.#cn()
    ],
    // -- The Investigation --
    [
      CrowdStrike's own post-incident review found the content update "did
      not include the same depth of testing and staged rollout as our code
      releases." The fault was not exotic: a category boundary in the
      deployment pipeline — content treated as safer than code — that did not
      match the operational reality, in which a bad content file could crash
      the kernel exactly as bad code could.#cn()
    ],
    // -- The Capability Gap --
    [
      The missing capability was the recognition that, for deployment safety,
      content *is* code: anything that can crash the kernel must clear the
      same testing and staged-rollout gates. CrowdStrike's customers had
      trusted the vendor's deployment safety, and that trust turned out to be
      load-bearing for the operation of a large slice of the global economy
      on a single morning.#cn()
    ],
    // -- Aftermath & Reform --
    [
      CrowdStrike moved content updates onto staged rollouts and stronger
      validation, Microsoft revisited kernel-level access for security
      vendors, and the episode prompted scrutiny of concentration risk in
      endpoint security.#cn() It is the cybersecurity-vendor analog of Knight
      Capital (Case 55) — an unverified deployment to a system wired into
      critical operations — at a scale six orders of magnitude larger.
    ],
  ),
  references: (
    [CrowdStrike, _Falcon Content Update: Preliminary Post-Incident Review_ (Aug. 2024) — the content-vs-code testing and staged-rollout gap (quoted).],
    [CrowdStrike PIR (2024) — the configuration-file logic error, the kernel crash, and ~8.5 million affected Windows machines.],
    [Microsoft resilient-engineering analyses and Windows kernel-access review (2024).],
    [U.S. GAO post-incident analysis and Senate Homeland Security hearings (2024) — concentration risk in endpoint security.],
    [B. Beyer et al. (eds.), _Site Reliability Engineering_ (2016) — staged rollout and canarying; cf. Knight Capital (Case 55).],
  ),
  quote: [Our content configuration update process did not include the same depth of testing and staged rollout as our code releases.],
  quote-source: "CrowdStrike Preliminary Post-Incident Review, August 2024",
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
  ),
  courses: ("LEN 5", "LEN 2"),
)

#case(
  number: 66,
  title: "Stanislav Petrov / 1983 False Alert",
  year: "1983",
  domains-list: ("defense",),
  modes-code: "HT",
  impact: "Soviet early-warning system reported five incoming U.S. ICBMs; Lt. Col. Petrov correctly assessed the signal as false; retaliation averted",
  diagram: dgm.dgm-compare(
    "system",
    "5 ICBMs",
    "operator",
    "false alarm",
    framing: "the human in the loop was the recoverability of an automation failure",
    caption: "Petrov, 1983 — Human-AI Teaming at the highest possible stakes",
  ),
  kind: "failure",
  summary: [
    On the night of 26 September 1983 the Soviet Oko early-warning system
    reported five U.S. intercontinental missiles inbound. The duty officer,
    Lt. Col. Stanislav Petrov, judged it a false alarm — a real first strike
    would involve hundreds of missiles, not five — and reported it as such
    rather than up the launch-decision chain. He was right: sunlight glinting
    off high-altitude clouds had fooled the satellite's infrared sensors.
    Petrov's judgment is widely credited with averting nuclear war. The case
    is the book's strongest positive evidence for human-in-the-loop
    capability: the automation failed in a mode its designers never
    anticipated, and a person with contextual judgment and the latitude to
    override it was the recoverability the system had. Keeping humans in some
    loops is not nostalgia — it is capability engineering.
  ],
  sections: (
    // -- Background --
    [
      Soviet nuclear command rested partly on Oko, a satellite early-warning
      system meant to detect U.S. missile launches and feed a
      launch-on-warning posture. The duty officer at the Serpukhov-15 bunker
      was responsible for verifying any alert and passing it up the chain.#cn()
    ],
    // -- What Happened --
    [
      On the night of 26 September 1983 Oko reported the launch of five U.S.
      Minuteman ICBMs toward the Soviet Union. Lt. Col. Stanislav Petrov, the
      duty officer, assessed the signal as a false alarm — a genuine first
      strike, he reasoned, would involve hundreds of missiles, not five — and
      reported it as such. He was correct.#cn()
    ],
    // -- The Investigation --
    [
      The cause was an unanticipated automation failure: sunlight reflecting
      off high-altitude clouds at a particular geometry had fooled the Oko
      satellite's infrared sensors into reading launches that were not
      there.#cn() Later investigation identified the satellite-geometry
      failure mode and modified the algorithm; the scenario is now
      permanently archived in early-warning training as the canonical false
      positive.#cn()
    ],
    // -- The Capability Gap --
    [
      The automation had failed in a mode its designers had not imagined, and
      no automated check could catch it. What caught it was a human with the
      contextual judgment to weigh the alert against what a real attack would
      look like, and the institutional latitude to override the system rather
      than simply relay it. Petrov's "funny feeling" was a career's worth of
      judgment doing the work the automation could not.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Petrov's decision is widely credited with averting nuclear war, and the
      case is permanently studied in command-and-control training.#cn() It is
      the book's strongest argument that retaining a human in some loops is
      capability engineering, not nostalgia: the human role is the
      recoverability of an automation failure the designers did not
      anticipate — which is exactly why fully automating a strategic decision
      removes the one element that can catch the unimagined error.
    ],
  ),
  references: (
    [D. Hoffman, _The Dead Hand: The Cold War Arms Race and Its Dangerous Legacy_ (2009) — the Oko system and Soviet launch-on-warning posture.],
    [Accounts of the 26 Sept. 1983 incident (Hoffman; Petrov interviews) — the five-missile alert and Petrov's assessment.],
    [Investigations of the Oko incident (incl. V. Aksenov, 2004) — sunlight-on-clouds satellite geometry as the false-positive cause.],
    [The subsequent Oko algorithm modification and the incident's use in early-warning training.],
    [S. Petrov, interview, _The Washington Post_ (1999) — "a funny feeling in my gut" (quoted).],
    [S. Sagan, _The Limits of Safety_ (1993); M. L. Cummings (2017) — automation in critical decisions and human-in-the-loop.],
  ),
  quote: [I had a funny feeling in my gut.],
  quote-source: "Stanislav Petrov, quoted in The Washington Post, 1999",
  le-insight: [
    Petrov is the canonical positive case for human-in-the-loop nuclear
    command-and-control. The automation failed in a mode its designers
    had not anticipated. The human's contextual judgment was the
    backstop that allowed the failure to be recovered before it became
    catastrophic. The case is the strongest argument in this book that
    the design choice to retain humans in some loops is not nostalgia
    but capability engineering.
  ],
  lens-approach: [
    LENS uses Petrov in LEN 2 as the positive Human-AI Teaming case at
    the highest possible stakes: the human role is the recoverability
    of an automation failure that the designers did not anticipate.
    The case anchors arguments against full-automation of strategic
    decisions.
  ],
  literature-items: (
    [Hoffman (2009), _The Dead Hand_],
    [Sagan, _The Limits of Safety_ (1993)],
    [Cummings (2017) on automation in critical decision systems],
  ),
  reflection-list: (
    [Identify an automated system in your domain where retaining a human-in-the-loop is genuinely capability-engineering rather than ceremonial. How would you tell the difference?],
    [Petrov's "funny feeling" was contextual judgment built across a career. Design the training that produces it deliberately.],
  ),
  courses: ("LEN 2",),
)

#case(
  number: 67,
  title: "TSB Bank IT Migration",
  year: "2018",
  domains-list: ("tech",),
  modes-code: "HG",
  impact: "1.9 million UK customers locked out of accounts; £330M+ in compensation and remediation; CEO resigned",
  diagram: dgm.dgm-cascade(
    ("technical readiness signal", "test coverage", "executive review", "go/no-go authority"),
    outcome: "the schedule overrode the technical layer that should have halted",
    caption: "TSB — readiness signal arrived attenuated at the decision",
  ),
  kind: "failure",
  summary: [
    In April 2018 TSB Bank tried to migrate some five million customer
    accounts off its former parent Lloyds' systems onto a new platform from
    its current owner, Sabadell, over a single weekend. When services came
    back online, nearly every component failed: 1.9 million customers were
    locked out, some saw strangers' accounts, mortgages vanished, payments
    bounced. Recovery took months and cost over £330 million; the CEO
    resigned and the regulator fined the bank. The independent review found
    the platform had been tested under conditions that did not approximate
    real load, certified ready by a process that did not challenge the
    certification, and pushed live against technical recommendations that it
    was not ready. TSB is the financial-sector analog of Healthcare.gov: a
    migration shipped without adequate testing because schedule pressure
    overrode the technical signal.
  ],
  sections: (
    // -- Background --
    [
      TSB Bank, spun out of Lloyds and acquired by Spain's Sabadell, needed
      to move some five million customer accounts off Lloyds' systems onto a
      new Sabadell-built platform. The cutover was scheduled for a single
      weekend.#cn()
    ],
    // -- What Happened --
    [
      When customer-facing services came back online that Sunday evening in
      April 2018, nearly every component of the new platform had problems.
      About 1.9 million customers were locked out; some saw other people's
      accounts, mortgages disappeared, and card payments failed. The recovery
      took months, cost more than £330 million in compensation and
      remediation, and the chief executive resigned.#cn()
    ],
    // -- The Investigation --
    [
      The Slaughter and May independent review found the migration had been
      tested under conditions that did not approximate real customer load,
      and that the platform had been certified ready by a process that did
      not adequately challenge the certification.#cn() Decisively, the
      executive decision to proceed had been taken against technical
      recommendations that the platform was not ready; the Financial Conduct
      Authority later fined TSB.#cn()
    ],
    // -- The Capability Gap --
    [
      The technical signal existed — the platform was not ready, and people
      knew it. But the decision authority sat at the executive layer, where
      the signal arrived weakened by passage through intermediate layers, and
      the institutional architecture gave the technical layer no way to halt
      the migration. The missing capability was not testing knowledge but a
      governance structure in which a "not ready" could stop a scheduled
      go-live.#cn()
    ],
    // -- Aftermath & Reform --
    [
      TSB rebuilt its testing and migration governance, paid out and was
      penalized, and the case entered the literature as a study in
      technical-decision authority.#cn() It is the financial-sector analog of
      Healthcare.gov (Case 10): a large migration shipped without the testing
      the institution knew it needed, because schedule pressure overrode a
      technical signal that had no authority to win.
    ],
  ),
  references: (
    [Slaughter and May, _Independent Review of the TSB Migration_ (2019) — the single-weekend cutover and the testing failures.],
    [Slaughter and May (2019) and FCA materials — ~1.9 million customers locked out, £330M+ in costs, and the CEO's resignation.],
    [Slaughter and May (2019) — inadequate load testing and an unchallenged readiness certification.],
    [Financial Conduct Authority, Final Notice on TSB Bank (2022) — the regulatory penalty and proceeding against technical advice.],
    [House of Commons Treasury Committee, report on the TSB IT migration (2018).],
    [Cf. Healthcare.gov (Case 10) and the migration-safety literature.],
  ),
  quote: [The migration proceeded notwithstanding clear signals that the platform was not ready.],
  quote-source: "Paraphrasing the Slaughter and May Independent Review of the TSB migration, 2019",
  le-insight: [
    TSB is the canonical case for schedule pressure overriding
    technical signal in a regulated industry. The technical signal
    existed. The decision authority was at the executive layer where
    the signal arrived weakened by passage through multiple intermediate
    layers. The institutional architecture did not allow the technical
    layer to halt the migration.
  ],
  lens-approach: [
    LENS uses TSB in LEN 7 as a corporate-governance case and in
    LEN 8 for the institutional structure of technical-decision
    authority. Studio projects compare TSB and Healthcare.gov.
  ],
  literature-items: (
    [Slaughter and May TSB Review (2019)],
    [FCA Final Notice (2022)],
    [Allspaw, post-mortem and migration-safety literature],
  ),
  reflection-list: (
    [Where in your organization does a technical signal arrive at the executive layer attenuated by intermediate layers? What is the cost of the attenuation?],
    [Design the institutional structure that would allow a technical lead to halt a migration like TSB's without resigning.],
  ),
  courses: ("LEN 7", "LEN 8"),
)
