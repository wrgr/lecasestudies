// ============================================================
// Chapter 5 — Governance Failures
// "Trust and Accountability Were Afterthoughts"
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#chapter-divider(
  part: "Part I — The Failure Modes",
  number: "5",
  title: "Governance Failures",
  subtitle: "Trust and accountability were afterthoughts.",
  epigraph: [The fire at Grenfell Tower was the culmination of decades of failure by central government and other bodies in positions of responsibility.],
  epigraph-source: "Grenfell Tower Inquiry, Phase 2 Report, 2024",
)

#case(
  number: 8,
  title: "inBloom",
  year: "2014",
  domains-list: ("education",),
  modes-code: "G",
  impact: "$100M initiative collapsed in ~14 months; 9 states withdrew; data infrastructure for education set back years",
  diagram: dgm.dgm-inbloom,
  body: [
    The technology worked. Shared data infrastructure for student records,
    backed by one hundred million dollars from the Gates Foundation,
    hosted on AWS, built by enterprise engineers. No software bug, no
    performance failure, no data breach.

    What killed inBloom was everything *around* the technology. The
    initiative launched without adequate consent frameworks, without
    meaningful community engagement on data governance, without
    transparency about data collection and use, and without mechanisms
    for parents to participate in decisions about their children's data.
    Parent organizations — Parent Coalition for Student Privacy, Class
    Size Matters — organized opposition state by state. Louisiana, New
    York, Massachusetts, Illinois, Georgia, Delaware, Colorado, Kentucky,
    and North Carolina all withdrew.

    Bulger, McCormick, and Pitcan analyzed inBloom as the failure of
    technocratic education reform: the assumption that technically sound
    infrastructure generates its own legitimacy proved catastrophically
    wrong. In education at scale, governance and stakeholder trust are
    not optional features. They are load-bearing elements.
  ],
  quote: [The technology was not the problem. The governance was the problem.],
  quote-source: "Bulger, McCormick & Pitcan, Data & Society, 2017",
  sources-list: (
    [Bulger, McCormick & Pitcan, _The Legacy of inBloom_, Data & Society (2017)],
    [Education Week coverage of inBloom withdrawal, 2013–2014],
    [Hechinger Report, inBloom retrospective],
    [Parent Coalition for Student Privacy archives],
  ),
  le-insight: [
    inBloom is the purest governance failure in this dataset. Nothing
    technical was wrong. Everything sociotechnical was. The case is the
    strongest argument in the book for treating ethics-as-design-
    constraint not as ideology but as engineering: a \$100M empirical
    test of what happens when you do not.
  ],
  lens-approach: [
    LENS uses inBloom in LEN 7 as the canonical governance failure and in
    LEN 1 as a stakeholder-analysis case. The case anchors the LENS
    threading commitment that equity and accountability are design
    commitments, not modules. Studio projects (LEN 3) require students
    to produce a stakeholder-trust deliverable as a precondition for
    deployment.
  ],
  literature-items: (
    [Bulger, McCormick & Pitcan (2017), Data & Society report],
    [Selwyn, _Distrusting Educational Technology_ (2014)],
    [boyd & Crawford (2012), "Critical Questions for Big Data"],
  ),
  reflection-list: (
    [What is the equivalent unbuilt governance infrastructure in your domain? What would the \$100M empirical test of its absence look like?],
    [Design the stakeholder-trust deliverable that a future inBloom-equivalent should have to produce before deployment.],
  ),
  courses: ("LEN 1", "LEN 3", "LEN 7"),
)

