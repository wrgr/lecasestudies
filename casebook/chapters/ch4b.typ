// ============================================================
// Part IV — Defense & National Security · What Works — and the Frontier (Chapter 8)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part IV — Defense & National Security",
  number: "8",
  title: "Defense & National Security — What Works — and the Frontier",
  subtitle: "When training, standards, and sustainment are engineered as one deliverable.",
  epigraph: [The readiness that survived contact was the readiness that had been measured.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Case 136 — gao-weapon-system-sustainment-reviews ----
#case(
  number: 136,
  slug: "gao-weapon-system-sustainment-reviews",
  title: "GAO Weapon-System Sustainment Reviews — Operating Costs without Decision-Grade Data",
  year: "2024 (GAO-24-107378)",
  domains-list: ("defense", "sustainment", "audit"),
  modes-code: "GK",
  impact: "GAO-24-107378 (2024) reviewed DoD's statutory sustainment reviews and found that operating-and-support (O&S) costs — the dominant share (~70%) of a system's lifecycle expense — are not reported to Congress at a level of completeness, consistency, or comparability that supports portfolio-level sustainment decisions; the finding recurs across GAO's weapon-system portfolio reporting and is a frontier evidence-architecture problem, not a failure attributable to any single program",
  kind: "frontier",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "1.4",
  lens-anchor: "D1/PT4",
  leo-anchor: "LEO-1, LEO-4",
  summary: [
    The Government Accountability Office's recurring portfolio
    reviews of DoD weapon-system sustainment — including
    GAO-24-107378 — document a structural evidence-architecture
    problem at the heart of defense sustainment. Operating-and-
    support (O&S) costs typically dominate a weapon system's
    total lifecycle expense, often well above the share of cost
    accounted for by procurement. Decisions about whether to
    modify, sustain, replace, or retire fielded systems therefore
    ride on O&S evidence. GAO has found across multiple reports
    that O&S data are not reported with the completeness,
    consistency, or comparability across systems and components
    that portfolio-level sustainment decisions require. The
    finding is a frontier evidence-architecture problem rather
    than a per-program failure: the data deficiencies are
    structural — across services, across categories, across
    reporting cycles — and the decisions that should be
    grounded in those data are being made on evidence the
    auditor describes as insufficient. The case is the
    sustainment-side companion to MIL-STD-1472H (Case 138):
    the standards layer produces engineered design
    requirements; the sustainment-data layer is where the
    operating evidence to manage those systems over decades is
    supposed to live, and at the portfolio scale it does not
    live there yet.
  ],
  sections: (
    [
      Defense sustainment — the operating, supporting,
      modifying, and ultimately retiring of fielded weapon
      systems — typically consumes the majority of a system's
      total lifecycle cost. The procurement decision that
      receives the most political attention is the smaller
      fraction; the sustainment decisions that follow,
      stretching across decades, dominate the budget. For
      those decisions to be made on decision-grade evidence,
      the operating-and-support cost data have to be reported
      in a form that supports comparison across systems,
      across services, and across years.#cn()
    ],
    [
      The Government Accountability Office has reviewed DoD
      weapon-system sustainment for decades through its
      portfolio-level reporting and through individual program
      reviews. GAO-24-107378, "Weapon System Sustainment,"
      examined a set of selected systems and reported the
      recurring finding: the O&S cost data DoD reports to
      Congress and uses internally are not complete,
      consistent, or comparable in the way portfolio-level
      decisions require. Specific findings have included
      under-reported cost categories, inconsistent definitions
      across services for what counts as sustainment vs.
      modification cost, and gaps in the time series that make
      trend analysis difficult.#cn()
    ],
    [
      The structural form of the finding is what makes the
      case a frontier rather than a failure. There is no
      single program manager whose sustainment data the GAO
      could have fixed; the deficiency is in the reporting
      architecture across the enterprise. Each service has
      legitimate reasons for its specific reporting choices;
      the lack of cross-service comparability is the
      emergent property of those choices, not the result of
      any single error. The decisions that ride on the data
      — modify, sustain, replace, retire across hundreds of
      systems — are being made anyway, on the strongest
      available evidence, which the auditor characterizes as
      insufficient for the question.#cn()
    ],
    [
      The GAO has made recurring recommendations: standardize
      O&S cost categories across services, improve the
      completeness of time-series reporting, make the data
      comparable across systems at the same point in the
      lifecycle. DoD has accepted many recommendations and
      implementation is ongoing. The portfolio-level evidence
      gap has narrowed in specific areas (e.g., depot
      maintenance reporting) and persists in others. The
      case is teachable not because the GAO is right and DoD
      is wrong — the situation is more structural than that
      — but because the gap between the evidence the
      decisions require and the evidence the system can
      currently supply is the canonical frontier instance of
      the evidence-architecture problem at portfolio
      scale.#cn()
    ],
    [
      What LENS takes from the case is the requirement-for-
      requirements form. MIL-STD-1472H (Case 138) is the
      requirements-discipline mechanism for the design phase;
      SUBSAFE (Case 173) is the certification-discipline
      mechanism for the sustainment phase of a specific
      capability boundary. The GAO finding identifies the
      gap that those mechanisms do not fill: the portfolio-
      level evidence architecture for sustainment decisions
      across the enterprise. The case is the worked example
      of why "decision-grade evidence" has to be reframed at
      the portfolio scale — the decision-maker is not the
      program manager but the budget authority — and is one
      of the corpus's strongest grounds for the subobjective *Judgment under inadequate evidence* (4.4). The portfolio
      decision-maker does not get to wait for the evidence
      architecture to be fixed before deciding; the case is
      about how to make the decision with the evidence
      acknowledged as insufficient.
    ],
  ),
  beats: (
    "O&S cost typically dominates weapon-system lifecycle expense; sustainment decisions ride on O&S evidence",
    "GAO-24-107378 and predecessor reports: O&S data not reported with completeness, consistency, comparability portfolio decisions require",
    "Structural problem across services and categories — not attributable to any single program manager",
    "GAO recommends standardized categories, time-series completeness, comparability; DoD implementation ongoing, gap narrowing in places",
    "Frontier evidence-architecture case: how to make portfolio-scale decisions when the available evidence is acknowledged as insufficient",
  ),
  approaches: (
    during: (
      [Treat the evidence architecture for portfolio-level decisions as a deliverable in its own right. The GAO finding is that the deliverable does not yet exist at the scale the decisions require, and that gap is the case.],
      [Specify the cost categories, time-series cadence, and cross-service comparability requirements before the data start flowing, not after — the cost of converging definitions retroactively is high enough to be the recurring GAO finding.],
      [Design the reporting architecture for the question the decision-maker has to answer (modify, sustain, replace, retire) rather than for the workflow the program offices already run; the question shapes the architecture, not the other way around.],
    ),
    after: (
      [Carry the "judgment under inadequate evidence" framing into portfolio-decision documentation. The decision-maker does not get to wait for the evidence architecture to be fixed; the case asks what minimum evidence quality is required to act and what hedges should be documented.],
      [Treat the GAO recommendation set as the structural-fix roadmap, with progress measured by the narrowing of the comparability gap in specific cost categories rather than by claims of overall improvement.],
      [Pair the sustainment-evidence frontier with the design-side standards mechanism (Case 138) so the program understands both halves of the requirements architecture: design criteria for the equipment, evidence architecture for the portfolio.],
    ),
  ),
  references: (
    [Government Accountability Office (2024), "Weapon System Sustainment: DOD Identified Operating and Support Cost Growth but Needs to Improve the Consistency and Completeness of Information to Congress," GAO-24-107378 (Feb. 29, 2024).],
    [Government Accountability Office (recurring), annual "Weapon Systems Annual Assessment" portfolio reports — context for the structural finding.],
    [Department of Defense (2024), DoD response to GAO-24-107378 — acceptance and implementation status of recommendations.],
    [Defense Acquisition University (ongoing), Operating and Support Cost-Estimating Guide — DoD reference on the cost categories whose comparability GAO addresses.],
  ),
  quote: [The portfolio decision-maker does not get to wait for the evidence architecture to be fixed. The case is about how to act with the evidence acknowledged as insufficient.],
  quote-source: "Editors' synthesis of GAO-24-107378 and the recurring sustainment portfolio findings.",
  le-insight: [
    GAO-24-107378 is the frontier evidence-architecture case at
    portfolio scale: the O&S data that dominate weapon-system
    lifecycle decisions are not reported in a form the
    decisions require, and the gap is structural across the
    enterprise. The case is the worked example of the subobjective *Judgment under inadequate evidence* (4.4) at the budget-
    authority scale.
  ],
  lens-approach: [
    GAO weapon-system sustainment is the portfolio-evidence-
    architecture frontier case (induced 1.4; LENS D1/PT4) — used
    in Domain 4 for the subobjective *Judgment under inadequate
    evidence* (4.4) at portfolio scale. Pair with Case 138 and
    Case 173.
  ],
  literature-items: (
    [GAO-24-107378 (2024), Weapon System Sustainment],
    [GAO Weapon Systems Annual Assessment (recurring)],
    [DAU Operating and Support Cost-Estimating Guide],
  ),
  reflection-list: (
    [Identify a portfolio-level decision in your domain that rides on data the auditor would describe as insufficient. What is the minimum evidence-architecture improvement that would convert the data from sub-decision-grade to decision-grade for the specific decision class?],
    [Specify the cost or outcome categories whose comparability across units, services, or time would most change the decision quality. The case's lesson is that comparability has to be specified before the data flow, not after.],
  ),
  courses: ("LEN 1", "LEN 5", "LEN 7"),
)

// ---- Case 137 — u-s-nuclear-navy-rickover-training-model ----
#case(
  number: 137,
  slug: "u-s-nuclear-navy-rickover-training-model",
  title: "U.S. Nuclear Navy / Rickover Training Model",
  year: "1954 – present",
  domains-list: ("defense",),
  modes-code: "TKN",
  impact: "Zero reactor accidents in 60+ years of U.S. Naval nuclear operations; the most demanding nuclear operator training program in the world",
  diagram: dgm.dgm-rickover,
  kind: "intervention",
  summary: [
    Admiral Hyman Rickover built a training and qualification culture for
    the Naval Nuclear Propulsion Program that has produced zero reactor
    accidents across more than 60 years and thousands of reactor-years of
    operation, often in extreme conditions. Every nuclear-trained sailor
    must pass rigorous qualification to zero-defect standards and
    demonstrate competence in oral examination by senior nuclear-qualified
    officers; the culture demands personal accountability, deep technical
    mastery, and a questioning attitude that obliges operators to challenge
    assumptions, including superiors'. The sharpest contrast in this book
    is internal: the same Navy that ran the nuclear program to this
    standard let surface-warfare training decay to CD-ROMs and paid for it
    at Fitzgerald and McCain (Case 124). Same institution, two philosophies —
    and the choice shows up in the casualty columns.
  ],
  sections: (
    // -- Background --
    [
      In the early 1950s the U.S. Navy set out to put nuclear reactors
      aboard ships and submarines — machines whose failure could be
      catastrophic and irreversible, operated by young sailors far from any
      help. The capability problem was absolute: there was no acceptable
      accident rate, so the human operating system had to be engineered to
      an extraordinary standard from inception. Because a reactor at sea
      could not be evacuated or handed to outside experts, the operators
      themselves had to be the entire margin of safety — a constraint that
      forced training to a level no ordinary program would justify.#cn()
    ],
    // -- The Intervention --
    [
      Admiral Hyman Rickover established a training and qualification regime
      requiring every nuclear-trained officer and enlisted sailor to pass
      demanding programs held to zero-defect standards. Operators must
      demonstrate competence through oral examination by senior
      nuclear-qualified officers, and the program embeds continuous
      re-qualification rather than one-time certification. The oral board
      tested understanding rather than recall, and the continuous
      re-qualification meant competence had to be sustained rather than
      banked once — so the standard governed the operator's whole career,
      not just entry to it.#cn()
    ],
    // -- How It Worked --
    [
      The culture pairs technical mastery with a deliberately engineered
      attitude: personal accountability and a mandatory questioning posture
      in which operators are trained to challenge assumptions, including
      those of superiors. Rickover's premise — that people, not
      organizations or management systems, get things done — made the
      qualification ladder, not paperwork, the load-bearing element of safety. The questioning posture is the cultural half of the pair: deep
      technical mastery alone could still defer to a mistaken superior, so
      the obligation to challenge assumptions is what keeps competence from
      being silenced by rank.#cn()
    ],
    // -- The Evidence --
    [
      The result is the longest-running continuous capability-engineering
      record in any high-consequence domain: zero reactor accidents across
      more than six decades and thousands of reactor-years. The cost — the
      qualification ladder, the zero-defect oral boards, the continuous
      re-qualification — is the visible budget-line price of that record.
      The duration is the key evidence: a record sustained across six
      decades and many generations of sailors shows the safety came from the
      engineered system rather than from any one cohort's talent or luck.#cn()
    ],
    // -- What Transferred --
    [
      The internal comparison is the instructive one. The same Navy that
      engineered the nuclear program to this standard let surface-warfare
      training decay to CD-ROM self-study and paid the price at Fitzgerald
      and McCain (Cases 124 and 140). Same institution, same era, opposite
      philosophies, radically different outcomes — the strongest available
      demonstration of capability treated as a system parameter versus
      deferred as a cost. The internal comparison controls for nearly
      everything that usually confounds such claims — one service, one
      manpower system, one budget process — leaving the training philosophy
      itself as the variable that diverged.#cn()
    ],
  ),
  beats: (
    "Reactors at sea allowed no accident rate, forcing the human operating system to extreme standards",
    "Rickover required every nuclear sailor to pass zero-defect qualification and continuous re-examination",
    "Technical mastery paired with a mandatory questioning posture that obliges challenging superiors' assumptions",
    "Zero reactor accidents across sixty years and thousands of reactor-years; duration is the key evidence",
    "Same Navy let surface training decay; internal contrast isolates training philosophy as the variable",
  ),
  references: (
    [Polmar, N. & Allen, T. (2007), _Rickover: Father of the Nuclear Navy_ — the program and Rickover's philosophy (paraphrased).],
    [Naval Nuclear Propulsion Program documentation (NRC/DOE) — qualification standards and the accident record.],
    [Admiral Hyman G. Rickover, "Doing a Job" (Columbia University, Egleston Medal address, 5 November 1982) — "people, not organizations… get things done" (quoted).],
    [GAO-21-168 (2021), _Navy Readiness: Actions Needed to Evaluate and Improve Surface Warfare Officer Career Path_ — the surface community's career path set against the submarine, aviation and EOD communities.],
    [Duncan, F. (1990), _Rickover and the Nuclear Navy_ — the qualification culture.],
  ),
  quote: [Human experience shows that people, not organizations or management systems, get things done.],
  quote-source: "Admiral Hyman G. Rickover, \"Doing a Job,\" Columbia University Egleston Medal address, 5 November 1982",
  le-insight: [
    The Nuclear Navy is the longest-running continuous capability-
    engineering program in any high-consequence domain. The choice to
    treat training as a system parameter rather than as a cost center
    has produced sixty-plus years of zero reactor accidents. The
    contrast with the Surface Navy shows what happens when capability is
    engineered versus when it is deferred — and the price of that engineering (the qualification ladder,
    the zero-defect oral boards, the continuous re-qualification) is visible
    on the budget line.
  ],
  lens-approach: [
    LENS treats the Rickover model in LEN 8 as the anchor organizational-learning case and in LEN 5 as a worked example of
    capability requirements traceable from operational analysis through
    qualification standards. The internal Navy comparison anchors the
    program's core argument about capability as a system parameter.
  ],
  literature-items: (
    [Polmar & Allen (2007), _Rickover_],
    [Duncan, _Rickover and the Nuclear Navy_ (1990)],
    [GAO Navy training-comparison series],
  ),
  reflection-list: (
    [Identify an institution that operates two divisions under different capability philosophies. What does the comparison reveal that neither division could see alone?],
    [Rickover's standard was zero-defect oral examination. What is the equivalent in your domain — and would you survive it?],
    [The Nuclear Navy's safety record is paid for by a durable, visible training budget. What is the equivalent line-item investment in your domain that a comparable safety claim would require — and is it being made?],
  ),
  approaches: (
    during: (
      [Engineer the human operating system to the standard the consequences demand from inception — where there is no acceptable failure rate, make the operators themselves the margin of safety.],
      [Gate qualification on demonstrated understanding through oral examination by senior qualified people, testing comprehension rather than recall.],
      [Pair technical mastery with a mandatory questioning posture so competence is obliged to challenge assumptions, including superiors', rather than be silenced by rank.],
    ),
    after: (
      [Embed continuous re-qualification rather than one-time certification, so competence must be sustained across a career and cannot be banked once and assumed.],
      [Protect the training as a durable, visible budget line, since the qualification ladder and oral boards are the price of the safety record and the first thing tempo will erode.],
      [Sustain the standard across generations of operators, treating a multi-decade record as the evidence the safety comes from the engineered system rather than any one cohort.],
    ),
  ),
  courses: ("LEN 5", "LEN 8", "LEN 3",),
  scale: "big",
  induced-anchor: "1.4",
  lens-anchor: "D1/PT1",
  leo-anchor: "LEO-1",
  evidence-source: "investigation",
)

// ---- Case 138 — mil-std-1472h-human-engineering-as-a ----
#case(
  number: 138,
  slug: "mil-std-1472h-human-engineering-as-a",
  title: "MIL-STD-1472H — Human Engineering as a Binding Acquisition Standard",
  year: "2020 revision (series since 1968)",
  domains-list: ("defense", "human factors", "standards"),
  modes-code: "GK",
  impact: "DoD Design Criteria Standard MIL-STD-1472H, the 2020 revision of a series dating to 1968, converts human-factors and human-engineering findings into binding design criteria across DoD acquisition — controls, displays, anthropometry, workspace, environment, hazards — invoked by acquisition programs as a mandatory or tailored design specification",
  kind: "intervention",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "1.1",
  lens-anchor: "D1/PT3",
  leo-anchor: "LEO-1, LEO-5",
  summary: [
    MIL-STD-1472 is the U.S. Department of Defense's design-criteria
    standard for human engineering — the discipline of making
    equipment usable, safe, and effective for the human operator.
    The series originated in 1968 and has been revised through
    versions A, B, C, D, E, F, G, and most recently H, released
    September 15, 2020. The standard codifies established human-
    factors and ergonomic findings into specific binding design
    criteria: control and display design, anthropometric
    accommodation ranges, workspace dimensions and access, labeling
    and signage, environmental limits (noise, vibration,
    illumination, thermal), and hazard mitigation. Acquisition
    programs invoke MIL-STD-1472H either as a mandatory standard
    or with tailored deviation, making human-factors evidence
    binding rather than advisory. The 2020 revision integrated
    accumulated findings since 2012 (the prior G revision),
    including updates to anthropometric data, environmental
    criteria, and human-system-integration practices. The case is
    the structural archetype of converting a body of human-
    factors research into engineered design requirements; it
    works at the requirement-discipline layer rather than the
    per-platform layer, and is the standard that programs
    referenced when they specify human-engineering deliverables.
  ],
  sections: (
    [
      Human factors engineering as a defense discipline emerged
      from World War II — the documented mismatch between
      cockpit control layouts and pilot perception (Fitts &
      Jones's "designed errors" work) showed that platforms
      could be made un-flyable by avoidable design choices.
      Through the 1950s and 60s the discipline accumulated a
      body of findings on control / display design, anthropometry,
      environmental tolerance, and workspace layout that lived
      across academic publications, military handbooks, and
      service-specific guidance. What was missing was a single
      binding design-criteria standard that an acquisition
      program could specify in a contract.#cn()
    ],
    [
      The DoD response was MIL-STD-1472, first issued in 1968,
      and revised through letter suffixes A (1970), B (1974),
      C (1981), D (1989), E (1996), F (1999), G (2012), and H
      (September 2020). Each revision incorporates accumulated
      findings since the prior version, updated anthropometric
      data (the surveyed populations evolve), and refinements
      to specific criteria informed by service experience. The
      standard is not a list of recommendations; it is a
      Design Criteria Standard, structured so that an
      acquisition program can invoke it as a mandatory
      specification, or tailor specific paragraphs with
      documented deviation.#cn()
    ],
    [
      The structural mechanism is the conversion of human-
      factors findings into engineered requirements. Where the
      research literature might find that controls of a given
      size and force are operable across a defined population
      percentile, MIL-STD-1472H carries that finding as a
      binding design criterion that the program's
      controls must meet. Where the literature finds that
      illumination below a certain level degrades reading
      performance for given character sizes, the standard
      carries that as an environmental limit. Anthropometric
      accommodation — the body-size ranges the equipment must
      fit — is specified to defined population percentiles.
      Hazard analysis is required as part of the design
      process, with mitigation criteria for identified
      hazards.#cn()
    ],
    [
      The case's value to LENS is the requirement-discipline
      form. MIL-STD-1472H is the human-engineering analog of
      what SUBSAFE (Case 173) does for submarine
      watertight-integrity: a binding, recurring, auditable
      requirement set that the program-management chain
      cannot trade away without a documented deviation. The
      acquisition contract invokes the standard, the
      acquirer's human-factors discipline verifies compliance
      against it, and the engineered design carries the
      research findings as binding criteria rather than as
      advice the program might or might not adopt. The 2020
      H revision is notable for the cadence — the eight-year
      gap from G to H — and for the integration of human-
      systems-integration practices reflecting the rise of
      complex software-intensive systems.#cn()
    ],
    [
      The honest framing the case requires is that the standard
      is necessary but not sufficient. MIL-STD-1472H is the
      requirements-discipline mechanism; whether the
      requirements are met in any specific program depends on
      the program's human-factors engineering capacity, the
      acquirer's verification rigor, and the tailoring
      decisions made up front. The standard does not by itself
      guarantee usable equipment; it makes usability a
      contractable, auditable deliverable. Cases of
      operator-platform mismatch in fielded DoD systems
      (e.g., the F-22 OBOGS instrumentation gap in Case 132)
      are not failures of the standard's existence but of the
      tailoring and verification around it. The case teaches
      the requirements-as-deliverable form at the
      human-engineering scale, with the qualification that the
      standard is the mechanism, not the outcome.
    ],
  ),
  beats: (
    "MIL-STD-1472 series 1968 – present; eight revisions through H (Sept 15, 2020)",
    "Design Criteria Standard: controls, displays, anthropometry, workspace, environment, hazards — binding, not advisory",
    "Converts human-factors findings into engineered requirements an acquisition contract can specify",
    "Structural analog of SUBSAFE (Case 173) at the human-engineering scale — requirements-as-deliverable form",
    "Necessary but not sufficient: standard is the mechanism, program tailoring and verification determine the outcome",
  ),
  approaches: (
    during: (
      [Treat the human-factors literature in your domain as a source of engineered requirements, not as design advice. The criterion that survives into a binding standard is the criterion the program is held to.],
      [Specify anthropometric and environmental criteria to defined population percentiles, not to "typical users." The percentile framing is what makes accommodation auditable.],
      [Design the tailoring discipline around the standard so that any deviation from a binding criterion is documented with rationale, and the program retains a record of which criteria it chose not to meet and why.],
    ),
    after: (
      [Maintain the revision cadence the field requires — anthropometric data ages, environmental tolerances drift, human-system-integration practices evolve — so the standard does not become an obsolete reference.],
      [Verify compliance as a discipline distinct from the standard itself; the standard is the requirement, the verification process is the assurance that the requirement is met.],
      [Carry the necessary-but-not-sufficient framing: a binding human-engineering standard is the mechanism by which research findings become contractable; whether the contract is honored is the program's responsibility, not the standard's.],
    ),
  ),
  references: (
    [Department of Defense (2020), MIL-STD-1472H "Department of Defense Design Criteria Standard: Human Engineering," 15 September 2020 — replaces MIL-STD-1472G (2012).],
    [Department of Defense (2012), MIL-STD-1472G — the prior revision; revision history documents the 1968 origin and intermediate letters.],
    [Chapanis, A. (1965), "Man-Machine Engineering" — foundational text for the discipline the standard codifies.],
    [Fitts, P. M., & Jones, R. E. (1947), "Analysis of factors contributing to 460 'pilot error' experiences in operating aircraft controls" — origin of designed-error analysis.],
  ),
  quote: [The criterion that survives into a binding standard is the criterion the program is held to.],
  quote-source: "Editors' synthesis of MIL-STD-1472 revision history.",
  le-insight: [
    MIL-STD-1472H is the structural archetype of converting a
    body of human-factors research into binding engineered
    requirements an acquisition contract can specify. The
    standard is the mechanism by which usability becomes a
    contractable, auditable deliverable rather than design
    advice. It is necessary but not sufficient; tailoring and
    verification determine whether the contract is honored.
  ],
  lens-approach: [
    MIL-STD-1472H is the binding-standard requirements case
    (induced 1.1; LENS D1/PT3). LENS uses it in Domain 1
    (Systems Analysis) for the conversion of research findings
    into engineered requirements, and in Domain 5 (Navigating
    Sociotechnical Constraints) for the tailoring and
    verification disciplines around the standard. Direct pair
    with Case 173 (SUBSAFE) at the requirements-as-deliverable
    layer and with Case 132 (F-22 OBOGS) at the
    standard-versus-tailoring layer.
  ],
  literature-items: (
    [MIL-STD-1472H (2020), DoD Design Criteria Standard],
    [Chapanis (1965), Man-Machine Engineering],
    [Fitts & Jones (1947), pilot-error analysis],
  ),
  reflection-list: (
    [Identify a body of research findings in your domain that programs treat as advisory. What would it take to convert those findings into a binding design-criteria standard an acquirer could specify in a contract?],
    [Specify the tailoring discipline you would put around a binding standard: which paragraphs may be tailored, with what documented rationale, and what is the cadence at which the standard itself is revised against accumulated experience?],
    [The standard is necessary but not sufficient. What verification capacity does your program need to know that the binding criteria are actually met in the delivered system, and where is the gap between standard and verification visible today?],
  ),
  courses: ("LEN 1", "LEN 5", "LEN 7"),
)

// ---- Case 139 — gift-and-the-adoption-gap ----
#case(
  number: 139,
  slug: "gift-and-the-adoption-gap",
  title: "GIFT and the Adoption Gap",
  year: "2012 – present",
  domains-list: ("defense", "education"),
  modes-code: "KGN",
  impact: "Active open-source ITS framework with demonstrated learning effectiveness; ubiquitous fielded adoption in routine military training has not been achieved",
  diagram: dgm.dgm-gift,
  kind: "frontier",
  summary: [
    The Generalized Intelligent Framework for Tutoring (GIFT) is an
    open-source framework, originated at the U.S. Army Research Laboratory,
    for authoring and delivering intelligent tutoring systems. Computer-based
    tutoring has been shown to be nearly as effective as human tutoring
    in well-defined domains, and GIFT exists to lower the barrier to building
    it; the framework is actively developed, with regular releases and a
    peer-reviewed annual symposium. The puzzle is not that GIFT failed — it
    did not — but that ubiquitous fielded adoption across routine military
    training remains limited despite decades of supporting research. That gap
    is the canonical learning-engineering problem: the science is settled,
    the platform exists, the studies are positive — and the institutional
    pathway to scaled adoption is still being built.
  ],
  sections: (
    // -- The Shift --
    [
      Five decades of research established that computer-based tutoring can be
      nearly as effective as human tutoring in well-defined domains — d = 0.76 against 0.79 — and well above no tutoring at all. The
      open question shifted from "does adaptive tutoring work?" to "why isn't
      it everywhere?"#cn() That shift matters because it moves the problem out
      of the laboratory: once the efficacy question is answered, every
      remaining obstacle to scaled use is institutional rather than scientific,
      and the field's research strength stops being the binding constraint.
    ],
    // -- What Is Emerging --
    [
      The Generalized Intelligent Framework for Tutoring (GIFT), originated
      under the U.S. Army Research Laboratory and now developed at DEVCOM, is
      an open-source framework for authoring, delivering, and evaluating
      intelligent tutoring systems — an effort to lower the authoring barrier
      that has historically made ITS expensive to build. It is actively
      maintained, with regular releases and a peer-reviewed annual
      symposium.#cn() Open-sourcing the framework and sustaining a research
      community around it directly attacks the cost-to-build problem, since the
      expense of authoring a tutor from scratch had long been the practical
      reason adaptive tutoring stayed confined to well-funded demonstrations.
    ],
    // -- The Capability Question --
    [
      So the puzzle is not failure — GIFT was not discontinued. It is that
      ubiquitous fielded adoption across routine military training remains
      limited despite a working framework and decades of positive research.
      The science is settled and the platform exists; what is missing is the
      institutional pathway to scaled use.#cn() This is the diagnostic feature
      of the case: the gap is not between idea and prototype but between a
      maintained, evidence-backed framework and the routine training pipelines
      that would have to adopt it, and that latter distance is the one no
      amount of further research closes.
    ],
    // -- Early Evidence --
    [
      The effectiveness evidence is strong — the tutoring-effectiveness
      literature is among the more robust in education — and GIFT-based
      studies continue to demonstrate learning gains. The bottleneck is not
      efficacy.#cn() Because the supporting literature is among the more
      robust in the field, a decision-maker hesitating to field adaptive
      tutoring cannot honestly point to weak evidence as the reason; the
      hesitation traces instead to the missing pathway that would let the
      proven approach be bought, integrated, and made routine.
    ],
    // -- Open Problems --
    [
      What has not been built is the adoption pathway: procurement that can
      buy adaptive tutoring, integration into existing training pipelines,
      instructor-workflow redesign, and the authority structure to make
      adaptive tutoring a default rather than an experiment.#cn() GIFT is the
      case in this book closest to the LENS discipline itself — proof that a
      working technology and settled science do not adopt themselves, and
      that the adoption pathway is an engineering deliverable in its own
      right. Each of those pieces — a contracting vehicle, a pipeline
      integration, a redesigned instructor workflow, an owner with authority —
      is a concrete artifact someone must build, and their absence, not any
      technical shortfall, is what keeps the framework experimental.
    ],
  ),
  beats: (
    "Decades of research settled efficacy; the open question became why adaptive tutoring isn't everywhere",
    "ARL and DEVCOM sustain GIFT as open-source authoring infrastructure with releases and symposium",
    "Ubiquitous fielded adoption across routine military training remains limited despite the working framework",
    "Tutoring-effectiveness literature is robust and GIFT-based studies continue to show learning gains",
    "Procurement, pipeline integration, instructor workflows, and authority structure remain unbuilt adoption artifacts",
  ),
  references: (
    [K. VanLehn, "The Relative Effectiveness of Human Tutoring, Intelligent Tutoring Systems, and Other Tutoring Systems," _Educational Psychologist_ 46(4) (2011) — tutoring effectiveness.],
    [GIFT Project, gifttutoring.org — the framework, releases, and development under ARL / DEVCOM.],
    [Editors' synthesis of the GIFT adoption record — active development but limited ubiquitous fielding (quoted).],
    [R. Sottilare, A. Graesser, X. Hu & H. Holden (eds.), _Design Recommendations for Intelligent Tutoring Systems_ (U.S. Army Research Laboratory, 2013– ); IJAIED Special Issue on GIFT (2017).],
    [J. Goodell & J. Kolodner, _Learning Engineering Toolkit_ (2022) — adoption as an engineering problem.],
  ),
  quote: [The technology works. The institutional pathway to ubiquitous fielded use does not yet.],
  quote-source: "Editors' synthesis of the GIFT adoption record",
  le-insight: [
    GIFT is the most directly relevant case in this book to the
    learning-engineering discipline itself. The technology works, the
    learning science works, the framework is active and supported. What
    has not been built is the institutional adoption pathway —
    procurement, training-pipeline integration, instructor workflow
    redesign, the authority structure — that would make adaptive
    tutoring a default rather than an experiment.
  ],
  lens-approach: [
    LENS treats GIFT in LEN 1 as the problem-framing case for the
    discipline, in LEN 8 as the foundational adoption-pathway case,
    and in LEN 10 (capstone) as a prompt for designing the institutional
    deliverables that would close an adoption gap of this shape.
  ],
  literature-items: (
    [GIFT Project documentation and GIFTSym 12 / 13 proceedings],
    [Goodell & Kolodner (2022), _Learning Engineering Toolkit_],
  ),
  reflection-list: (
    [GIFT exists, is supported, and works. Adoption at scale does not. What is the equivalent in your domain — an effective intervention whose adoption pathway has not been engineered?],
    [Design the institutional adoption deliverable that would move adaptive tutoring from "available framework" to "default routine practice" in one operational training pipeline.],
    [GIFT's bottleneck is procurement, pipeline integration, instructor-workflow redesign, and authority — not efficacy. For an effective tool in your domain, which of those four is the binding constraint, and who would have to own it for adoption to become the default?],
  ),
  approaches: (
    during: (
      [Treat the adoption pathway — procurement, pipeline integration, instructor-workflow redesign, authority — as a named deliverable of the program, not a follow-on hope.],
      [Build the tutoring capability against an existing training pipeline so integration is designed in, rather than fielding a framework and expecting pipelines to bend to it.],
      [Specify who holds the authority to make adaptive tutoring a default, so the decision to scale is owned rather than left to volunteers.],
    ),
    after: (
      [Measure fielded routine use, not just study-level learning gains, so the institution can see whether adoption is actually happening.],
      [Sustain the open-source framework and its community so the authoring-cost barrier it lowered does not quietly rise again as releases age.],
      [Audit each stalled pipeline to find which adoption artifact is missing — contracting vehicle, integration, workflow, owner — and treat that as the engineering gap to close.],
    ),
  ),
  courses: ("LEN 1", "LEN 10", "LEN 8", "LEN 6",),
  scale: "big",
  induced-anchor: "1.4",
  lens-anchor: "D2/PT4",
  leo-anchor: "LEO-2",
)

// ---- Case 140 — navy-surface-warfare-readiness-reform ----
#case(
  number: 140,
  slug: "navy-surface-warfare-readiness-reform",
  title: "Navy Surface Warfare Readiness Reform",
  year: "2018 – present",
  domains-list: ("defense",),
  modes-code: "TKN",
  impact: "Threefold increase in initial ship-driving training hours planned by 2021; 10 pass-or-fail career assessments, 3 of them go/no-go; Ready-for-Sea Assessments — 3 of 18 forward-deployed ships immediately sidelined",
  diagram: dgm.dgm-navy-reform,
  kind: "intervention",
  summary: [
    After the fatal 2017 Fitzgerald and McCain collisions (Case 124) exposed
    gutted seamanship training, the U.S. Navy overhauled how it builds
    surface-warfare competence. It restored the Surface Warfare Officers
    School from CD-ROM self-study to classroom and simulator instruction,
    stood up Mariner Skills Training Centers on both coasts, created ten
    pass-or-fail career assessments — three of them no-go gates — and
    adopted aviation-style debriefing. New Ready-for-Sea Assessments
    evaluated forward-deployed ships against a deliverable standard; three
    of the first eighteen were immediately sidelined. The structural change
    is real and the investment substantial. What is missing is the third
    half: GAO found in 2019 that the Navy had not put key processes and assessments in place to evaluate the effectiveness of its changes to ship-driving training — a live success in structure, with evidence
    of effect still outstanding.
  ],
  sections: (
    // -- Background --
    [
      In 2017, the destroyers USS Fitzgerald and USS John S. McCain
      suffered fatal collisions (Case 124) that investigations traced in part
      to seamanship and navigation training degraded to CD-ROM self-study.
      The Navy faced a clear capability gap: officers were going to sea
      without the hands-on ship-driving competence the job required. The
      diagnosis was unusually unambiguous — two avoidable collisions in one
      year pointing at the same eroded fundamentals — which is what
      converted a long-tolerated shortfall into a mandate for structural
      change.#cn()
    ],
    // -- The Intervention --
    [
      Beginning in 2018, the Navy restored the Surface Warfare Officers
      School from self-study to classroom-plus-simulator instruction,
      established Mariner Skills Training Centers on both coasts, set out a threefold increase in initial ship-driving training hours by 2021, and created ten pass-or-fail
      assessments across an officer's career path — three of them no-go
      gates that can halt advancement. The no-go gates were the structural
      teeth: by tying advancement to demonstrated competence rather than
      time served, they made the qualification something the system would
      stop on, not merely something it recorded.#cn()
    ],
    // -- How It Worked --
    [
      The reform paired technical investment — simulators, restored
      curricula, qualification gates — with a cultural change borrowed from
      aviation: structured debriefing and explicit gate ownership. New
      Ready-for-Sea Assessments evaluated forward-deployed ships against a
      deliverable standard rather than a paper one; three of the first
      eighteen ships assessed were immediately sidelined as not ready. That
      a sixth of the first cohort failed against the new standard showed the
      assessment had teeth — it measured demonstrated readiness rather than
      accepting the paper certifications that had masked the pre-collision gap.#cn()
    ],
    // -- The Evidence --
    [
      Here the case turns instructive. The Government Accountability Office found in November 2019 that "the Navy has not put key processes and assessments in place to evaluate comprehensively the effectiveness of its changes to ship-driving training." The structural intervention
      happened and the investment was large, but decision-grade evidence on
      outcomes is incomplete — the measurement to confirm the effect has
      lagged the change itself. Without an outcome time-series, the Navy
      cannot yet distinguish a real capability gain from activity that looks
      like one, which is the same blindness, in milder form, that let the
      pre-collision gap go unseen.#cn()
    ],
    // -- What Transferred --
    [
      The reform is a live, in-progress success: structural change real,
      evidence of effect outstanding. As a teaching case it argues that
      mature capability engineering must build the measurement
      infrastructure from the start — the time-series that lets an
      institution know whether the capability it bought is materializing —
      rather than treating evaluation as an afterthought. The two halves the
      reform did deliver, technical investment and a cultural change, are
      necessary but not sufficient; the missing third half is the evidence
      regime that would let the Navy prove, not assume, the gap has closed.#cn()
    ],
  ),
  beats: (
    "Two fatal 2017 collisions exposed seamanship training degraded to CD-ROM self-study",
    "Navy restored SWOS classroom instruction, tripled training hours, and created ten career assessments",
    "Reform paired simulators and restored curricula with aviation-style debriefing and explicit gate ownership",
    "GAO found the Navy had not put processes in place to evaluate the effectiveness of its ship-driving training changes",
    "Live in-progress reform shows mature capability engineering must build measurement infrastructure from the start",
  ),
  references: (
    [GAO-20-154, _Navy Readiness: Actions Needed to Evaluate the Effectiveness of Changes to Surface Warfare Officer Training_ (November 2019) — the absent evaluation processes and the planned threefold increase in ship-driving training hours.],
    [Readiness Reform Oversight Council, _One-Year Report_ (2019) — restored training, assessments, and gates.],
    [Navy and NTSB reports on the Fitzgerald and McCain collisions (2017–2019) — the training-degradation antecedent.],
    [SWOS Norfolk and San Diego Mariner Skills Training Center documentation — simulators and curriculum.],
    [USNI News reform coverage (2020, 2022) — Ready-for-Sea Assessments and sidelined ships.],
  ),
  quote: [The Navy has not put key processes and assessments in place to evaluate comprehensively the effectiveness of its changes to ship-driving training.],
  quote-source: "GAO-20-154, Navy Readiness: Actions Needed to Evaluate the Effectiveness of Changes to Surface Warfare Officer Training, November 2019",
  le-insight: [
    The Navy reform is a paired intervention in progress: technical
    (training restored, simulators procured, assessments created) plus
    cultural (debriefing, gate ownership). What it lacks is the third
    half: evidence that the intervention has worked. LENS treats this
    as a teachable case for what mature capability engineering should
    include from the start — the measurement infrastructure that lets
    the institution know whether its investment is producing the
    capability it bought.
  ],
  lens-approach: [
    LENS uses Navy SWO reform in LEN 10 (capstone) as a worked exercise in
    capability intervention at scale, and in LEN 4 as a case where the
    measurement infrastructure has lagged the intervention. Students
    design the evidence regime that should accompany the reform.
  ],
  literature-items: (
    [GAO Navy readiness series],
    [Naval Postgraduate School theses on SWO training reform],
    [Edmondson, _Teaming_ (2012)],
  ),
  reflection-list: (
    [Navy SWO reform happened without an evidence regime to confirm it worked. Identify a current reform in your domain and the evidence regime that should accompany it.],
    [Design the dashboard the Chief of Naval Operations should have to know whether SWO capability is improving in time-series.],
    [The Ready-for-Sea Assessment sidelined three of the first eighteen ships because it measured readiness against a deliverable standard. Identify a certification in your domain that ratifies rather than tests, and design the gate that would be willing to fail a sixth of its first cohort.],
  ),
  approaches: (
    during: (
      [Pair the technical investment — restored curricula, simulators, training hours — with a cultural change such as structured debriefing and explicit gate ownership, rather than buying tools alone.],
      [Install no-go gates that tie advancement to demonstrated competence, so qualification is something the system will stop on, not merely something it records.],
      [Assess units against a deliverable standard from the first cohort, accepting that a real test will sideline some — that failure rate is the evidence the gate has teeth.],
    ),
    after: (
      [Build the measurement infrastructure from the start — the outcome time-series that lets the institution distinguish a real capability gain from activity that merely looks like one.],
      [Give the senior commander a readiness dashboard that reports demonstrated capability over time, so the same blindness that masked the pre-collision gap cannot recur.],
      [Treat evidence of effect as the third half of the intervention, not an afterthought, so the reform can be proven rather than assumed to have closed the gap.],
    ),
  ),
  courses: ("LEN 4", "LEN 10", "LEN 5"),
  scale: "big",
  induced-anchor: "2.3",
  lens-anchor: "D2+D4/PT4",
  leo-anchor: "LEO-4",
  evidence-source: "investigation",
)

// ---- Case 141 — darpa-digital-tutor-compressing-years ----
#case(
  number: 141,
  slug: "darpa-digital-tutor-compressing-years",
  title: "DARPA Digital Tutor — Compressing Years of IT Expertise into 16 Weeks",
  year: "2009 – 2014",
  domains-list: ("defense", "workforce L&D", "intelligent tutoring"),
  modes-code: "HKD",
  impact: "An IDA independent assessment found that, after 16 weeks of Digital Tutor instruction, U.S. Navy IT graduates with no prior IT experience outscored fleet Information Systems Technicians with an average 9.1 years of experience on a knowledge test, with an effect size of 4.30, and outperformed them on most troubleshooting and design tasks",
  kind: "intervention",
  scale: "small",
  evidence-source: "program-report",
  induced-anchor: "1.2",
  lens-anchor: "D2/PT4",
  leo-anchor: "LEO-2, LEO-4",
  summary: [
    DARPA's Digital Tutor program asked whether a one-on-one
    intelligent tutoring system, modelled on expert human tutoring,
    could compress years of operational IT expertise into a 16-week
    pipeline. The independent evaluation by the Institute for Defense
    Analyses (Morrison and Fletcher, IDA Document D-4686, 2012) compared
    Digital Tutor graduates — U.S. Navy enlistees with no prior IT
    experience — against fleet Information Systems Technicians
    with an average 9.1 years of experience. The Digital Tutor
    cohort outscored fleet ITs on a knowledge test with an effect
    size of 4.30 and outperformed them on most troubleshooting and
    design tasks; only the Security exercise produced a fleet
    advantage. The IDA report concludes the program "appears to have
    achieved its goals." Two hedges survive into the case: knowledge "accounts for about 40 percent of
    practical-exercise performance variance" and is "an enabler of
    performance rather than a direct measure of performance itself,"
    and the system-architecture detail in the available
    documentation is too scant to fully reproduce. The case is the
    canonical small-tier instance of compressing the capability
    envelope at the edge of training, paired with CIRCUIT
    (Cases 78 and 68) on the workforce-capability-at-the-edge axis.
  ],
  sections: (
    [
      The U.S. Navy's Information Systems Technician rating has a
      conventional pipeline: an A-school of several months, followed
      by years of fleet experience that turn the rated sailor into
      an operational troubleshooter. The capability that matters at
      the operational end — diagnose a networking failure under time
      pressure, recover a degraded system, design a workable
      configuration for an unfamiliar requirement — is conventionally
      treated as a thing seat time produces. DARPA's Digital Tutor
      program asked whether an intelligent tutoring system,
      modelled on the discipline of expert one-on-one human
      tutoring, could compress that pipeline into 16 weeks of
      structured instruction.#cn()
    ],
    [
      The program's design choice was to model the system on what
      expert human tutors actually do: a continuous dialogue around
      authentic problems, with the tutor pulling the trainee toward
      the conceptual move that resolves the situation. The
      instructional sequence was built around troubleshooting and
      design problems drawn from the operational domain, not around
      a syllabus reconstructed from the existing course. The
      working hypothesis was that the tutorial discipline — not the
      content coverage — was what produced operational expertise,
      and that a sufficiently capable system could deliver enough
      of that discipline at scale to be useful as a training
      pipeline.#cn()
    ],
    [
      The Institute for Defense Analyses (Morrison and Fletcher, IDA
      Document D-4686, 2012) ran the sponsor-commissioned
      evaluation that the case rests on. Digital Tutor graduates —
      Navy enlistees with no prior IT background, 16 weeks in — were
      compared against a sample of fleet Information Systems
      Technicians with an average 9.1 years of operational
      experience. On a knowledge test, the Digital Tutor cohort
      outscored fleet ITs with an effect size of 4.30 — a
      magnitude that is unusual in workforce L&D research and that
      the report treats as the headline finding. On troubleshooting
      and design tasks the Digital Tutor cohort outperformed the
      fleet sample on most exercises; the Security exercise was the
      exception where fleet experience showed.#cn()
    ],
    [
      The IDA report concludes the effort "appears to have achieved
      its goals," and the language is deliberate. Two hedges survive into the case verbatim. First,
      knowledge "accounts for about 40 percent of practical-exercise
      performance variance" and is "an enabler of performance rather
      than a direct measure of performance itself" — so the
      knowledge-test effect size, as large as it is, is not the same
      as the operational capability the Navy actually buys. Second,
      the available program documentation is too scant in
      system-architecture detail to fully reproduce. The result is
      teachable; the engineering recipe is not yet open.#cn()
    ],
    [
      What the case carries for the corpus is the capability-envelope
      argument at the edge of training (induced 1.2, LENS D2/PT4).
      The conventional pipeline assumes operational expertise is a
      function of seat time and exposure. The Digital Tutor
      evaluation is evidence that the envelope is reachable
      substantially faster than the inherited course assumed —
      under one rating, one program, one evaluation — and the
      hedges name what the evidence does and does not close. Paired
      with CIRCUIT (Cases 78, 68), the case anchors the
      workforce-capability-at-the-edge-of-training axis that
      connectomics proofreading and submarine-system troubleshooting
      share at the structural level.
    ],
  ),
  beats: (
    "DARPA Digital Tutor — intelligent tutoring system modelled on expert one-on-one human tutoring; 16-week pipeline for U.S. Navy IT rating",
    "IDA evaluation for the sponsor (Morrison & Fletcher, IDA D-4686, 2012), 12 per arm, unrandomised: Digital Tutor graduates vs. fleet ITs with 9.1 years' average experience",
    "Knowledge-test effect size 4.30; troubleshooting effect a fifth of that at 0.85; the security exercise favored the fleet, not significantly",
    "Report concludes the effort 'appears to have achieved its goals'",
    "Hedges preserved: knowledge accounts for ~40% of practical-exercise variance, 'an enabler of performance rather than a direct measure'; architecture detail too scant to reproduce",
  ),
  approaches: (
    during: (
      [Specify the operational capability the pipeline must produce in the language of the work — troubleshoot under time pressure, design a workable configuration — not in the language of the existing course's content coverage.],
      [Treat the tutorial discipline (continuous dialogue around authentic problems, pulling toward the resolving conceptual move) as the instructional artifact that did the work, rather than the content sequence the legacy course inherited.],
      [Design the evaluation against the operational comparison the program is built to compete with — for Digital Tutor, fleet ITs with 9.1 years of experience — so the result speaks to the capability envelope, not to a within-program improvement.],
    ),
    after: (
      [Report the knowledge-test effect (4.30) and the practical-exercise variance hedge (knowledge accounts for ~40%) together; the headline number is real, and the qualification that knowledge is an enabler rather than a direct measure is part of what makes the result interpretable.],
      [Treat the absence of reproducible architecture detail as program documentation, not as polish: future builders need the engineering recipe, and the next iteration of evidence is conditional on that recipe being available.],
      [Carry the result into adjacent capability-envelope debates — CIRCUIT proofreading, submarine-system troubleshooting — as evidence that the envelope is reachable faster than the inherited training assumption, under one program and one evaluation.],
    ),
  ),
  references: (
    [Morrison, J. E., \& Fletcher, J. D. (September 2012). _DARPA Digital Tutor: Assessment Data_. IDA Document D-4686 (prepared for DARPA under contract DASW01-04-C-0003) — the sponsor-commissioned evaluation the case rests on.],
    [Defense Advanced Research Projects Agency, Digital Tutor program documentation — program description and design rationale.],
    [Fletcher, J. D. (2009). _From behaviorism to constructivism: a philosophical journey from drill and practice to situated learning_. — methodological grounding for the Digital Tutor's tutorial discipline.],
    [Anderson, J. R., Corbett, A. T., Koedinger, K. R., \& Pelletier, R. (1995). Cognitive tutors: Lessons learned. _Journal of the Learning Sciences_, 4(2):167–207. doi:10.1207/s15327809jls0402\_2 — the broader intelligent-tutoring evidence base the Digital Tutor program sits within.],
  ),
  quote: [The Digital Tutor cohort outscored fleet ITs with 9.1 years' experience on the knowledge test at an effect size of 4.30; the hedge is that knowledge accounts for about 40 percent of practical-exercise variance.],
  quote-source: "Editors' synthesis of Morrison & Fletcher (2012), IDA Document D-4686.",
  le-insight: [
    DARPA's Digital Tutor is the strongest available evidence
    that the capability envelope of a training pipeline can be
    re-specified — from years of seat time to 16 weeks of
    tutorial-discipline instruction — against an operational
    comparison the program is built to compete with. The
    hedges (knowledge as enabler, architecture detail scant)
    are part of what makes the result interpretable.
  ],
  lens-approach: [
    Digital Tutor is the canonical workforce-capability-at-the-
    edge-of-training case (induced 1.2; LENS D2/PT4). LENS uses
    it in Domain 2 (Iterative Development) for the
    tutorial-discipline-as-instructional-artifact design move,
    and in Domain 4 (Test and Evaluation) for the
    operational-comparison evaluation against fleet ITs with
    9.1 years of experience. Pair with CIRCUIT (Cases 78, 68)
    at the workforce-capability-at-the-edge axis — connectomics
    proofreading and Navy IT troubleshooting share the
    structural pattern of compressing operational expertise
    through tutorial discipline.
  ],
  literature-items: (
    [Morrison \& Fletcher (2012), IDA Document D-4686],
    [Anderson et al. (1995), _Journal of the Learning Sciences_],
    [DARPA Digital Tutor program documentation],
  ),
  reflection-list: (
    [Identify a capability in your domain where the inherited training assumption is that operational expertise is a function of seat time. What would a Digital-Tutor-class re-specification — tutorial discipline around authentic problems — look like, and what is the operational comparison your evaluation would have to beat?],
    [The Digital Tutor knowledge-test effect size is 4.30 and the report still hedges that knowledge accounts for only ~40\% of practical-exercise variance. What is the analog hedge in your context: which part of the capability does your evaluation measure directly, and which part is enabler rather than direct measure?],
    [The architecture detail is too scant for outside builders to reproduce the system. What is the minimum engineering recipe you would publish alongside a similar result, so that the next iteration of evidence rests on a reproducible base rather than a one-off program?],
  ),
  courses: ("LEN 1", "LEN 2", "LEN 5"),
)

// ---- Case 142 — xapi-total-learning-architecture ----
#case(
  number: 142,
  slug: "xapi-total-learning-architecture",
  title: "xAPI / Total Learning Architecture — Interoperability Gap",
  year: "ongoing",
  domains-list: ("education", "defense"),
  modes-code: "KG",
  impact: "Despite xAPI adoption, most implementations remain siloed; cross-organizational learning-data interoperability largely unrealized",
  diagram: dgm.dgm-xapi,
  kind: "frontier",
  summary: [
    The Experience API (xAPI) was created to track learning experiences
    across platforms, and the Advanced Distributed Learning Initiative's
    Total Learning Architecture envisioned learning records, competencies,
    and credentials flowing across organizational boundaries to support
    continuous capability development — the kind of evidence infrastructure
    LENS depends on. In practice, xAPI implementations remain largely siloed
    inside individual learning-management systems; the cross-organizational
    data sharing that matters most for high-consequence domains has not
    materialized at scale. The technical standard exists and reference
    implementations exist; what lags is governance — who owns the data, what
    consent applies, how quality is assured. xAPI mirrors inBloom (Case 53) in
    structure — technology ahead of governance — across the whole
    learning-technology ecosystem. It is the book's case for treating data
    governance as a capability deliverable.
  ],
  sections: (
    // -- The Shift --
    [
      Learning increasingly happens across many systems — courses,
      simulators, on-the-job tools — and the field recognized it needed a
      common way to record those experiences, so capability could be tracked
      over a career rather than a single course.#cn() The career-long view is
      the point: a single course's records say little about whether a person
      can do the job, whereas experiences stitched across courses, simulators,
      and on-the-job tools are what let an institution reason about real
      capability rather than completed seat-time.
    ],
    // -- What Is Emerging --
    [
      The Experience API (xAPI) was built to do exactly that, and the
      Advanced Distributed Learning Initiative's Total Learning Architecture
      envisioned learning records, competency frameworks, and credentials
      flowing across organizational boundaries — the evidence infrastructure
      a discipline like LENS depends on.#cn() The vision was explicitly
      cross-boundary: records, competencies, and credentials that move with the
      learner between organizations are precisely the evidence base on which a
      capability discipline must stand, which is why the standard's promise
      mattered well beyond any single training shop.
    ],
    // -- The Capability Question --
    [
      In practice, xAPI implementations remain largely siloed inside
      individual LMS platforms. The cross-organizational data sharing — the
      capability most relevant to high-consequence operational domains — has
      not materialized at scale. The standard exists; the ecosystem it
      promised does not.#cn() The siloing is the diagnostic detail: the very
      cross-boundary flow that made the architecture worth building is the
      part that did not arrive, so the standard delivers tracking within each
      LMS while the career-long, cross-organizational record it envisioned
      stays out of reach.
    ],
    // -- Early Evidence --
    [
      The data model is sound and reference implementations exist. What has lagged is semantic conformance — ADL's own acquisition guidance warns that xAPI data not following published Profiles "will have interoperability issues outside of the implementing organization" — and governance: who owns the data, what consent frameworks apply, and how data quality is assured across organizations.#cn() With the data model proven and reference
      implementations in hand, the remaining obstacles are not engineering
      questions an organization can solve alone but agreements between
      organizations — ownership, consent, and assured quality — that no
      technical specification can settle on their behalf.
    ],
    // -- Open Problems --
    [
      xAPI mirrors inBloom (Case 53) in essential structure — technology in
      advance of governance — but across the whole learning-technology
      ecosystem rather than one initiative.#cn() It is the book's clearest
      case that an interoperability standard is necessary but not sufficient:
      without the governance to make organizations willing and able to share,
      the data stays in its silos, and the evidence infrastructure remains a
      diagram rather than a system. The parallel to inBloom is instructive
      because it shows the pattern is not particular to one failed project: a
      sound standard arriving ahead of the ownership, consent, and
      quality-assurance arrangements will stall the same way at any scale.
    ],
  ),
  beats: (
    "Learning crosses many systems, so the field needed common records of experiences",
    "xAPI and ADL's Total Learning Architecture envisioned records and credentials flowing across organizations",
    "Implementations remain siloed inside individual LMS platforms; cross-organizational data sharing has not scaled",
    "Data model and reference implementations work; ownership, consent, and cross-organization quality assurance lag",
    "Like inBloom, a sound standard arrived ahead of the governance needed for sharing",
  ),
  references: (
    [Advanced Distributed Learning Initiative, Total Learning Architecture documentation — the cross-boundary vision.],
    [IEEE Std 9274.1.1-2023, _Standard for Learning Technology — JSON Data Model Format and RESTful Web Service for Learner Experience Data Tracking and Access_ (xAPI 2.0, published October 2023) — the technical standard of record, transferred from ADL to the IEEE LTSC in 2019.],
    [ADL Initiative, _Total Learning Architecture Standards: Digital Learning Acquisition Techniques_ (December 2023) — xAPI data that does not follow xAPI Profiles "will have interoperability issues outside of the implementing organization."],
    [B. Saxberg, learning-engineering infrastructure essays; IEEE ICICLE LEBoK chapters on data and analytics.],
    [Cf. inBloom (Case 53) — technology in advance of governance.],
  ),
  quote: [The standard exists. The governance does not.],
  quote-source: "Editors' synthesis of ICICLE / ADL TLA discussion",
  le-insight: [
    xAPI/TLA is the technical-standard analog of the implementation
    gap — the discipline has the data model, the spec, and the reference
    implementations. What it does not have is the governance and
    institutional architecture to make cross-organizational learning
    data flow. This is the canonical case in this book for treating
    data governance as a capability-engineering deliverable.
  ],
  lens-approach: [
    LENS treats xAPI/TLA in LEN 4 as a data-governance and
    interoperability case and in LEN 8 as an example of organizational-
    learning infrastructure that has not scaled. The case is the
    technical underlay to the larger argument about evidence systems
    that decision-makers can trust.
  ],
  literature-items: (
    [ADL TLA documentation],
    [Saxberg, learning-engineering infrastructure essays],
    [IEEE ICICLE LEBoK chapters on data and analytics],
  ),
  reflection-list: (
    [Why has the xAPI standard not produced cross-organizational interoperability at scale? What governance condition is missing?],
    [Design the minimum governance architecture under which xAPI data could flow across two organizations in your domain.],
    [The xAPI data model is sound; what stalled was ownership, consent, and quality assurance across organizations. For a data-sharing effort in your domain, which of those three is the unresolved question — and who would have to agree for the data to actually flow?],
  ),
  approaches: (
    during: (
      [Specify the governance — data ownership, consent, and cross-organization quality assurance — as a deliverable alongside the technical standard, not after it.],
      [Design for the cross-boundary flow from the start, so the standard is not merely implemented inside each LMS but engineered to move records between organizations.],
      [Secure the inter-organizational agreements that no specification can settle, treating willingness-to-share as a thing to be built rather than assumed.],
    ),
    after: (
      [Audit whether learning data is actually crossing organizational boundaries, not just whether xAPI is nominally adopted within each silo.],
      [Monitor data quality across organizations continuously, since shared records are only trustworthy evidence if their quality is assured at the seams.],
      [Watch for the inBloom pattern — a sound standard outrunning its governance — and treat any stall as a missing-governance signal, not a technical defect.],
    ),
  ),
  courses: ("LEN 4", "LEN 8", "LEN 6",),
  scale: "big",
  induced-anchor: "5.3",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-5",
)
