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
  body: [
    By the early 2000s, when NASA was working on the Constellation
    program, it had become apparent that the institutional capability
    to build a Saturn V rocket had been lost. Drawings existed.
    Documents existed. But the practical knowledge — the institutional
    memory of how the components were manufactured, tested, and
    assembled, and what choices had been made and why — had walked out
    with the workforce that had retired by the 1990s. The vehicle
    could be redesigned. It could not, by 2005, be reproduced.

    The case is canonical in U.S. aerospace for the difference between
    documentation and institutional capability. The Apollo program was
    documented to an unprecedented degree. The documentation was not
    the institutional knowledge. When the engineers who had built the
    system left, the system left with them.

    The Saturn V case is the strongest available evidence that
    institutional capability is not the same as the artifacts the
    institution produces. The lesson is general: capability lives in
    people and in the institutional practices that sustain them, not
    in the documents the institution leaves behind.
  ],
  quote: [The Saturn V drawings exist. The Saturn V does not.],
  quote-source: "NASA Constellation program review, 2005",
  sources-list: (
    [NASA Constellation Program documentation and reviews (2005–2010)],
    [Mark Wade, _Encyclopedia Astronautica_ archives],
    [Dunbar, _History of the Saturn V_ (NASA SP-4206)],
  ),
  le-insight: [
    The Saturn V case is the canonical evidence that institutional
    knowledge is not equivalent to documentation. The documents
    persist; the capability does not. Capability engineering must
    treat the people who hold tacit knowledge as a primary
    institutional asset.
  ],
  lens-approach: [
    LENS uses the Saturn V case in LEN 9 as the foundational
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
  courses: ("LEN 1", "LEN 9"),
)

#case(
  number: 79,
  title: "Boeing Starliner",
  year: "2019 – 2024",
  domains-list: ("aviation",),
  modes-code: "KD",
  impact: "Multiple delays; the 2024 crewed flight left two NASA astronauts at the ISS for months; contemporary case for capability erosion at a legacy contractor",
  diagram: dgm.dgm-cascade(
    ("software (2019)", "valves (2021)", "propulsion (2024)", "integration test"),
    outcome: "erosion visible across multiple engineering disciplines",
    caption: "Starliner — capability decay at a legacy contractor",
  ),
  body: [
    Boeing's Starliner spacecraft, intended as the second commercial
    crew vehicle alongside SpaceX's Crew Dragon, suffered software
    errors in its 2019 uncrewed test flight, valve corrosion
    requiring a 2021 launch scrub, and propulsion-system issues during
    its 2024 crewed test flight that left the two NASA astronauts
    aboard the International Space Station rather than returning on
    the contracted spacecraft. NASA returned the astronauts on
    SpaceX vehicles months later.

    The Government Accountability Office and multiple NASA internal
    reviews identified the Starliner program as exhibiting capability
    erosion across multiple engineering disciplines — software, valves,
    propulsion, integration testing — at a contractor whose human-
    spaceflight track record had previously been definitive in U.S.
    aerospace. The erosion appears to be partly generational (Apollo-
    and Shuttle-era engineers retired) and partly institutional (cost
    pressures, schedule-driven decisions, and the loss of NASA's
    in-house engineering depth to challenge the contractor).

    Starliner is the contemporary U.S. aerospace case for capability
    erosion at scale at a legacy contractor.
  ],
  quote: [Starliner has demonstrated significant readiness shortfalls across multiple engineering disciplines.],
  quote-source: "GAO Report on Commercial Crew Program, 2023",
  sources-list: (
    [GAO Commercial Crew Program reports (2018–2024)],
    [NASA Aerospace Safety Advisory Panel reports (2020–2024)],
    [Berger, _Liftoff: Elon Musk and the Desperate Early Days of SpaceX_ (2021) — comparison context],
  ),
  le-insight: [
    Starliner is the case for sustained capability erosion at a legacy
    contractor whose track record had previously been definitive. The
    erosion happened over decades and was visible in retrospect; the
    institutional architecture for catching it did not exist.
  ],
  lens-approach: [
    LENS uses Starliner in LEN 9 as a contemporary contractor-
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
  courses: ("LEN 5", "LEN 9"),
)