#case(
  number: 10,
  title: "Healthcare.gov Launch",
  year: "2013",
  domains-list: ("gov",),
  modes-code: "KTG",
  impact: "29,000 enrollments vs. 7M target in first two months; hundreds of millions in remediation",
  diagram: dgm.dgm-healthcaregov,
  body: [
    HHS employees had experience with insurance markets and with large
    government projects, but not with technology product launches. Key
    technical positions were unfilled. There was no formal division of
    responsibilities among the multiple government offices involved.
    CMS perceived CGI as the lead system integrator; CGI did not share
    that understanding. No end-to-end testing was conducted before
    launch.

    The site went live on October 1, 2013, and immediately collapsed
    under load it had never been validated for. In the first two months
    twenty-nine thousand enrollments were processed against an enrollment
    target of seven million. The fix-it operation that followed pulled
    together the team that would later become the U.S. Digital Service —
    one of the most consequential capability institutions ever built
    inside the federal government, born from a failure that was visible
    on the news every night.

    The failure was a capability mismatch at scale: the organization
    lacked the specific human capabilities required for the specific
    system being deployed, and no one in the governance chain recognized
    or acted on that gap before launch.
  ],
  quote: [No single person had a clear understanding of the project's status.],
  quote-source: "HHS Office of Inspector General, 2016",
  sources-list: (
    [GAO Healthcare.gov reports (2014–2016)],
    [HHS Office of Inspector General, OEI-06-14-00350],
    [Harvard Kennedy School / Digital Initiative case (2014)],
    [CIO Magazine, Healthcare.gov post-mortem coverage],
  ),
  le-insight: [
    Healthcare.gov is a capability case wearing a technology costume. The
    technology was salvageable in weeks once the right people arrived.
    The original failure was that the wrong people had been assembled in
    the first place, and the governance chain that should have noticed
    the mismatch had no signal to surface it. The aftermath — USDS — is
    the rare case in this book of a governance failure that produced
    permanent institutional reform.
  ],
  lens-approach: [
    LENS uses Healthcare.gov in LEN 1 as a problem-framing case (the
    technical narrative obscures the capability narrative), in LEN 5 to
    teach capability-requirements analysis for a large government
    program, and in LEN 9 to discuss the founding of USDS as
    organizational learning that survived.
  ],
  literature-items: (
    [Eaves & Goldenfein, "The Healthcare.gov Failure" (Harvard, 2014)],
    [Pahlka, _Recoding America_ (2023)],
    [Mergel et al. (2018), digital government literature],
  ),
  reflection-list: (
    [Healthcare.gov shipped without end-to-end testing. What is the equivalent missing deliverable in a current high-stakes deployment in your domain?],
    [USDS was born from the Healthcare.gov failure. What is the institutional capability your domain still lacks, and what failure would have to occur to produce it?],
  ),
  courses: ("LEN 1", "LEN 5", "LEN 7"),
)

#case(
  number: 17,
  title: "Bhopal",
  year: "1984",
  domains-list: ("industrial",),
  modes-code: "TKNG",
  impact: "≈ 15,000–20,000 killed; ≈ 500,000 injured; worst industrial disaster in history",
  diagram: dgm.dgm-bhopal,
  body: [
    Forty tons of methyl isocyanate gas escaped from a Union Carbide
    pesticide plant in Bhopal, India, on the night of December 2–3,
    1984. The New York Times investigation found the disaster "resulted
    from operating errors, design flaws, maintenance failures, training
    deficiencies and economy measures that endangered safety." Safety
    systems had been non-operational for four months. The plant was
    understaffed. Workers were inadequately trained to handle
    emergencies or recognize warning signs.

    Najmedin Meshkati's 1991 analysis demonstrated this was not a
    prototypical accident: it shared "numerous similarities with respect
    to the lack of human-factors considerations" with Three Mile Island
    and other industrial disasters. The U.S. Chemical Safety Board later
    identified ineffective employee training as an underlying cause in
    nine of its first twenty-three completed investigations of chemical
    incidents — a pattern that traces directly to Bhopal as catalyst.

    The CSB was itself created in the aftermath of Bhopal. The
    industrial-safety architecture of the next forty years was built on
    the inquiry into one night.
  ],
  quote: [Operating errors, design flaws, maintenance failures, training deficiencies and economy measures that endangered safety.],
  quote-source: "New York Times investigation, 1985",
  sources-list: (
    [Union Carbide Investigation Report (1985)],
    [Meshkati, "Human Factors in Large-Scale Technological Systems' Accidents," _Industrial Crisis Quarterly_ (1991)],
    [Britannica, Bhopal disaster],
    [Smithsonian Magazine, Bhopal retrospective (2024)],
  ),
  le-insight: [
    Bhopal is the largest-magnitude capability-and-governance failure on
    record. It is also the catalyst for the creation of the U.S.
    Chemical Safety Board, an INPO-equivalent for industrial chemistry.
    The pattern that follows nearly every case in this book — diagnose,
    then engineer remediation at scale — runs through Bhopal in
    canonical form.
  ],
  lens-approach: [
    LENS treats Bhopal in LEN 5 as a multi-failure capability analysis
    case and in LEN 7 as the largest-magnitude governance failure in
    the dataset. The Failure → Reform arc to the CSB demonstrates the
    institution-building pattern at industry scale.
  ],
  literature-items: (
    [Meshkati (1991), _Industrial Crisis Quarterly_],
    [Shrivastava, _Bhopal: Anatomy of a Crisis_ (1992)],
    [Perrow, _Normal Accidents_ (1984)],
  ),
  reflection-list: (
    [Bhopal produced the CSB. What is the institution your domain has not yet built that a comparable disaster would force into existence?],
    [Identify a plant or facility in your domain that has had safety systems off-line for an extended period. What is the measurement gap that allowed it?],
  ),
  courses: ("LEN 5", "LEN 7"),
)

