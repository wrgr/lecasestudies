// ============================================================
// Chapter 9 — The Frontier: Human-AI Teaming
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#chapter-divider(
  part: "Part III — The Frontier",
  number: "9",
  title: "Human-AI Teaming",
  subtitle: "The capability work the discipline has not done before.",
  epigraph: [Humans tend to tune out when tasked with monitoring automated systems that work well most of the time.],
  epigraph-source: "NTSB Chairman Robert Sumwalt, Uber Tempe hearing remarks, 2019",
)

#case(
  number: 92,
  title: "Tesla Autopilot — Recurring Fatalities",
  year: "2016 – present",
  domains-list: ("autonomous",),
  modes-code: "TNGH",
  impact: "Dozens of fatalities documented in NHTSA's Standing General Order data; first U.S. cases of Level-2 automation contributing to fatal injury",
  diagram: dgm.dgm-stat(
    "L2",
    "driver retained · attention not engineered",
    micro: "the system works well most of the time — and then it does not",
    caption: "Tesla Autopilot — Level-2 monitoring as a sustainable role",
  ),
  body: [
    Tesla's Autopilot and Full Self-Driving Beta operate as
    Level-2 driver-assistance systems: the driver remains legally and
    operationally responsible for the vehicle. NHTSA's Standing
    General Order on automated-driving systems has documented dozens
    of fatal crashes involving Tesla Autopilot since the 2016 Joshua
    Brown case in Florida. The pattern is consistent: the system
    operates capably for long periods, the driver's monitoring
    attention attenuates, and a edge-case scenario — a stationary
    object, a faded lane marking, a perpendicular crossing — produces
    a collision the inattentive driver does not catch.

    NHTSA's open investigation has identified Tesla's driver-
    engagement design as inadequate to maintain the attention the
    system's safe operation requires. The proximate cause in each
    case is the driver. The system that created the conditions for
    the inattention is the design choice to call the feature
    "Autopilot."

    Tesla Autopilot is the live, ongoing version of the Uber ATG
    (Case 29) problem at consumer scale: a passive-monitoring role
    designed without the capability infrastructure to make it
    performable.
  ],
  quote: [Autopilot was not designed to keep the driver engaged in the driving task.],
  quote-source: "Paraphrasing the NTSB findings on the 2016 Tesla Autopilot Florida crash (HAB-17/07, 2017)",
  sources-list: (
    [NHTSA Standing General Order 2021-01 reports],
    [NTSB Highway Accident Reports HAB-17/07 (2016), HAR-20/01 (2018), and follow-on cases],
    [NHTSA Office of Defects Investigation EA22-002 (2022)],
  ),
  le-insight: [
    Tesla Autopilot at consumer scale is the largest live test of
    Level-2 monitoring as a sustainable role. The early evidence is
    that it is not. The case is the strongest currently available
    test of whether consumer-side training and engagement design
    can produce sustained attention to automation. The recurring
    fatality pattern suggests the answer.
  ],
  lens-approach: [
    LENS uses Tesla Autopilot in LEN 8 as the live consumer-scale
    test of monitoring as a sustainable role and in LEN 7 for the
    governance dynamics of a Level-2 system marketed at the boundary
    of higher autonomy. Studio projects examine the driver-engagement
    design that would make the role performable.
  ],
  literature-items: (
    [NHTSA SGO documentation],
    [Parasuraman & Manzey (2010), automation complacency],
    [Casner & Hutchins (2019), automation transparency],
  ),
  reflection-list: (
    [Identify a passive-monitoring role in your domain. What evidence would tell you whether attention is sustainable over years of operation?],
    [Design the driver-engagement architecture that would make Level-2 monitoring sustainable for an average consumer.],
  ),
  courses: ("LEN 7", "LEN 8"),
)