#case(
  number: 80,
  title: "Ariane 5 Flight 501",
  year: "1996",
  domains-list: ("aviation",),
  modes-code: "DKH",
  impact: "Maiden flight destroyed itself 37 seconds after launch; ~$500M payloads lost; reused Ariane 4 code never re-verified for Ariane 5",
  diagram: dgm.dgm-stat(
    "37s",
    "after launch · 16-bit integer overflow",
    micro: "code path disabled by the previous vehicle's profile; re-enabled by the new one",
    caption: "Ariane 5 — the fallacy of risk-free code reuse",
  ),
  body: [
    The inertial reference system software on Ariane 5 Flight 501
    inherited code from Ariane 4. On Ariane 4, a particular variable —
    a horizontal velocity value — never exceeded the range of a 16-bit
    signed integer. On Ariane 5, with its different flight trajectory,
    the value did. The integer overflow caused both redundant inertial
    reference systems to shut down almost simultaneously. The vehicle
    lost guidance, broke up under aerodynamic stress, and was
    destroyed by the range safety officer.

    The inquiry board found that the code path producing the overflow
    had been disabled by Ariane 4's mission profile but had not been
    removed when the software was reused for Ariane 5. The capability
    that was missing was the requirement that reused code be re-
    verified against the new vehicle's flight envelope. Software
    reuse was treated as risk-free; it was not.

    Ariane 5 is the foundational case in safety-critical software
    engineering for the hazards of code reuse without re-verification.
  ],
  quote: [The internal SRI software exception was caused during execution of a data conversion from 64-bit floating point to 16-bit signed integer value.],
  quote-source: "Ariane 5 Flight 501 Failure Inquiry Board, 1996",
  sources-list: (
    [Lions, J. L. (chair), _Ariane 5 Flight 501 Failure Inquiry Board Report_ (1996)],
    [Le Lann, G., "An Analysis of the Ariane 5 Flight 501 Failure" (1997)],
    [Leveson (1995), _Safeware_, on software reuse],
  ),
  le-insight: [
    Ariane 5 is the canonical software-engineering case for the
    fallacy of risk-free code reuse. Code is fit for its envelope of
    operation. Reusing it in a different envelope is a new design
    decision and must be re-verified as one. The institutional
    capability that was missing was the requirement to re-verify.
  ],
  lens-approach: [
    LENS uses Ariane 5 in LEN 5 for software-engineering capability
    deliverables and in LEN 9 for the institutional discipline that
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
  courses: ("LEN 5", "LEN 9"),
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
  body: [
    The Tacoma Narrows Bridge across Puget Sound collapsed on November
    7, 1940, in a wind no stronger than the bridge had been designed
    for. The failure mode — aeroelastic flutter — had not been
    recognized as a design hazard in long-span suspension bridges.
    The bridge's slender deck, chosen for aesthetic reasons over
    Ammann's earlier proposal of a deeper truss, was the proximate
    cause. The pier was sound. The cables were sound. The deck
    twisted itself apart in a wind no stronger than a stiff breeze.

    Tacoma Narrows is the canonical case in engineering pedagogy for
    a failure mode the discipline had not yet learned to recognize.
    The cost of the lesson — captured on film and shown to virtually
    every undergraduate civil engineer since — was a bridge. The
    payoff is that no comparable bridge has collapsed in the same
    mode since. The engineering discipline updated.

    The case is also a foundational example of the way disciplines
    learn from individual failures and incorporate the lesson into
    pedagogy permanently.
  ],
  quote: [The bridge was not designed against the failure mode that destroyed it because that failure mode was not yet known to the discipline.],
  quote-source: "Paraphrasing Petroski, To Engineer Is Human, 1985",
  sources-list: (
    [Ammann, von Kármán & Woodruff, _The Failure of the Tacoma Narrows Bridge_ (1941)],
    [Petroski (1985), _To Engineer Is Human_],
    [Billah & Scanlan (1991), aeroelastic-flutter analysis],
  ),
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
    for discipline-level learning, in LEN 9 as the canonical case for
    successful institutional knowledge absorption, and in studio
    (LEN 3) as a worked example of what discipline-level reform
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
  courses: ("LEN 1", "LEN 9"),
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
  body: [
    A well at SoCalGas's Aliso Canyon underground storage facility
    ruptured in October 2015 and could not be capped for nearly four
    months. Approximately one hundred thousand tons of methane were
    released into the atmosphere — roughly equivalent to the annual
    greenhouse emissions of half a million cars. Eight thousand
    households were evacuated from Porter Ranch.

    The Blade Energy investigation identified corrosion in the well's
    casing, missing safety equipment that had been installed and then
    removed in the 1970s, and an institutional pattern of deferring
    integrity checks on the older wells in the field. SoCalGas had
    been aware that the field's wells were aging and that their
    integrity was uncertain. The regulator had been aware. The
    inspection regime had not been engineered to catch the failure
    mode that occurred.

    Aliso Canyon is the foundational U.S. case in underground gas
    storage for the gap between regulatory practice and the actual
    engineering condition of legacy infrastructure.
  ],
  quote: [The leak resulted from external corrosion of the well casing — a known and inspectable failure mode that the operator did not adequately inspect.],
  quote-source: "Paraphrasing Blade Energy Partners, Aliso Canyon Root Cause Analysis, 2019",
  sources-list: (
    [Blade Energy Partners, _Aliso Canyon Root Cause Analysis_ (2019)],
    [California Public Utilities Commission orders on Aliso Canyon],
    [Conley et al., _Science_ (2016), atmospheric measurement of the leak],
  ),
  le-insight: [
    Aliso Canyon is the case for legacy infrastructure aging past the
    inspection regime designed for it. The wells were older than the
    inspection regulations. The operator knew. The regulator knew.
    The capability deliverable to update the inspection regime did
    not exist.
  ],
  lens-approach: [
    LENS uses Aliso Canyon in LEN 7 for regulatory-architecture
    capability and in LEN 9 for the institutional pattern of legacy
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
  courses: ("LEN 7", "LEN 9"),
)
