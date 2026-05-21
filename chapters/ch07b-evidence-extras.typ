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
  impact: "Major banks fined more than $10B; the benchmark underlying ~$350T of contracts was manipulable; replaced by SOFR",
  diagram: dgm.dgm-compare(
    "LIBOR",
    "estimates",
    "SOFR",
    "transactions",
    framing: "the reform changed the unit of measurement, not the regulator",
    caption: "LIBOR — an instrument whose design invited the gaming",
  ),
  body: [
    The London Interbank Offered Rate (LIBOR) — the benchmark interest
    rate referenced in approximately three hundred fifty trillion
    dollars of financial contracts — was set daily by a small panel
    of banks submitting estimates of what they would pay to borrow.
    The submission was an estimate, not a verified market rate. For
    roughly a decade, multiple banks systematically manipulated their
    submissions to favor their derivatives positions. The
    coordination was visible in internal trader-and-submitter
    communications later subpoenaed by regulators.

    The capability gap was at the design of the benchmark itself: it
    was an *estimate*, not an *observation*. Banks were asked to
    declare what their borrowing rate would be rather than to report
    transactions that had occurred. The architecture invited gaming.
    The gaming, when it happened, was systematic rather than
    occasional.

    LIBOR has now been replaced by SOFR — the Secured Overnight
    Financing Rate — which is constructed from actual transactions
    rather than estimates. The reform took a decade and required
    coordination across multiple regulators globally.
  ],
  quote: [The architecture of LIBOR invited the manipulation it experienced.],
  quote-source: "Paraphrasing the Wheatley Review of LIBOR, 2012",
  sources-list: (
    [Department of Justice settlements with Barclays, UBS, Deutsche Bank, RBS et al. (2012–2015)],
    [Wheatley, M., _The Wheatley Review of LIBOR: Final Report_ (2012)],
    [Stenfors, _Barometer of Fear_ (2017)],
  ),
  le-insight: [
    LIBOR is the canonical financial-system case for an instrument
    whose design invites the gaming it then experiences. The
    capability that was missing was the basic architectural choice to
    measure observations rather than declarations. The reform —
    SOFR — re-engineered the measurement at the architecture level.
  ],
  lens-approach: [
    LENS uses LIBOR in LEN 2 as the canonical measurement-architecture
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
  ),
  courses: ("LEN 2", "LEN 7"),
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
  body: [
    Investigation by Georgia Bureau of Investigation, the state's
    Office of Student Achievement, and the Atlanta Journal-Constitution
    found that educators at scores of Atlanta Public Schools
    elementary and middle schools had systematically changed
    students' answers on state standardized tests over a period of
    several years. The cheating was organized: principals pressured
    teachers, teachers organized "erasure parties" after testing
    days, and the institutional incentive structure rewarded the
    measurement gaming with bonuses, recognition, and promotions.

    The Beverly Hall era at APS had been celebrated nationally as a
    high-performing urban district. The performance was substantially
    fabricated. The students were not learning; the institution was
    rewarding people for the appearance of learning. The capability
    gap was at the incentive architecture and at the measurement
    audit.

    The case is canonical in U.S. education policy for the harms of
    high-stakes testing without an evidence-audit architecture
    independent of the institution being measured.
  ],
  quote: [Unrealistic targets backed by significant consequences pressured employees to cheat.],
  quote-source: "Paraphrasing the Georgia Special Investigators Final Report on Atlanta Public Schools, 2011",
  sources-list: (
    [Special Investigators Final Report on Atlanta Public Schools (2011)],
    [_Atlanta Journal-Constitution_ investigative series (2009–2011)],
    [_State of Georgia v. Hall et al._ (2014)],
  ),
  le-insight: [
    The APS cheating scandal is the strongest available case for
    measurement-gaming under high-stakes incentives in education. The
    capability gap was at the measurement architecture: the
    institution being measured operated the instrument that measured
    it. The reform pattern is direct — independent measurement audit —
    but rarely implemented at scale.
  ],
  lens-approach: [
    LENS uses APS in LEN 2 as the foundational U.S. education
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
  ),
  courses: ("LEN 2", "LEN 7"),
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
  body: [
    Harry Markopolos delivered to the SEC in 2005 a memorandum titled
    "The World's Largest Hedge Fund is a Fraud," outlining in detail
    why Bernard Madoff's purported returns were mathematically
    impossible. The SEC opened an investigation. The investigation
    concluded that no enforcement action was warranted. Madoff
    continued operating until his sons turned him in three years
    later, when the 2008 financial crisis made redemptions impossible
    to honor. By then approximately sixty-five billion dollars had
    been lost.

    The SEC Inspector General's investigation found that the staff
    assigned to Madoff lacked the expertise to evaluate the technical
    arguments Markopolos had made, that the institutional culture
    had defaulted to "Madoff is a respected industry figure" rather
    than to the evidence, and that multiple complaints across more
    than a decade had been similarly dismissed.

    The Madoff case is canonical in U.S. financial regulation for
    the capability gap between the institution responsible for
    enforcement and the technical evidence that should have triggered
    enforcement.
  ],
  quote: [The SEC missed numerous opportunities to discover the Madoff Ponzi scheme.],
  quote-source: "SEC Office of Inspector General Report, 2009",
  sources-list: (
    [SEC Office of Inspector General, _Investigation of Failure to Uncover Madoff's Ponzi Scheme_ (2009)],
    [Markopolos, _No One Would Listen_ (2010)],
    [_United States v. Madoff_ (2009)],
  ),
  le-insight: [
    The Madoff case is the canonical example of a regulator without
    the technical capability to evaluate the evidence it received.
    The complaint was specific. The math was checkable. The institution
    did not have the people to check it. The capability gap was at
    the regulator's expertise pipeline, not at the evidence.
  ],
  lens-approach: [
    LENS uses Madoff in LEN 2 for technical-evidence evaluation and
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
  ),
  courses: ("LEN 2", "LEN 7"),
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
  body: [
    The 9/11 Commission's final report identified specific intelligence
    failures across the FBI, CIA, NSA, and other agencies. The CIA had
    information on two of the future hijackers from a January 2000
    meeting in Kuala Lumpur. That information was not shared with the
    FBI. The FBI had identified suspicious flight-training activity in
    Phoenix and Minneapolis in 2001. That information was not
    aggregated. Visa decisions, immigration tracking, watch-list
    architecture — each was operated by a different agency, and the
    handoffs between them required initiative that the institutional
    architecture did not require.

    The 9/11 Commission's framing — that the attacks were a failure of
    *imagination* — has been criticized as understating the structural
    nature of the gap. The intelligence sharing did not happen because
    no institution was responsible for it as a deliverable. The reform
    that followed — the Office of the Director of National
    Intelligence, the National Counterterrorism Center, fusion centers
    — built the institutional architecture that had not existed.

    The case is foundational in U.S. national-security policy for
    cross-agency capability as an engineerable institutional
    deliverable.
  ],
  quote: [The most important failure was one of imagination.],
  quote-source: "The 9/11 Commission Report, 2004",
  sources-list: (
    [National Commission on Terrorist Attacks Upon the United States, _The 9/11 Commission Report_ (2004)],
    [Joint Inquiry Into Intelligence Community Activities Before and After September 11, 2001 (2002)],
    [Intelligence Reform and Terrorism Prevention Act of 2004],
  ),
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
    LENS uses 9/11 in LEN 9 as the foundational case for cross-
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
  ),
  courses: ("LEN 7", "LEN 9"),
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
  body: [
    Merck's COX-2 inhibitor Vioxx (rofecoxib) was approved by the FDA
    in 1999 for arthritis pain and prescribed widely. Subsequent
    trials, particularly the APPROVe trial, identified an increased
    risk of cardiovascular events that internal Merck analyses had
    also detected as early as 2000. The disclosure architecture between
    Merck's internal data, the FDA reviewers, and the prescribing
    physician community did not surface the magnitude of the
    cardiovascular risk to a decision boundary for nearly four years.

    The Vioxx case is foundational in U.S. drug safety for the gap
    between manufacturer-held adverse-event data and the public-
    health-relevant aggregation of that data. The FDA's Adverse Event
    Reporting System depended on submissions that were structured to
    minimize signal. The institutional capability to detect
    population-level harm in time to prevent it was not adequate to
    the volume of the drug's distribution.

    The reform that followed — REMS programs, the Sentinel Initiative
    — built post-market surveillance infrastructure that did not
    previously exist.
  ],
  quote: [The cardiovascular risk was visible in Merck's internal data years before the drug was withdrawn.],
  quote-source: "Paraphrasing David Graham (FDA Office of Drug Safety), Senate Finance Committee testimony, 18 November 2004",
  sources-list: (
    [Graham, D. J. et al. (2005), _Lancet_, Vioxx cardiovascular risk analysis],
    [Senate Committee on Finance, hearings on Vioxx (2004)],
    [FDA Sentinel Initiative documentation (2008–present)],
  ),
  le-insight: [
    Vioxx is the canonical pharmaceutical case for post-market
    surveillance as a capability deliverable. The signal existed; the
    institutional architecture to aggregate it did not. The reform
    pattern — Sentinel — built the architecture. The case is the
    drug-industry analog of the EHR case (Case 25): a measurement
    architecture too thin for the system that depended on it.
  ],
  lens-approach: [
    LENS uses Vioxx in LEN 2 for post-market surveillance as a
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
  ),
  courses: ("LEN 2", "LEN 7"),
)