#case(
  number: 93,
  title: "Cruise Robotaxi — Pedestrian Drag",
  year: "2023",
  domains-list: ("autonomous",),
  modes-code: "GDH",
  impact: "GM Cruise robotaxi struck a pedestrian and then dragged her ~20 feet; California suspended Cruise's permit; the program was substantially shut down",
  diagram: dgm.dgm-timeline(
    (("collision", "—"), ("drag", "20 ft"), ("partial video", "to regulator"), ("permit suspended", "CPUC"), ("shutdown", "GM")),
    emphasis: 2,
    caption: "Cruise — partial disclosure converted incident into company-ending event",
  ),
  body: [
    A pedestrian was struck by another vehicle in San Francisco and
    thrown into the path of a Cruise robotaxi. The robotaxi struck
    the pedestrian, then — having detected an impact — pulled to the
    side of the road, dragging the pedestrian approximately twenty
    feet. The California Department of Motor Vehicles found that
    Cruise had initially shown investigators only the first portion
    of the incident video, omitting the drag.

    The CPUC suspended Cruise's driverless permit. The U.S. National
    Highway Traffic Safety Administration opened an investigation.
    GM subsequently shut down Cruise's commercial operations and
    laid off the majority of the workforce.

    The case is the foundational governance-failure case in
    commercial autonomous vehicles: a contemporary firm whose
    institutional response to a safety incident — partial disclosure,
    selective evidence — accelerated the consequences far beyond
    what the incident alone would have produced. The capability gap
    was at the company's governance posture, not at the technology.
  ],
  quote: [Cruise's representation of the incident to regulators omitted material facts.],
  quote-source: "Paraphrasing the California Public Utilities Commission decision suspending Cruise permits, 2023",
  sources-list: (
    [California CPUC Decision suspending Cruise permits (2023)],
    [Quinn Emanuel report on Cruise incident response (2024)],
    [NHTSA Office of Defects Investigation reports],
  ),
  le-insight: [
    Cruise is the foundational governance-failure case in commercial
    autonomy. The incident itself was a single pedestrian injury;
    the institutional response converted it into a company-ending
    event. The capability that was missing was the institutional
    commitment to full disclosure of operational incidents to
    regulators.
  ],
  lens-approach: [
    LENS uses Cruise in LEN 7 as a foundational autonomous-vehicle
    governance case and in LEN 3 (Studio) for the institutional-
    response deliverable that should pre-exist any commercial
    autonomy program.
  ],
  literature-items: (
    [Quinn Emanuel Report on Cruise (2024)],
    [California CPUC decisions on Cruise],
    [Stilgoe (2021) on the governance of autonomous vehicles],
  ),
  reflection-list: (
    [What is the institutional incident-disclosure commitment in your domain? Is it operational under stress or aspirational?],
    [Design the incident-disclosure deliverable that a commercial autonomous-vehicle company should be required to demonstrate before operating.],
  ),
  courses: ("LEN 3", "LEN 7"),
)

