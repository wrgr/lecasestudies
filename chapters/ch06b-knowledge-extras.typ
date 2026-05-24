// ============================================================
// Chapter 6 — Knowledge Lost (extras)
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 78,
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
      drawings, specifications, and test records.#cn()
    ],
    // -- What Happened --
    [
      Yet by the early 2000s, as NASA worked the Constellation program, it
      had become apparent that the institutional capability to build a Saturn
      V had been lost. The drawings existed; the practical knowledge of how
      the components were manufactured, tested, and assembled — and why
      particular choices had been made — had walked out with the workforce
      that retired by the 1990s. The vehicle could be redesigned. It could
      not be reproduced.#cn()
    ],
    // -- The Investigation --
    [
      The case is canonical for the difference between documentation and
      institutional capability. Apollo's documentation was unprecedented, but
      it captured the *what*, not the tacit *how* — the judgment, the
      workarounds, the undocumented reasons — that lived in the people who
      did the work. When they left, that knowledge was in no archive to
      recover.#cn()
    ],
    // -- The Capability Gap --
    [
      Saturn V is the strongest available evidence that institutional
      capability is not the same as the artifacts an institution produces.
      Capability lives in people and in the practices that sustain them; a
      library of drawings is a necessary record but not a transferable
      ability. An institution that treats documentation as preservation of
      capability is, quietly, letting the capability expire.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The lesson reshaped how serious programs think about knowledge
      retention — apprenticeship, continuity of teams, deliberate capture of
      tacit reasoning, and not letting a critical capability rest in a
      handful of soon-to-retire heads.#cn() It pairs with the chapter's other
      memory cases: knowledge, unlike a document, has to be actively kept
      alive, or it is gone in a generation.
    ],
  ),
  references: (
    [NASA Constellation Program documentation and reviews (2005–2010) — the difficulty of reproducing Saturn V capability.],
    [R. Dunbar / NASA, _History of the Saturn V_ (NASA SP-4206) — the program and its workforce.],
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
    LENS uses the Saturn V case in LEN 8 as the foundational
    organizational-memory case and in LEN 1 to teach the distinction
    between recorded knowledge and institutional capability.
  ],
  literature-items: (
    [Polanyi (1966), _The Tacit Dimension_],
    [Brown & Duguid (2000), _The Social Life of Information_],
    [Nonaka & Takeuchi (1995), _The Knowledge-Creating Company_],
  ),
  reflection-list: (
    [Identify a capability in your domain that is currently held in the tacit knowledge of a small number of senior practitioners. What is your institution's capacity to reproduce it after they retire?],
    [Design the institutional practice that would preserve a capability against the retirement of its holders.],
  ),
  courses: ("LEN 1", "LEN 8"),
)

