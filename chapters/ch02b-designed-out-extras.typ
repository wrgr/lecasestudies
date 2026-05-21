// ============================================================
// Chapter 2 — Designed Out (extras)
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 51,
  title: "Ford Pinto Fuel Tank",
  year: "1971 – 1978",
  domains-list: ("industrial",),
  modes-code: "DG",
  impact: "Fatalities attributed to rear-impact fuel-tank fires; foundational case in U.S. engineering ethics",
  diagram: dgm.dgm-stat(
    "\$11",
    "per car · the fix Ford declined",
    micro: "an internal cost-benefit calculated against projected wrongful-death settlements",
    caption: "Pinto — the price of a designed-out safety capability",
  ),
  body: [
    Ford engineers identified the Pinto's rear-impact fuel-tank
    vulnerability during pre-production testing. An eleven-dollar
    modification — a polyethylene shield between the tank and the
    differential — would have largely eliminated the failure mode.
    Internal cost-benefit calculations, later subpoenaed by Congress,
    found the modification more expensive than the projected wrongful-
    death settlements and chose not to implement it. The calculation
    was not secret to its authors; it was secret only to the public
    and to Pinto buyers.

    The Pinto case became the founding case study in U.S. engineering
    ethics curricula. It is the most direct documentary evidence in the
    industrial dataset of a manufacturer pricing human life against an
    engineering change and choosing against the change. The lawsuits
    that followed produced the largest punitive damages of the era and
    contributed to the modern regulatory consumer-protection regime.

    The capability that was designed out of the Pinto was the
    capability to survive a rear-impact crash. The reason it was
    designed out was institutional, not technical.
  ],
  quote: [Ford's internal calculation found the cost of the fix higher than the projected cost of the deaths it would prevent.],
  quote-source: "Paraphrasing Dowie, Mother Jones, \"Pinto Madness,\" 1977",
  sources-list: (
    [Dowie, M. (1977), "Pinto Madness," _Mother Jones_],
    [Grimshaw v. Ford Motor Co. (1981), 119 Cal. App. 3d 757],
    [NHTSA Pinto investigation files (1978)],
  ),
  le-insight: [
    The Pinto is the canonical Designed-Out case in industrial
    engineering ethics. The fix was known. The cost was small. The
    decision was a documented institutional choice not to fix it. The
    case anchors the LENS argument that "Designed Out" is rarely an
    oversight — it is almost always a decision someone signs.
  ],
  lens-approach: [
    LENS uses the Pinto in LEN 7 as the foundational engineering-ethics
    case and in LEN 1 as a problem-framing case for what happens when
    safety capability is treated as a cost line item.
  ],
  literature-items: (
    [Dowie (1977), _Mother Jones_],
    [Birsch & Fielder (eds.) _The Ford Pinto Case_ (1994)],
    [Vandenberg, _The Engineering Ethics_ casebook],
  ),
  reflection-list: (
    [Identify a current product in your domain where a safety capability is being priced against expected litigation. Whose signature would close that decision?],
    [Design the regulatory deliverable that would have made the Pinto cost-benefit calculation unworkable in 1971.],
  ),
  courses: ("LEN 1", "LEN 7"),
)

#case(
  number: 52,
  title: "Takata Airbag Inflators",
  year: "2008 – 2023",
  domains-list: ("industrial",),
  modes-code: "DG",
  impact: "More than 30 deaths and hundreds of injuries linked to inflator ruptures; largest automotive recall in history",
  diagram: dgm.dgm-stat(
    "100M+",
    "inflators recalled · 19 automakers",
    micro: "the desiccant competitors used was the designed-out capability",
    caption: "Takata — the largest automotive recall on record",
  ),
  body: [
    Takata's ammonium-nitrate-based airbag inflators were designed
    without the desiccant that competitors used to stabilize the
    propellant against humidity and temperature cycling. Under hot,
    humid conditions over years of use, the propellant degraded; on
    deployment, the inflator could rupture and send metal fragments
    into the cabin. Takata's internal documents, later subpoenaed,
    showed engineers had raised the concern repeatedly. The company's
    own testing data showed the failure. The data was reported to
    regulators as anomalous rather than as a class.

    The recall — when it finally came — covered more than a hundred
    million inflators across nineteen automakers and remains the
    largest in automotive history. Takata filed for bankruptcy. The
    parent company was sold. The death count continues to rise as
    older affected vehicles remain in service.

    The desiccant was the capability that was designed out. The reason
    was cost. The fact that competitors used it was visible to anyone
    who looked.
  ],
  quote: [Takata engaged in a sustained pattern of misrepresenting inflator safety data to its automaker customers and to regulators.],
  quote-source: "Paraphrasing the U.S. Department of Justice deferred-prosecution agreement, 2017",
  sources-list: (
    [DOJ settlement with Takata Corporation (2017)],
    [NHTSA Takata Airbag Recall coordination documents],
    [Reuters and _NYT_ investigative reporting on Takata internal documents],
  ),
  le-insight: [
    Takata is the modern Pinto: an engineering choice to omit a
    stabilizing component, internal data showing the consequence, and
    a regulatory architecture that treated the manufacturer's
    representation as authoritative rather than as one input. The
    capability gap was at the regulator's evidence pipeline as much as
    at the manufacturer's bench.
  ],
  lens-approach: [
    LENS uses Takata in LEN 2 as a measurement-system case (the
    manufacturer's data was reported but not interpreted as a class)
    and in LEN 7 as an industrial-governance failure spanning
    manufacturer, regulator, and customer auditors.
  ],
  literature-items: (
    [DOJ deferred-prosecution documents (2017)],
    [NHTSA Takata recall coordination archive],
    [Birsch & Fielder, engineering-ethics casebooks],
  ),
  reflection-list: (
    [Where in your domain does a regulator receive manufacturer test data without an independent verification pipeline? What is the load-bearing trust assumption?],
    [Design the verification regime that should have surrounded ammonium-nitrate inflator testing. Who funds it, who runs it, and what does it produce?],
  ),
  courses: ("LEN 2", "LEN 7"),
)