#case(
  number: 20,
  title: "Grenfell Tower",
  year: "2017",
  domains-list: ("industrial",),
  modes-code: "GTKN",
  impact: "72 killed in a residential tower fire in London; decades of regulatory failure",
  diagram: dgm.dgm-grenfell,
  body: [
    The Grenfell Tower Inquiry found the fire to be the culmination of
    decades of failure by central government and by every body in a
    position of responsibility in the construction industry. Flammable
    cladding was installed despite safety experts cautioning that it
    was unsuitable. Building inspectors visited the site sixteen times
    during the refurbishment but none noticed that effectively banned
    materials were being used. Cladding companies engaged in
    "systematic dishonesty" in marketing combustible materials as safe.

    The London Fire Brigade was unprepared. "Very few (if any) of the
    senior officers who attended Grenfell Tower were aware of the risks
    posed by exterior cladding." The risks of rapidly developing
    cladding fires were well known from prior incidents — Knowsley
    Heights 1991, Garnock Court 1999, Shepherd's Court 2016 — but "this
    knowledge had not informed firefighting policies, practices or
    training."

    The failure spanned every level: manufacturer fraud, regulatory
    capture, inspection incompetence, training gaps, organizational
    memory loss, and governance failure. The inquiry described it as a
    "grey elephant" — known but ignored.
  ],
  quote: [This knowledge had not informed firefighting policies, practices or training.],
  quote-source: "Grenfell Tower Inquiry, Phase 1, 2019",
  sources-list: (
    [Grenfell Tower Inquiry Phase 1 Report (2019)],
    [Grenfell Tower Inquiry Phase 2 Report (2024)],
    [UK Government Response to the Phase 2 Report (2025)],
    [Human Factors 101 analysis of Grenfell],
  ),
  le-insight: [
    Grenfell is the strongest evidence in the dataset that capability
    failure can be distributed across many actors, each of whom contributes
    a small piece, none of whom is accountable for the whole. The
    inquiry's "grey elephant" framing — known but ignored — describes a
    pattern that LENS treats as a primary governance problem in any
    high-consequence domain.
  ],
  lens-approach: [
    LENS treats Grenfell in LEN 7 as the canonical multi-actor governance
    failure case, in LEN 9 to discuss institutional memory of warnings
    across the LFB and other agencies, and in LEN 3 as a studio prompt
    for designing the integrated capability-and-governance deliverable
    that would have caught the cladding decision.
  ],
  literature-items: (
    [Grenfell Tower Inquiry, full reports],
    [Hopkins (2024), public-inquiry analysis of Grenfell],
    [Hutter & Power (2005), _Organizational Encounters with Risk_],
  ),
  reflection-list: (
    [What is the "grey elephant" — the well-known risk that nobody owns — in your domain?],
    [Design the deliverable that forces a single actor to own the integration risk that Grenfell distributed across dozens.],
  ),
  courses: ("LEN 3", "LEN 7", "LEN 9"),
)