#case(
  number: 94,
  title: "COMPAS Recidivism Algorithm",
  year: "2016 – present",
  domains-list: ("gov", "tech"),
  modes-code: "GHD",
  impact: "Risk-assessment algorithm used by U.S. courts; ProPublica analysis identified racial bias in error rates; foundational AI-governance case in criminal justice",
  diagram: dgm.dgm-pair-bars(
    "white",
    0.45,
    "Black",
    0.85,
    framing: "false-positive rate by group — construct definition as governance",
    caption: "COMPAS — accuracy is not the same question as distribution of errors",
  ),
  body: [
    The COMPAS risk-assessment algorithm, used in some U.S. jurisdictions
    to inform decisions about bail, sentencing, and parole, was
    examined by ProPublica in a 2016 investigation. The analysis
    found that Black defendants were more likely than white defendants
    to be incorrectly flagged as high-risk, and white defendants more
    likely to be incorrectly flagged as low-risk. The vendor disputed
    the analysis; the academic literature that followed identified the
    statistical issue as a tradeoff between competing fairness
    definitions that could not all be simultaneously satisfied.

    The case is foundational because it surfaced, at criminal-justice
    scale, the difference between predictive accuracy and the
    distribution of errors across populations. A model can be
    "accurate" by one metric and inequitable by another, and the
    choice of metric is a governance decision rather than a technical
    one.

    The case is paired with the educational algorithmic-bias case
    (Case 37) and the A-Level case (Case 35) as foundational examples
    of construct definition as a capability-engineering decision.
  ],
  quote: [Blacks are almost twice as likely as whites to be labeled a higher risk but not actually re-offend.],
  quote-source: "Angwin, Larson, Mattu & Kirchner, ProPublica, \"Machine Bias,\" 2016",
  sources-list: (
    [Angwin, Larson, Mattu & Kirchner, "Machine Bias," _ProPublica_ (2016)],
    [Northpointe technical response (2016)],
    [Kleinberg, Mullainathan & Raghavan (2017), "Inherent Trade-Offs in the Fair Determination of Risk Scores"],
  ),
  le-insight: [
    COMPAS is the canonical case for the distribution of algorithmic
    errors across populations as a separate question from algorithmic
    accuracy. The capability gap is at the governance layer that
    decides which fairness criterion to optimize. The decision is
    not technical. It is institutional.
  ],
  lens-approach: [
    LENS uses COMPAS in LEN 7 as a foundational algorithmic-
    accountability case in criminal justice, in LEN 10 for the
    technical fairness-criterion analysis, and in LEN 2 for the
    construct-definition question (what counts as recidivism?).
  ],
  literature-items: (
    [Angwin et al. (2016), ProPublica],
    [Kleinberg, Mullainathan & Raghavan (2017)],
    [Eubanks (2018), _Automating Inequality_],
  ),
  reflection-list: (
    [Identify a predictive instrument in your domain. Which fairness criterion does it optimize, and what does that imply for the population whose errors are distributed against them?],
    [Design the institutional governance deliverable that would have to be produced before COMPAS-style algorithms can be deployed in criminal justice.],
  ),
  courses: ("LEN 2", "LEN 7", "LEN 10"),
)

#case(
  number: 95,
  title: "Radiology AI Miscalibration",
  year: "2018 – present",
  domains-list: ("healthcare", "tech"),
  modes-code: "HKD",
  impact: "Recurring documented cases of FDA-cleared radiology AI tools performing worse in deployment than in validation, often along demographic lines",
  diagram: dgm.dgm-compare(
    "validation",
    "AUC 0.9+",
    "deployment",
    "drops",
    framing: "the clearance dataset and the deployment population diverge",
    caption: "Radiology AI — clearance is not deployment",
  ),
  body: [
    Multiple FDA-cleared radiology AI tools — for chest X-ray
    classification, mammography, CT triage — have been documented in
    the peer-reviewed literature to perform worse in deployment than
    in their validation studies, often with the degradation
    concentrated in patient populations under-represented in the
    training data. The DenseNet chest X-ray case (Larrazabal et al.
    2020) showed substantial drops in sensitivity for groups not well
    represented in training. Similar patterns have been documented in
    mammography AI, sepsis-prediction tools, and skin-lesion
    classifiers.

    The FDA's 510(k) clearance process for medical AI does not
    routinely require demographic stratification of validation
    metrics, nor does it require post-market monitoring of how the
    tool performs in the populations actually using it. The capability
    gap is at the regulatory architecture, not at the model.

    Radiology AI is the live, recurring case for the gap between
    clearance and clinically performable deployment in medical AI.
  ],
  quote: [Performance metrics on a clearance dataset are not the same as performance metrics in deployment populations.],
  quote-source: "Author framing of the FDA AI/ML-Based SaMD discussion paper, 2019 (uncited)",
  sources-list: (
    [FDA, "Proposed Regulatory Framework for Modifications to AI/ML-Based Software as a Medical Device" (2019)],
    [Larrazabal et al. (2020), "Gender imbalance in medical imaging datasets," _PNAS_],
    [Obermeyer et al. (2019), "Dissecting racial bias in an algorithm used to manage the health of populations," _Science_],
  ),
  le-insight: [
    Radiology AI is the canonical contemporary case for the gap
    between regulatory clearance and clinical deployment performance
    in medical AI. The clearance dataset and the deployment
    population diverge. The institutional architecture to surface
    the divergence — demographic post-market surveillance — has not
    yet been built.
  ],
  lens-approach: [
    LENS uses radiology AI in LEN 2 for clearance-vs-deployment
    measurement architecture, in LEN 7 for FDA AI/ML regulatory
    governance, and in LEN 10 for the technical bias-detection
    pipeline. The case pairs with Vioxx (Case 87) as a post-market
    surveillance failure pattern at a new technological boundary.
  ],
  literature-items: (
    [Obermeyer et al. (2019), _Science_],
    [Larrazabal et al. (2020), _PNAS_],
    [Wachter & Brynjolfsson (2023), "Will Generative Artificial Intelligence Deliver on Its Promise in Health Care?" _JAMA_],
  ),
  reflection-list: (
    [Identify a model in your domain whose deployment population diverges from its training population. What is the institutional architecture to surface the divergence?],
    [Design the demographic post-market surveillance deliverable that should accompany every FDA clearance of medical AI.],
  ),
  courses: ("LEN 2", "LEN 7", "LEN 10"),
)

