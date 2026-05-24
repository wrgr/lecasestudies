// ============================================================
// Chapter 7 — The Evidence Gap (extras)
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 83,
  title: "LIBOR Manipulation",
  year: "2003 – 2012",
  domains-list: ("gov", "tech"),
  modes-code: "GN",
  impact: "Major banks fined more than $9B; the benchmark underlying ~$350T of contracts was manipulable; replaced by SOFR",
  diagram: dgm.dgm-compare(
    "LIBOR",
    "estimates",
    "SOFR",
    "transactions",
    framing: "the reform changed the unit of measurement, not the regulator",
    caption: "LIBOR — an instrument whose design invited the gaming",
  ),
  kind: "failure",
  summary: [
    LIBOR — the London Interbank Offered Rate — was the benchmark
    interest rate referenced in roughly \$350 trillion of financial
    contracts, yet it was set each day not from observed transactions but
    from a small panel of banks' estimates of what they would pay to
    borrow. For about a decade, banks systematically shaded those
    estimates to favor their own derivatives positions; the coordination
    was later laid bare in subpoenaed trader-and-submitter messages. The
    capability gap was in the design of the benchmark itself: it asked for
    declarations, not observations, and the architecture invited gaming.
    Regulators levied more than \$9 billion in fines, and LIBOR was
    eventually replaced by SOFR, a rate built from actual transactions.
    The reform changed the unit of measurement, not just the rules.
  ],
  sections: (
    // -- Background --
    [
      LIBOR was the benchmark interest rate underlying an estimated \$350
      trillion in loans, mortgages, and derivatives worldwide. It was set
      daily by a panel of large banks, each submitting an estimate of the
      rate at which it could borrow — a self-reported figure rather than a
      record of any transaction that had actually occurred. Because the same
      banks that set the rate held derivatives whose value moved with it, the
      instrument asked the parties with the most to gain to supply the very
      numbers that would decide their gains.#cn()
    ],
    // -- What Happened --
    [
      For roughly a decade from the early 2000s, traders at multiple banks
      asked their firms' rate submitters to shade the daily LIBOR figure
      up or down to benefit the banks' derivatives books. The requests
      were routine and documented in internal messages later subpoenaed by
      regulators — casual, repeated, and unconcealed, which is the signature
      of conduct the participants did not believe could be detected. During
      the 2008 crisis, some banks also lowballed submissions to appear
      healthier than they were, bending the rate to mask their own funding
      stress as well as to profit.#cn()
    ],
    // -- The Investigation --
    [
      Investigations by the U.S. Department of Justice, UK regulators, and
      others produced settlements with Barclays, UBS, Deutsche Bank, RBS,
      and others totaling more than \$9 billion. The UK Treasury
      commissioned the Wheatley Review, which concluded that the
      benchmark's reliance on subjective estimates rather than
      transactions was the structural flaw that made manipulation possible.
      The review located the fault in the instrument rather than only in the
      individuals who exploited it, treating the gaming as the predictable
      output of a design that left the door open.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability that was missing was the basic architectural choice
      to measure observations rather than declarations. A benchmark built
      on what banks said they would pay is gameable by anyone willing to
      misstate; a benchmark built on transactions that actually occurred
      is not. The gaming, once it began, was systematic rather than
      occasional — exactly what the design invited — and because the figure
      flowed into hundreds of trillions in contracts, a small shading of the
      submission moved enormous sums while leaving no trace in any executed
      trade.#cn()
    ],
    // -- Aftermath & Reform --
    [
      LIBOR was phased out and replaced by SOFR, the Secured Overnight
      Financing Rate, which is constructed from observed overnight
      Treasury repo transactions. The transition took roughly a decade and
      required coordination across regulators in multiple jurisdictions;
      the reform re-engineered the measurement at the architecture level
      rather than merely policing the old one. By anchoring the benchmark to
      trades that actually settle, the redesign removed the discretion that
      had been the lever for manipulation, rather than asking submitters to
      exercise that discretion more honestly.#cn()
    ],
  ),
  references: (
    [U.S. Department of Justice settlements with Barclays, UBS, Deutsche Bank, RBS et al. (2012–2015) — the manipulation and fines.],
    [Wheatley, M., _The Wheatley Review of LIBOR: Final Report_ (2012) — the estimate-vs-transaction design flaw (paraphrased).],
    [Wheatley Review (2012) — recommendation to anchor benchmarks in observed transactions.],
    [Stenfors, A. (2017), _Barometer of Fear_ — the mechanics of submission gaming.],
    [Alternative Reference Rates Committee / Federal Reserve, SOFR documentation — the transaction-based replacement.],
  ),
  quote: [The architecture of LIBOR invited the manipulation it experienced.],
  quote-source: "Paraphrasing the Wheatley Review of LIBOR, 2012",
  le-insight: [
    LIBOR is the canonical financial-system case for an instrument
    whose design invites the gaming it then experiences. The
    capability that was missing was the basic architectural choice to
    measure observations rather than declarations. The reform —
    SOFR — re-engineered the measurement at the architecture level.
  ],
  lens-approach: [
    LENS uses LIBOR in LEN 4 as the canonical measurement-architecture
    case at financial-system scale and in LEN 7 for the cross-
    jurisdictional governance reform that produced SOFR. The case
    pairs with Wells Fargo (Case 70) and Volkswagen (Case 71) as
    measurement-gaming cases.
  ],
  literature-items: (
    [Wheatley Review (2012)],
    [Stenfors (2017), _Barometer of Fear_],
    [Hou & Skeie, "LIBOR: Origins, Economics, Crisis, Scandal" (2014)],
  ),
  reflection-list: (
    [Identify a benchmark in your domain that is constructed from declarations rather than observations. What gaming pressure does it experience?],
    [Design the observation-based replacement for that benchmark.],
    [The same panel banks set LIBOR and held positions that moved with it. Identify a measurement in your domain where the party supplying the figure benefits from its level, and design the separation that would remove the conflict.],
  ),
  approaches: (
    during: (
      [Anchor the benchmark in observed, settled transactions from the outset, so the figure cannot be set by anyone's declaration of what they would pay.],
      [Separate the parties who supply the input from the parties who profit from its level, eliminating the conflict of interest the panel design built in.],
      [Stress-test the instrument against an adversary who wants to move it: if a small misstatement shifts large contract value undetectably, redesign before fielding.],
    ),
    after: (
      [Audit submissions against independent transaction data so a divergence between what is reported and what actually trades surfaces the gaming early.],
      [Monitor submitter-trader communications and position-aligned shading as a leading indicator, rather than waiting for a subpoena to reveal it.],
      [Sustain the reform at the architecture level — keep the benchmark transaction-based — rather than relying on policing discretion that can quietly return.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
)

#case(
  number: 84,
  title: "Atlanta Public Schools Cheating Scandal",
  year: "2009 – 2015",
  domains-list: ("education", "gov"),
  modes-code: "GN",
  impact: "~180 educators implicated; 35 indicted; 11 convicted under RICO statute; foundational U.S. education measurement-gaming case",
  diagram: dgm.dgm-stat(
    "180",
    "educators implicated · dozens of schools",
    micro: "the institution being measured operated the instrument that measured it",
    caption: "Atlanta Public Schools — measurement gaming under high-stakes testing",
  ),
  kind: "failure",
  summary: [
    Under a celebrated superintendent, Atlanta Public Schools was held up
    nationally as a high-performing urban district. The performance was
    substantially fabricated. A state special investigation, supported by
    the Georgia Bureau of Investigation, and reporting by the _Atlanta
    Journal-Constitution_ found that for several years educators across
    dozens of schools had systematically erased and corrected students'
    answers on state standardized tests. The cheating was organized —
    principals pressured teachers, staff held "erasure parties" after
    testing days — and the incentive system rewarded the gaming with
    bonuses and promotions. Around 180 educators were implicated, 35
    indicted, and 11 convicted under Georgia's racketeering statute. The
    capability gap lay in the measurement architecture: the institution
    being measured operated the instrument that measured it, with no
    independent audit.
  ],
  sections: (
    // -- Background --
    [
      During the 2000s, Atlanta Public Schools under superintendent
      Beverly Hall was celebrated nationally for rapid gains on Georgia's
      high-stakes standardized tests. Bonuses, public recognition, and job
      security were tied directly to those scores, and the district
      administered and reported the very tests on which it was being
      judged. With the reward attached to the number and the number produced
      in-house, the people under pressure to improve the score also
      controlled the answer sheets that determined it.#cn()
    ],
    // -- What Happened --
    [
      Over several years, educators at dozens of APS elementary and middle
      schools systematically changed students' answers after testing. The
      cheating was organized rather than incidental: principals pressured
      teachers to hit targets, and staff held after-hours "erasure
      parties" to correct answer sheets. Suspiciously high rates of
      wrong-to-right erasures flagged the pattern — a statistical fingerprint
      the gaming left behind precisely because correcting a wrong answer to a
      right one is far rarer, by chance, than the reverse.#cn()
    ],
    // -- The Investigation --
    [
      A 2009 _Atlanta Journal-Constitution_ analysis of erasure data,
      followed by the state's Office of Student Achievement and a
      Governor-ordered special investigation supported by the Georgia
      Bureau of Investigation, documented the scheme in a 2011 report.
      Roughly 180 educators were implicated; 35 were indicted and 11
      convicted under Georgia's RICO statute, the report finding the
      administration had emphasized results and praise "to the exclusion
      of integrity and ethics." That an investigation came from outside the
      district — a newspaper and state investigators, not the schools — is
      itself the mark of the missing independent check.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability gap was at the measurement architecture: the
      institution being measured also operated the instrument that
      measured it. High-stakes incentives without an independent audit are
      a textbook setup for Campbell's Law — the more a measure is used for
      decision-making, the more it will be corrupted. The students were
      not learning; the system was rewarding the appearance of learning, so
      the score rose while the underlying capability it was meant to certify
      went unmeasured and, for the children, unmet.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The convictions made APS the most prominent U.S. case of
      high-stakes-testing fraud and fuelled a broader reassessment of
      accountability-testing regimes. The structural lesson — that a
      measurement used for consequential decisions needs an audit
      independent of the institution being measured — is direct, but is
      still rarely implemented at scale, because the independent audit costs
      money and political will that the high score, once reported, makes
      seem unnecessary.#cn()
    ],
  ),
  references: (
    [Special Investigators, _Final Report on Atlanta Public Schools_ (2011) — the organized cheating and the quoted finding.],
    [_Atlanta Journal-Constitution_ investigative series (2009–2011) — the erasure-rate analysis.],
    [_State of Georgia v. Hall et al._ (2014–2015) — indictments and RICO convictions.],
    [Koretz, D. (2017), _The Testing Charade_ — high-stakes-testing distortion.],
    [Campbell, D. (1976), "Assessing the Impact of Planned Social Change" — Campbell's Law.],
  ),
  quote: [Dr. Hall's administration emphasized test results and public praise to the exclusion of integrity and ethics.],
  quote-source: "Georgia Special Investigators' Report on Atlanta Public Schools, 2011",
  le-insight: [
    The APS cheating scandal is the strongest available case for
    measurement-gaming under high-stakes incentives in education. The
    capability gap was at the measurement architecture: the
    institution being measured operated the instrument that measured
    it. The reform pattern is direct — independent measurement audit —
    but rarely implemented at scale.
  ],
  lens-approach: [
    LENS uses APS in LEN 4 as the foundational U.S. education
    measurement-gaming case and in LEN 7 for the incentive-
    architecture failure. Studio projects examine how an independent
    audit would have caught the cheating.
  ],
  literature-items: (
    [Special Investigators Final Report (2011)],
    [Koretz, _The Testing Charade_ (2017)],
    [Campbell, "Assessing the Impact of Planned Social Change" (1976) — Campbell's Law],
  ),
  reflection-list: (
    [Identify a high-stakes measurement in your domain whose audit is operated by the institution being measured. What would change with independent audit?],
    [Apply Campbell's Law to a current high-stakes measurement system. What distortion is predicted?],
    [The erasure-rate analysis caught APS only after the fact. Design a continuous integrity signal — a statistical fingerprint of gaming — that would flag the pattern as it emerged rather than years later.],
  ),
  approaches: (
    during: (
      [Separate test administration and scoring from the institution being judged, so the party with the incentive to inflate the number never controls the instrument that produces it.],
      [Engineer a statistical integrity check — such as wrong-to-right erasure-rate monitoring — into the measurement system before scores carry consequences.],
      [Anticipate Campbell's Law when attaching bonuses and job security to a metric, and design the audit as part of the incentive, not as an afterthought.],
    ),
    after: (
      [Run independent, ongoing audits of the high-stakes measure rather than relying on a newspaper or state investigators to surface fraud after years.],
      [Monitor for the appearance of learning diverging from independent evidence of learning, so the gap is caught while the score still means something.],
      [Sustain the audit's funding and authority against the complacency a high reported score creates, since the cost of checking looks unnecessary exactly when it is most needed.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
)

#case(
  number: 85,
  title: "Bernard Madoff / SEC Failures",
  year: "1992 – 2008",
  domains-list: ("gov", "tech"),
  modes-code: "GKN",
  impact: "~$65B Ponzi scheme — the largest in history; SEC repeatedly investigated and cleared Madoff; foundational regulator-capability case",
  diagram: dgm.dgm-timeline(
    (("Markopolos memo", "2000"), ("re-submitted", "2005"), ("SEC clears", "2006"), ("collapse", "2008")),
    emphasis: 1,
    caption: "Madoff — the regulator received the evidence; the regulator lacked the staff to evaluate it",
  ),
  kind: "failure",
  summary: [
    Bernard Madoff ran the largest Ponzi scheme in history — roughly \$65
    billion in fictitious account value — for years while the SEC
    repeatedly investigated and cleared him. Financial analyst Harry
    Markopolos delivered the agency a detailed memo in 2005, "The World's
    Largest Hedge Fund is a Fraud," showing that Madoff's steady returns
    were mathematically impossible. The SEC opened an investigation and
    concluded no action was warranted. Madoff operated until his sons
    turned him in during the 2008 crisis, when redemptions became
    impossible to honor. The SEC Inspector General later found the staff
    assigned lacked the expertise to evaluate Markopolos's arguments and
    had deferred to Madoff's industry stature. The capability gap was at
    the regulator's technical-evaluation pipeline, not at the evidence —
    which was specific and checkable.
  ],
  sections: (
    // -- Background --
    [
      Bernard Madoff was a former NASDAQ chairman and a respected Wall
      Street figure whose investment arm reported remarkably steady
      returns for years. Those returns were entirely fictitious: client
      funds were never invested, and earlier investors were paid with
      later investors' money — a Ponzi scheme that eventually represented
      some \$65 billion in fabricated account value. The very steadiness
      that reassured investors was the tell: real markets do not deliver an
      almost unbroken line of gains, and the absence of the normal volatility
      was itself evidence the numbers were manufactured.#cn()
    ],
    // -- What Happened --
    [
      Financial analyst Harry Markopolos concluded by analysis that
      Madoff's returns were mathematically impossible and delivered the
      SEC a detailed memorandum in 2005 titled "The World's Largest Hedge
      Fund is a Fraud." The SEC opened an investigation and concluded that
      no enforcement action was warranted. The warning was not a vague
      suspicion but a quantitative case any competent reviewer could in
      principle retrace, which is what makes the dismissal so telling. Madoff
      continued operating until December 2008, when the financial crisis made
      redemptions impossible and his sons reported him.#cn()
    ],
    // -- The Investigation --
    [
      The SEC Office of Inspector General's 2009 report found the agency
      had received credible, specific complaints across more than a decade
      and "missed numerous opportunities" to uncover the fraud. The staff
      assigned to Madoff lacked the expertise to evaluate Markopolos's
      technical arguments, and the institutional culture had defaulted to
      treating Madoff as a respected industry figure rather than following
      the evidence. Stature stood in for analysis: the reviewers weighed who
      Madoff was instead of whether the math could be true, and the
      reputational halo did the work that scrutiny should have.#cn()
    ],
    // -- The Capability Gap --
    [
      The complaint was specific; the math was checkable; the institution
      simply did not have the people to check it. The capability gap was
      at the regulator's technical-evaluation pipeline, not at the
      evidence. A regulator whose technical depth lags the entities it
      oversees cannot act on even a correct and well-documented warning —
      and because the gap is in the evaluator rather than the tip, more tips
      would not have helped; the agency could not have used them.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The collapse wiped out tens of thousands of investors and prompted
      SEC reforms to its handling of tips and referrals, its examination
      procedures, and its recruitment of staff with quantitative and
      trading expertise, including the creation of an Office of Market
      Intelligence. Each reform addressed a different part of the same
      pipeline — getting the tip in, getting it to someone who could read it,
      and having someone who could — so that a future Markopolos memo would
      meet an evaluator able to test it. Madoff is paired with Theranos
      (Case 69) as a case in which a regulator lacked the technical
      capability to challenge the evidence in front of it.#cn()
    ],
  ),
  references: (
    [SEC Office of Inspector General, _Investigation of Failure of the SEC to Uncover Madoff's Ponzi Scheme_, Report OIG-509 (2009) — the quoted finding.],
    [Markopolos, H. (2010), _No One Would Listen_ — the 2005 memo and its dismissal.],
    [_United States v. Madoff_ (2009) — guilty plea and the ~\$65B figure.],
    [SEC OIG (2009) — staff expertise gap and deference to Madoff's stature.],
    [SEC post-Madoff reforms (2009–2010), including the Office of Market Intelligence for tip and referral triage.],
  ),
  quote: [The agency missed numerous opportunities to discover the fraud.],
  quote-source: "SEC Office of Inspector General Report OIG-509, 2009",
  le-insight: [
    The Madoff case is the canonical example of a regulator without
    the technical capability to evaluate the evidence it received.
    The complaint was specific. The math was checkable. The institution
    did not have the people to check it. The capability gap was at
    the regulator's expertise pipeline, not at the evidence.
  ],
  lens-approach: [
    LENS uses Madoff in LEN 4 for technical-evidence evaluation and
    in LEN 7 for regulator-capability deliverables. The case pairs
    with Theranos (Case 69) as cases where regulators lacked the
    technical depth to challenge the evidence presented to them.
  ],
  literature-items: (
    [SEC OIG Report (2009)],
    [Markopolos (2010), _No One Would Listen_],
    [Cohen & Goldsmith (1999), regulatory-capacity literature],
  ),
  reflection-list: (
    [Identify a regulator in your domain whose technical evaluation capability has not kept pace with the entities it regulates. What is the resulting blind spot?],
    [Design the regulator-side technical-capability deliverable that should have allowed the SEC to evaluate the Markopolos memo on its merits.],
    [The SEC weighed Madoff's stature over Markopolos's math. Design a triage process that forces a tip to be evaluated on its technical merits before the subject's reputation is allowed to enter the decision.],
  ),
  approaches: (
    during: (
      [Staff the evaluation pipeline with quantitative and trading expertise matched to the entities being overseen, so a checkable claim meets someone able to check it.],
      [Build tip-and-referral triage that routes a specific, technical complaint to a qualified evaluator rather than letting the subject's reputation decide its fate.],
      [Require warnings to be assessed on their merits first, structurally separating the analysis of the math from any weighing of who the subject is.],
    ),
    after: (
      [Audit closed investigations for cases dismissed despite specific, checkable evidence, surfacing where the evaluator — not the evidence — was the failure point.],
      [Monitor for returns or results too smooth to be real as a leading indicator, treating the absence of expected volatility as a signal to investigate.],
      [Sustain the regulator's technical depth against the regulated industry's growing sophistication, since a depth gap quietly reopens the same blind spot over time.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
)

#case(
  number: 86,
  title: "9/11 Intelligence Sharing Failures",
  year: "1996 – 2001",
  domains-list: ("defense", "gov"),
  modes-code: "GK",
  impact: "2,977 killed; the 9/11 Commission found systemic intelligence-sharing failures across the U.S. government",
  diagram: dgm.dgm-ring(
    "?",
    ("CIA", "FBI", "NSA", "INS", "State", "FAA"),
    framing: "no institution responsible for the integration as a deliverable",
    caption: "9/11 — cross-agency information sharing as missing architecture",
  ),
  kind: "failure",
  summary: [
    The September 11, 2001 attacks, which killed 2,977 people, were
    enabled in part by intelligence the U.S. government already held but
    never integrated. The CIA knew, from a January 2000 meeting in Kuala
    Lumpur, that two future hijackers had entered the country; it did not
    tell the FBI. The FBI separately flagged suspicious flight-training
    activity in Phoenix and Minneapolis in 2001, but that information was
    never aggregated. Visa issuance, immigration tracking, and
    watch-listing were each run by a different agency, and the handoffs
    between them depended on individual initiative that no institution
    required. The 9/11 Commission called it a "failure of imagination" — a
    framing critics say understates the structural gap. The reform that
    followed built the cross-agency architecture, the ODNI and the NCTC,
    that had not existed.
  ],
  sections: (
    // -- Background --
    [
      By 2001, U.S. counterterrorism depended on many agencies — CIA, FBI,
      NSA, State, INS, FAA — each holding a piece of the picture. No
      institution was responsible for integrating those pieces; cross-agency
      information sharing depended on individuals choosing to pass
      information along rather than on any architecture that required it.
      Each agency's incentives, classification rules, and turf reinforced the
      boundary, so the natural tendency was to hold information rather than to
      push it across a line no one was charged with bridging.#cn()
    ],
    // -- What Happened --
    [
      On 11 September 2001, nineteen hijackers seized four aircraft and
      killed 2,977 people. In the months and years before, the warning
      signs had been distributed across the government: the CIA tracked two
      future hijackers from a January 2000 meeting in Kuala Lumpur but did
      not watch-list them or notify the FBI; FBI field offices flagged
      suspicious flight-training activity in Phoenix and Minneapolis; none
      of it was aggregated into a single picture. Any one fragment looked
      minor in isolation; only assembled would they have shown the shape of
      the plot, and assembly was exactly the function no one performed.#cn()
    ],
    // -- The Investigation --
    [
      The 9/11 Commission and the earlier Congressional Joint Inquiry
      documented specific failures of information sharing across the FBI,
      CIA, and NSA. The Commission famously concluded that "the most
      important failure was one of imagination" — a framing later
      criticized as understating the structural nature of the gap, which
      was less a lack of imagination than an absence of any institution
      responsible for integration. The distinction matters for the remedy: a
      failure of imagination invites exhortation to think harder, while a
      structural gap demands an institution be built to close it.#cn()
    ],
    // -- The Capability Gap --
    [
      The intelligence sharing did not happen because no institution owned
      it as a deliverable. Each agency was competent inside its own
      boundary; the integration across boundaries existed nowhere as a
      required function. The missing capability was an architecture —
      shared watch-lists, mandated handoffs, a body responsible for fusing
      the picture — rather than more raw collection. The government did not
      lack data; it lacked the connective tissue to turn data held in many
      places into a single picture anyone was accountable for assembling.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The Intelligence Reform and Terrorism Prevention Act of 2004 created
      the Office of the Director of National Intelligence and the National
      Counterterrorism Center, and fusion centers followed — the
      institutional architecture for cross-agency information sharing that
      had not previously existed. By creating bodies whose explicit mandate
      was integration, the reform converted information sharing from an act
      of individual initiative into a required function someone owned. The
      case is foundational in U.S. national-security policy for treating
      cross-agency capability as an engineerable institutional deliverable.#cn()
    ],
  ),
  references: (
    [National Commission on Terrorist Attacks Upon the United States, _The 9/11 Commission Report_ (2004) — the quoted "failure of imagination" and the specific sharing failures.],
    [_9/11 Commission Report_ (2004) — the Kuala Lumpur tracking and the Phoenix/Minneapolis flagging.],
    [_Joint Inquiry into Intelligence Community Activities Before and After September 11, 2001_ (2002) — cross-agency information-sharing failures.],
    [Zegart, A. (2007), _Spying Blind_ — structural-organizational analysis of the failures.],
    [Intelligence Reform and Terrorism Prevention Act of 2004 — creation of the ODNI and NCTC.],
  ),
  quote: [The most important failure was one of imagination.],
  quote-source: "The 9/11 Commission Report, 2004",
  le-insight: [
    9/11 is the foundational U.S. case for cross-agency information-
    sharing as an engineering deliverable. The architecture had not
    been built. The reform built it. The cost of the missing
    architecture was paid in 2001. The discipline LENS represents is
    the kind of work that, applied across the U.S. intelligence
    community in the 1990s, would have produced the architecture
    earlier.
  ],
  lens-approach: [
    LENS uses 9/11 in LEN 8 as the foundational case for cross-
    organizational capability and in LEN 7 for the governance
    architecture of multi-agency systems. Studio projects compare
    9/11 with Eagle Claw (Case 46) as institutional-architecture
    failures of different kinds.
  ],
  literature-items: (
    [9/11 Commission Report (2004)],
    [Zegart, _Spying Blind_ (2007)],
    [Posner, _Preventing Surprise Attacks_ (2005)],
  ),
  reflection-list: (
    [Identify a cross-organizational information flow in your domain that depends on individual initiative rather than institutional architecture. What is the foreseeable failure mode?],
    [Design the institutional deliverable that would have produced ODNI-level information sharing across U.S. intelligence agencies in the 1990s.],
    [The Commission called it a "failure of imagination"; critics called it a structural gap. Take a near-miss in your domain and argue which framing fits — and show how the remedy differs depending on which you choose.],
  ),
  approaches: (
    during: (
      [Assign integration as an explicit deliverable owned by a named body, so the function does not depend on individuals choosing to pass information across a boundary.],
      [Engineer mandated handoffs and shared watch-lists into the architecture, making cross-agency sharing a required function rather than an act of initiative.],
      [Design for fusion of fragments that look minor in isolation, so the system is built to assemble the picture no single holder can see.],
    ),
    after: (
      [Audit cross-boundary information flows for reliance on individual initiative, and treat any flow that depends on goodwill as an unowned failure mode.],
      [Monitor whether the integrating body actually receives and fuses what the component agencies hold, rather than assuming the mandate guarantees the practice.],
      [Sustain the integration architecture against the agency incentives, classification rules, and turf that pull information back behind boundaries over time.],
    ),
  ),
  courses: ("LEN 7", "LEN 8", "LEN 3",),
)

#case(
  number: 87,
  title: "Vioxx Withdrawal",
  year: "1999 – 2004",
  domains-list: ("healthcare",),
  modes-code: "GD",
  impact: "Tens of thousands of excess cardiovascular events estimated; Merck withdrew Vioxx in 2004; ~$4.85B settlement",
  diagram: dgm.dgm-curve(
    ((1.0, 1.0), (2.0, 1.4), (3.5, 1.8), (5.0, 2.4), (6.5, 3.0), (7.5, 0.8)),
    milestone: 7.5,
    milestone-label: "withdrawn",
    x-label: "1999 → 2004",
    y-label: "exposure",
    framing: "signal in internal data; aggregation absent for years",
    caption: "Vioxx — post-market surveillance as a missing deliverable",
  ),
  kind: "failure",
  summary: [
    Merck's painkiller Vioxx (rofecoxib) was approved by the FDA in 1999
    and prescribed to millions. A 2000 trial, VIGOR, found a roughly
    five-fold higher rate of heart attacks in the Vioxx arm than in the
    comparison drug — a signal many read as a protective effect of the
    comparator rather than a cardiovascular risk of Vioxx. Not until the
    placebo-controlled APPROVe trial was halted in 2004 was the risk
    established and the drug withdrawn. For nearly four years, the
    disclosure architecture between Merck's internal data, FDA reviewers,
    and prescribers failed to surface the magnitude of the danger to a
    decision point; an FDA scientist estimated tens of thousands of excess
    cardiovascular events. The reforms that followed — REMS and the
    Sentinel Initiative — built post-market surveillance that had not
    existed.
  ],
  sections: (
    // -- Background --
    [
      Vioxx, a COX-2 inhibitor for arthritis pain, was approved by the FDA
      in 1999 and became one of the most widely prescribed drugs of its
      era. Detecting rare or delayed harms in a drug at that scale depends
      on post-market surveillance — aggregating adverse-event data after
      approval — a function that, at the time, was thin relative to the
      size of the exposed population. A risk too small to surface in a
      pre-approval trial becomes a large absolute toll once a drug reaches
      millions, which is precisely the regime that demands strong
      after-market monitoring.#cn()
    ],
    // -- What Happened --
    [
      The VIGOR trial, published in 2000, reported about a five-fold
      higher rate of myocardial infarction in patients taking Vioxx than
      in those taking naproxen. Merck and many readers interpreted the gap
      as naproxen being protective rather than Vioxx being harmful. That
      reading was not absurd — it was the more comfortable of two
      explanations for the same numbers — but it required the absent
      placebo arm to be true, and the data could not adjudicate between
      them. The placebo-controlled APPROVe trial, terminated in September
      2004, established the cardiovascular risk directly, and Merck withdrew
      the drug.#cn()
    ],
    // -- The Investigation --
    [
      Congressional hearings and subsequent analysis found that signals of
      cardiovascular harm had been present in the trial record for years
      before withdrawal. FDA scientist David Graham testified that the
      risk had been visible well before 2004 and estimated tens of
      thousands of excess heart attacks and sudden cardiac deaths; a 2005
      _Lancet_ analysis quantified the population-level harm. The harm was
      not hidden in some unmeasured corner — it sat in the trial record the
      whole time, waiting for an architecture that would carry it to a
      decision rather than leave it to interpretation.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability gap was in post-market surveillance: the disclosure
      architecture between manufacturer-held data, FDA reviewers, and
      prescribers did not aggregate the signal to a decision boundary for
      nearly four years. The FDA's adverse-event reporting system relied on
      voluntary submissions structured to minimize signal, and was not
      adequate to the volume of the drug's distribution. A system that waits
      for a clinician to choose to file a report will always lag a harm
      spread thinly across millions of prescriptions, because no single
      prescriber sees enough of the pattern to recognize it.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Merck eventually settled litigation for about \$4.85 billion. The
      case drove the creation of Risk Evaluation and Mitigation Strategies
      (REMS) and, in 2008, the FDA's Sentinel Initiative — an active
      post-market surveillance system that queries health-data partners
      rather than waiting for voluntary reports. By going out to the data
      instead of waiting for it to arrive, the reform inverted the logic that
      had let the signal sit unaggregated for years. The reform built the
      surveillance infrastructure that had not previously existed.#cn()
    ],
  ),
  references: (
    [Graham, D. J. et al. (2005), _Lancet_ — population-level cardiovascular risk analysis.],
    [Bombardier, C. et al. (2000), VIGOR trial, _NEJM_ — the five-fold myocardial-infarction signal.],
    [Bresalier, R. et al. (2005), APPROVe trial, _NEJM_ — placebo-controlled confirmation of cardiovascular risk.],
    [U.S. Senate Committee on Finance, hearings on Vioxx (Nov. 2004) — Graham testimony (paraphrased).],
    [FDA Sentinel Initiative documentation (2008–present) — active post-market surveillance.],
  ),
  quote: [The cardiovascular risk was visible in Merck's internal data years before the drug was withdrawn.],
  quote-source: "Paraphrasing David Graham (FDA Office of Drug Safety), Senate Finance Committee testimony, November 2004",
  le-insight: [
    Vioxx is the canonical pharmaceutical case for post-market
    surveillance as a capability deliverable. The signal existed; the
    institutional architecture to aggregate it did not. The reform
    pattern — Sentinel — built the architecture. The case is the
    drug-industry analog of the EHR case (Case 25): a measurement
    architecture too thin for the system that depended on it.
  ],
  lens-approach: [
    LENS uses Vioxx in LEN 4 for post-market surveillance as a
    measurement deliverable and in LEN 7 for the corporate-regulator
    dynamics that allowed signal aggregation to be deferred.
  ],
  literature-items: (
    [Graham et al. (2005), _Lancet_],
    [Avorn, _Powerful Medicines_ (2004)],
    [FDA Sentinel Initiative documentation],
  ),
  reflection-list: (
    [Identify a post-deployment surveillance architecture in your domain that is too thin for the scale of the system it monitors. What is the missing deliverable?],
    [Design the Sentinel-equivalent post-market surveillance system for a new domain.],
    [The VIGOR signal admitted two readings — harmful drug or protective comparator — and the data could not decide. Identify a measurement in your domain whose interpretation is underdetermined, and design the study or instrument that would force the question to a decision.],
  ),
  approaches: (
    during: (
      [Field an active post-market surveillance architecture sized to the exposed population before scale-up, so a harm spread thinly across millions can still aggregate to a decision boundary.],
      [Design trials and data collection to adjudicate between competing readings of a signal, rather than leaving an ambiguous result to the more comfortable interpretation.],
      [Treat signal-aggregation as a defined deliverable carrying evidence from manufacturer data through reviewers to prescribers, not a byproduct of voluntary reporting.],
    ),
    after: (
      [Audit the trial record and adverse-event data for signals already present but never carried to a decision, closing the lag between visibility and action.],
      [Monitor by querying health-data partners actively rather than waiting for voluntary reports that no single prescriber sees enough of the pattern to file.],
      [Sustain post-market surveillance funding against the commercial pressure to defer aggregation, since the cost of waiting compounds across the exposed population.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
)