#case(
  number: 79,
  title: "Boeing Starliner",
  year: "2019 – 2024",
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
      once been definitive in American aerospace.#cn()
    ],
    // -- What Happened --
    [
      Instead Starliner stumbled across a decade: software errors marred its
      2019 uncrewed test flight, valve corrosion scrubbed a 2021 launch, and
      propulsion-system problems on the 2024 crewed test flight left the two
      NASA astronauts aboard the ISS rather than returning on the contracted
      spacecraft — NASA brought them home on a SpaceX vehicle months
      later.#cn()
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
      contractor.#cn()
    ],
    // -- The Capability Gap --
    [
      Starliner is the contemporary case for capability erosion at scale at a
      legacy contractor. The decline happened over decades and was visible
      only in retrospect, because the institutional architecture for catching
      a supplier's slow capability decay — and updating the buyer's
      confidence to match — did not exist. Reputation outran reality, and no
      instrument was measuring the gap.#cn()
    ],
    // -- Aftermath & Reform --
    [
      NASA leaned harder on independent reviews and on SpaceX as the reliable
      alternative, and the episode sharpened questions about how to
      sustain — and verify — capability at sole-source and legacy
      suppliers.#cn() It pairs with Saturn V (Case 78): where that case lost
      a capability to retirement, Starliner shows the same erosion in slow
      motion at a living institution still carrying the brand of the
      capability it had let thin.
    ],
  ),
  references: (
    [U.S. GAO, Commercial Crew Program reports (2018–2024) — "significant readiness shortfalls across multiple engineering disciplines" (quoted).],
    [The Starliner test history — 2019 software errors, 2021 valve scrub, and the 2024 crewed flight and ISS stay.],
    [GAO (2023) — capability erosion across software, valves, propulsion, and integration testing.],
    [NASA Aerospace Safety Advisory Panel reports (2020–2024) — the institutional and generational factors.],
    [The 2024–2025 return of the Starliner crew aboard a SpaceX vehicle.],
    [Cf. Saturn V (Case 78); N. Augustine, _Augustine's Laws_ (1986).],
  ),
  quote: [Starliner has demonstrated significant readiness shortfalls across multiple engineering disciplines.],
  quote-source: "GAO Report on Commercial Crew Program, 2023",
  le-insight: [
    Starliner is the case for sustained capability erosion at a legacy
    contractor whose track record had previously been definitive. The
    erosion happened over decades and was visible in retrospect; the
    institutional architecture for catching it did not exist.
  ],
  lens-approach: [
    LENS uses Starliner in LEN 8 as a contemporary contractor-
    capability erosion case and in LEN 5 for the contractor-NASA
    interface capability that has thinned over decades.
  ],
  literature-items: (
    [GAO Commercial Crew reports (2018–2024)],
    [NASA Aerospace Safety Advisory Panel reports],
    [Augustine, _Augustine's Laws_ (1986)],
  ),
  reflection-list: (
    [Identify a legacy supplier in your domain whose capability track record may have eroded faster than your institutional confidence in them has updated. What is the signal?],
    [Design the contractor-capability review that would have caught the Starliner gaps before the 2024 crewed flight.],
  ),
  courses: ("LEN 5", "LEN 8", "LEN 6",),
)

#case(
  number: 80,
  title: "Ariane 5 Flight 501",
  year: "1996",
  domains-list: ("space",),
  modes-code: "DKH",
  impact: "Maiden flight destroyed itself 37 seconds after launch; ~$500M payloads lost; reused Ariane 4 code never re-verified for Ariane 5",
  diagram: dgm.dgm-stat(
    "37s",
    "after launch · 16-bit integer overflow",
    micro: "code path disabled by the previous vehicle's profile; re-enabled by the new one",
    caption: "Ariane 5 — the fallacy of risk-free code reuse",
  ),
  kind: "failure",
  summary: [
    On its 1996 maiden flight, the Ariane 5 rocket destroyed itself 37
    seconds after launch, losing around half a billion dollars in payloads.
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
    ],
    // -- What Happened --
    [
      On 4 June 1996, Ariane 5 Flight 501 — its maiden flight — veered off
      course and broke up under aerodynamic stress 37 seconds after launch;
      the range-safety system destroyed it, and roughly half a billion
      dollars of payloads were lost.#cn()
    ],
    // -- The Investigation --
    [
      The inquiry board traced the cause to the reused code. A
      horizontal-velocity value that never exceeded a 16-bit signed integer
      on Ariane 4's trajectory did exceed it on Ariane 5's faster one; the
      resulting overflow shut down both redundant inertial reference systems
      almost simultaneously, and the vehicle lost guidance.#cn() The
      offending code path had become irrelevant to Ariane 5's flight after
      liftoff, yet had neither been removed nor re-verified against the new
      vehicle's envelope — reuse had been treated as risk-free.#cn()
    ],
    // -- The Capability Gap --
    [
      Ariane 5 is the canonical software-engineering case for the fallacy of
      risk-free reuse. Code is fit for the envelope it was written and
      verified against; reusing it in a different envelope is a new design
      decision and must be re-verified as one. The institutional capability
      that was missing was the requirement that reused safety-critical code
      be re-verified, not merely trusted because it had worked before.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The fix and the lesson reshaped safety-critical software practice:
      reuse became a verification event, with explicit checking of every
      inherited assumption against the new system's operating
      conditions.#cn() The case rhymes with the Patriot (Case 19) and the
      Mars Climate Orbiter (Case 54) — small, unexamined assumptions
      inherited across a boundary, fatal when the boundary's conditions
      changed.
    ],
  ),
  references: (
    [J. L. Lions (chair), _Ariane 5 Flight 501 Failure Inquiry Board Report_ (1996) — the data-conversion overflow (quoted).],
    [Lions Report (1996) — the 37-second breakup and the lost payloads.],
    [Lions Report (1996) — the 64-bit-to-16-bit conversion overflow and the simultaneous shutdown of both inertial reference systems.],
    [Lions Report (1996) — the reused code path neither removed nor re-verified for Ariane 5's envelope.],
    [N. Leveson, _Safeware_ (1995) — software-reuse hazards; G. Le Lann, "An Analysis of the Ariane 5 Flight 501 Failure" (1997).],
    [Cf. Patriot (Case 19) and Mars Climate Orbiter (Case 54).],
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
  ),
  courses: ("LEN 5", "LEN 8"),
)

