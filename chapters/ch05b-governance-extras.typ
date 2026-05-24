// ============================================================
// Chapter 5 — Governance Failures (extras)
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 68,
  title: "UK Post Office Horizon Scandal",
  year: "1999 – 2015",
  domains-list: ("tech", "gov"),
  modes-code: "GHK",
  impact: "~900 sub-postmasters wrongfully prosecuted; many imprisoned; documented suicides; described as the most widespread miscarriage of justice in UK history",
  diagram: dgm.dgm-stat(
    "900",
    "wrongful prosecutions across 20+ years",
    micro: "\"the computer said so\" was an institutionally sufficient basis for conviction",
    caption: "Horizon — institutional deference to an algorithm known to be flawed",
  ),
  kind: "failure",
  summary: [
    The UK Post Office's Horizon accounting system, built by Fujitsu and
    rolled out in 1999, generated phantom shortfalls in sub-postmasters'
    branch ledgers. Rather than accept the software was at fault, the Post
    Office prosecuted them — around 900 over two decades — for theft and
    false accounting; people were imprisoned, bankrupted, and driven to
    suicide, in what is now called the most widespread miscarriage of
    justice in UK history. Internal documents showed engineers had known
    about Horizon bugs throughout. Convictions began to be quashed in 2021,
    and a public inquiry continues. The failure ran through the prosecutor
    and the courts: each accepted "the computer said so" as authoritative
    because no actor had the standing or expertise to challenge it. Horizon
    is the book's case for institutional deference to a flawed algorithm.
  ],
  sections: (
    // -- Background --
    [
      The UK Post Office ran thousands of branches through sub-postmasters —
      local operators personally liable for any shortfall in their accounts,
      a liability that put each operator's livelihood behind the numbers the
      system reported. In 1999 it deployed Horizon, an accounting system built
      by Fujitsu, to track every branch's ledger, making the software the
      single authority on whether a branch's books balanced.#cn()
    ],
    // -- What Happened --
    [
      Horizon produced systematic accounting errors — phantom shortfalls that
      appeared in branch ledgers where no money was actually missing. The Post
      Office treated the shortfalls as real and the sub-postmasters as thieves:
      over two decades it prosecuted around 900 for theft and false
      accounting, refusing to accept the system itself was at fault even as
      the same pattern recurred branch after branch. People were imprisoned,
      lost homes, went bankrupt, and some died by suicide — the human cost of
      trusting the ledger over the person.#cn()
    ],
    // -- The Investigation --
    [
      Documents later released through litigation showed Fujitsu and Post
      Office engineers had known about Horizon bugs throughout the period —
      the knowledge of fallibility existed inside the institution even as it
      prosecuted people for the system's errors.#cn() The courts began
      quashing convictions in 2021, and the public inquiry under Sir Wyn
      Williams found that senior employees "knew, or at the very least should
      have known, that Legacy Horizon was capable of error" — establishing it
      as the most widespread miscarriage of justice in UK history, sustained
      precisely because that internal knowledge never reached the people on
      trial.#cn()
    ],
    // -- The Capability Gap --
    [
      The gap was at the regulator, the prosecutor, and the courts: each
      accepted Fujitsu's representation that Horizon was reliable, despite
      documentation to the contrary, because no institutional actor had the
      standing or expertise to interrogate it, so the claim of reliability
      passed unchallenged through every layer that could have tested it. "The
      computer said so" became, for two decades, a sufficient basis for
      criminal conviction — the governance hazard of treating automated output
      as authoritative rather than as evidence to be challenged, with a
      person's account on the other side of the scale.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Convictions have been overturned — some by an exceptional act of
      Parliament, a measure of how far the ordinary appeal routes had failed —
      compensation schemes established, and Fujitsu and the Post Office called
      to account before the continuing inquiry.#cn() Horizon's lesson is the
      chapter's in its bluntest form: an automated system's output is not
      testimony, and any institution that lets "the computer said so" stand
      unchallenged against a human's account has built a machine for
      manufacturing injustice, one that runs for as long as no one is
      empowered to switch it off.
    ],
  ),
  references: (
    [Post Office Horizon IT Inquiry hearings and exhibits (2020– ) — the system, the prosecutions, and the human toll.],
    [_Hamilton & Others v. Post Office Limited_ (Court of Appeal, 2021) — quashed convictions.],
    [Internal Fujitsu and Post Office documents released through litigation — engineers' knowledge of Horizon bugs.],
    [Sir Wyn Williams, _Post Office Horizon IT Inquiry_, Volume 1 (July 2025) — senior employees "knew… that Legacy Horizon was capable of error" (quoted).],
    [N. Wallis, _The Great Post Office Scandal_ (2021).],
    [The Post Office (Horizon System) Offences Act 2024 (mass exoneration) and the compensation schemes.],
  ),
  quote: [A number of senior, and not so senior, employees of the Post Office knew, or at the very least should have known, that Legacy Horizon was capable of error.],
  quote-source: "Sir Wyn Williams, Post Office Horizon IT Inquiry, Volume 1, July 2025",
  le-insight: [
    Horizon is the canonical case for institutional deference to
    automated systems whose internal evidence was already known to be
    flawed. The capability gap was at every layer that took the
    software's output as authoritative — including the courts.
    "The computer said so" became, for two decades, an
    institutionally sufficient basis for criminal prosecution.
  ],
  lens-approach: [
    LENS uses Horizon in LEN 7 as the canonical example of
    institutional deference to algorithmic output and in LEN 2 for the
    most extensive multi-decade automation-bias case in the dataset.
    Studio projects examine what evidentiary architecture would
    require *interrogating* automated output before acting on it.
  ],
  literature-items: (
    [Wallis (2021), _The Great Post Office Scandal_],
    [Post Office Horizon IT Inquiry hearings],
    [Cummings (2017), automation bias literature],
  ),
  reflection-list: (
    [Identify a decision in your domain currently made on the strength of "the computer said so." What evidentiary architecture should sit beside the output?],
    [Design the institutional check that would have made Horizon's reliability subject to genuine challenge in 2005.],
    [Engineers inside the Post Office and Fujitsu knew Horizon was capable of error, yet that knowledge never reached the courtroom. What pathway in your domain carries — or fails to carry — known system fallibility to the people relying on the output?],
  ),
  approaches: (
    during: (
      [Design automated output to be treated as challengeable evidence, not authoritative testimony, especially where a person's liability rides on it.],
      [Build a route by which engineers' knowledge of system bugs reaches anyone acting on the output, so internal fallibility cannot stay hidden.],
      [Give some institutional actor the standing and expertise to interrogate the system's reliability before its output is used against a person.],
    ),
    after: (
      [Audit the recurring-error pattern across branches or cases, treating the same fault appearing repeatedly as evidence of the system, not the operators.],
      [Maintain an appeal path that can challenge automated output without requiring an act of Parliament to overturn a wrong decision.],
      [Sustain independent review of the system's accuracy throughout its operating life, so a claim of reliability cannot pass unexamined for decades.],
    ),
  ),
  courses: ("LEN 7", "LEN 2"),
)

#case(
  number: 69,
  title: "Theranos",
  year: "2003 – 2018",
  domains-list: ("healthcare", "tech"),
  modes-code: "GD",
  impact: "$9B valuation collapsed; thousands of patients given unreliable results; founder convicted on multiple counts of wire fraud",
  diagram: dgm.dgm-compare(
    "claim",
    "Edison",
    "reality",
    "Siemens",
    framing: "the device did not work; the regulatory seam between FDA and CLIA hid that fact",
    caption: "Theranos — fraud exploiting a regulatory seam between FDA and CLIA",
  ),
  kind: "failure",
  summary: [
    Theranos claimed a blood-testing device that could run hundreds of tests
    from a finger-stick drop. It did not work. Internal data showed accuracy
    far below what the company told investors, partners, and patients; to
    keep up appearances, Theranos ran most patient samples on conventional
    commercial analyzers and reported them as its own device's results. It
    reached a \$9-billion valuation and put unreliable tests in front of real
    patients through a Walgreens partnership. The fraud exploited a
    regulatory seam — the FDA had not validated the device, while the CLIA
    regime governing the lab did not match the company's product claims — and
    neither the board nor investors had the depth to challenge it; a
    journalist did. Elizabeth Holmes was convicted of wire fraud in 2022.
    Theranos is the book's case for fraud exploiting a governance gap between
    regulatory regimes.
  ],
  sections: (
    // -- Background --
    [
      Theranos claimed to have built a blood-testing platform — the "Edison"
      — that could perform hundreds of laboratory tests from a single
      finger-stick drop of blood, a promise that would have upended a
      diagnostics industry built on venous draws and large analyzers. It rode
      that claim to a \$9-billion valuation and a partnership putting its
      tests in Walgreens stores, carrying the unproven device straight to
      retail patients.#cn()
    ],
    // -- What Happened --
    [
      The device did not work. Internal data showed accuracy far below what
      the company represented to investors, partners, and patients — the gap
      between the claim and the instrument was known inside the company. To
      preserve the appearance of a working product, Theranos ran most patient
      samples on conventional commercial analyzers and reported the results
      as though they had come from its proprietary device, a substitution that
      kept the fiction alive while putting unreliable results in front of real
      patients making real medical decisions.#cn()
    ],
    // -- The Investigation --
    [
      The fraud exploited a regulatory seam: the FDA had not validated the
      device, while the CLIA regime that governs laboratory operation did not
      match the architecture of the company's product claims, and neither
      layer validated those claims independently — so the device fell into a
      gap each regulator assumed the other covered. The board, the investors,
      and Walgreens lacked the technical depth to challenge them, and a
      celebrity board offered prestige in place of scrutiny; the journalist
      John Carreyrou, and CMS inspectors who revoked Theranos's CLIA
      certificate in 2016, were what finally surfaced the truth from outside
      the failed oversight chain.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability gap sat in the regulatory architecture — at the boundary
      between two regimes, where a deliberate fraud could live because
      neither the FDA nor CLIA owned end-to-end validation of a novel
      diagnostic making clinical claims, and an unowned boundary is exactly
      the shelter a fraud needs. The governance lesson is that the seam
      between regulators is itself a place that must be engineered, because it
      is exactly where a bad actor will operate — choosing the gap precisely
      because no one is watching it.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Theranos collapsed, its CLIA certificate was revoked, and Elizabeth
      Holmes was convicted of multiple counts of wire fraud in 2022, the
      conviction closing a chapter the regulators had been slow to open.#cn()
      The case is canonical in business education for fraud-as-product-strategy
      and in health regulation for the gap that let unvalidated clinical
      tests reach patients — a reminder that "disruptive" claims in a
      regulated domain demand more validation, not less, precisely because the
      novelty is what tempts the oversight regimes to defer to one another.
    ],
  ),
  references: (
    [_United States v. Elizabeth Holmes_ (N.D. Cal., 2018–2022) — the indictment and conviction.],
    [J. Carreyrou, _Bad Blood_ (2018) — the device's failure and the commercial-analyzer substitution.],
    [CMS inspection reports and the revocation of Theranos's CLIA certificate (2015–2016).],
    [Holmes indictment (2018) — Theranos "misrepresented to investors, regulators, and ultimately patients the accuracy of its blood-testing technology" (quoted).],
    [Medical-device regulation literature on the FDA–CLIA boundary.],
  ),
  quote: [The company misrepresented to investors, regulators, and ultimately patients the accuracy of its blood-testing technology.],
  quote-source: "U.S. v. Holmes, indictment, 2018",
  le-insight: [
    Theranos is the canonical case for fraud exploiting the seam
    between two regulatory regimes. The FDA had not approved the
    device; CLIA accepted the laboratory operation. Neither layer had
    the capability to validate the claims independently. The
    capability gap was at the regulatory architecture.
  ],
  lens-approach: [
    LENS uses Theranos in LEN 7 for the regulatory-seam failure and
    in LEN 4 for the measurement-validation gap. The case demonstrates
    that capability engineering at the boundary between regulatory
    regimes is itself a governance deliverable.
  ],
  literature-items: (
    [Carreyrou (2018), _Bad Blood_],
    [Theranos Inc. CMS inspection reports (2015–2016)],
    [Faulkner, _Medical Device Regulation_ (2019)],
  ),
  reflection-list: (
    [Identify a regulatory seam in your domain where two regimes meet without an explicit handoff. What could exploit it?],
    [Design the validation regime that would have caught Theranos in 2013.],
    [Theranos's board and investors had prestige but not the technical depth to challenge the device's claims. Where in your domain does reputational authority stand in for the expertise needed to validate what is being approved?],
  ),
  approaches: (
    during: (
      [Assign explicit end-to-end validation ownership across the FDA–CLIA-style seam, so a novel diagnostic cannot fall into a gap each regulator assumes the other covers.],
      [Require independent verification of accuracy claims against the actual device before clinical use, not against a substituted commercial analyzer.],
      [Staff the oversight chain — board, partners, regulators — with the technical depth to interrogate the claims, treating prestige as no substitute for expertise.],
    ),
    after: (
      [Audit whether reported results actually came from the validated instrument, watching for the substitution pattern that hides a non-working device.],
      [Monitor the regulatory seam as a standing risk, since a determined fraud will choose precisely the boundary no single regime owns.],
      [Protect external scrutiny — journalists, inspectors, whistleblowers — as the backstop that surfaces what a captured oversight chain misses.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
)

#case(
  number: 70,
  title: "Wells Fargo Fake Accounts",
  year: "2011 – 2016",
  domains-list: ("tech", "gov"),
  modes-code: "GN",
  impact: "~3.5 million unauthorized accounts opened; ~$3B in penalties; CEO resigned; the Federal Reserve capped the bank's assets",
  diagram: dgm.dgm-stat(
    "3.5M",
    "unauthorized accounts",
    micro: "the incentive architecture made misconduct rational for the front line",
    caption: "Wells Fargo — the measurement system produced the behavior the institution then prosecuted",
  ),
  kind: "failure",
  summary: [
    To meet aggressive sales quotas, Wells Fargo employees opened roughly
    3.5 million unauthorized customer accounts over years. The behavior was
    widespread and visible to internal risk and compliance functions, but the
    bank's response was to fire individual "bad apples" while leaving the
    incentive structure intact — and that structure was the actual cause:
    sales targets most employees could not meet by ethical means. The 2016
    CFPB and OCC actions brought ~\$3 billion in penalties, the CEO resigned,
    and the Federal Reserve took the unprecedented step of capping the bank's
    assets. Wells Fargo is the canonical case of an incentive architecture
    that manufactured the misconduct the institution then prosecuted at the
    front line, while insisting the misconduct was individual.
  ],
  sections: (
    // -- Background --
    [
      Wells Fargo built its retail strategy on "cross-selling" — opening many
      products per customer — and drove it with aggressive sales quotas
      pushed down to branch employees, whose pay and jobs depended on hitting
      them. The metric the bank chose to manage by thus became the thing every
      front-line employee was structurally compelled to maximize, whatever it
      took.#cn()
    ],
    // -- What Happened --
    [
      Unable to meet the quotas honestly, employees opened roughly 3.5
      million unauthorized accounts in customers' names — the rational
      response to a target most could not reach by legitimate means. The
      behavior was widespread and longstanding, and visible to internal risk
      and compliance functions for years; the institutional response was to
      discipline individual employees as bad apples while leaving the
      incentive structure intact, fixing the symptom and preserving the
      cause.#cn()
    ],
    // -- The Investigation --
    [
      The 2016 CFPB and OCC actions brought roughly \$3 billion in penalties,
      and the bank's own independent-directors investigation (2017)
      documented how the sales-target architecture drove the misconduct —
      locating the cause in the design, not the people executing it.#cn()
      Investigators tied the misconduct directly to the bank's
      incentive-compensation structure, which had made such sales practices a
      foreseeable result rather than an aberration. The CEO resigned, and the
      Federal Reserve imposed an unprecedented cap on the bank's assets,
      reaching past individual penalties to constrain the institution
      itself.#cn()
    ],
    // -- The Capability Gap --
    [
      Wells Fargo is the strongest evidence in the dataset that incentive
      architecture is a capability-engineering deliverable. The measurement
      system used to manage employees produced exactly the behavior the
      institution then prosecuted — the same structure that demanded the
      result punished the people who delivered it. The gap was not at the
      front line but at the governance layer that designed the incentives and
      then, for years, treated the predictable result as individual moral
      failure, mistaking a designed outcome for a character flaw.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The asset cap constrained the bank's growth for years — a rare,
      structural consequence that hit the institution where it would feel it —
      and the case became the standard teaching example of measurement-gaming
      and incentive design.#cn() Its lesson is that any quota becomes a target
      to be gamed, and that an institution is accountable for the behavior its
      measurement system makes rational, not just the behavior endorsed in its
      values statement — because employees respond to the incentive they are
      paid on, not the value they are told to honor.
    ],
  ),
  references: (
    [Consumer Financial Protection Bureau, Consent Order against Wells Fargo (2016) — the unauthorized accounts and penalties.],
    [Office of the Comptroller of the Currency, Consent Order AA-EC-2016-66 (2016) — unsafe or unsound sales practices tied to the incentive-compensation structure (paraphrased).],
    [Independent Directors of Wells Fargo, _Sales Practices Investigation Report_ (2017) — how the sales-target architecture drove the conduct.],
    [Enforcement record: ~3.5 million accounts, ~\$3 billion in penalties, and the CEO's resignation.],
    [Federal Reserve asset cap on Wells Fargo (2018) — the structural growth constraint.],
    [A. C. Edmondson, _The Fearless Organization_ (2018); incentive-design and corporate-governance literature.],
  ),
  quote: [Wells Fargo's sales practices were a foreseeable consequence of its incentive compensation structure.],
  quote-source: "Paraphrasing the 2016 regulatory and independent-directors findings on Wells Fargo",
  le-insight: [
    Wells Fargo is the strongest available evidence that incentive
    architecture is a capability-engineering deliverable. The
    measurement system used to manage employees produced the behavior
    the institution then prosecuted. The gap was not at the front
    line. It was at the governance layer that had designed the
    incentives.
  ],
  lens-approach: [
    LENS uses Wells Fargo in LEN 4 as a measurement-gaming case and
    in LEN 7 for the corporate-governance dynamics that allow such
    incentives to persist for years. Studio projects redesign the
    incentive architecture.
  ],
  literature-items: (
    [Independent Directors Report (2017)],
    [Tirole (2010), corporate-governance theory],
    [Edmondson (2018), _The Fearless Organization_],
  ),
  reflection-list: (
    [Identify a measurement system in your organization that is currently producing the behavior the organization claims to deplore. What is the gap between the measurement and the goal?],
    [Design the incentive architecture for a bank's branch sales force that does not produce a Wells-Fargo-equivalent failure.],
    [Wells Fargo's misconduct was visible to risk and compliance for years before it was addressed at the structural level. What lets an organization see a pattern of gaming and still treat it as individual bad apples — and who would have to be empowered to name the incentive as the cause?],
  ),
  approaches: (
    during: (
      [Design incentive and quota structures against the behavior they will rationally produce, treating the measurement system as a capability deliverable in its own right.],
      [Set targets that are achievable by legitimate means, since a quota most employees cannot reach honestly is an instruction to cheat.],
      [Pair every performance metric with a countervailing measure that detects gaming before it becomes systemic.],
    ),
    after: (
      [Audit for the gap between the behavior the measurement system rewards and the conduct the institution claims to value, and treat divergence as a design fault.],
      [Empower risk and compliance to escalate a pattern of gaming as a structural cause, not to absorb it as isolated misconduct.],
      [Hold the governance layer that designed the incentives accountable for predictable outcomes, rather than disciplining only the front line.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
)

#case(
  number: 71,
  title: "Volkswagen Dieselgate",
  year: "2015",
  domains-list: ("industrial", "gov"),
  modes-code: "DG",
  impact: "~11 million vehicles equipped with defeat-device software; $33B+ in penalties and remediation; multiple criminal convictions",
  diagram: dgm.dgm-compare(
    "test bench",
    "compliant",
    "real world",
    "up to 40×",
    framing: "the protocol operated in a regime the vehicle could detect",
    caption: "Dieselgate — engineered evasion of a measurement system",
  ),
  kind: "failure",
  summary: [
    Volkswagen engineered a "defeat device" into its diesel emissions
    software: code that detected when a car was on a regulatory test bench
    and switched on full emissions controls only then. On the road the
    controls were largely disabled, producing nitrogen-oxide emissions up to
    forty times the legal limit, across roughly 11 million vehicles for
    years. The deception was uncovered not by regulators but by a small West
    Virginia university team comparing real-world to lab measurements.
    Internal documents showed the defeat device was an institutional
    decision — a deliberate response to a standard VW's engineers did not
    believe they could meet within cost — not a rogue act. VW paid more than
    \$33 billion in penalties and remediation, with criminal convictions.
    Dieselgate is the book's case for organized evasion of a measurement
    system.
  ],
  sections: (
    // -- Background --
    [
      Volkswagen had staked its U.S. growth on "clean diesel," promising cars
      that met strict nitrogen-oxide limits without sacrificing performance
      or cost — a marketing position that left no room to admit the
      engineering could not deliver all three at once. Its engineers did not
      believe they could actually meet the standard within the platform's
      cost constraints, putting the company's public promise on a collision
      course with its own technical reality.#cn()
    ],
    // -- What Happened --
    [
      So they cheated by design. VW's emissions software detected when a
      vehicle was on a regulatory test bench — by its steering, speed, and
      duration patterns, the telltale signature of a lab rather than a road —
      and switched on full emissions controls only during the test. On the
      road the controls were largely disabled, producing emissions up to forty
      times the legal limit, across roughly 11 million vehicles for years, so
      the pollution the standard existed to prevent flowed freely everywhere
      except where it was measured.#cn()
    ],
    // -- The Investigation --
    [
      The deception was uncovered not by the regulator but by a small
      university research team in West Virginia comparing real-world
      emissions to lab results — the gap between road and bench being exactly
      what the regulator's own test could never reveal.#cn() Internal
      documents then showed the defeat device had been authorized inside VW's
      engineering hierarchy as a deliberate institutional response to a
      standard the team could not meet — not the work of a rogue engineer, but
      a decision made up the chain of command. VW pleaded guilty, paid more
      than \$33 billion in penalties and remediation, and saw multiple
      executives convicted.#cn()
    ],
    // -- The Capability Gap --
    [
      The exploitable gap was at the regulator's instrument: the emissions
      test ran in a regime the vehicle could detect, so a manufacturer
      determined to evade could tune its behavior to the test rather than to
      the road, optimizing for the measurement instead of the goal it stood
      for. Dieselgate is the canonical case of institutionally engineered
      evasion of a measurement system — and a reminder that any test the
      measured party can recognize is a test it can defeat, because a
      detectable test invites the very gaming it is meant to catch.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The reform closed the gap at the instrument: the EU introduced
      real-world driving-emissions testing, moving the measurement off the
      predictable bench and onto the road the standard actually cared about,
      making it far harder to game.#cn() The pattern parallels Takata (Case
      52) — a manufacturer's fraud meeting a regulator whose evidence pipeline
      trusted the manufacturer's test conditions, and a fix that had to
      upgrade the measurement itself, not just punish the cheat, because
      punishing the cheat leaves the exploitable instrument in place for the
      next one.
    ],
  ),
  references: (
    [U.S. EPA, Notice of Violation to Volkswagen (2015) — the defeat device and emissions exceedances.],
    [West Virginia University / ICCT real-world diesel-emissions study (2014) — the discovery comparing road to lab.],
    [U.S. Department of Justice Plea Agreement with Volkswagen AG (2017) — the institutional decision, \$33B+ in penalties, and convictions (quoted).],
    [Volkswagen internal documents released through litigation — authorization of the defeat device within the engineering hierarchy.],
    [EU Real Driving Emissions (RDE) testing regulation — the post-Dieselgate measurement reform.],
    [J. Ewing, _Faster, Higher, Farther: The Volkswagen Scandal_ (2017); cf. Takata (Case 52).],
  ),
  quote: [The defeat device was the product of a long-standing institutional decision to evade emissions standards.],
  quote-source: "Paraphrasing the U.S. Department of Justice Plea Agreement with Volkswagen AG, 2017",
  le-insight: [
    Dieselgate is the canonical case for institutionally engineered
    evasion of a measurement system. The capability gap was at the
    regulator's test protocol: it operated in a regime the vehicle
    could detect. The reform — real-world emissions testing — was a
    capability deliverable upgrade at the regulator's instrument
    boundary.
  ],
  lens-approach: [
    LENS uses Dieselgate in LEN 4 as the canonical case for
    measurement-system evasion and in LEN 7 for the corporate-
    governance dynamics of engineered fraud. The reform pattern
    parallels Takata (Case 52).
  ],
  literature-items: (
    [Ewing (2017), _Faster, Higher, Farther_],
    [EPA technical reports on real-world emissions testing],
    [Carson, _Silent Spring_ (1962) — regulatory-capacity comparison],
  ),
  reflection-list: (
    [Identify a measurement protocol in your domain that operates in a regime detectable by the entity being measured. What is the evasion potential?],
    [Design the upgrade to a regulatory test protocol that makes Dieselgate-style evasion structurally infeasible.],
    [VW's defeat device was authorized up the engineering hierarchy, not the act of a rogue engineer. What allows an institution to sanction fraud as a deliberate response to an unmeetable standard — and what governance check should sit between an impossible target and the team asked to meet it?],
  ),
  approaches: (
    during: (
      [Design measurement protocols the measured party cannot detect and tune to, so behavior is optimized for the goal rather than the test.],
      [Surface the gap between a public commitment and the engineering reality early, so an unmeetable standard is renegotiated rather than secretly evaded.],
      [Build a governance check between an impossible target and the team asked to meet it, so the response is escalation, not a defeat device.],
    ),
    after: (
      [Audit real-world behavior against test-condition behavior, treating a divergence between road and bench as the signature of engineered evasion.],
      [Upgrade the measurement instrument itself after a discovered cheat, not just penalize the cheat, since the exploitable test invites the next one.],
      [Sustain independent, outside-the-loop verification — as the university team provided — to catch fraud the regulator's own protocol cannot see.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
)

#case(
  number: 72,
  title: "Cambridge Analytica / Facebook",
  year: "2014 – 2018",
  domains-list: ("tech",),
  modes-code: "G",
  impact: "~87 million Facebook profiles harvested without informed consent; FTC $5B penalty; foundational data-governance reform",
  diagram: dgm.dgm-stat(
    "87M",
    "profiles · 270K quiz-takers",
    micro: "the Graph API contract assumed benevolent developer intent",
    caption: "Cambridge Analytica — design assumption as load-bearing capability",
  ),
  kind: "failure",
  summary: [
    A Cambridge University researcher's personality-quiz app, taken by about
    270,000 people, exploited Facebook's then-permissive Graph API to collect
    not only the quiz-takers' data but their friends' too — roughly 87
    million profiles. The dataset was passed to Cambridge Analytica for
    political micro-targeting. Facebook's permission architecture had been
    designed and tested for delivering social experiences, not red-teamed
    against systematic harvesting; its API contract assumed benevolent
    developer intent. The architecture worked exactly as designed — the
    design assumption was wrong. The scandal accelerated the EU's GDPR,
    helped spur the California Consumer Privacy Act, and produced a
    \$5-billion FTC penalty and consent decree. Cambridge Analytica is the
    book's case for platform-governance failure: a load-bearing assumption
    about how an interface would be used, never stress-tested against abuse.
  ],
  sections: (
    // -- Background --
    [
      Facebook's Graph API let third-party apps request user data to build
      social experiences — and, at the time, an app could collect not only
      its own users' data but their friends' data too, so a single
      consenting user opened a window onto people who had never agreed to
      anything. The permission architecture had been designed and tested
      against ordinary use cases, the friendly developers it imagined rather
      than the hostile ones it would eventually attract.#cn()
    ],
    // -- What Happened --
    [
      A Cambridge University researcher built a personality-quiz app taken by
      about 270,000 people; through the friends-permission it harvested
      roughly 87 million profiles — a return of more than three hundred
      profiles for every person who actually used the app. The dataset was
      passed to Cambridge Analytica, which used it for political-campaign
      micro-targeting across multiple elections — none of the 87 million
      having meaningfully consented, most never even aware the app existed.#cn()
    ],
    // -- The Investigation --
    [
      Investigations by the UK Information Commissioner and the U.S. FTC,
      prompted by Guardian reporting, established the scope of the harvesting
      and Facebook's responsibility for it — the platform, not just the
      researcher, was found answerable for what its design permitted.#cn() The
      platform's API had never been red-teamed against systematic data
      extraction; its contract simply assumed developers would behave, a trust
      extended at the scale of a social network and never tested against
      someone willing to abuse it.#cn()
    ],
    // -- The Capability Gap --
    [
      The gap was not technical — the architecture worked exactly as
      designed, which is what makes it a governance case rather than a bug.
      It was a governance gap: a load-bearing design assumption ("developers
      are benevolent") that no one had stress-tested against a determined
      abuser, an assumption holding up the whole permission model without ever
      being named as one. On a platform at societal scale, an unexamined
      assumption about how an interface will be used is itself a capability
      deliverable — and an unexamined one is a latent failure waiting for the
      first actor willing to exploit it.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The scandal accelerated the EU's GDPR, helped spur the California
      Consumer Privacy Act, and produced a \$5-billion FTC penalty and a
      consent decree under which Facebook still operates — the abuse of one
      design assumption reshaping data law across two jurisdictions.#cn() Its
      lesson for platform governance is that permission architectures must be
      designed against the worst plausible developer, not the typical one —
      because at scale, the worst plausible developer will arrive, and the
      friends-permission that looked harmless against ordinary use becomes a
      harvesting tool in the wrong hands.
    ],
  ),
  references: (
    [U.S. FTC, _In the Matter of Facebook, Inc._, Consent Order (2019) — the \$5B penalty; Facebook gave developers "far more user data than was necessary" (quoted).],
    [UK Information Commissioner's Office, report on Cambridge Analytica / data analytics in political campaigns (2018) — the scope of the harvesting.],
    [C. Cadwalladr & E. Graham-Harrison, _The Guardian_ investigation (2018) — the disclosure.],
    [The ~87 million profiles collected via the friends-permission Graph API from ~270,000 quiz-takers.],
    [EU General Data Protection Regulation (2018) and the California Consumer Privacy Act.],
    [C. Wylie, _Mindf*ck_ (2019), and H. Nissenbaum, _Privacy in Context_ (2010); S. Zuboff, _The Age of Surveillance Capitalism_ (2019).],
  ),
  quote: [Facebook gave developers access to far more user data than was necessary for the apps they built.],
  quote-source: "Paraphrasing the U.S. FTC Order, In the Matter of Facebook Inc., 2019",
  le-insight: [
    Cambridge Analytica is the canonical case for platform-governance
    failure: an API contract that assumed benevolent intent and was
    not engineered against systematic abuse. The capability gap was
    not technical. The architecture worked exactly as designed; the
    design assumption was wrong.
  ],
  lens-approach: [
    LENS uses Cambridge Analytica in LEN 7 as the foundational case
    for platform governance and data ethics, and in LEN 1 to teach
    that "design assumption" is a load-bearing capability deliverable.
  ],
  literature-items: (
    [Zuboff (2019), _The Age of Surveillance Capitalism_],
    [Wylie (2019), _Mindf*ck_],
    [Nissenbaum (2010), _Privacy in Context_],
  ),
  reflection-list: (
    [Identify an API or interface in your domain whose contract assumes benevolent intent. What is the systematic-abuse case it was not red-teamed against?],
    [Design the platform-governance deliverable that should accompany the launch of a new third-party developer API.],
    [The friends-permission let one consenting user expose hundreds who had not agreed. Where in your domain does one person's consent silently extend to others, and what governance would make that reach visible and accountable?],
  ),
  approaches: (
    during: (
      [Make every load-bearing design assumption explicit and red-team it against a determined abuser before launch, treating "developers are benevolent" as a hypothesis to test.],
      [Scope data access to what an app genuinely needs, so one user's consent cannot silently reach hundreds of non-consenting others.],
      [Design permission architectures against the worst plausible developer, since at societal scale that developer will eventually arrive.],
    ),
    after: (
      [Monitor API usage for systematic extraction patterns that depart from the ordinary social use the interface was built for.],
      [Audit third-party developers' actual data flows against their stated purpose, rather than trusting a contract that assumes good behavior.],
      [Sustain the platform's own accountability for what its design permits, treating downstream abuse as a governance defect to remediate, not a third party's sole fault.],
    ),
  ),
  courses: ("LEN 1", "LEN 7", "LEN 6",),
)

#case(
  number: 73,
  title: "Equifax Data Breach",
  year: "2017",
  domains-list: ("tech", "gov"),
  modes-code: "GK",
  impact: "147 million Americans' personal data exposed; CEO resigned; ~$700M settlement; foundational U.S. data-breach case",
  diagram: dgm.dgm-cascade(
    ("patch unapplied (2 months)", "asset inventory incomplete", "monitoring inadequate", "response delayed (75 days)"),
    outcome: "no single failure caused the breach; the combination did",
    caption: "Equifax — cumulative inadequacy in routine cybersecurity work",
  ),
  kind: "failure",
  summary: [
    In 2017 attackers exploited a known, two-month-old vulnerability in
    Apache Struts on an Equifax web portal — a patch had been available, and
    Equifax's own security team had told IT to apply it; no one did. Over the
    next ~2.5 months the attackers exfiltrated the personal data of 147
    million Americans, and Equifax did not disclose the breach until
    September. A Senate investigation found systematically inadequate
    patching, an incomplete asset inventory (so the company did not know
    which systems needed the fix), and an incident-response function treated
    for years as a cost center. The CEO resigned and Equifax settled for
    about \$700 million. No single failure caused the breach; cumulative
    inadequacy across routine cybersecurity work did. Equifax is the
    data-breach analog of the Sago mine disaster (Case 59).
  ],
  sections: (
    // -- Background --
    [
      Equifax, one of the three U.S. credit bureaus, held the most sensitive
      financial data on virtually every American adult — a concentration of
      identity information that made any breach catastrophic by definition.
      One of its public web portals ran a version of Apache Struts with a
      known critical vulnerability for which a patch had been available for
      two months — and which Equifax's own security team had flagged for IT to
      apply, so the warning and the fix both existed inside the company and
      simply went unacted-upon.#cn()
    ],
    // -- What Happened --
    [
      The patch was not applied. Attackers exploited the vulnerability
      beginning in May 2017 and quietly exfiltrated personally identifying
      information on 147 million Americans over the next two and a half
      months, a window long enough that the theft was less a break-in than a
      sustained occupation. Equifax did not publicly disclose the breach until
      September, so the people whose identities were taken learned of it only
      well after the fact.#cn()
    ],
    // -- The Investigation --
    [
      The U.S. Senate Permanent Subcommittee on Investigations found
      Equifax's patching practices systematically inadequate and the company
      lacking "a comprehensive IT asset inventory" — so it could not reliably
      know which systems needed the patch, leaving the security team's warning
      with no map to act on.#cn() Monitoring was weak, response delayed, and the
      incident-response architecture had been treated for years as a cost
      center rather than a capability worth funding; the CEO resigned and
      Equifax settled for roughly \$700 million.#cn()
    ],
    // -- The Capability Gap --
    [
      Equifax is the institutional-cybersecurity case for cumulative
      inadequacy in routine work: patching, asset inventory, monitoring,
      response. Each function was below standard; none alone produced the
      breach; the combination did, the marginal weaknesses compounding into a
      single open door. The capability gap was the management of unglamorous,
      universally-agreed-necessary maintenance — exactly the work easy to
      defer because deferring it usually costs nothing, until the one time it
      costs everything, and a function starved as a cost center has no slack
      left on that day.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The settlement funded consumer compensation and credit monitoring, and
      the breach pushed patching discipline, asset inventory, and
      breach-disclosure timelines up the corporate agenda — elevating, after
      the loss, the unglamorous work that had been deferred before it.#cn() It
      is the data-breach analog of the Sago mine disaster (Case 59): no
      dramatic single cause, just several routine defenses each left
      marginally inadequate, failing together on the day a determined attacker
      arrived to test all of them at once.
    ],
  ),
  references: (
    [U.S. Senate Permanent Subcommittee on Investigations, _How Equifax Neglected Cybersecurity and Suffered a Devastating Data Breach_ (2019) — the unpatched Apache Struts vulnerability.],
    [The breach record — 147 million affected, exploitation from May 2017, public disclosure in September 2017.],
    [Senate PSI (2019) — "Equifax lacked a comprehensive IT asset inventory" (quoted).],
    [U.S. FTC / CFPB / state settlement (~\$700 million, 2019) and the CEO's resignation.],
    [U.S. GAO, _Actions Taken by Equifax and Federal Agencies in Response to the 2017 Breach_, GAO-18-559 (2018).],
    [Apache Struts CVE-2017-5638 advisory; cf. the Sago mine disaster (Case 59).],
  ),
  quote: [Equifax lacked a comprehensive IT asset inventory.],
  quote-source: "U.S. Senate Permanent Subcommittee on Investigations, How Equifax Neglected Cybersecurity, March 2019",
  le-insight: [
    Equifax is the canonical institutional-cybersecurity case for
    cumulative inadequacy in routine work: patching, inventory,
    monitoring, response. Each function was below industry standard.
    None alone produced the breach. The combination was the breach.
  ],
  lens-approach: [
    LENS uses Equifax in LEN 5 for cumulative-inadequacy analysis in
    cybersecurity and in LEN 7 for the institutional dynamics that
    allow routine work to be chronically underfunded.
  ],
  literature-items: (
    [Senate Subcommittee report (2019)],
    [GAO-18-559],
    [Bruce Schneier, _Click Here to Kill Everybody_ (2018)],
  ),
  reflection-list: (
    [Identify a piece of routine work in your domain that is chronically deferred. What is the cumulative-inadequacy threshold?],
    [Equifax did not know which assets ran Struts. Design the asset-inventory deliverable that an organization the size of Equifax should be able to produce on demand.],
    [Equifax's security team had flagged the patch, but the warning had no asset map to act on and no funded function to carry it out. What turns a known, agreed-upon fix into deferred work in your organization — and what would force it to be done before the one time it costs everything?],
  ),
  approaches: (
    during: (
      [Fund routine security maintenance — patching, monitoring, response — as a capability, not a cost center, so the unglamorous defenses have slack on the bad day.],
      [Build and maintain a comprehensive asset inventory so a known vulnerability can be mapped to every system that runs it.],
      [Wire the security team's warnings to an owner with the authority and resources to apply a flagged patch promptly.],
    ),
    after: (
      [Audit the routine defenses together — patching, inventory, monitoring, response — since each marginally inadequate layer raises the odds the combination fails.],
      [Monitor for sustained, low-noise exfiltration, treating a months-long quiet window as the failure mode to detect, not just a single break-in.],
      [Hold breach-disclosure timelines short, so affected people learn of a theft of their identity without months of delay.],
    ),
  ),
  courses: ("LEN 5", "LEN 7"),
)

#case(
  number: 74,
  title: "Hyatt Regency Walkway Collapse",
  year: "1981",
  domains-list: ("industrial",),
  modes-code: "DG",
  impact: "114 killed and 216 injured in Kansas City when suspended walkways collapsed; foundational U.S. engineering-ethics case",
  diagram: dgm.dgm-compare(
    "as designed",
    "1× load",
    "as built",
    "2× load",
    framing: "a small construction change, accepted without re-analysis",
    caption: "Hyatt Regency — connection detail changed in the field",
  ),
  kind: "failure",
  summary: [
    During a crowded tea dance in the atrium of the Kansas City Hyatt Regency
    on 17 July 1981, two suspended walkways collapsed, killing 114 and
    injuring 216 — then the deadliest structural collapse in U.S. history.
    The cause was a connection detail changed during construction: the
    original design hung the walkways from single long rods; the as-built
    version used a two-rod arrangement that doubled the load on the upper
    connection. The structural engineer's office approved the change without
    recalculating the load, and the connection had in fact been overstressed
    from the start. Missouri revoked the responsible engineers' licenses, and
    the case became the foundational engineering-ethics example. The
    capability gap was institutional: nothing required a change to a
    load-bearing connection to be re-analyzed by the engineer of record.
  ],
  sections: (
    // -- Background --
    [
      The Kansas City Hyatt Regency's atrium featured walkways suspended from
      the ceiling, carrying crowds above an open public space where any
      failure would drop directly onto people below. The original engineering
      design hung them from single continuous steel rods, a configuration in
      which each rod carried one walkway's load to the structure above.#cn()
    ],
    // -- What Happened --
    [
      During construction the connection was changed — for ease of assembly,
      to avoid threading a single long rod through both walkways — to a
      two-rod arrangement that effectively doubled the load on the upper
      walkway's connection, and the structural engineer's office approved the
      change without recalculating it, treating an assembly convenience as if
      it carried no structural consequence. On 17 July 1981, during a crowded
      tea dance, the overstressed connection let go; two walkways fell onto
      the atrium floor, killing 114 people and injuring 216 — at the time the
      deadliest structural collapse in U.S. history.#cn()
    ],
    // -- The Investigation --
    [
      The National Bureau of Standards found the as-built connection carried
      roughly twice its intended load and had been inadequate even under the
      building code's requirements — so the original single-rod design had
      itself been marginal, and the field change pushed an already-thin
      connection past failure.#cn() The Missouri licensing board revoked the
      licenses of the responsible engineers, fixing accountability on the
      engineer of record, and the case became the foundational
      engineering-ethics example taught to undergraduates: how a small
      construction change, accepted casually, can turn a design that works
      into one that fails.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability gap was at the institutional review of construction
      changes. Nothing required a change to a load-bearing connection detail
      to be re-analyzed by the engineer of record before it was built — so a
      modification that doubled a critical load passed through the system
      without anyone computing what it did, the absence of a required check
      letting a fatal change look like a routine one. The missing capability
      was change control with the engineer's calculation in the loop, a gate
      that re-derives the consequence before the field accepts the change.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The collapse reshaped how the profession treats shop-drawing review and
      the engineer of record's responsibility for connection design,
      hardening into rule the accountability the failure had exposed, and it
      anchored modern engineering-ethics teaching.#cn() Its lesson
      generalizes well beyond steel: a change that looks trivial at the point
      of assembly can be catastrophic at the point of load, and the only
      defense is a review that re-derives the consequence rather than
      trusting that "it's a small change" — because triviality at assembly is
      no guarantee of triviality under load.
    ],
  ),
  references: (
    [National Bureau of Standards, _Investigation of the Kansas City Hyatt Regency Walkways Collapse_, NBSIR 82-2465 (1982) — the doubled-load connection (quoted).],
    [The 17 July 1981 collapse — 114 killed and 216 injured.],
    [NBSIR 82-2465 (1982) — the as-built connection inadequate even under the building code.],
    [Missouri Board for Architects, Professional Engineers, and Land Surveyors disciplinary records (1986) — the license revocations.],
    [S. Pfatteicher, "'The Hyatt Horror': Failure and Responsibility in American Engineering," _Journal of Performance of Constructed Facilities_ 14(2) (2000).],
    [H. Petroski, _To Engineer Is Human_ (1985) — failure and the engineering process.],
  ),
  quote: [The change in the rod configuration doubled the load on the connection that failed.],
  quote-source: "Paraphrasing the National Bureau of Standards Investigation, NBSIR 82-2465, 1982",
  le-insight: [
    The Hyatt Regency case is the canonical engineering-ethics case
    for institutional review of construction changes. The change
    looked small; the load implication was catastrophic. The
    capability gap was at the review process that should have caught
    the doubled load.
  ],
  lens-approach: [
    LENS uses Hyatt Regency in LEN 5 for change-control deliverables
    and in LEN 7 for the engineering-licensure architecture that
    holds the engineer of record accountable. Studio projects examine
    the change-control deliverable.
  ],
  literature-items: (
    [NBS Report (1982)],
    [Pfatteicher (2000), "'The Hyatt Horror,'" _J. Performance of Constructed Facilities_],
    [Petroski, _To Engineer Is Human_ (1985)],
  ),
  reflection-list: (
    [Identify a "small change during construction" pattern in your domain. What is the institutional review that should accompany it?],
    [Design the change-control deliverable that would have surfaced the doubled-load issue at the Hyatt Regency before construction.],
    [The two-rod change was approved for ease of assembly by an office that never recalculated its load. What in your domain lets a convenience at the point of assembly pass without anyone re-deriving its consequence at the point of load?],
  ),
  approaches: (
    during: (
      [Require that any change to a load-bearing detail be re-analyzed by the engineer of record before it is built, with the calculation in the loop.],
      [Treat an assembly-convenience change as a structural decision, not a routine one, so ease of construction never substitutes for analysis.],
      [Set the original design margin so a connection is not already marginal under code before any field change touches it.],
    ),
    after: (
      [Audit as-built connections against the as-designed intent, catching field substitutions that altered a critical load path.],
      [Route shop-drawing and field changes through a review that re-derives the consequence rather than trusting "it's a small change."],
      [Hold the engineer of record accountable for connection design through construction, so responsibility for the integrated load does not dissolve in the field.],
    ),
  ),
  courses: ("LEN 5", "LEN 7"),
)

#case(
  number: 75,
  title: "FIU Pedestrian Bridge Collapse",
  year: "2018",
  domains-list: ("industrial",),
  modes-code: "DGN",
  impact: "6 killed in Miami when a pedestrian bridge collapsed during construction; NTSB found systemic design and review failures",
  diagram: dgm.dgm-timeline(
    (("design errors", "—"), ("cracks observed", "days before"), ("\"monitor\"", "classified"), ("collapse", "—")),
    emphasis: 2,
    caption: "FIU — observed cracks classified as not safety-critical",
  ),
  kind: "failure",
  summary: [
    On 15 March 2018 a pedestrian bridge under construction at Florida
    International University collapsed onto the road below, killing six. The
    NTSB found the design firm had made calculation errors — underestimating
    demand and overestimating capacity at a critical truss connection — that
    the independent peer review failed to catch. In the days before, large
    cracks appeared at that connection; they were inspected, discussed in a
    meeting the morning of the collapse, and judged not a safety concern,
    even as crews worked on the span and traffic ran beneath it. The errors
    were the timeless ones — a connection under-designed, a review that
    missed it, warning signs rationalized away — in a structure built with
    state-of-the-art tools. FIU is the contemporary proof that better design
    software does not retire the old failure modes.
  ],
  sections: (
    // -- Background --
    [
      The FIU-Sweetwater pedestrian bridge over Southwest Eighth Street in
      Miami was a modern, computationally designed concrete truss, built to
      be assembled beside the road and lifted into place — engineered with
      tools more capable than any prior era's, the kind of software that lets
      a designer model a structure in detail no slide rule ever could. That
      sophistication framed the bridge as a showcase of modern method.#cn()
    ],
    // -- What Happened --
    [
      It collapsed during construction on 15 March 2018, dropping onto the
      road and the cars stopped beneath it, killing six — the failure landing
      on the very traffic the bridge would one day span. The NTSB found the
      design firm had made calculation errors at a critical truss connection —
      underestimating the load demand and overestimating the capacity, an
      error in both directions at once — and that the independent peer review,
      the safeguard meant to catch exactly such mistakes, had not caught
      them.#cn()
    ],
    // -- The Investigation --
    [
      The warnings were there. Large cracks had appeared at that connection
      in the days before, were inspected, and were judged not to threaten
      safety — a judgment reaffirmed in a meeting the morning of the collapse,
      even as workers operated on the span and traffic ran underneath, so the
      structure was failing visibly while being declared safe.#cn() The errors
      that produced the collapse were the timeless ones: a load case
      inadequately considered, a review that did not catch the gap, and
      visible distress rationalized as not safety-critical — each a failure
      mode older than the software that drew the bridge.#cn()
    ],
    // -- The Capability Gap --
    [
      FIU is the contemporary reminder that more capable design tools do not
      retire the old failure modes. The bridge was designed with
      sophisticated software, yet failed for the same reasons structures have
      failed for a century — because the human and institutional capabilities
      around the tools (independent review that re-derives the answer, a rule
      that visible cracking on a critical member stops work) had not kept
      pace with the software's sophistication, leaving the newest tools
      guarded by the oldest, weakest procedures.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The NTSB faulted the design firm, the peer reviewer, and the parties
      who kept the road open beneath a cracking structure — spreading the
      responsibility across every layer that could have intervened — and the
      case sharpened scrutiny of accelerated-bridge-construction methods and
      independent design review.#cn() Its lesson pairs with the Hyatt Regency
      (Case 74) across forty years: the computer drew a better bridge, but
      the governance of the calculation — who checks it, and what a crack is
      allowed to mean — is still where safety lives, unchanged by four decades
      of better software.
    ],
  ),
  references: (
    [NTSB, _Pedestrian Bridge Collapse over SW 8th Street, Miami_, Highway Accident Report HAR-19/02 (2019) — the FIGG design calculation errors (quoted).],
    [NTSB HAR-19/02 (2019) — the 15 March 2018 collapse during construction; six killed.],
    [NTSB HAR-19/02 (2019) — the observed cracking judged not safety-critical and the morning-of meeting.],
    [NTSB HAR-19/02 (2019) — the failure of the independent design peer review.],
    [OSHA report on the FIU bridge collapse (2019); Engineering News-Record coverage.],
    [Cf. the Hyatt Regency collapse (Case 74); accelerated-bridge-construction review practice.],
  ),
  quote: [The probable cause of the collapse was the load and capacity calculation errors made by FIGG Bridge Engineers in its design of the main span truss.],
  quote-source: "NTSB Highway Accident Report HAR-19/02 on the FIU pedestrian bridge, 2019",
  le-insight: [
    The FIU bridge is the canonical modern engineering case for
    cumulative review failure. Each layer of review failed in its
    own way. The collapse was not predicted but was predictable. The
    cracks that had been observed were classified as not safety-
    critical because the institutional protocol for "potentially
    significant crack on a new structure" defaulted to "monitor."
  ],
  lens-approach: [
    LENS uses FIU in LEN 5 to teach review-process deliverables and
    in LEN 8 to compare with the Hyatt Regency (Case 74) case from
    forty years earlier — same failure mode, different decade.
  ],
  literature-items: (
    [NTSB HAR-19/02 (2019)],
    [Roddis & Roberts (1997) on engineering-review architecture],
    [Petroski, _To Forgive Design_ (2012)],
  ),
  reflection-list: (
    [The FIU and Hyatt Regency cases are 40 years apart and structurally similar. What has not been engineered in the discipline that would change that?],
    [Design the field-observation escalation protocol that would have brought the FIU cracks to a decision-maker with the authority to halt work.],
    [At FIU the most capable design software in history was guarded by a peer review that missed the error and a crack-response rule that defaulted to "monitor." Where in your domain has tooling outrun the human and institutional checks meant to catch its mistakes?],
  ),
  approaches: (
    during: (
      [Require an independent peer review that re-derives the load and capacity at critical connections, rather than re-reading the original firm's calculation.],
      [Keep the human and institutional checks — review, escalation, stop-work authority — abreast of the design tools, so sophisticated software is not guarded by weak procedures.],
      [Set a rule that visible cracking on a critical member halts work, so distress cannot be rationalized away while crews and traffic remain exposed.],
    ),
    after: (
      [Audit observed field distress against design intent, treating a crack on a new structure as potentially significant until re-analysis proves otherwise.],
      [Route field observations to a decision-maker with authority to stop work, rather than resolving them in a meeting that defaults to "monitor."],
      [Sustain scrutiny of accelerated-construction methods and independent review, so the same century-old failure mode does not recur a decade later.],
    ),
  ),
  courses: ("LEN 5", "LEN 8"),
)

#case(
  number: 76,
  title: "Camp Fire / PG&E",
  year: "2018",
  domains-list: ("energy",),
  modes-code: "GNK",
  impact: "85 killed in Paradise, California; deadliest U.S. wildfire in a century; PG&E pleaded guilty to 84 counts of involuntary manslaughter",
  diagram: dgm.dgm-stat(
    "85",
    "killed in Paradise · single transmission hook",
    micro: "infrastructure designed for one climate, operating in another",
    caption: "Camp Fire — capability mismatch under changed conditions",
  ),
  kind: "failure",
  summary: [
    On 8 November 2018 a worn hook on a nearly century-old PG&E transmission
    line failed in high winds and drought, igniting the Camp Fire, which
    swept into the town of Paradise faster than people could evacuate.
    Eighty-five died — the deadliest U.S. wildfire in a century — and PG&E
    later pleaded guilty to 84 counts of involuntary manslaughter.
    Investigators found PG&E had known for years that its transmission
    infrastructure across high-fire-risk areas was deteriorating, and had
    deferred maintenance to fund other priorities, under a regulatory regime
    that let the deferrals continue. Infrastructure built for one climate was
    operating in another. Camp Fire is the book's foundational climate-era
    case for utility capability under changed conditions, and it restructured
    how California regulates utility wildfire risk.
  ],
  sections: (
    // -- Background --
    [
      PG&E operated aging transmission lines across the wildfire-prone
      foothills of Northern California — some hardware approaching a century
      old — in a climate growing hotter and drier than the one the grid had
      been built for, so the operating environment had drifted away from the
      assumptions the infrastructure was designed against.#cn()
    ],
    // -- What Happened --
    [
      On 8 November 2018 a worn C-hook on a PG&E transmission tower failed in
      high winds, dropping a live line and igniting a fire under severe
      drought conditions — a single piece of aged hardware setting off a
      catastrophe the dry, windy conditions stood ready to amplify. The fire
      moved into the town of Paradise faster than its evacuation routes could
      clear it; 85 people died — the deadliest U.S. wildfire in a century.
      PG&E later pleaded guilty to 84 counts of involuntary manslaughter,
      accepting criminal responsibility at a scale rare for a utility.#cn()
    ],
    // -- The Investigation --
    [
      CalFire's investigation and the Butte County District Attorney's report
      found that PG&E had known for years about the deteriorating condition
      of its transmission infrastructure in high-fire-risk areas, and had
      deferred the maintenance to fund other corporate priorities — so the
      hazard was not unknown but a recognized risk repeatedly postponed.#cn()
      The gap was simultaneously at the utility's asset-maintenance decisions
      and at the regulatory architecture that had allowed the deferrals to
      continue, neither side holding a line that would have forced the work.#cn()
    ],
    // -- The Capability Gap --
    [
      Camp Fire is the climate-era case for utility-capability failure under
      changing risk. The infrastructure had been designed and maintained for
      one set of conditions and was operating in another, more dangerous one,
      so the safety margins the original design assumed had quietly eroded as
      the climate shifted beneath them. The capability to update operations —
      inspection cadence, vegetation management, de-energization, replacement —
      to match the actual risk did not exist as an institutional deliverable,
      on either the utility's side or the regulator's, leaving no one tasked
      with closing the widening gap.#cn()
    ],
    // -- Aftermath & Reform --
    [
      PG&E entered bankruptcy under tens of billions in wildfire liability,
      and California restructured how it regulates utility wildfire-risk
      planning — mandatory mitigation plans, inspections, and public-safety
      power shutoffs, turning the deferred work into requirements with teeth
      behind them.#cn() Paired with the Northeast Blackout (Case 62), Camp
      Fire shows utility capability failing in a second way: not a silent
      control-room failure but a slow, known erosion of physical
      infrastructure against a rising hazard the institution declined to fund
      against — a failure measured in years of deferral rather than seconds of
      cascade.
    ],
  ),
  references: (
    [CalFire, _Camp Fire Investigation Report_ (2019) — the worn transmission-line hardware as ignition source.],
    [The Camp Fire record — 85 killed; PG&E's guilty plea to 84 counts of involuntary manslaughter (2020).],
    [Butte County District Attorney, _The Camp Fire Public Report_ (2020) — PG&E's knowledge and deferred maintenance (quoted).],
    [California Public Utilities Commission, Order Instituting Investigation into PG&E (2019) — the regulatory dimension.],
    [PG&E bankruptcy and California wildfire-mitigation reforms (2019– ).],
    [Cf. the Northeast Blackout (Case 62); climate-and-infrastructure literature.],
  ),
  quote: [PG&E knew its equipment was failing in high-fire-risk areas and continued operating without remediation.],
  quote-source: "Paraphrasing the Butte County District Attorney's Camp Fire Report, 2020",
  le-insight: [
    The Camp Fire is the canonical climate-era case for utility-
    capability failure under changing risk conditions. The
    infrastructure was designed for one set of conditions and
    operated in another. The capability to update operations to match
    actual conditions did not exist as an institutional deliverable.
  ],
  lens-approach: [
    LENS uses the Camp Fire in LEN 7 for utility regulatory governance
    and in LEN 8 for institutional response to changing operating
    conditions. The case is paired with the Northeast Blackout (Case
    62) as utility-capability failures of different kinds.
  ],
  literature-items: (
    [CalFire Camp Fire Investigation Report (2019)],
    [Wuebbles et al. (2017), Climate Science Special Report],
    [California PUC wildfire-mitigation orders (2019–present)],
  ),
  reflection-list: (
    [Identify infrastructure in your domain that was designed for one set of conditions and is now operating in another. What is the capability deliverable to bridge the gap?],
    [Design the regulatory architecture that would prevent a utility from deferring critical wildfire-risk maintenance.],
    [PG&E knew its hardware was deteriorating in high-fire-risk areas yet deferred the work for years, and the regulator let it. What in your domain lets a recognized, rising hazard be postponed indefinitely — and who would have to hold the line that forces the spending before the catastrophe?],
  ),
  approaches: (
    during: (
      [Re-derive the infrastructure's safety margins against current conditions, not the historical climate it was designed for, and treat the gap as a hazard to close.],
      [Make updating operations to match rising risk — inspection cadence, vegetation management, replacement — an explicit institutional deliverable with an accountable owner.],
      [Build de-energization and equipment-replacement triggers tied to known high-risk hardware in high-fire-risk areas.],
    ),
    after: (
      [Audit deferred maintenance against the hazard it guards against, so a recognized, deteriorating risk cannot be postponed year after year.],
      [Hold the regulator's line with mandatory mitigation plans, inspections, and penalties, so the cost of resilience is forced before the disaster rather than after.],
      [Monitor aging hardware in the highest-risk corridors as a standing priority, treating a worn critical component as an active threat, not a backlog item.],
    ),
  ),
  courses: ("LEN 7", "LEN 8"),
)

#case(
  number: 77,
  title: "Texas Grid Freeze",
  year: "2021",
  domains-list: ("energy",),
  modes-code: "GKN",
  impact: "~246 official deaths (Texas DSHS); academic excess-mortality estimates range 700–1,000; ~$130B in damages; foundational U.S. grid-resilience case",
  diagram: dgm.dgm-timeline(
    (("1989 warning", "—"), ("2011", "—"), ("2014", "—"), ("2021 freeze", "246 dead")),
    emphasis: 3,
    caption: "Texas grid — four warnings across three decades, no winterization mandated",
  ),
  kind: "failure",
  summary: [
    In February 2021 Winter Storm Uri drove temperatures across Texas far
    below what the ERCOT grid's generators and gas supply were built to
    withstand. Gas wells froze, gas-fired generation (the bulk of the lost
    capacity) tripped, and coal, nuclear, and wind also fell; over roughly
    four days ERCOT shed load and millions lost power in blackouts that, in
    many cases, never rolled. Texas officially recorded 246 deaths;
    peer-reviewed excess-mortality estimates run 700–1,000, with about \$130
    billion in damage. The proximate failure was the absence of
    winterization requirements for Texas generators — and ERCOT had been
    warned, after similar storms in 1989, 2011, and 2014, that winterization
    was inadequate. The warnings never produced a mandate, because the cost
    would pass to consumers and the rare event was judged acceptable.
  ],
  sections: (
    // -- Background --
    [
      Texas runs its own electric grid under ERCOT, largely outside federal
      reliability jurisdiction — a structure that prized low cost and light
      regulation, and that kept federal reliability mandates at arm's length.
      Its generators and the gas supply feeding them were built for Texas
      heat, not sustained deep cold, and winterization was not required, so
      cold-weather hardening was left to each operator's discretion and
      largely skipped.#cn()
    ],
    // -- What Happened --
    [
      In February 2021 Winter Storm Uri drove temperatures far below those
      design assumptions, exposing every unhardened system at once. Gas wells
      and wellheads froze, gas-fired generation — the bulk of the lost
      capacity — tripped offline, and coal, nuclear, and wind also lost
      output, the cold defeating each fuel source in its own way. Over roughly
      four days ERCOT directed load shed, and millions of Texans lost power in
      rolling blackouts that, in many places, did not roll but simply stayed
      off. Officially 246 died; peer-reviewed excess-mortality estimates run
      700–1,000, with around \$130 billion in damage.#cn()
    ],
    // -- The Investigation --
    [
      The FERC-NERC joint inquiry identified the absence of winterization
      requirements as the proximate capability failure — the single missing
      requirement behind a cascade of frozen equipment.#cn() And it was no
      surprise: ERCOT and Texas generators had been warned after similar
      cold-weather events in 1989, 2011, and 2014 that winterization was
      inadequate — warnings that never produced a mandate, because the cost
      would pass to consumers and the rare event was judged acceptable, so
      three decades of foresight changed nothing about the build.#cn()
    ],
    // -- The Capability Gap --
    [
      The Texas freeze is a designed-out capability meeting a changing
      climate. Winterization was treated as optional because the rare event
      was deemed acceptable — but the acceptable rate of the rare event
      changed while the designed-out capability did not, so a bet that once
      looked reasonable kept being renewed long after the odds had moved. Four
      warnings across three decades did not move the institution, because
      nothing in its structure forced the cost of resilience to be paid before
      the catastrophe rather than after, and a warning with no mechanism
      behind it is only a forecast of the bill.#cn()
    ],
    // -- Aftermath & Reform --
    [
      After 2021 Texas finally mandated weatherization of generation and key
      gas facilities, with inspections and penalties behind it — converting,
      after the deaths, the discretionary hardening that three decades of
      warnings had failed to compel.#cn() The case sits beside the chapter's
      other slow-erosion failures: a known, repeatedly flagged vulnerability
      accepted as routine until the tolerances aligned — here, with a
      population-scale death toll the warnings had, in effect, predicted, the
      cost of resilience finally paid in full and after the fact.
    ],
  ),
  references: (
    [FERC–NERC, _The February 2021 Cold Weather Outages in Texas and the South Central United States_ (Joint Inquiry, 2021) — winterization as the proximate failure (quoted).],
    [Texas DSHS official death count (246); peer-reviewed excess-mortality estimates (700–1,000); ~\$130 billion in damage.],
    [FERC–NERC (2021) — the prior cold-weather warnings (1989, 2011, 2014).],
    [Public Utility Commission of Texas reports on the February 2021 event.],
    [University of Texas at Austin Energy Institute analyses (Busby et al., 2021).],
    [Texas weatherization legislation (SB 3, 2021) and the PUCT/ERCOT reforms.],
  ),
  quote: [Texas generators had been warned across three decades that winterization was inadequate. The warnings did not produce winterization.],
  quote-source: "Paraphrasing the FERC-NERC Joint Inquiry Report on the February 2021 Texas event",
  le-insight: [
    The Texas Grid Freeze is the case for designed-out capability under
    changing climate conditions. Winterization was treated as
    optional because the rare event was acceptable. The acceptable
    rate of the rare event changed; the designed-out capability did
    not.
  ],
  lens-approach: [
    LENS uses the Texas Grid Freeze in LEN 7 as a regulatory-governance
    case and in LEN 8 for institutional learning across repeated near-
    misses (1989, 2011, 2014) that did not produce remediation.
  ],
  literature-items: (
    [FERC-NERC Joint Inquiry (2021)],
    [Busby et al. (2021), Energy Institute analyses],
    [PUC Texas reports],
  ),
  reflection-list: (
    [Identify a capability in your domain that has been designed out because the relevant rare event was judged acceptable. Is the rate still acceptable?],
    [The Texas grid was warned four times in three decades. What institutional architecture allows that pattern, and what would change it?],
    [Winterization stayed optional because its cost would pass to consumers while the rare event was judged acceptable. Where in your domain is a resilience cost being deferred onto a future catastrophe, and what would force it to be paid before rather than after?],
  ),
  approaches: (
    during: (
      [Re-test the "acceptable rare event" assumption against current climate odds, since a bet that looked reasonable decades ago may no longer hold.],
      [Build winterization or equivalent resilience into the design where the hazard reaches, rather than leaving hardening to each operator's discretion.],
      [Create a structural mechanism that forces the cost of resilience to be paid up front, so a warning is backed by a mandate rather than left as a forecast.],
    ),
    after: (
      [Audit repeated cold-weather or near-miss warnings to confirm they actually produced hardening, treating an unactioned warning as an open liability.],
      [Mandate weatherization with inspections and penalties behind it, so compliance does not depend on each operator absorbing a cost it can pass to consumers.],
      [Track the changing rate of the rare event so a designed-out capability is reconsidered when the odds move, not only after a catastrophe.],
    ),
  ),
  courses: ("LEN 7", "LEN 8"),
)
