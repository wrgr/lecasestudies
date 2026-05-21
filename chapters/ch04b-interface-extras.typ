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
  body: [
    Approaching Miami at night, the crew of Eastern 401 noticed that
    the landing-gear indicator light had not illuminated. All three
    flight-deck members focused on the bulb. While they worked the
    problem, one of them inadvertently disengaged the autopilot
    altitude hold. The L-1011 descended slowly into the Everglades.
    The crew did not notice. The altitude warning chime sounded —
    according to the CVR — but in the auditory clutter of the cockpit
    no one heard it as significant.

    The NTSB findings inaugurated decades of research into attention,
    monitoring, and the design of cockpit alerts. The accident is
    cited in virtually every introductory cognitive-engineering
    curriculum as the canonical example of how a low-priority task
    can crowd out a life-critical one when attention is undivided
    among the available channels.

    Eastern 401 was one of the formative events that led to the
    development of Crew Resource Management (Case 12) and to modern
    standards for cockpit alerting systems.
  ],
  quote: [The crew became so engrossed in the landing-gear difficulty that they failed to maintain altitude.],
  quote-source: "Paraphrasing NTSB Aircraft Accident Report NTSB-AAR-73-14 on Eastern 401, 1973",
  sources-list: (
    [NTSB Aircraft Accident Report NTSB-AAR-73-14 (1973)],
    [Wickens, _Engineering Psychology and Human Performance_ (multiple eds.)],
    [Newhouse, _The Failed Promise of Eastern 401_],
  ),
  le-insight: [
    Eastern 401 is the canonical attention-failure case. The capability
    that was missing was a designed division of attention across the
    crew. CRM exists because Eastern 401 happened, and the discipline
    of cockpit alert design exists because the altitude warning chime
    did not carry the priority weight it needed to.
  ],
  lens-approach: [
    LENS uses Eastern 401 in LEN 5 to teach attention as a designable
    parameter and in LEN 8 to introduce alert prioritization as a
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
  courses: ("LEN 5", "LEN 8"),
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
  body: [
    Two Boeing 737s crashed unrecoverably from level flight after the
    rudder Power Control Unit reversed: pilot inputs produced rudder
    movement in the opposite direction. The NTSB investigation took
    years, partly because the failure mode was both rare and unrecoverable.
    The eventual finding identified a thermal shock condition in the
    rudder servo valve — cold soaked hydraulic fluid striking a hot
    valve under specific operational conditions — combined with a
    secondary valve design that, when jammed, allowed the rudder to
    move opposite to commanded input.

    The capability gap was specifically that the pilots had no
    procedure for recognizing or recovering from a rudder reversal.
    The Aircraft Operating Manual did not anticipate the failure.
    Crew training did not include it. The aircraft itself, in the
    failure mode, was not recoverable by any flight-control input
    available to the crew.

    The 737 rudder cases sit at the intersection of mechanical design,
    certification testing, and crew capability — all three would have
    had to fail simultaneously for the accidents to occur, and all
    three did.
  ],
  quote: [The aircraft was operated for years with a design feature that, under specific conditions, was unrecoverable.],
  quote-source: "Paraphrasing NTSB Aircraft Accident Report NTSB-AAR-99-01 on the 737 rudder PCU, 1999",
  sources-list: (
    [NTSB Aircraft Accident Report NTSB-AAR-99-01 (1999)],
    [NTSB Aircraft Accident Report NTSB-AAR-92-06 (1992) — United 585],
    [Boeing 737 Rudder Service Bulletin series (1996–2002)],
  ),
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
  courses: ("LEN 5", "LEN 7"),
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
  body: [
    On July 19, 2024, CrowdStrike pushed a content update to its Falcon
    endpoint sensor that contained a logic error in a small
    configuration file. On every Windows machine running the affected
    sensor version, the file caused the kernel driver to dereference
    an out-of-bounds pointer and crash. The blue-screen-of-death loop
    that followed required manual recovery on each affected machine.
    Eight and a half million machines simultaneously, across hospitals,
    airlines, banks, and government agencies worldwide, became
    unusable.

    The case is the largest IT outage in history measured by economic
    impact. CrowdStrike's own post-incident report identified that the
    content update had not been validated against the same set of
    automated tests as code updates, and that the staged-rollout
    practice CrowdStrike used for code did not extend to content. The
    capability that was missing was the assumption that content is
    treated identically to code from a deployment-safety standpoint.

    The case is the cybersecurity-vendor analog of Knight Capital
    (Case 55) at a scale six orders of magnitude larger.
  ],
  quote: [Our content configuration update process did not include the same depth of testing and staged rollout as our code releases.],
  quote-source: "CrowdStrike Preliminary Post-Incident Review, August 2024",
  sources-list: (
    [CrowdStrike, Preliminary Post-Incident Review (2024)],
    [Microsoft Resilient Engineering report (2024)],
    [GAO post-incident analyses and Senate Homeland Security hearings (2024)],
  ),
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
    capability case and in LEN 8 for the vendor-customer trust
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
  courses: ("LEN 5", "LEN 8"),
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
  body: [
    On the night of September 26, 1983, the Soviet Oko early-warning
    satellite system reported the launch of five U.S. Minuteman ICBMs
    toward the Soviet Union. The duty officer at Serpukhov-15,
    Lt. Col. Stanislav Petrov, was responsible for verifying the alert
    and reporting it up the chain. Petrov assessed the signal as a
    false alarm — a real first strike, he reasoned, would involve
    hundreds of missiles, not five — and reported it as such. He was
    correct. The signal had been generated by sunlight reflecting off
    high-altitude clouds at a particular geometry against the Oko
    satellite's infrared sensors.

    Petrov's decision is widely credited with averting nuclear war.
    The case demonstrates both the necessity and the fragility of
    human-in-the-loop capability for nuclear command-and-control. The
    automation had failed in a mode its designers had not anticipated.
    The human in the loop had the contextual judgment and the
    institutional protection to override the alert.

    Subsequent investigations identified the satellite-geometry failure
    mode and modified the algorithm. The case is permanently archived
    in early-warning training as the canonical false-positive scenario.
  ],
  quote: [I had a funny feeling in my gut.],
  quote-source: "Stanislav Petrov, quoted in The Washington Post, 1999",
  sources-list: (
    [Hoffman, _The Dead Hand_ (2009)],
    [Aksenov, V., investigation of Oko incident (2004)],
    [Lewis & Lewis, U.S.-Russia strategic-stability analyses],
  ),
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
    LENS uses Petrov in LEN 8 as the positive Human-AI Teaming case at
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
  courses: ("LEN 8",),
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
  body: [
    TSB Bank attempted to migrate five million customer accounts from
    its former parent company Lloyds' systems to a new platform built
    by its current parent Sabadell. The migration was scheduled for a
    single weekend. On Sunday evening, when customer-facing services
    came back online, virtually every component of the new platform
    had problems. Customers saw other people's accounts. Mortgages
    disappeared. Card payments failed. The recovery took months.

    The Slaughter and May independent investigation found that the
    migration had been tested under conditions that did not approximate
    real customer load, that the new platform had been certified ready
    by a process that did not adequately challenge the certification,
    and that the executive decision to proceed had been taken against
    technical recommendations that the platform was not ready. The
    Financial Conduct Authority fined TSB; the CEO resigned.

    The case is the financial-sector analog of Healthcare.gov (Case
    10): a large migration shipped without the testing the institution
    knew it should have done, because the schedule pressure overrode
    the technical signal.
  ],
  quote: [The migration proceeded notwithstanding clear signals that the platform was not ready.],
  quote-source: "Paraphrasing the Slaughter and May Independent Review of the TSB migration, 2019",
  sources-list: (
    [Slaughter and May Independent Review of TSB Migration (2019)],
    [Financial Conduct Authority final notice on TSB (2022)],
    [House of Commons Treasury Committee report on TSB (2018)],
  ),
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
    LEN 9 for the institutional structure of technical-decision
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
  courses: ("LEN 7", "LEN 9"),
)
