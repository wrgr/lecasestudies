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
    "$11",
    "per car · the fix of legend",
    micro: "the cost-benefit story is largely myth — the memo behind it was a fleet-wide rollover submission, not a Pinto ledger",
    caption: "Pinto — the cost-benefit story that became myth",
  ),
  kind: "failure",
  summary: [
    The Ford Pinto, a rushed early-1970s subcompact, placed its fuel tank
    where rear-impact collisions could rupture it; fuel-fed fires killed and
    burned people, and in _Grimshaw v. Ford_ (1981) a jury found Ford
    liable, having known of the hazard and not fixed it. A *common
    misconception*, popularized by a 1977 _Mother Jones_ exposé, holds that
    Ford ran a cost-benefit calculation and chose to pay death settlements
    rather than install an \$11 fix. The memo invoked for that story was
    actually a generic federal submission about rollover fires across the
    whole U.S. fleet — it never mentioned the Pinto. Strip away the myth and
    the real designed-out failure remains: rear-impact survivability lost to
    cost and packaging, and a known hazard went unfixed. It is the founding
    engineering-ethics case — and a lesson in accuracy.
  ],
  sections: (
    // -- Background --
    [
      The Pinto was Ford's rushed early-1970s answer to imported
      subcompacts, built to aggressive cost and weight targets on a compressed
      schedule that left little slack for late design changes. To save room
      and money, its fuel tank sat behind the rear axle with little crush
      space; in rear-impact tests it could be punctured and the filler neck
      torn away, releasing fuel near potential ignition sources. Engineers
      knew of the vulnerability from the company's own crash tests, and cheap
      fixes — a shield, a revised tank position — existed, but none was adopted
      before the car shipped to dealers.#cn()
    ],
    // -- What Happened --
    [
      In service, rear-impact collisions produced fuel-fed fires that killed
      and burned people, the precise failure mode the crash tests had shown.
      The reckoning came in court: in _Grimshaw v. Ford_ — a 1972 crash that
      killed the driver and severely burned teenage passenger Richard Grimshaw
      — a jury found Ford liable, and the 1981 appellate court upheld
      liability, finding Ford had known of the hazard and not acted on it.
      Ford recalled some 1.5 million Pintos and Mercury Bobcats in 1978, and
      an Indiana prosecutor even charged it with reckless homicide (Ford was
      acquitted at trial). The car became the enduring emblem of corporate
      disregard for safety.#cn()
    ],
    // -- The Investigation --
    [
      That emblem rests partly on a common misconception that has hardened
      into folklore. Mother Jones's 1977 exposé "Pinto Madness" popularized
      the claim that Ford had calculated it was cheaper to pay death
      settlements than install an eleven-dollar fix. The document invoked —
      the Grush-Saunby analysis — was actually a generic submission to
      regulators about fuel-fed fires in *rollovers* across the *entire* U.S.
      fleet; it valued societal costs using a government figure, never
      mentioned the Pinto by name, concerned a different crash mode, and
      postdated the car's design. Gary Schwartz later documented the gap in
      detail, including a death toll far below the hundreds the article
      implied.#cn()
    ],
    // -- The Capability Gap --
    [
      Strip away the myth and the designed-out failure remains — which is why
      the case is worth keeping rather than discarding with the legend.
      Rear-impact survivability was a real capability that lost to cost,
      weight, and packaging, and a known vulnerability went unaddressed long
      enough for people to die and a jury to find Ford liable. The cartoon
      version — a villain coldly pricing lives against a cheap part — actually
      makes the lesson easy to dismiss as something that happens only to
      monsters. The truer one is ordinary and therefore more dangerous: safety
      capability erodes not through a single monstrous choice but through many
      small trades against cost and weight that no one owns as a
      requirement.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The Pinto drove enforcement of rear-impact fuel-system standards and
      helped shape the modern consumer-safety and punitive-liability regime,
      and for fifty years it has been the founding engineering-ethics case
      taught to new engineers. Its honest telling earns the place twice: as a
      lesson in how cost and weight quietly design out a safety capability,
      and as a caution in how a case itself gets mythologized into a shape
      more satisfying to repeat than accurate to learn from — the value of a
      statistical life is a real and legitimate regulatory tool, and the true
      objection was never that a number was used to weigh safety but that a
      known hazard went unfixed.#cn()
    ],
  ),
  references: (
    [M. Dowie, "Pinto Madness," _Mother Jones_ (Sept./Oct. 1977) — the contemporaneous exposé that popularized the \$11-fix / cost-benefit framing.],
    [_Grimshaw v. Ford Motor Co._, 119 Cal. App. 3d 757 (1981) — Ford held liable for the rear-impact fuel-system hazard; punitive damages upheld in reduced amount.],
    [G. T. Schwartz, "The Myth of the Ford Pinto Case," _Rutgers Law Review_ 43: 1013–1068 (1991) — the Grush-Saunby memo was a generic NHTSA rollover-fire submission for the whole fleet, not a Pinto-specific litigation calculation; the death toll was far lower than popularly claimed. _(See AUDIT: corrects the prior edition's framing.)_],
    [U.S. NHTSA Pinto investigation files (1978) and Federal Motor Vehicle Safety Standard 301 (fuel-system integrity) — the regulatory record.],
    [L. Birsch & J. Fielder (eds.), _The Ford Pinto Case: A Study in Applied Ethics, Business, and Technology_ (SUNY Press, 1994) — the case and its later reassessments.],
  ),
  quote: [Much of what people believe about the Pinto — a deliberate trade of lives against an eleven-dollar part — is myth; what is not myth is that a known fuel-system hazard went unfixed.],
  quote-source: "Paraphrasing G. T. Schwartz, \"The Myth of the Ford Pinto Case,\" 1991",
  le-insight: [
    The Pinto is the founding Designed-Out ethics case — and a lesson in
    accuracy. The popular cost-benefit story is largely myth, but the
    designed-out capability (rear-impact survivability, traded against cost
    and packaging) was real, and Ford was held liable for it. LENS keeps the
    case for both halves: how cost quietly removes safety capability, and how
    a case can be mythologized into something easier to repeat than to learn
    from.
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
    [The Pinto failure came not from one villainous choice but from many small trades against cost and weight that no one owned as a requirement. Map such an accumulation in a current program and name who should hold the safety capability as an explicit, non-tradable line.],
  ),
  approaches: (
    during: (
      [Make rear-impact survivability — or its equivalent safety capability — an explicit, owned requirement that cost and weight targets must be reconciled against, not silently traded away under schedule pressure.],
      [Treat the company's own crash-test evidence of a hazard as a design gate: a known vulnerability with a cheap fix cannot pass to production unaddressed.],
      [Bring an inexpensive mitigation (a shield, a revised tank position) into the design before ship rather than weighing it against expected litigation after.],
    ),
    after: (
      [Audit fielded products against the failure modes the company's testing already revealed, so a known hazard is fixed by recall before it accumulates a casualty record.],
      [Use the value-of-a-statistical-life calculation honestly — as a tool to justify fixing hazards, not to defend leaving them — and document the reasoning where it can be reviewed.],
      [Guard the case's lesson against its own myth: review failures for the ordinary accumulation of cost trades, not just for a single bad actor who is easy to disown.],
    ),
  ),
  courses: ("LEN 1", "LEN 7", "LEN 6",),
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
  summary: [
    Takata built its airbag inflators around ammonium nitrate — cheap and
    energetic but unstable, and used by almost no one else without a
    moisture-absorbing desiccant. Takata's inflators omitted the desiccant.
    Over years of heat and humidity the propellant degraded and could rupture
    the metal housing on deployment, spraying shrapnel at the driver; more
    than two dozen deaths and hundreds of injuries followed. Takata's own
    tests had shown the ruptures, but it reported them as isolated anomalies
    and, in places, falsified data; in 2017 it pleaded guilty to wire fraud,
    paid roughly \$1 billion, and went bankrupt. The recall — over 100 million
    inflators across 19 automakers — is the largest in automotive history.
    Two capabilities were designed out: the desiccant, and the independent
    verification regulators never had.
  ],
  kind: "failure",
  sections: (
    // -- Background --
    [
      An airbag inflates by burning a propellant inches from a person's
      face, so the propellant must be energetic *and* stable across the years
      and climates a car will see. To cut cost, Takata built its inflators
      around ammonium nitrate — cheap and energetic but notoriously unstable,
      shifting crystalline structure and absorbing moisture as temperature
      cycles day after day. The few competitors who used it at all added a
      desiccant to keep it dry over the life of the car; Takata's inflators,
      for years, shipped with none.#cn()
    ],
    // -- What Happened --
    [
      Over years of heat and humidity the propellant degraded, and a degraded
      charge can burn too fast, generating more pressure than the housing was
      built to contain. A firing inflator could then rupture its own metal
      housing and spray shrapnel into the cabin — turning the device meant to
      save a life into a fragmentation hazard aimed at the driver. More than
      two dozen deaths worldwide and hundreds of injuries followed. The recall
      grew to more than a hundred million inflators across some nineteen
      automakers — the largest in automotive history — and Takata went
      bankrupt; the toll keeps rising as unrepaired vehicles stay on the road
      and their inflators keep aging.#cn()
    ],
    // -- The Investigation --
    [
      Takata's own testing had shown the ruptures, but internal documents
      revealed engineers raising the alarm internally while the company
      reported the failures to automakers and regulators as isolated anomalies
      rather than a systemic propellant problem — and, in places, manipulated
      the test data outright.#cn() In 2017 Takata pleaded guilty to wire fraud
      and paid roughly a billion dollars in fine, restitution, and a victims'
      fund. The legal finding was pointed: not that a part had failed, but
      that the company had spent years misrepresenting what its own engineers
      knew.#cn()
    ],
    // -- The Capability Gap --
    [
      Two capabilities were designed out, and the second matters as much as
      the first. The product capability was the desiccant — a stabilizing
      component competitors used, omitted to save cost, in plain view of
      anyone comparing designs side by side. The system capability was
      independent verification: the recall regime treated the manufacturer's
      representations about its own safety data as authoritative, with no
      independent pipeline to test inflator behavior across the fleet as it
      aged in the field — which let an obvious failure mode hide for years
      inside a process that kept receiving the evidence and reporting it back
      as noise.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The recall is still being worked off, vehicle by vehicle, long after
      the company that built the inflators ceased to exist — concrete proof
      that a designed-out capability can outlive the firm that removed it and
      become someone else's burden. The episode pushed regulators toward more
      aggressive, coordinated recall management that does not leave pace to
      each manufacturer. Its central lesson is the pairing: Takata is the
      modern Pinto in its product failure, and more in its system failure —
      the evidence pipeline a regulator relies on is itself a safety
      capability, and omitting it is as consequential as omitting the
      desiccant from the inflator.#cn()
    ],
  ),
  references: (
    [U.S. National Highway Traffic Safety Administration, Takata air-bag inflator recall coordination materials — the ammonium-nitrate-without-desiccant design and the propellant-degradation rupture mechanism.],
    [NHTSA recall record and investigative reporting (Reuters, _New York Times_) — 100M+ inflators across ~19 automakers; the largest automotive recall in history; deaths and injuries from ruptures.],
    [U.S. Department of Justice, settlement and guilty plea with Takata Corporation (2017) — wire fraud, ~\$1B in fine and restitution, and Takata's subsequent bankruptcy.],
    [U.S. DOJ (2017) and Takata internal documents released in litigation — the sustained misrepresentation of inflator test data to automakers and regulators.],
    [NHTSA Takata recall status reporting — the years-long completion of replacements and the continuing risk in unrepaired vehicles.],
    [NHTSA Coordinated Remedy Program for the Takata recalls — the regulator's move to actively prioritize and manage replacement across nineteen automakers rather than leave pace to each manufacturer.],
  ),
  quote: [Takata engaged in a sustained pattern of misrepresenting inflator safety data to its automaker customers and to regulators.],
  quote-source: "Paraphrasing the U.S. Department of Justice settlement with Takata, 2017",
  le-insight: [
    Takata is the modern Pinto: an engineering choice to omit a
    stabilizing component, internal data showing the consequence, and
    a regulatory architecture that treated the manufacturer's
    representation as authoritative rather than as one input. The
    capability gap was at the regulator's evidence pipeline as much as
    at the manufacturer's bench.
  ],
  lens-approach: [
    LENS uses Takata in LEN 4 as a measurement-system case (the
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
    [Takata's propellant degraded slowly with heat and humidity, so a part safe at delivery became lethal years later. Identify a component in your domain whose qualification testing does not cover its full service life, and specify the aging test that would close the gap.],
  ),
  approaches: (
    during: (
      [Qualify a safety-critical material against the full service life and climate range it will see, not just its as-delivered state, so slow degradation cannot turn a safe part lethal years later.],
      [When choosing a cheaper, less stable material, require the stabilizing measure competitors use — here a desiccant — rather than omitting it to save cost.],
      [Design inflator testing to detect the rupture failure mode as a class across temperature and humidity cycling, so it cannot be dismissed as an isolated anomaly.],
    ),
    after: (
      [Stand up an independent verification pipeline that tests fielded inflators across the aging fleet, so a regulator does not depend on the manufacturer's own representation of its safety data.],
      [Aggregate field rupture reports as a population signal rather than closing them one by one, with authority to trigger recall when a pattern appears.],
      [Manage the recall as a coordinated program that prioritizes replacement across automakers, since a designed-out hazard outlives the firm and keeps aging in unrepaired cars.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
)

#case(
  number: 53,
  title: "GM Ignition Switch",
  year: "2002 – 2014",
  domains-list: ("industrial",),
  modes-code: "DG",
  impact: "124 deaths attributed; ~2.6M vehicles recalled for the defective switch; $900M federal forfeiture (DOJ, 2015); the fix existed for eight years before the recall",
  diagram: dgm.dgm-timeline(
    (("defect identified", "2002"), ("\"fix\" approved", "2006"), ("same part number", "2006"), ("recall begins", "2014"), ("Valukas report", "2014")),
    emphasis: 2,
    caption: "GM ignition switch — eight years between the fix and the recall",
  ),
  kind: "failure",
  summary: [
    A faulty ignition switch in several GM compact cars (the Chevrolet
    Cobalt, Saturn Ion) could slip from "run" to "accessory" while driving,
    cutting power steering and brakes and — fatally — disarming the airbags.
    GM engineers identified it in 2002. In 2006 an engineer approved a
    redesigned switch but did not change its part number, so the fix
    propagated as neither a revision nor a recall, and defective cars kept
    selling. The recall came only in 2014 — about 2.6 million vehicles, with
    124 deaths attributed through GM's compensation fund. The Valukas report
    found a culture that absorbed safety concerns, and GM paid a \$900 million
    federal penalty. What was designed out was not a part but the pathway by
    which a known safety problem reaches the decision to recall.
  ],
  sections: (
    // -- Background --
    [
      The ignition switches in several GM compact cars — the Chevrolet
      Cobalt and Saturn Ion among them — had too little detent torque to hold
      their position, so a jostle, a bump in the road, or a heavy keychain
      could rotate the switch out of "run" while driving. That cut power
      steering and braking and, fatally, disarmed the airbags so they would
      not deploy in the very crash that loss of control often produced. GM
      engineers identified the problem in 2002, during development, before the
      cars ever reached customers.#cn()
    ],
    // -- What Happened --
    [
      In 2006 a GM engineer approved a redesigned switch but did not change
      its part number — and in an engineering organization the part number is
      the very mechanism by which the system knows something changed. The fix
      propagated as neither a revision nor a recall; defective cars kept
      selling, and crashes with non-deploying airbags were investigated
      piecemeal over years, no one connecting them to a switch the records
      said had "never changed." The recall came only in 2014 — about 2.6
      million vehicles, with 124 deaths attributed through the compensation
      fund. What finally broke the silence was a wrongful-death lawsuit, in
      which a family's expert found the part had been quietly changed under
      the same number — the smoking gun GM's own records had been built to
      miss.#cn()
    ],
    // -- The Investigation --
    [
      GM's commissioned investigation by Anton Valukas (2014) found not a
      single villain but a culture that absorbed safety concerns until they
      dissipated — the "GM nod," in which a room agrees a thing should happen
      and then no one acts, and the "GM salute," arms crossed and each person
      pointing elsewhere — and a fundamental failure to use the escalation
      processes the company already had on the books.#cn() In 2015 GM paid a
      \$900 million federal forfeiture for concealing the defect; total
      penalties and settlements ultimately exceeded \$2.6 billion.#cn()
    ],
    // -- The Capability Gap --
    [
      What was designed out of GM was not a part but a pathway — the
      institutional route by which a known safety problem reaches the
      decision to recall. The fix existed for eight years; the path from fix
      to recall did not, so the knowledge sat inert. The mechanism is mundane
      and all the more instructive for it: the part-number convention was the
      company's own way of seeing what had changed, and quietly breaking it
      blinded the organization to its own action. Suppressing a signal need
      not be a conspiracy; here it was one engineer taking the path of least
      resistance through a process no one was assigned to guard.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Mary Barra, who became CEO as the recall broke, used the Valukas report
      to restructure GM's safety decision-making — a global-safety leadership
      role, consolidated escalation channels, and a "Speak Up for Safety"
      program to give concerns a route upward that did not depend on one
      person's persistence to survive. The case became a standard teaching
      example in governance and psychological safety: an organization can hold
      the fix for the better part of a decade and still fail to act if the
      channel that carries bad news upward has been allowed to fail quietly,
      with no one accountable for keeping it open.#cn()
    ],
  ),
  references: (
    [A. R. Valukas, _Report to the Board of Directors of General Motors Company Regarding Ignition Switch Recalls_ (Jenner & Block, 2014) — the 2002 identification of the defect and the switch-torque mechanism.],
    [U.S. NHTSA investigation of the GM ignition switch (2014) and the GM recall record — ~2.6 million vehicles; 124 deaths via the GM compensation fund.],
    [Valukas Report (2014) — the unchanged part number, the "GM nod" and "GM salute," and the failure to use established escalation processes (quoted).],
    [U.S. Department of Justice, deferred-prosecution agreement with General Motors (2015) — \$900 million forfeiture for concealing the defect; total penalties/settlements exceeding \$2.6 billion.],
    [Valukas Report (2014) and A. C. Edmondson, _The Fearless Organization_ (Wiley, 2018) — the part number as an organizational signal, and the suppression of upward safety information.],
    [U.S. NHTSA consent order with General Motors (2014, \$35M civil penalty) and the GM ignition-switch victims' compensation program (K. Feinberg, administrator) — the regulatory penalty and the basis for the 124-death figure.],
  ),
  quote: [There was a fundamental failure to use the formal escalation processes that GM had established.],
  quote-source: "Paraphrasing the Valukas Report to the GM Board of Directors, 2014",
  le-insight: [
    The GM ignition switch case is the canonical example of a corporate
    organizational structure that suppressed the upward flow of safety
    information by procedural design. The fix existed for eight years
    before the recall. The institutional path between the fix and the
    recall did not.
  ],
  lens-approach: [
    LENS uses GM in LEN 7 as a corporate-governance failure case, in
    LEN 8 to study Valukas-style retrospective institutional analysis,
    and in LEN 4 for the part-number-as-measurement-instrument story
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
    [A single engineer changed the switch without changing its part number, and no one was assigned to guard that convention. Identify a process in your organization whose integrity depends on an unenforced convention, and name who should own enforcing it.],
  ),
  approaches: (
    during: (
      [Treat the part number as a safety-critical signal: make changing a part without changing its number impossible by process, so the system cannot be blinded to its own revision.],
      [Specify the ignition switch's detent torque as a hold-position requirement and verify it, so a known under-torque defect cannot pass into production as a tolerable quirk.],
      [Build the route from "fix approved" to "recall decision" as an explicit deliverable, not a path that depends on one person choosing to escalate.],
    ),
    after: (
      [Correlate field crashes with non-deploying airbags as a population, so piecemeal incidents are connected to a common cause rather than investigated and closed one at a time.],
      [Run an escalation channel that carries bad news upward independent of any single person's persistence, with a named owner accountable for keeping it open.],
      [Audit whether approved fixes have actually propagated to a recall or revision, closing the gap in which a known defect keeps shipping under an unchanged record.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8", "LEN 6",),
)

#case(
  number: 54,
  title: "Mars Climate Orbiter — Unit Mismatch",
  year: "1999",
  domains-list: ("space",),
  modes-code: "DK",
  impact: "~$125M spacecraft lost on approach to Mars; ground software produced thrust output in pound-force while navigation expected newtons",
  diagram: dgm.dgm-flow(
    ("Lockheed\nlbf·s", "interface", "NASA\nN·s", "trajectory error", "burnup"),
    framing: "no owner of the interface specification",
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
    accumulated over the cruise. The orbiter arrived too low, into the
    atmosphere, and burned up; the orbiter and its ~\$125 million were lost to
    a unit mismatch. The investigation found no individual blunder — both
    contractors did their own work correctly. What failed was the interface
    between them, which had no owner, specification, or verification step. It
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
      trajectories had quietly diverged. When the orbiter reached Mars on 23
      September 1999 it arrived far too low, deep into the atmosphere it was
      built to study from orbit, and was destroyed. The orbiter, and its
      roughly \$125 million, were lost to a unit conversion no one made.#cn()
    ],
    // -- The Investigation --
    [
      The Mishap Investigation Board put the proximate cause exactly there —
      the failed English-to-metric translation in ground software — but was
      careful to name the deeper one rather than stop at the bug. No
      individual blundered; both contractors did their own work correctly
      within their own assumptions. What failed was the boundary between them:
      there was no specified, verified interface fixing the units and checking
      that both sides agreed, and no end-to-end validation of the data flowing
      across the seam. Navigators had even noticed odd trajectory behavior in
      cruise, but the concern was never run fully to ground before arrival,
      and the chance to catch it passed.#cn()
    ],
    // -- The Capability Gap --
    [
      The missing capability was ownership of the interface itself. Where a
      system is split across two organizations, the place they meet is not a
      documentation footnote but an engineering deliverable in its own right —
      with an owner, a specification, and a verification step. Here it had
      none of the three. Each team treated its own side as complete and the
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
      the Patriot's untraveled assumption (Case 19): two competent halves of a
      system, a boundary nobody owned or verified, and a small unspecified
      thing at that boundary that quietly destroyed the whole.#cn()
    ],
  ),
  references: (
    [NASA, _Mars Climate Orbiter Mishap Investigation Board: Phase I Report_ (Nov. 1999) — mission, the Lockheed/JPL split, and the program context.],
    [NASA MCO MIB Report (1999) — the pound-force-second vs newton-second mismatch (factor ~4.45), the accumulated navigation error, and atmospheric destruction on 23 Sept. 1999 (root-cause statement quoted).],
    [NASA MCO MIB Report (1999) — the missing verified interface specification, the absent end-to-end validation, and the unresolved cruise-trajectory anomalies.],
    [N. G. Leveson, _Engineering a Safer World_ (MIT Press, 2011) — interfaces as engineering deliverables requiring an owner and a verification step.],
    [B. Sauser et al. (2009), retrospective analysis of the Mars Climate Orbiter and the "faster, better, cheaper" trade space.],
  ),
  quote: [The root cause was the failed translation of English units to metric units in a segment of ground-based, navigation-related mission software.],
  quote-source: "Paraphrasing the NASA Mars Climate Orbiter Mishap Investigation Board, 1999",
  le-insight: [
    Mars Climate Orbiter is the textbook case for interface boundaries
    as engineering deliverables. The contractors did their work. The
    boundary between them did not have an owner. The capability that
    was missing was the interface-specification verification step.
  ],
  lens-approach: [
    LENS uses Mars Climate Orbiter in LEN 5 to teach interface-as-
    requirement and in LEN 8 to discuss cross-contractor capability
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
  kind: "failure",
  summary: [
    On 1 August 2012 Knight Capital, a major U.S. market maker, deployed new
    order-routing software to seven of its eight servers and missed the
    eighth. The new code reused a flag that, on the eighth server's old
    software, reactivated long-dead "Power Peg" test code never removed from
    the repository. At the opening bell it fired millions of unintended
    orders; in about 45 minutes Knight lost roughly \$440 million — more than
    the firm was worth — and was effectively acquired within months. The SEC
    found Knight had no procedure to verify the deployment across all servers
    and no controls to halt the runaway orders. The capability designed out
    was deployment verification; the dead code was technical debt that
    exercised its option at the worst possible moment.
  ],
  sections: (
    // -- Background --
    [
      Knight Capital was one of the largest market makers in U.S. equities,
      routing an enormous share of retail order flow through automated systems
      wired directly into the market. On 1 August 2012 the New York Stock
      Exchange was launching a new Retail Liquidity Program, and Knight had
      updated its order-routing software to participate in it from the opening
      bell. The update went out to production the way countless updates had
      gone before — a routine deployment, on an ordinary morning, handled as
      unremarkable.#cn()
    ],
    // -- What Happened --
    [
      A technician deployed the new code to seven of the eight routing
      servers and missed the eighth, leaving one node running stale software.
      The new code reused a configuration flag that, on the old software still
      on that eighth server, had once activated long-dormant "Power Peg" test
      code — retired years earlier but never removed from the repository. At
      the open the dead code woke and began firing millions of unintended
      orders into the market. In about forty-five minutes Knight amassed a
      vast unwanted position; losses passed \$170 million almost at once and
      reached about \$440 million — more than the firm itself was worth. It
      survived only on emergency capital and was effectively acquired within
      months.#cn()
    ],
    // -- The Investigation --
    [
      The Securities and Exchange Commission's 2013 order found Knight had no
      written procedure requiring a second technician to verify the deployment
      across all hosts, and no automated check that all eight servers were
      running the same code — nor controls able to recognize and halt the
      flood of erroneous orders once it began. Knight settled for a \$12
      million penalty.#cn() The dead Power Peg code was the proximate trigger
      and the reused flag the match that lit it; but the underlying cause was
      the absence of the verification and risk controls that should surround
      any change to a system wired directly into the live market.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability designed out was deployment verification — confirming,
      every time, that what runs in production is exactly what was intended,
      on every node, before it touches live money. The dead code was technical
      debt in its most literal form: a retired function left in the repository
      is a standing option on a future failure, and reusing its flag exercised
      that option at the worst possible moment. As at the Mars Climate
      Orbiter's interface, the boundary that mattered — between "deployed" and
      "verified as deployed everywhere" — had no owner and no automated check,
      and a large institution kept walking across it routinely until the day
      the floor gave way.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Knight became the canonical case in modern software-operations practice
      for why deployment is itself an engineering deliverable, not a clerical
      step: automated verification that every host runs the intended build,
      disciplined removal of dead code from the repository, pre-trade risk
      limits, and kill switches that can stop a runaway process in seconds.
      Regulators sharpened their attention to automated market-access controls
      in response. The lesson rhymes with the orbiter's across a forty-year,
      civilian-to-financial gap: a small, unowned boundary inside a large
      automated system is precisely where the institution is most exposed,
      and least watching.#cn()
    ],
  ),
  references: (
    [U.S. Securities and Exchange Commission, _Order Instituting Administrative and Cease-and-Desist Proceedings_, In re Knight Capital Americas LLC (2013) — the firm, the Retail Liquidity Program launch, and the deployment.],
    [SEC Order (2013) and Knight Capital 8-K filing (2012) — the missed eighth server, the reactivation of the dormant "Power Peg" code, the ~\$440 million loss in ~45 minutes, and the near-collapse.],
    [SEC Order (2013) — the absence of a second-technician deployment verification, the lack of an automated code-consistency check, inadequate order controls, and the \$12 million penalty (quoted).],
    [B. Beyer, C. Jones, J. Petoff & N. R. Murphy (eds.), _Site Reliability Engineering_ (O'Reilly, 2016) — deployment verification, dead-code removal, and automated safeguards as engineering deliverables.],
    [SEC Market Access Rule (Rule 15c3-5) and subsequent automated-controls guidance — the regulatory response on pre-trade risk and market-access controls.],
    [D. Seven, "Knightmare: A DevOps Cautionary Tale" — a widely cited engineering post-mortem on the deployment process, the orphaned eighth server, and the reused feature flag.],
  ),
  quote: [Knight did not have written procedures requiring a second technician to verify the deployment.],
  quote-source: "Paraphrasing the SEC Order against Knight Capital, 2013",
  le-insight: [
    Knight Capital is the financial-industry version of Mars Climate
    Orbiter (Case 54): a small, unspecified boundary inside a large
    system that took the institution down. The capability that was
    missing was deployment verification. The dead code was the
    proximate trigger; the absent procedure was the cause.
  ],
  lens-approach: [
    LENS uses Knight Capital in LEN 5 to teach deployment-as-capability
    and in LEN 9 for the technical-debt argument: every line of dead
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
    [A retired "Power Peg" function left in the repository became the trigger years later when its flag was reused. Identify dead code or a dormant feature flag in a system you run that is still an option on a future failure, and specify the policy that should have removed it.],
  ),
  approaches: (
    during: (
      [Remove retired code and dormant flags from the repository as a matter of discipline, since every dead function left behind is a standing option on a future failure.],
      [Never reuse a configuration flag whose old meaning still exists somewhere in the fleet; treat flag semantics as a versioned, owned interface.],
      [Design pre-trade risk limits and a kill switch into any system wired to the live market, so a runaway process can be stopped in seconds rather than minutes.],
    ),
    after: (
      [Require automated verification that every host runs the intended build before a change touches live money, with a second technician confirming the deployment across all nodes.],
      [Monitor for the runaway condition — an abnormal order rate — and halt automatically, rather than relying on humans to notice and intervene mid-flood.],
      [Audit deployments for the orphaned node: confirm no host is left on stale code, closing the gap between "deployed" and "verified as deployed everywhere."],
    ),
  ),
  courses: ("LEN 5", "LEN 9"),
)