#case(
  number: 96,
  title: "ChatGPT in Healthcare — Hallucination Cases",
  year: "2023 – present",
  domains-list: ("healthcare", "tech"),
  modes-code: "HD",
  impact: "Documented cases of clinicians using LLMs that produce hallucinated citations, fabricated dosages, and fictitious clinical guidelines",
  diagram: dgm.dgm-compare(
    "tone",
    "identical",
    "content",
    "accurate / not",
    framing: "the interface does not distinguish; the clinician must",
    caption: "LLMs in clinical use — fluency without warranty",
  ),
  body: [
    Since the public release of ChatGPT in late 2022, the peer-reviewed
    and clinical literatures have documented a recurring pattern:
    clinicians use large language models to draft patient education,
    summaries, or treatment guidance, and the output contains
    fabricated citations, hallucinated drug dosages, or fictitious
    clinical guidelines. Cases have ranged from cosmetic — fabricated
    references in academic submissions — to potentially clinical: a
    chatbot recommending unsafe medication doses or inventing
    contraindications.

    The capability gap is at the human verification interface.
    Clinicians who would carefully verify a colleague's recommendation
    have, in early case reports, accepted LLM output less critically.
    The hallucinations are presented with the same confidence as
    accurate information. The interface does not distinguish.

    The case is the live, recurring foundational case for LLM
    integration into clinical workflow. The discipline is being asked
    to specify what verification looks like at the moment of use,
    while the deployment is happening.
  ],
  quote: [LLMs produce hallucinations indistinguishable in tone from accurate information, and clinicians have not yet developed the practice of routine verification.],
  quote-source: "Author summary of JAMA editorials on LLM clinical use, 2023 – 2024 (uncited)",
  sources-list: (
    [JAMA editorials on LLM integration into clinical practice (2023–2024)],
    [Sallam (2023), "ChatGPT Utility in Healthcare Education, Research, and Practice"],
    [WHO ethical guidance on AI for health (2024)],
  ),
  le-insight: [
    LLM use in clinical practice is the live frontier case for
    human-AI teaming when the AI's output is fluent across both
    accurate and hallucinated content. The capability that does not
    yet exist is the routine verification practice — a clinical
    analog to the bibliographic discipline of academic writing.
  ],
  lens-approach: [
    LENS uses this case in LEN 8 as the live frontier for human-AI
    teaming with LLMs, in LEN 7 for the governance of LLM deployment
    in clinical workflows, and in LEN 3 (Studio) as a prompt for
    designing verification practices at the moment of use.
  ],
  literature-items: (
    [JAMA editorials on LLM clinical use],
    [Sallam (2023)],
    [Wachter & Brynjolfsson (2023), JAMA on generative AI in health care],
  ),
  reflection-list: (
    [Identify a workflow in your domain currently being augmented by LLMs. What is the verification practice — and does it exist at the moment of use, or only after?],
    [Design the verification deliverable that should accompany every clinician's adoption of an LLM tool for patient-facing work.],
  ),
  courses: ("LEN 3", "LEN 7", "LEN 8"),
)