#case(
  number: 35,
  title: "UK A-Level Algorithm / Ofqual",
  year: "2020",
  domains-list: ("education",),
  modes-code: "GHD",
  impact: "≈ 280,000 A-level entries downgraded; disadvantaged students disproportionately harmed; government U-turn within days",
  diagram: dgm.dgm-alevel,
  body: [
    When COVID-19 cancelled exams, Ofqual used an algorithm to
    "standardize" teacher-predicted grades against schools' historical
    performance. The result: thirty-nine percent of students received
    downgraded scores. High-achieving students at underperforming state
    schools were systematically penalized. Small-class private school
    students kept their predicted grades. Children from poorer
    backgrounds were twice as likely to be downgraded.

    The algorithm encoded existing structural inequality and amplified it
    at national scale. Schools that had historically underperformed —
    often because of funding rather than student capability — were
    assumed to continue underperforming, and the assumption was used to
    suppress individual student grades. Oxford Internet Institute
    researchers identified the underlying trap: "the belief that
    [algorithms] will fix really complex structural issues ... lend[s]
    [itself] to a kind of magical thinking."

    The mathematician Hannah Fry wrote: "I think it's the first time
    that an entire nation has felt the injustice of an algorithm
    simultaneously." Within days the government withdrew the algorithm
    and accepted teacher predictions.
  ],
  quote: [I think it's the first time that an entire nation has felt the injustice of an algorithm simultaneously.],
  quote-source: "Hannah Fry, 2020",
  sources-list: (
    [MIT Technology Review, "The UK Exam Algorithm" (2020)],
    [CNBC, "Computer Algorithm Caused a Grading Crisis in British Schools" (2020)],
    [University of Bristol, Centre for Multilevel Modelling analysis],
    [LSE Impact Blog, "F*ck the Algorithm" (2020)],
  ),
  le-insight: [
    A-Level is the defining national-scale algorithmic-bias case. The
    algorithm worked exactly as specified; the specification encoded
    inequality. The harm was visible, immediate, and felt
    simultaneously by an entire cohort. The case stands as the
    strongest argument that *construct definition* — what the algorithm
    is trying to predict — is itself a capability-engineering decision.
  ],
  lens-approach: [
    LENS uses A-Level in LEN 7 as the foundational case for bias, risk,
    and governance, in LEN 2 as a measurement-instrument case (an
    instrument that encodes the bias of its training data), and in LEN
    10 as a technical case for bias detection and mitigation. The case
    is paired in this book with Robodebt (Case 36) and educational
    algorithmic bias (Case 37).
  ],
  literature-items: (
    [Ofqual technical report on the 2020 standardization model],
    [Eubanks, _Automating Inequality_ (2018)],
    [Selbst et al. (2019), "Fairness and Abstraction in Sociotechnical Systems"],
  ),
  reflection-list: (
    [Identify a measurement instrument in your domain that encodes structural inequality. What would it take to surface that bias before deployment?],
    [The A-Level algorithm worked as specified. Redesign the *specification* — not the algorithm — to remove the bias.],
  ),
  courses: ("LEN 2", "LEN 7", "LEN 10"),
)

#case(
  number: 36,
  title: "Australia Robodebt",
  year: "2016 – 2020",
  domains-list: ("gov",),
  modes-code: "GDH",
  impact: "470,000 wrongful debt notices; A$1.8B settlement; Royal Commission found \"venality, incompetence and cowardice\"",
  diagram: dgm.dgm-robodebt,
  body: [
    The Australian government automated welfare debt recovery using an
    income-averaging algorithm that compared Centrelink records with
    annual tax data averaged across the year. The algorithm's case
    profile — stable, consistent year-round employment — applied to
    roughly seven percent of welfare recipients. The other ninety-three
    percent had irregular employment that the averaging method
    misclassified as fraud.

    Default judgments were issued without human review. Recipients had
    to prove they did *not* owe the debt — reversing the burden of
    proof. The system caused widespread distress. Suicides were
    attributed to it. The Royal Commission (2023) found the scheme was
    sustained by "venality, incompetence and cowardice" and that
    ministers had failed to ensure the program was lawful. The net cost
    to the government was A\$565 million — a scheme that was supposed
    to save money.

    University of Melbourne analysis: "Even simple ADM systems can
    encode the prejudices of the individuals and systems who conceive
    them." The algorithm itself was "comparatively simple"; its harms
    were "entirely predictable from the outset."
  ],
  quote: [A costly failure of public administration, in both human and economic terms.],
  quote-source: "Royal Commission into the Robodebt Scheme, 2023",
  sources-list: (
    [Royal Commission into the Robodebt Scheme, Final Report (2023)],
    [University of Melbourne / Pursuit analysis (2023)],
    [Blavatnik School of Government, Oxford, case study (2023)],
    [IAPP privacy analysis of Robodebt],
  ),
  le-insight: [
    Robodebt is the canonical case of full automation without
    human-in-the-loop and without lawful basis. The algorithm was not
    sophisticated. The harm was not technical. The system survived for
    four years because the governance architecture treated automation
    as an efficiency mechanism rather than as a decision regime. The
    Royal Commission's framing — "venality, incompetence and
    cowardice" — is the strongest indictment in this dataset of
    leadership treating automated decisions as not requiring
    accountability.
  ],
  lens-approach: [
    LENS treats Robodebt in LEN 7 as the canonical case for automated
    decision-making without human oversight and in LEN 8 as a Human-AI
    Teaming failure at the institutional scale: the human role was
    designed out of the decision loop entirely. The case anchors the
    program's argument that automated decision systems require
    deliverable-grade accountability artifacts before deployment.
  ],
  literature-items: (
    [Royal Commission Final Report (2023)],
    [Eubanks, _Automating Inequality_ (2018)],
    [Citron, "Technological Due Process" (2008)],
  ),
  reflection-list: (
    [Robodebt automated a decision that legally required individual review. Identify a current process in your domain at risk of equivalent automation-without-due-process.],
    [Design the accountability artifact that would have to be signed before a Robodebt-equivalent could be deployed.],
  ),
  courses: ("LEN 7", "LEN 8"),
)