#case(
  number: 81,
  title: "Tacoma Narrows Bridge",
  year: "1940",
  domains-list: ("industrial",),
  modes-code: "DK",
  impact: "Bridge collapsed in ~40 mph wind four months after opening; foundational case in aeroelasticity and structural-engineering pedagogy",
  diagram: dgm.dgm-stat(
    "4 mo.",
    "from opening to collapse",
    micro: "aeroelastic flutter — a failure mode the discipline had not yet learned to recognize",
    caption: "Tacoma Narrows — a discipline-level learning event",
  ),
  kind: "failure",
  summary: [
    The Tacoma Narrows Bridge over Puget Sound twisted itself apart on 7
    November 1940, four months after opening, in a wind no stronger than a
    stiff breeze and well within its design speed. The piers and cables were
    sound; the failure mode was aeroelastic flutter — a wind-driven
    oscillation that the bridge's slender, shallow deck (chosen for elegance
    and economy over a deeper, stiffer truss) was prone to, and that the
    discipline had not yet learned to recognize in long-span suspension
    bridges. No one died, and the collapse was captured on film shown to
    nearly every civil-engineering student since. The cost of the lesson was
    a bridge; the payoff is that no comparable bridge has failed the same
    way. Tacoma Narrows is the book's clearest example of an entire
    discipline learning permanently from one failure.
  ],
  sections: (
    // -- Background --
    [
      The Tacoma Narrows Bridge, opened in July 1940 across Puget Sound, used
      a slender, shallow deck chosen for elegance and economy over an earlier
      proposal for a deeper, stiffer stiffening truss. It was sound by the
      design knowledge of its day.#cn()
    ],
    // -- What Happened --
    [
      On 7 November 1940, in a wind of only about 40 mph — well within what
      the bridge was designed for — the deck began to twist in growing
      oscillations until it tore itself apart and fell into the sound. The
      piers held and the cables held; the deck destroyed itself.#cn()
    ],
    // -- The Investigation --
    [
      The failure mode was aeroelastic flutter — a wind-driven,
      self-amplifying oscillation — that had not been recognized as a design
      hazard for long-span suspension bridges. The bridge had not been
      designed against the thing that destroyed it because that thing was not
      yet known to the discipline.#cn()
    ],
    // -- The Capability Gap --
    [
      Tacoma Narrows is the canonical case of a failure that was not the
      engineer's fault but the discipline's not-yet-knowing. The missing
      capability lived above any individual: a body of knowledge that did not
      yet include flutter. It is the rarer, more hopeful kind of capability
      gap — the one a profession can close by learning, rather than one a
      single institution failed to manage.#cn()
    ],
    // -- Aftermath & Reform --
    [
      And the profession did learn: wind-tunnel testing of deck sections
      became standard, aeroelasticity entered the curriculum, and the
      collapse film became a permanent teaching artifact. No comparable
      bridge has failed in the same mode since.#cn() The case is the book's
      strongest evidence that discipline-level learning across an entire
      profession is possible — and, set against the recurrence in
      Challenger/Columbia (Case 6), a reminder of how rare it is to absorb a
      lesson that completely.
    ],
  ),
  references: (
    [O. Ammann, T. von Kármán & G. Woodruff, _The Failure of the Tacoma Narrows Bridge_ (1941) — the failure inquiry.],
    [The 7 Nov. 1940 collapse in a ~40 mph wind and the slender-deck design choice.],
    [K. Y. Billah & R. Scanlan, "Resonance, Tacoma Narrows Bridge Failure, and Undergraduate Physics Textbooks," _American Journal of Physics_ (1991) — the aeroelastic-flutter analysis.],
    [H. Petroski, _To Engineer Is Human_ (1985) — failure and disciplinary learning (quoted).],
    [The incorporation of wind-tunnel testing and aeroelasticity into structural-engineering practice; cf. Argyris & Schön on discipline-level learning.],
  ),
  quote: [The bridge was not designed against the failure mode that destroyed it because that failure mode was not yet known to the discipline.],
  quote-source: "Paraphrasing Petroski, To Engineer Is Human, 1985",
  le-insight: [
    Tacoma Narrows is the canonical case for a discipline-level
    learning event. The failure was not the engineer's fault; it was
    the discipline's not yet knowing. The discipline absorbed the
    lesson permanently. The case is the strongest available evidence
    that institutional learning across an entire profession is
    possible — and rare.
  ],
  lens-approach: [
    LENS uses Tacoma Narrows in LEN 1 as a problem-framing exemplar
    for discipline-level learning, in LEN 8 as the canonical case for
    successful institutional knowledge absorption, and in studio
    (LEN 10) as a worked example of what discipline-level reform
    requires.
  ],
  literature-items: (
    [Petroski (1985), _To Engineer Is Human_],
    [Ammann et al. (1941), failure inquiry report],
    [Argyris & Schön (1996), _Organizational Learning II_],
  ),
  reflection-list: (
    [Identify a failure mode in your discipline that the field has not yet learned to recognize. What would be the equivalent Tacoma Narrows event?],
    [What institutional architecture absorbed the Tacoma Narrows lesson into the structural-engineering curriculum so durably? Describe its equivalent in your discipline.],
  ),
  courses: ("LEN 1", "LEN 8"),
)