#case(
  number: 97,
  title: "Predictive Policing — PredPol",
  year: "2011 – present",
  domains-list: ("gov", "tech"),
  modes-code: "GHD",
  impact: "Predictive-policing tools deployed by hundreds of U.S. police departments; several cities have abandoned them after equity analyses",
  diagram: dgm.dgm-compare(
    "training data",
    "past arrests",
    "ground truth",
    "past crime",
    framing: "the system learns enforcement patterns, not crime patterns",
    caption: "Predictive policing — construct gap at law-enforcement scale",
  ),
  body: [
    PredPol and similar predictive-policing tools use historical crime
    data to forecast where future crime is likely to occur, directing
    patrol resources to those locations. Multiple academic analyses
    (Lum & Isaac 2016, Brantingham et al. 2018) have found that
    because the historical crime data is itself a record of where
    police enforcement has been concentrated, the algorithm tends to
    reinforce existing enforcement patterns rather than predict
    underlying crime. Cities including Santa Cruz, New Orleans, and
    Los Angeles have suspended or abandoned predictive-policing
    deployments after equity reviews.

    The capability gap is at the construct definition: "where crime
    occurs" and "where crime is recorded" are not the same variable,
    and predictive-policing tools have historically treated them as
    such. The reform pattern — independent equity audit before
    deployment — has been implemented in some jurisdictions and not
    in others.

    Predictive policing is the canonical algorithmic-governance case
    in U.S. policing and pairs with COMPAS (Case 94) and educational
    algorithmic bias (Case 37).
  ],
  quote: [Predictive policing systems learn from a record of past policing, not from a record of past crime.],
  quote-source: "Lum & Isaac, Significance, 2016",
  sources-list: (
    [Lum & Isaac, "To Predict and Serve?" _Significance_ (2016)],
    [Brantingham et al. (2018) on predictive-policing field experiments],
    [Richardson, Schultz & Crawford (2019), "Dirty Data, Bad Predictions"],
  ),
  le-insight: [
    Predictive policing is the canonical case for the difference
    between training data and ground truth at law-enforcement scale.
    The institution being predicted (where crime occurs) is not the
    institution producing the training data (where police make
    arrests). The capability gap is at the construct.
  ],
  lens-approach: [
    LENS uses predictive policing in LEN 7 as a foundational AI-
    governance case in policing and in LEN 10 for the technical
    construct-validity analysis. The case is paired with COMPAS as
    criminal-justice algorithmic cases of different kinds.
  ],
  literature-items: (
    [Lum & Isaac (2016)],
    [Richardson, Schultz & Crawford (2019)],
    [Brayne (2017), "Big Data Surveillance: The Case of Policing"],
  ),
  reflection-list: (
    [Identify a predictive system in your domain whose training data is itself a record of institutional behavior rather than ground truth. What is the construct gap?],
    [Design the construct-validity audit that should precede deployment of a predictive system in any institutional setting.],
  ),
  courses: ("LEN 7", "LEN 10"),
)