#case(
  number: 53,
  title: "GM Ignition Switch",
  year: "2002 – 2014",
  domains-list: ("industrial",),
  modes-code: "DG",
  impact: "124 deaths attributed; ~30M vehicles recalled; $900M federal settlement; criminal prosecution under wire-fraud statute",
  diagram: dgm.dgm-timeline(
    (("defect identified", "2002"), ("\"fix\" approved", "2006"), ("same part number", "2006"), ("recall begins", "2014"), ("Valukas report", "2014")),
    emphasis: 2,
    caption: "GM ignition switch — eight years between the fix and the recall",
  ),
  body: [
    A faulty ignition switch in several GM compact-car models could
    rotate from "run" to "accessory" while driving, disabling power
    steering, power brakes, and — critically — the airbag system. GM
    engineers identified the problem in 2002 and approved a fix in
    2006 *without changing the part number*, meaning the fix did not
    propagate as a recall would have. Cars with the faulty switch
    continued to be built and sold. The internal practice of changing
    a part without changing the part number violated GM's own
    engineering standards. Internal investigations later called it
    "the GM nod" and "the GM salute."

    The Valukas Report commissioned by GM after the recall identified
    cultural patterns at the company that suppressed escalation of
    safety issues. Mary Barra, who became CEO during the recall, used
    the report as the basis for the company's restructuring of safety
    decision-making.

    The capability that was designed out of GM was the institutional
    pathway by which a safety problem reached the decision to recall.
  ],
  quote: [There was a fundamental failure to use the formal escalation processes that GM had established.],
  quote-source: "Paraphrasing the Valukas Report to the GM Board of Directors, 2014",
  sources-list: (
    [Valukas Report to GM (2014)],
    [NHTSA Investigation of GM Ignition Switch (2014)],
    [DOJ Deferred Prosecution Agreement with GM (2015)],
  ),
  le-insight: [
    The GM ignition switch case is the canonical example of a corporate
    organizational structure that suppressed the upward flow of safety
    information by procedural design. The fix existed for eight years
    before the recall. The institutional path between the fix and the
    recall did not.
  ],
  lens-approach: [
    LENS uses GM in LEN 7 as a corporate-governance failure case, in
    LEN 9 to study Valukas-style retrospective institutional analysis,
    and in LEN 2 for the part-number-as-measurement-instrument story
    (changing the part without changing the number suppressed the
    signal).
  ],
  literature-items: (
    [Valukas (2014), report to GM],
    [Hetu et al. (2016), corporate-governance analysis of GM],
    [Edmondson (2018), _The Fearless Organization_],
  ),
  reflection-list: (
    [What information channel in your organization carries the same load that GM's part-number system did? Could it be silently bypassed?],
    [Design the escalation deliverable that would have moved the GM ignition switch fix to a recall in 2006.],
  ),
  courses: ("LEN 2", "LEN 7", "LEN 9"),
)