#case(
  number: 82,
  title: "Aliso Canyon Methane Leak",
  year: "2015 – 2016",
  domains-list: ("energy",),
  modes-code: "GNK",
  impact: "Largest methane leak in U.S. history; ~8,000 households evacuated; ~100,000 tons of methane released",
  diagram: dgm.dgm-stat(
    "100K t",
    "methane released over ~4 months",
    micro: "legacy wells aging past the inspection regime designed for them",
    caption: "Aliso Canyon — infrastructure outpacing its oversight",
  ),
  kind: "failure",
  summary: [
    In October 2015 a well at SoCalGas's Aliso Canyon underground gas-storage
    field ruptured and could not be capped for nearly four months, releasing
    roughly 100,000 tons of methane — the largest such leak in U.S. history,
    equivalent to the annual emissions of half a million cars — and forcing
    the evacuation of about 8,000 households in Porter Ranch. The root-cause
    analysis found external corrosion of the well casing, a subsurface safety
    valve removed in the 1970s and never replaced, and a pattern of deferring
    integrity checks on the field's aging wells. The operator knew the wells
    were old and their integrity uncertain; so did the regulator; the
    inspection regime had not been engineered to catch the failure mode that
    occurred. Aliso Canyon is the book's case for legacy infrastructure aging
    past its oversight.
  ],
  sections: (
    // -- Background --
    [
      SoCalGas's Aliso Canyon facility stores natural gas underground in
      depleted oil wells, some dating to the 1950s. Over decades the field's
      wells aged while the regime for inspecting them did not keep pace — and
      a subsurface safety valve on the well that would fail had been removed
      in the 1970s and never replaced.#cn()
    ],
    // -- What Happened --
    [
      In October 2015 well SS-25 ruptured and could not be capped for nearly
      four months. About 100,000 tons of methane vented to the atmosphere —
      the largest such leak in U.S. history, roughly the annual greenhouse
      emissions of half a million cars — and some 8,000 households were
      evacuated from the Porter Ranch neighborhood.#cn()
    ],
    // -- The Investigation --
    [
      The Blade Energy root-cause analysis identified external corrosion of
      the well casing as the failure — a known, inspectable mode the operator
      had not adequately inspected.#cn() It also found missing safety
      equipment and an institutional pattern of deferring integrity checks on
      the older wells; SoCalGas knew the field's wells were aging and their
      integrity uncertain, and so did the regulator.#cn()
    ],
    // -- The Capability Gap --
    [
      Aliso Canyon is the case for legacy infrastructure aging past the
      inspection regime designed for it. The wells were older than the
      regulations governing them; the operator knew, the regulator knew, and
      the capability deliverable to update the inspection regime to the
      assets' actual engineering condition did not exist. Knowledge of the
      risk was present everywhere except in the rules that would have acted
      on it.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The leak prompted tighter California rules for underground gas
      storage — required inspections, pressure limits, and risk-management
      plans — and a long fight over the field's future. The lesson pairs with
      the chapter's other memory failures: an institution can hold the
      knowledge that an asset is past its safe life and still not act, until
      the rules that translate knowledge into inspection are themselves
      rebuilt.
    ],
  ),
  references: (
    [Blade Energy Partners, _Aliso Canyon Root Cause Analysis_ (2019) — external corrosion of the well casing (quoted).],
    [The leak record — ~100,000 tons of methane; ~8,000 households evacuated; the largest U.S. methane leak.],
    [Blade Energy (2019) — the removed subsurface safety valve and the deferred integrity checks on aging wells.],
    [S. Conley et al., "Methane emissions from the 2015 Aliso Canyon blowout," _Science_ (2016) — atmospheric measurement of the leak.],
    [California Public Utilities Commission / CalGEM orders on underground gas storage after Aliso Canyon.],
  ),
  quote: [The leak resulted from external corrosion of the well casing — a known and inspectable failure mode that the operator did not adequately inspect.],
  quote-source: "Paraphrasing Blade Energy Partners, Aliso Canyon Root Cause Analysis, 2019",
  le-insight: [
    Aliso Canyon is the case for legacy infrastructure aging past the
    inspection regime designed for it. The wells were older than the
    inspection regulations. The operator knew. The regulator knew.
    The capability deliverable to update the inspection regime did
    not exist.
  ],
  lens-approach: [
    LENS uses Aliso Canyon in LEN 7 for regulatory-architecture
    capability and in LEN 8 for the institutional pattern of legacy
    assets aging past the regime governing them.
  ],
  literature-items: (
    [Blade Energy Partners Report (2019)],
    [Conley et al. (2016), Science],
    [California PUC orders on Aliso Canyon],
  ),
  reflection-list: (
    [Identify legacy infrastructure in your domain whose age exceeds the inspection regime designed for it. What is the capability deliverable to update the regime?],
    [Design the regulator's deliverable that would force re-inspection of legacy infrastructure as the inspection regime is updated.],
  ),
  courses: ("LEN 7", "LEN 8"),
)