#case(
  number: 98,
  title: "AlphaFold — Protein Structure Prediction",
  year: "2020 – present",
  domains-list: ("healthcare", "tech"),
  modes-code: "T",
  impact: "Substantially solved a 50-year protein-structure prediction problem; 200M+ structures publicly released; foundational positive AI case",
  diagram: dgm.dgm-stat(
    "200M",
    "predicted structures · publicly released",
    micro: "agreed benchmark, training data, verifiable output, open release",
    caption: "AlphaFold — the conditions for beneficial AI deployment",
  ),
  body: [
    DeepMind's AlphaFold (2020) and AlphaFold 2 (2021) substantially
    solved the half-century-old protein-structure prediction problem
    in computational biology. The publicly released AlphaFold Protein
    Structure Database contains predicted structures for over two
    hundred million proteins — essentially the entire known protein
    universe. AlphaFold has been integrated into structural-biology
    workflows worldwide and has accelerated drug-discovery and
    biological-research timelines across multiple domains.

    The case is the foundational positive case for AI as a capability
    amplifier in a well-defined scientific problem. The success has
    several features: a benchmark (CASP) that the field had agreed
    on for decades, training data of high quality, an output that
    biologists could verify against experimental structures, and an
    open release that allowed the global community to adopt the
    tool quickly. Each of these features was a precondition for the
    success, and none of them were the model itself.

    AlphaFold is the strongest positive AI case in the dataset for
    what conditions support beneficial AI deployment in a research
    domain.
  ],
  quote: [This will be one of the most important achievements in AI in the past decade.],
  quote-source: "Paraphrasing John Moult (organizer of the CASP benchmark) on AlphaFold2, 2020",
  sources-list: (
    [Jumper et al. (2021), "Highly accurate protein structure prediction with AlphaFold," _Nature_],
    [Varadi et al. (2022), AlphaFold Protein Structure Database, _Nucleic Acids Research_],
    [Moult, J., CASP organizer commentary],
  ),
  le-insight: [
    AlphaFold is the strongest positive AI case in the dataset. The
    technical achievement is real. The conditions that made the
    benefit possible — agreed benchmark, training data, verifiable
    output, open release — are the capability infrastructure around
    the model, not the model itself. The case is the strongest
    available evidence for what supports beneficial AI deployment.
  ],
  lens-approach: [
    LENS uses AlphaFold in LEN 1 as a problem-framing case for what
    productive AI deployment looks like, in LEN 10 as a technical
    achievement, and in LEN 7 for the open-release governance
    decision that distributed the benefit globally.
  ],
  literature-items: (
    [Jumper et al. (2021), _Nature_],
    [Varadi et al. (2022)],
    [Hassabis (DeepMind) public commentary on AlphaFold and capability],
  ),
  reflection-list: (
    [Identify a domain in your work where the conditions that supported AlphaFold's success (benchmark, training data, verifiable output) are present. What is the analogous opportunity?],
    [The open release of AlphaFold's predictions was a governance decision. Design the equivalent decision for an AI capability your institution might develop.],
  ),
  courses: ("LEN 1", "LEN 7", "LEN 10"),
)

#case(
  number: 99,
  title: "AI-Augmented Coding Tools",
  year: "2021 – present",
  domains-list: ("tech",),
  modes-code: "TH",
  impact: "Tens of millions of developers using GitHub Copilot, Cursor, and peers; productivity gains documented; security and correctness implications still being characterized",
  diagram: dgm.dgm-compare(
    "short term",
    "more output",
    "long term",
    "?",
    framing: "more capable, or more dependent?",
    caption: "AI-augmented coding — the capability question is open",
  ),
  body: [
    The widespread availability of AI-augmented coding tools — GitHub
    Copilot, Cursor, Codeium, and others — represents the largest
    real-time experiment in human-AI collaboration in the dataset.
    Tens of millions of developers use these tools daily, generating
    measurable productivity gains in published studies (Peng et al.
    2023). The tools also produce code with documentable security
    vulnerability rates and correctness issues that developers
    accept at higher rates than they accept similar code from other
    developers (Sandoval et al. 2023; Pearce et al. 2022).

    The capability question is open: are developers using these tools
    becoming more capable, or are they becoming more dependent? The
    longitudinal evidence is not yet sufficient to answer. The
    short-term productivity gains are real. The long-term capability
    consequences — particularly for developers who learn the craft
    with these tools available — are not yet known.

    The case is the live frontier for human-AI teaming in
    professional knowledge work. The discipline LENS represents is
    being asked to specify what good looks like before the long-term
    evidence is in.
  ],
  quote: [AI assistance changes what developers can do; it may also change what they need to know.],
  quote-source: "ACM Communications, 2024",
  sources-list: (
    [Peng et al. (2023), "The Impact of AI on Developer Productivity"],
    [Pearce et al. (2022), "Asleep at the Keyboard? Assessing the Security of GitHub Copilot's Code Contributions"],
    [Sandoval et al. (2023), security analyses of AI-generated code],
  ),
  le-insight: [
    AI-augmented coding is the live foundational case for human-AI
    teaming in professional knowledge work. The short-term gains are
    real. The long-term capability question — does the tool make the
    operator more capable, or more dependent — is the question the
    discipline must learn to ask and answer.
  ],
  lens-approach: [
    LENS uses AI-augmented coding in LEN 8 as the largest live human-
    AI teaming case in the dataset, in LEN 9 for the long-term
    capability-development question, and in LEN 3 (Studio) as a
    prompt for evaluating AI augmentation in professional practice.
  ],
  literature-items: (
    [Peng et al. (2023)],
    [Pearce et al. (2022)],
    [Dell'Acqua et al. (2023), "Navigating the Jagged Technological Frontier" (HBS / BCG study on professional use of LLMs)],
  ),
  reflection-list: (
    [In your domain, identify a class of practitioners whose work is currently being augmented by AI tools. What evidence would tell you whether their capability is growing or eroding?],
    [Design the longitudinal study that would distinguish capability growth from capability erosion in an AI-augmented professional practice.],
  ),
  courses: ("LEN 3", "LEN 8", "LEN 9"),
)

#case(
  number: 100,
  title: "The Discipline We Build Next",
  year: "ongoing",
  domains-list: ("education", "healthcare", "defense"),
  modes-code: "TKNGHD",
  impact: "Open: the case that has not yet been written. The discipline that this casebook documents is the one practitioners now in training must build.",
  diagram: dgm.dgm-stat(
    "100th",
    "case · open",
    micro: "what the practitioners reading this volume do next is what fills it in",
    caption: "The case that has not yet been written",
  ),
  body: [
    The ninety-nine cases that precede this one have an answer. The
    investigations are complete; the failures are diagnosed; the
    interventions are evaluated. This case does not. It belongs to the
    practitioners now in training — to the students of the LDT
    program and the LENS specialization, to the graduates who will
    take positions in healthcare, defense, education at scale, and
    the human-AI teaming cases that anticipate the next decade — and
    to the institutions those graduates will build.

    The strongest evidence for the discipline LENS represents is the
    cumulative record of what its absence has cost. The strongest
    argument for its possibility is the cumulative record of what
    its presence has produced. Both records are in the preceding
    cases. The work ahead is to add to the second record and shorten
    the first.

    No specific incident sits behind this case because the work is
    not yet done. The discipline is still being built. The institution
    of capability engineering is, in 2026, where INPO was in 1979 or
    where CRM was in 1981 — a discipline whose evidence is
    accumulating, whose practitioners are being trained, and whose
    institutional architecture is not yet complete.

    What the practitioners reading this volume do next is what fills
    in this case.
  ],
  quote: [Capability is engineerable. The institution to engineer it has not yet been built. That is the work.],
  quote-source: "LDT / LENS program statement, Johns Hopkins School of Education",
  sources-list: (
    [Goodell & Kolodner (2022), _Learning Engineering Toolkit_],
    [IEEE ICICLE Learning Engineering Body of Knowledge (LEBoK)],
    [The preceding ninety-nine cases of this volume],
  ),
  le-insight: [
    Every case in this book is closed. This one is open. The
    discipline LENS represents is the discipline that closes cases
    that are now open. The institutions of capability engineering
    that exist in 2026 are insufficient to the volume of capability
    work the contemporary world requires. The graduates of this
    program are the people who will build the institutions that are
    insufficient now.
  ],
  lens-approach: [
    LENS is organized to produce the practitioners who can do this
    work. The curriculum's commitments — capability as a system
    parameter, evidence as a deliverable, ethics as design,
    implementation as a thread — are the operational form of the
    argument the ninety-nine preceding cases evidence. Every studio
    project (LEN 3) is a small attempt at this case.
  ],
  literature-items: (
    [Goodell & Kolodner (2022)],
    [LEBoK at lebok.wiki],
    [The introduction to this volume],
  ),
  reflection-list: (
    [What is the case you are positioned to add to this dataset in the next ten years — a failure prevented, a success engineered, an institution built?],
    [If this book is read by the practitioners who will write its hundred-and-first case, what should that case look like?],
  ),
  courses: ("LEN 1", "LEN 3", "LEN 9"),
)