#case(
  number: 37,
  title: "Algorithmic Bias in Educational Predictive Analytics",
  year: "ongoing",
  domains-list: ("education",),
  modes-code: "GHD",
  impact: "Predictive models produce false negatives for 19% of Black and 21% of Latinx students; 80%+ of public colleges now use some form of predictive analytics",
  diagram: dgm.dgm-edbias,
  body: [
    Colleges increasingly use predictive analytics to identify "at-risk"
    students for early intervention. Gándara et al. (2025) found that
    models predicting course and degree completion show racial
    calibration bias: Black students are more likely to be predicted to
    fail when they actually succeed, and less likely to receive the
    success resources that the prediction is supposed to trigger. The
    magnitude of bias varies depending on how "at-risk" is defined,
    meaning the problem is partially a *construct-definition* problem —
    a core LEN 2 competency.

    Baker & Hawn (2021) found algorithmic bias in education "poses
    significant threats to educational equity, potentially amplifying
    existing social and economic disparities in unprecedented ways."
    The models inherit historical patterns of discrimination from
    training data, and faculty with deficit assumptions about Black
    students may interpret "at-risk" flags as confirmation rather than
    as a cue for intervention.

    The case is the educational analog of A-Level (Case 35): an
    algorithm built to do good that systematically allocates
    intervention resources away from the students who would benefit
    most.
  ],
  quote: [Algorithmic bias in education poses significant threats to educational equity, potentially amplifying existing social and economic disparities.],
  quote-source: "Baker & Hawn, 2021",
  sources-list: (
    [Gándara et al., "Equity Considerations in Predictive Models," _JPAM_ (2025)],
    [IHEP interview with Gándara on predictive algorithms and equity],
    [Baker & Hawn (2021), cited in WJARR],
    [Schiller University analysis of AI/algorithmic bias in higher education],
  ),
  le-insight: [
    Educational predictive analytics is the ongoing live case for
    algorithmic bias at the construct level. The bias is not in the
    sigmoid; it is in the definition of "at-risk." Defining at-risk in
    one way allocates support to one population; defining it in another
    way allocates support to another. The choice of definition is a
    capability-engineering decision with measurable equity consequences.
  ],
  lens-approach: [
    LENS treats this case as the positive counterpart to Georgia State
    (Case 39). LEN 2 examines construct definition as the load-bearing
    measurement choice. LEN 7 examines the governance architecture that
    determines whose construct gets adopted. LEN 10 covers the
    technical bias-mitigation methods.
  ],
  literature-items: (
    [Gándara et al. (2025), _JPAM_],
    [Baker & Hawn (2021) on algorithmic bias in education],
    [Friedman & Nissenbaum (1996), "Bias in Computer Systems"],
  ),
  reflection-list: (
    [Pick a predictive analytic in your institution. Reconstruct the construct definition behind it. What is the equity consequence of that definition?],
    [Design the governance review that a new predictive model should pass before it allocates resources to or away from a population.],
  ),
  courses: ("LEN 2", "LEN 7", "LEN 10"),
)