#case(
  number: 54,
  title: "Mars Climate Orbiter — Unit Mismatch",
  year: "1999",
  domains-list: ("aviation",),
  modes-code: "DK",
  impact: "$327M spacecraft lost on approach to Mars; ground software produced thrust output in pound-force while navigation expected newtons",
  diagram: dgm.dgm-flow(
    ("Lockheed\nlbf·s", "interface", "NASA\nN·s", "trajectory error", "burnup"),
    framing: "no owner of the interface specification",
    caption: "Mars Climate Orbiter — the unowned interface",
  ),
  body: [
    Lockheed Martin's ground software produced thrust outputs in
    pound-force seconds. NASA's navigation system expected newton-
    seconds. The unit conversion was not performed at the interface. As
    a result, every trajectory correction the spacecraft executed was
    off by a factor of about four and a half. The Mars Climate Orbiter
    arrived at Mars on a trajectory that took it too close to the
    planet's surface. It burned up in the atmosphere.

    The Mars Climate Orbiter Mishap Investigation Board found no
    individual fault. The fault was a missing interface specification
    between two contractors and an institutional review process that
    had not caught the gap. Both contractors had done their internal
    jobs correctly; the boundary between them was the missing
    deliverable.

    The case is canonical in software engineering for what happens
    when interface specifications are treated as documentation rather
    than as engineering deliverables.
  ],
  quote: [The root cause was the failed translation of English units to metric units in a segment of ground-based, navigation-related mission software.],
  quote-source: "Paraphrasing the NASA Mars Climate Orbiter Mishap Investigation Board, 1999",
  sources-list: (
    [NASA, Mars Climate Orbiter Mishap Investigation Board Report (1999)],
    [Sauser, B. et al. (2009), retrospective on Mars Climate Orbiter],
    [Software-engineering literature on interface-specification failures],
  ),
  le-insight: [
    Mars Climate Orbiter is the textbook case for interface boundaries
    as engineering deliverables. The contractors did their work. The
    boundary between them did not have an owner. The capability that
    was missing was the interface-specification verification step.
  ],
  lens-approach: [
    LENS uses Mars Climate Orbiter in LEN 5 to teach interface-as-
    requirement and in LEN 9 to discuss cross-contractor capability
    boundaries. The case is the foundational software-engineering
    parallel to Patriot (Case 19).
  ],
  literature-items: (
    [NASA MCO MIB Report (1999)],
    [Leveson (2011), _Engineering a Safer World_],
    [Brooks, _The Mythical Man-Month_ (1995)],
  ),
  reflection-list: (
    [Identify a contractor-to-contractor interface in your domain whose specification ownership is unclear. What would the equivalent unit-mismatch look like there?],
    [Design the interface-verification deliverable that would have caught the pound-force / newton boundary before launch.],
  ),
  courses: ("LEN 5", "LEN 9"),
)

#case(
  number: 55,
  title: "Knight Capital Trading Loss",
  year: "2012",
  domains-list: ("tech",),
  modes-code: "DK",
  impact: "$440M loss in 45 minutes; firm forced to seek emergency capital and was effectively acquired within months",
  diagram: dgm.dgm-stat(
    "$440M",
    "loss in 45 minutes · 7 of 8 servers updated",
    micro: "dead code on the eighth server, repurposed flag, no deployment verification",
    caption: "Knight Capital — the cost of an unverified deployment",
  ),
  body: [
    On the morning of August 1, 2012, Knight Capital deployed a
    software update to seven of eight servers in its order routing
    system. On the eighth, dead code from a previous release that had
    never been removed was still active. When the new flag was set in
    a configuration file, the dead code began executing buy orders at
    a rate of millions of shares per second. Knight's loss reached one
    hundred seventy-two million dollars in the first forty-five minutes
    of trading. By close, the loss exceeded four hundred forty million
    dollars. The firm was acquired within months.

    The SEC investigation found that Knight's deployment procedure did
    not include a verification step to confirm that all eight servers
    held identical code. The dead code was a Chekhov's gun left in the
    repository years earlier — a function that had been retired but
    not removed. The flag that triggered it was repurposed for a
    different feature without auditing what else still listened to it.

    Knight Capital is the canonical case for what happens when
    deployment procedure is not an engineering deliverable.
  ],
  quote: [Knight did not have written procedures requiring a second technician to verify the deployment.],
  quote-source: "Paraphrasing the SEC Order Instituting Administrative Proceedings against Knight Capital, 2013",
  sources-list: (
    [SEC Order Instituting Administrative Proceedings, Knight Capital (2013)],
    [Knight Capital 8-K filing (2012)],
    [Software-engineering literature on deployment safety],
  ),
  le-insight: [
    Knight Capital is the financial-industry version of Mars Climate
    Orbiter (Case 54): a small, unspecified boundary inside a large
    system that took the institution down. The capability that was
    missing was deployment verification. The dead code was the
    proximate trigger; the absent procedure was the cause.
  ],
  lens-approach: [
    LENS uses Knight Capital in LEN 5 to teach deployment-as-capability
    and in LEN 10 for the technical-debt argument: every line of dead
    code carries an option on a future failure. Students design the
    deployment deliverable that would have caught the eighth server.
  ],
  literature-items: (
    [SEC Knight Capital order (2013)],
    [Allspaw & Hammond, _Web Operations_ (2010)],
    [Beyer et al. (eds.), _Site Reliability Engineering_ (2016)],
  ),
  reflection-list: (
    [Identify a deployment procedure in your domain whose verification step depends on convention rather than on a designed check. What is the eighth server?],
    [Design the deployment deliverable that would prevent a Knight Capital-equivalent loss in your organization.],
  ),
  courses: ("LEN 5", "LEN 10"),
)
