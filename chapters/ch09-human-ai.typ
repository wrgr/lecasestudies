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
  kind: "frontier",
  summary: [
    Tesla's Autopilot and Full Self-Driving Beta are Level-2
    driver-assistance systems: the human driver remains legally and
    operationally responsible at all times. NHTSA's Standing General Order
    data has documented dozens of fatal crashes involving Autopilot since
    the 2016 death of Joshua Brown in Florida, and the pattern is
    consistent — the system performs capably for long stretches, the
    driver's monitoring attention attenuates, and an edge case (a
    stationary object, a faded lane line, a crossing vehicle) produces a
    collision the inattentive driver fails to catch. NHTSA's investigation
    has found Tesla's driver-engagement design inadequate to sustain the
    attention safe operation requires. At consumer scale, Autopilot is the
    live test of whether passive monitoring of good-enough automation is a
    role a human can actually perform.
  ],
  sections: (
    // -- The Shift --
    [
      Partial driving automation has moved from research vehicles into
      millions of consumer cars. Level-2 systems like Tesla's Autopilot can
      steer, accelerate, and brake within their operational design domain,
      but they require the human driver to monitor continuously and take
      over instantly — a fundamentally new and demanding role assigned to
      ordinary, untrained consumers. Where a research program could screen,
      brief, and instrument its safety drivers, a consumer product reaches
      everyone who buys the car, with no curriculum and no qualification
      gate standing between purchase and the monitoring task itself.#cn()
    ],
    // -- What Is Emerging --
    [
      Since the first fatal Autopilot crash — Joshua Brown, Florida, 2016 —
      NHTSA's Standing General Order data has documented dozens of fatal
      crashes involving the system. The pattern is consistent: long periods
      of capable operation, attenuating driver attention, and then an edge
      case — a stationary fire truck, a faded lane marking, a perpendicular
      crossing — that the disengaged driver fails to catch in time. The very
      reliability that makes the system attractive is what erodes the
      vigilance it depends on, so each uneventful mile quietly raises the
      odds that the next intervention will come too late.#cn()
    ],
    // -- The Capability Question --
    [
      The proximate cause in each case is the driver, who was legally
      responsible. But the deeper question is whether sustained vigilant
      monitoring of an automation that works well most of the time is a
      role a human can perform at all. Naming the feature "Autopilot" and
      designing weak engagement checks shaped the very inattention the
      system then blamed on the operator — so the architecture both invited
      the disengagement and reserved the liability for the person least
      positioned to resist it.#cn()
    ],
    // -- Early Evidence --
    [
      NHTSA's open investigation (ODI EA22-002) has identified Tesla's
      driver-engagement design as inadequate to maintain the attention safe
      operation requires, and the recurring fatality pattern across NTSB
      reports suggests passive monitoring is not a sustainable role as
      currently engineered. Decades of automation-complacency research
      point the same way — the finding is not that any one driver failed but
      that the role asks a human to stay alert to a system precisely
      because it almost never needs them, a demand the evidence keeps
      showing is not reliably met.#cn()
    ],
    // -- Open Problems --
    [
      Tesla Autopilot is the consumer-scale version of the Uber ATG problem
      (Case 29): a passive-monitoring role deployed without the capability
      infrastructure — training, engagement design, attention measurement —
      to make it performable. The open problem is what driver-engagement
      architecture, if any, could make Level-2 monitoring sustainable for
      an average driver over years of use, and whether the answer is a
      better attention check or a concession that the role itself has to be
      redesigned out of the human's hands.#cn()
    ],
  ),
  approaches: (
    during: (
      [Engineer driver-engagement monitoring to the demonstrated limits of human vigilance — verify attention against operational evidence before fielding, not against an assumption that warnings suffice.],
      [Name and present the feature so its capability boundary is unmistakable to an untrained consumer, rather than implying autonomy the system does not deliver.],
      [Constrain operation to the design domain the system can actually handle, so the human is not silently relied on as the backstop for edge cases.],
    ),
    after: (
      [Monitor the standing-order crash data for the disengagement pattern and treat a recurring signature as evidence the role, not the driver, needs redesign.],
      [Track attention and takeover performance across years of ownership, since vigilance erodes with the very reliability that accumulates over time.],
      [Hold the engagement design accountable to an independent regulator with authority to require changes when in-use evidence shows it is inadequate.],
    ),
  ),
  references: (
    [NTSB, Highway Accident Report HAR-17/02 (Williston, FL, 2016) — the quoted disengagement finding.],
    [NTSB, Highway Accident Report HAR-20/01 (Mountain View, CA, 2018) — Autopilot crash analysis.],
    [NHTSA Standing General Order 2021-01 reports — documented Autopilot fatal crashes.],
    [NHTSA Office of Defects Investigation EA22-002 (2022) — driver-engagement adequacy.],
    [Parasuraman, R. & Manzey, D. (2010) — automation complacency and monitoring.],
  ),
  quote: [The operational design ... permitted his prolonged disengagement from the driving task.],
  quote-source: "NTSB Highway Accident Report HAR-17/02 (Williston, Florida crash), 2017",
  le-insight: [
    Tesla Autopilot at consumer scale is the largest live test of
    Level-2 monitoring as a sustainable role. The early evidence is
    that it is not. The case is the strongest currently available
    test of whether consumer-side training and engagement design
    can produce sustained attention to automation. The recurring
    fatality pattern suggests the answer.
  ],
  lens-approach: [
    LENS uses Tesla Autopilot in LEN 2 as the live consumer-scale
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
    [Autopilot assigns full legal responsibility to the operator while engineering the conditions that erode their attention. Where in your domain does liability rest with the person an automated system has made least able to intervene — and how would you realign the two?],
  ),
  courses: ("LEN 7", "LEN 2", "LEN 6",),
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
  kind: "frontier",
  summary: [
    In October 2023, a pedestrian in San Francisco was struck by a
    human-driven car and thrown into the path of a GM Cruise robotaxi. The
    robotaxi hit her, detected an impact, and then — executing a
    pull-to-the-side maneuver — dragged her about twenty feet. The injury
    was severe, but it was Cruise's institutional response that proved
    company-ending: regulators found Cruise had initially shown
    investigators only the first portion of the incident video, omitting
    the drag. California suspended Cruise's driverless permit, NHTSA opened
    an investigation, and GM ultimately shut down the commercial operation.
    The case is the foundational governance-failure case in commercial
    autonomy: the technology produced one injury; the partial disclosure
    converted it into the program's collapse. The gap was at governance,
    not technology.
  ],
  sections: (
    // -- The Shift --
    [
      Driverless robotaxis carrying paying passengers on public streets are
      new, and so is the regulatory relationship around them: companies
      like Cruise operate under permits from bodies — the California DMV
      and CPUC, NHTSA — that depend heavily on the operator's own
      disclosure of what its vehicles do in incidents. The regulator does
      not sit in the vehicle; it sees what the operator chooses to show it,
      so the entire oversight model rests on a disclosure the company
      controls at the moment its interests run most against it.#cn()
    ],
    // -- What Is Emerging --
    [
      On 2 October 2023, a pedestrian struck by another car was thrown into
      the path of a Cruise robotaxi. The robotaxi struck her and, having
      detected a collision, executed a pull-over maneuver that dragged her
      roughly twenty feet. The collision itself might have been survivable
      as a regulatory matter; what followed was not — the post-collision
      maneuver was the system behaving as designed in a situation no one had
      designed it for, and it was the company's account of that maneuver,
      not the maneuver itself, that decided the program's fate.#cn()
    ],
    // -- The Capability Question --
    [
      The California DMV found that Cruise had initially shown investigators
      only the first portion of the incident video, omitting the drag. The
      question the case poses is institutional, not technical: whether a
      commercial autonomy program has the governance commitment to disclose
      fully and promptly to its regulators, especially when the facts are
      damaging — a commitment that is easy to profess in calm conditions and
      is tested only at the exact moment full candor is most costly.#cn()
    ],
    // -- Early Evidence --
    [
      The consequences cascaded. The CPUC suspended Cruise's driverless
      permit for misrepresenting the incident, NHTSA opened a defects
      investigation, and GM subsequently shut down Cruise's commercial
      robotaxi operations and laid off much of the workforce. A
      commissioned external review (Quinn Emanuel) detailed the disclosure
      failures — a sequence in which each escalation followed not from the
      injury but from the partial account of it, the loss of regulator
      trust compounding faster than any engineering defect could have.#cn()
    ],
    // -- Open Problems --
    [
      Cruise is the foundational governance-failure case in commercial
      autonomy: the incident was a single pedestrian injury; the
      institutional response converted it into a company-ending event. The
      open problem is what incident-disclosure commitment — auditable,
      pre-committed, enforceable — a commercial autonomy program should
      have to demonstrate before it is allowed to operate at all, so that
      candor under pressure is a structural guarantee rather than a matter
      left to the operator's discretion in the moment.#cn()
    ],
  ),
  approaches: (
    during: (
      [Pre-commit the incident-disclosure protocol — what data is shared, in what completeness, within what window — and make it a condition of the operating permit rather than a post-hoc choice.],
      [Engineer incident telemetry so the full event record, including post-collision maneuvers, is captured and preserved automatically beyond the operator's editorial control.],
      [Design post-collision behaviors for the situations the system was not built for, since the pull-over maneuver, not the impact, produced the harm.],
    ),
    after: (
      [Audit disclosed incident accounts against the complete telemetry independently, so a partial account is detectable before it erodes regulator trust.],
      [Monitor the regulator-operator relationship itself as a safety-critical asset, treating a single misrepresentation as a program-level failure.],
      [Track the gap between what is disclosed and what occurred across incidents, since governance, not technology, is where this class of failure concentrates.],
    ),
  ),
  references: (
    [California Public Utilities Commission decision suspending Cruise permits (2023) — the omitted-facts finding (paraphrased).],
    [California DMV order of suspension (2023) — the partial video disclosure.],
    [Quinn Emanuel report on Cruise incident response (2024) — the disclosure failures.],
    [NHTSA Office of Defects Investigation reports (2023–2024) — the federal investigation.],
    [Stilgoe, J. (2021) — governance of autonomous vehicles.],
  ),
  quote: [Cruise's representation of the incident to regulators omitted material facts.],
  quote-source: "Paraphrasing the California Public Utilities Commission decision suspending Cruise permits, 2023",
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
    governance case and in LEN 10 (capstone) for the institutional-
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
    [Cruise's oversight depended on the operator's own account of what its vehicles did. Identify a regulatory relationship in your domain that relies on self-disclosure, and design the mechanism that would make a partial account detectable before trust collapses.],
  ),
  courses: ("LEN 10", "LEN 7"),
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
    0.235,
    "Black",
    0.449,
    framing: "false-positive rate by group (ProPublica 2016): 23.5% vs 44.9%",
    caption: "COMPAS — accuracy is not the same question as distribution of errors",
  ),
  kind: "frontier",
  summary: [
    COMPAS is a proprietary risk-assessment algorithm used in some U.S.
    jurisdictions to inform bail, sentencing, and parole. A 2016 ProPublica
    investigation found Black defendants were nearly twice as likely as
    white defendants to be wrongly flagged high-risk (a false-positive rate
    of about 44.9% versus 23.5%), while white defendants were more often
    wrongly flagged low-risk. The vendor responded that COMPAS satisfied
    predictive parity — equal calibration within each group. The literature
    that followed (Chouldechova 2017; Kleinberg, Mullainathan & Raghavan
    2017) proved this an impossibility: when base rates differ, calibration
    and equal error rates cannot all hold at once. COMPAS surfaced, at
    criminal-justice scale, that a model can be "accurate" by one metric
    and inequitable by another — and that choosing the metric is a
    governance decision, not a technical one.
  ],
  sections: (
    // -- The Shift --
    [
      Statistical risk-assessment tools have moved into the heart of the
      U.S. criminal-justice system, informing decisions about bail,
      sentencing, and parole. COMPAS, a proprietary instrument, scores a
      defendant's likelihood of reoffending and hands that score to judges
      — relocating a consequential human judgment to an algorithm whose
      workings are largely opaque. Because the instrument is proprietary,
      the people most affected by its scores, and often the courts using
      them, cannot inspect how the number was reached — opacity that becomes
      part of the decision rather than incidental to it.#cn()
    ],
    // -- What Is Emerging --
    [
      A 2016 ProPublica investigation analyzed COMPAS scores against actual
      reoffense outcomes and found a racial asymmetry in the errors: Black
      defendants were roughly twice as likely as white defendants to be
      incorrectly flagged as high-risk (about 44.9% versus 23.5%), while
      white defendants were more often incorrectly flagged as low-risk. The
      disparity was not in whether the tool was right on average but in who
      bore the cost when it was wrong, so two defendants with identical
      outcomes could be served very different errors depending on group.#cn()
    ],
    // -- The Capability Question --
    [
      The vendor, Northpointe, responded that COMPAS satisfied predictive
      parity — it was equally well calibrated within each racial group.
      Both claims were true, which is the point: the case poses whether
      "fair" even has a single technical meaning, or whether the
      institution must choose, in public, among incompatible fairness
      definitions. The dispute was not one side misreading the data; it was
      two defensible metrics pointing in opposite directions, with no purely
      technical tie-breaker available to settle which one governs.#cn()
    ],
    // -- Early Evidence --
    [
      The academic literature resolved the dispute as an impossibility
      result. Chouldechova (2017) and Kleinberg, Mullainathan & Raghavan
      (2017) proved that calibration within groups and equalized
      false-positive and false-negative rates cannot all be satisfied at
      once when base rates differ across groups. The choice is not between
      fair and unfair models but among mutually exclusive definitions of
      fairness — a mathematical result, not a deficiency of COMPAS, meaning
      no future model, however well built, can escape the same trade-off.#cn()
    ],
    // -- Open Problems --
    [
      COMPAS is the canonical case for the distribution of algorithmic
      errors as a question separate from accuracy. The technical literature
      can characterize the trade-offs, but the institution has to decide
      which one it is willing to defend — and on what definition of
      "recidivism." It pairs with the A-Level (Case 35) and educational-bias
      (Case 37) cases as examples of construct definition as a
      capability-engineering decision, because how the outcome is defined in
      the first place shapes the error distribution long before any metric
      is chosen to judge it.#cn()
    ],
  ),
  approaches: (
    during: (
      [Require the deploying institution to choose and publicly justify a fairness criterion before the tool is fielded, since the impossibility result means a choice cannot be avoided.],
      [Define the target construct — what "recidivism" actually counts — explicitly, because the error distribution is set by that definition before any model is trained.],
      [Mandate inspectability of a score's basis for courts and defendants, so a proprietary instrument cannot make opacity part of the decision.],
    ),
    after: (
      [Audit error rates disaggregated by group against actual outcomes on an ongoing basis, as ProPublica did, rather than accepting an aggregate accuracy figure.],
      [Monitor whether the deployed criterion still matches the one the institution publicly committed to defend, and surface drift to oversight.],
      [Track the downstream decisions the score influenced, so the human cost of the chosen trade-off remains visible and contestable.],
    ),
  ),
  references: (
    [Angwin, Larson, Mattu & Kirchner, "Machine Bias," _ProPublica_ (2016) — the false-positive-rate disparity (quoted).],
    [Northpointe technical response (2016) — the predictive-parity (calibration) defense.],
    [Chouldechova, A. (2017) — the fairness impossibility result for differing base rates.],
    [Kleinberg, Mullainathan & Raghavan (2017), "Inherent Trade-Offs in the Fair Determination of Risk Scores."],
    [Eubanks, V. (2018), _Automating Inequality_ — algorithmic decision-making and equity.],
  ),
  quote: [Blacks are almost twice as likely as whites to be labeled a higher risk but not actually re-offend.],
  quote-source: "Angwin, Larson, Mattu & Kirchner, ProPublica, \"Machine Bias,\" 2016",
  le-insight: [
    COMPAS is the canonical case for the distribution of algorithmic
    errors across populations as a separate question from algorithmic
    accuracy. The capability gap is at the governance layer that
    decides which fairness criterion to optimize. The decision is
    not technical. It is institutional. The Chouldechova and
    Kleinberg–Mullainathan–Raghavan results showed the choice is not
    between fair and unfair models but among incompatible definitions
    of fairness. The technical literature can characterize the
    trade-offs; the institutional layer has to choose, in public,
    which trade-off it is willing to defend.
  ],
  lens-approach: [
    LENS uses COMPAS in LEN 7 as a foundational algorithmic-
    accountability case in criminal justice, in LEN 9 for the
    technical fairness-criterion analysis, and in LEN 4 for the
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
    [The ProPublica analysis surfaced the COMPAS disparity in 2016 only because reporters obtained the data. What is the equivalent public-interest investigation that should exist for a comparable model in your domain — and what data would have to be released for it to be possible?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 9"),
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
  kind: "frontier",
  summary: [
    FDA-cleared radiology AI tools — for chest X-ray classification,
    mammography, CT triage — have been repeatedly documented performing
    worse in deployment than in their validation studies, often with the
    degradation concentrated in patient groups under-represented in the
    training data. Larrazabal et al. (PNAS 2020) showed this structurally
    for chest-X-ray classifiers, and Obermeyer et al. (Science 2019) showed
    that bias in the labels used to train clinical AI can under-allocate
    care to Black patients even when the model looks well-calibrated. The
    FDA's 510(k) clearance process does not routinely require demographic
    stratification of validation metrics or post-market monitoring of how a
    tool performs in the population using it. The capability gap is in the
    regulatory architecture, not the model: clearance is not the same thing
    as clinically performable deployment.
  ],
  sections: (
    // -- The Shift --
    [
      Machine-learning tools are moving rapidly into radiology and other
      diagnostic medicine, cleared for market and integrated into clinical
      workflows that affect real patients. Unlike a drug, a model can pass
      its validation study and still behave very differently once it meets
      a population that differs from its training data — the same model file
      that scored well on the clearance set can quietly carry a different
      error profile into every hospital whose patients do not resemble it.#cn()
    ],
    // -- What Is Emerging --
    [
      Multiple FDA-cleared radiology tools — chest-X-ray classifiers,
      mammography aids, CT triage systems — have been documented in the
      peer-reviewed literature performing worse in deployment than in
      validation, with the degradation often concentrated in
      under-represented patient groups. Larrazabal et al. (PNAS 2020)
      demonstrated structural sensitivity drops for groups under-represented
      in chest-X-ray training data — evidence that the shortfall is not a
      stray bug but a predictable consequence of which patients the training
      set did and did not contain.#cn()
    ],
    // -- The Capability Question --
    [
      The problem is not confined to imaging. Obermeyer et al. (Science
      2019) showed that a widely deployed care-management algorithm
      systematically under-allocated resources to Black patients because it
      was trained on healthcare cost as a proxy label for need. The
      question is how a regulator can certify a model as safe without
      checking how it behaves across the populations and labels it will
      actually meet — since a model can look well-calibrated on its chosen
      proxy while the proxy itself encodes the inequity it then propagates.#cn()
    ],
    // -- Early Evidence --
    [
      Similar degradation has been reported in mammography AI,
      sepsis-prediction tools, and skin-lesion classifiers. Yet the FDA's
      510(k) clearance pathway does not routinely require demographic
      stratification of validation metrics, nor post-market monitoring of
      in-use performance — so the divergence between clearance and
      deployment is largely invisible while the tool is in use, and a
      shortfall concentrated in one patient group can persist unmeasured
      across the entire period the tool is influencing care.#cn()
    ],
    // -- Open Problems --
    [
      Radiology AI is the live, recurring case for the gap between
      regulatory clearance and clinically performable deployment. The
      capability gap is at the regulatory architecture, not the model: the
      institutional machinery to require demographic post-market
      surveillance has not been built. It is the medical-AI analog of the
      Vioxx post-market-surveillance failure (Case 87) at a new
      technological boundary — a case where the harm comes not from a hidden
      defect but from the absence of any standing system to watch the tool
      once it is in the population's hands.#cn()
    ],
  ),
  approaches: (
    during: (
      [Require validation metrics stratified by demographic group at clearance, so a tool's performance is established on the populations it will actually meet, not an aggregate.],
      [Specify the intended deployment population and label definition explicitly, and treat divergence from the training distribution as a known risk to be measured, not assumed away.],
      [Build the data pipeline for in-use performance capture before deployment, so post-market signals are collectable from the first patient rather than reconstructed after harm.],
    ),
    after: (
      [Mandate demographic post-market surveillance of in-use performance, the institutional machinery the clearance pathway currently lacks.],
      [Monitor for the clearance-to-deployment performance gap continuously, since a shortfall concentrated in one group can otherwise persist invisibly.],
      [Tie continued authorization to demonstrated in-population performance, so a tool that degrades in deployment can be withdrawn before the divergence compounds.],
    ),
  ),
  references: (
    [FDA, "Proposed Regulatory Framework for Modifications to AI/ML-Based Software as a Medical Device" (2019) — clearance vs deployment (synthesized).],
    [Larrazabal et al. (2020), "Gender imbalance in medical imaging datasets," _PNAS_ — sensitivity drops for under-represented groups.],
    [Obermeyer et al. (2019), "Dissecting racial bias in an algorithm used to manage the health of populations," _Science_ — label bias.],
    [Wachter & Brynjolfsson (2023), _JAMA_ — generative AI in health care.],
    [FDA 510(k) clearance documentation — absence of required demographic stratification and post-market monitoring.],
  ),
  quote: [Performance metrics on a clearance dataset are not the same as performance metrics in deployment populations.],
  quote-source: "Editors' synthesis of the FDA AI/ML-Based SaMD discussion paper (2019)",
  le-insight: [
    Radiology AI is the canonical contemporary case for the gap
    between regulatory clearance and clinical deployment performance
    in medical AI. The clearance dataset and the deployment
    population diverge. The institutional architecture to surface
    the divergence — demographic post-market surveillance — has not
    yet been built.
  ],
  lens-approach: [
    LENS uses radiology AI in LEN 4 for clearance-vs-deployment
    measurement architecture, in LEN 7 for FDA AI/ML regulatory
    governance, and in LEN 9 for the technical bias-detection
    pipeline. The case pairs with Vioxx (Case 87) as a post-market
    surveillance failure pattern at a new technological boundary.
    The Obermeyer (2019) finding generalizes the diagnosis: bias
    enters through the labels and through the population, both of
    which the 510(k) process currently treats as outside its scope.
  ],
  literature-items: (
    [Obermeyer et al. (2019), _Science_],
    [Larrazabal et al. (2020), _PNAS_],
    [Wachter & Brynjolfsson (2023), "Will Generative Artificial Intelligence Deliver on Its Promise in Health Care?" _JAMA_],
  ),
  reflection-list: (
    [Identify a model in your domain whose deployment population diverges from its training population. What is the institutional architecture to surface the divergence?],
    [Design the demographic post-market surveillance deliverable that should accompany every FDA clearance of medical AI.],
    [FDA 510(k) clearance does not currently require demographic stratification of validation metrics, nor does it require post-market monitoring of how a cleared tool actually performs on the population using it. What is the minimum reporting deliverable a regulator should require so the gap is visible while the tool is in use?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 9"),
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
  kind: "frontier",
  summary: [
    Since ChatGPT's public release in late 2022, the clinical and
    peer-reviewed literatures have documented a recurring pattern:
    clinicians use large language models to draft patient education,
    summaries, or treatment guidance, and the output contains fabricated
    citations, hallucinated drug dosages, or fictitious clinical
    guidelines. The failures range from cosmetic — invented references in
    academic submissions — to potentially clinical, such as unsafe dosing
    or fabricated contraindications. The capability gap is at the
    human-verification interface: the model presents hallucinated content
    with the same fluent confidence as accurate content, and early reports
    suggest clinicians accept LLM output less critically than a colleague's.
    The case is the live, foundational case for LLM integration into
    clinical workflow — the discipline must specify what verification looks
    like at the moment of use, while deployment is already happening.
  ],
  sections: (
    // -- The Shift --
    [
      Large language models became broadly available with ChatGPT's
      release in late 2022, and clinicians began using them almost
      immediately — to draft patient-education materials, summarize
      records, and look up guidance. For the first time, a tool that
      produces fluent, authoritative-sounding medical text is in routine,
      informal use at the point of care — adopted ahead of any guideline,
      credential, or institutional sign-off, so the practice spread faster
      than any structure to govern it could be put in place.#cn()
    ],
    // -- What Is Emerging --
    [
      A recurring failure pattern has been documented across the clinical
      and peer-reviewed literatures: LLM output containing fabricated
      citations, hallucinated drug dosages, or fictitious clinical
      guidelines. The failures range from cosmetic — invented references in
      academic submissions — to potentially clinical, such as unsafe
      medication doses or invented contraindications — a span that matters
      because the same tool, used the same way, can produce a harmless
      error and a dangerous one with no change in how confident it sounds.#cn()
    ],
    // -- The Capability Question --
    [
      The capability gap is at the human-verification interface. The model
      presents hallucinated content with exactly the same fluent confidence
      as accurate content; the interface does not distinguish the two. The
      question is whether clinicians can — and will — develop the routine
      verification practice that the tool's fluency actively discourages,
      since the very smoothness that makes the output easy to accept is what
      removes the friction a reader would normally use as a warning.#cn()
    ],
    // -- Early Evidence --
    [
      Early case reports suggest that clinicians who would carefully check
      a colleague's recommendation accept LLM output less critically,
      precisely because it reads so authoritatively. JAMA editorials and
      reviews through 2023–2024 have repeatedly flagged the absence of an
      established verification practice as the central risk of clinical LLM
      use — the concern is not that the model errs but that the practice for
      catching its errors at the moment of use has not yet been defined or
      taught.#cn()
    ],
    // -- Open Problems --
    [
      This is the live frontier case for human-AI teaming when the AI is
      fluent across both accurate and hallucinated content. The capability
      that does not yet exist is a routine clinical verification practice —
      an analog to the bibliographic discipline of academic writing —
      specified at the moment of use rather than after harm. The discipline
      is being asked to define what good looks like while deployment is
      already underway, so the verification standard has to be built around
      a tool already in millions of hands rather than gated in front of it.#cn()
    ],
  ),
  approaches: (
    during: (
      [Specify a routine verification practice at the moment of use — what a clinician must independently confirm before acting on LLM output — before the tool enters clinical workflow.],
      [Design the interface to mark provenance and uncertainty, so fluency alone cannot stand in for warranty of accuracy.],
      [Restrict the sanctioned uses to those where verification is feasible and cheap, keeping unverifiable high-stakes outputs out of patient-facing work.],
    ),
    after: (
      [Monitor the documented failure pattern — fabricated citations, dosages, guidelines — across in-use cases to keep the risk profile current as models change.],
      [Track whether the verification practice is actually being performed, since the tool's fluency discourages exactly the checking it requires.],
      [Govern adoption against emerging guidance so the standard for verification keeps pace with a tool already in widespread informal use.],
    ),
  ),
  references: (
    [JAMA editorials on LLM integration into clinical practice (2023–2024) — the hallucination/verification problem (synthesized).],
    [Sallam (2023), "ChatGPT Utility in Healthcare Education, Research, and Practice" — documented benefits and risks.],
    [Case reports of LLM hallucinated citations and dosages in clinical and academic use (2023–2024).],
    [WHO ethical guidance on AI for health (2024) — verification and oversight requirements.],
    [Wachter & Brynjolfsson (2023), _JAMA_ — generative AI in health care.],
  ),
  quote: [LLMs produce hallucinations indistinguishable in tone from accurate information, and clinicians have not yet developed the practice of routine verification.],
  quote-source: "Editors' synthesis of JAMA editorials on LLM clinical use (2023–2024)",
  le-insight: [
    LLM use in clinical practice is the live frontier case for
    human-AI teaming when the AI's output is fluent across both
    accurate and hallucinated content. The capability that does not
    yet exist is the routine verification practice — a clinical
    analog to the bibliographic discipline of academic writing.
  ],
  lens-approach: [
    LENS uses this case in LEN 2 as the live frontier for human-AI
    teaming with LLMs, in LEN 7 for the governance of LLM deployment
    in clinical workflows, and in LEN 10 (capstone) as a prompt for
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
    [The same fluency that makes LLM output easy to accept is what removes the cues a reader normally uses to doubt it. What interface signal would restore that friction at the moment of use without making the tool unusable?],
  ),
  courses: ("LEN 10", "LEN 7", "LEN 2"),
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
  kind: "frontier",
  summary: [
    PredPol and similar predictive-policing tools use historical crime data
    to forecast where future crime is likely, directing patrols to those
    locations. Multiple analyses (Lum & Isaac 2016; Richardson, Schultz &
    Crawford 2019) found that because the historical data records where
    police have enforced, not where crime has occurred, the algorithm tends
    to reinforce existing enforcement patterns rather than predict
    underlying crime — a feedback loop that concentrates policing on
    already-over-policed neighborhoods. Cities including Santa Cruz, New
    Orleans, and Los Angeles have since suspended or abandoned
    predictive-policing deployments after equity reviews. The capability
    gap is at the construct definition: "where crime occurs" and "where
    crime is recorded" are different variables, and the tools treated them
    as one. It is the canonical algorithmic-governance case in U.S. policing.
  ],
  sections: (
    // -- The Shift --
    [
      Police departments have adopted data-driven tools that forecast where
      crime will occur and direct patrol resources accordingly. PredPol and
      its peers promised to make policing more objective by replacing
      officer intuition with statistical prediction — relocating a
      discretionary judgment into an algorithm trained on historical
      records, and lending the output a veneer of neutrality that the human
      judgments embedded in those records did not actually possess.#cn()
    ],
    // -- What Is Emerging --
    [
      Researchers examining these systems found a structural flaw. Because
      the training data records where police have made arrests rather than
      where crime has actually occurred, the model learns enforcement
      patterns, not crime patterns. Lum & Isaac (2016) showed the result is
      a feedback loop: patrols are sent where police already went,
      generating more recorded incidents that confirm the prediction — a
      loop that grows more confident the longer it runs, because its own
      output becomes the next cycle's evidence.#cn()
    ],
    // -- The Capability Question --
    [
      The capability gap is at the construct definition. "Where crime
      occurs" and "where crime is recorded" are not the same variable, yet
      predictive-policing tools have treated them as interchangeable. The
      question is whether a model trained on a record of institutional
      behavior can ever predict the underlying phenomenon, or only amplify
      the behavior that produced its data — a question no amount of
      modeling accuracy can answer, because the gap is in what the data
      measures, not in how well the model fits it.#cn()
    ],
    // -- Early Evidence --
    [
      Richardson, Schultz & Crawford (2019) documented "dirty data" —
      records produced during periods of biased or unlawful policing —
      feeding directly into predictive systems. After equity reviews,
      cities including Santa Cruz, New Orleans, and Los Angeles suspended
      or abandoned their predictive-policing deployments — abandonment that
      came only after the tools were already in service, the construct
      problem surfaced by external review rather than caught before the
      systems shaped where officers were sent.#cn()
    ],
    // -- Open Problems --
    [
      Predictive policing is the canonical algorithmic-governance case in
      U.S. policing and pairs with COMPAS (Case 94) and educational
      algorithmic bias (Case 37). The open problem is a construct-validity
      audit — a way to establish, before deployment, whether a predictive
      system's training data is a record of ground truth or merely of
      institutional behavior — implemented in some jurisdictions and absent
      in most, so the same construct error remains available to the next
      department that mistakes a record of enforcement for a map of crime.#cn()
    ],
  ),
  approaches: (
    during: (
      [Establish a construct-validity audit before deployment that tests whether the training data records the phenomenon to be predicted or merely the institution's own behavior.],
      [Define the prediction target explicitly as "where crime occurs," not "where arrests are recorded," and reject data that cannot speak to the former.],
      [Engineer against the feedback loop — for example, decoupling patrol allocation from the data the model then re-ingests — before the system can amplify its own output.],
    ),
    after: (
      [Monitor for the enforcement feedback loop in deployment, watching whether predicted areas simply accumulate more recorded incidents that confirm the prediction.],
      [Require periodic equity review of in-use outcomes, since the construct flaw in these systems has surfaced through external analysis rather than internal metrics.],
      [Track the provenance of incoming training data and quarantine records produced during periods of biased or unlawful enforcement.],
    ),
  ),
  references: (
    [Lum, K. & Isaac, W. (2016), "To Predict and Serve?," _Significance_ — the enforcement-vs-crime feedback loop (paraphrased).],
    [Richardson, Schultz & Crawford (2019), "Dirty Data, Bad Predictions" — biased records feeding predictive systems.],
    [Brantingham et al. (2018) — predictive-policing field experiments.],
    [Brayne, S. (2017), "Big Data Surveillance: The Case of Policing."],
    [Municipal records on suspension and abandonment of predictive policing (Santa Cruz, New Orleans, Los Angeles).],
  ),
  quote: [Predictive policing systems learn from a record of past policing, not from a record of past crime.],
  quote-source: "Paraphrasing Lum & Isaac, Significance, 2016",
  le-insight: [
    Predictive policing is the canonical case for the difference
    between training data and ground truth at law-enforcement scale.
    The institution being predicted (where crime occurs) is not the
    institution producing the training data (where police make
    arrests). The capability gap is at the construct.
  ],
  lens-approach: [
    LENS uses predictive policing in LEN 7 as a foundational AI-
    governance case in policing and in LEN 9 for the technical
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
    [Predictive policing's feedback loop grows more confident the longer it runs, because its own output becomes the next cycle's training data. Where in your domain does a deployed model shape the data it later learns from — and how would you break the loop?],
  ),
  courses: ("LEN 7", "LEN 9"),
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
  kind: "frontier",
  summary: [
    DeepMind's AlphaFold (2020) and AlphaFold 2 (2021) substantially solved
    the half-century-old protein-structure prediction problem in
    computational biology. The publicly released AlphaFold Protein
    Structure Database now contains predicted structures for more than 200
    million proteins — essentially the entire known protein universe — and
    has been integrated into structural-biology and drug-discovery
    workflows worldwide. AlphaFold is the strongest positive AI case in
    this book, and its lesson is in the conditions that made the benefit
    possible: a benchmark (CASP) the field had agreed on for decades,
    high-quality training data, an output biologists could verify against
    experimental structures, and an open release that let the global
    community adopt it fast. Each was a precondition for the success — and
    none of them was the model itself.
  ],
  sections: (
    // -- The Shift --
    [
      Predicting a protein's three-dimensional structure from its
      amino-acid sequence was one of biology's grand challenges for half a
      century — slow, expensive experimental work that bottlenecked drug
      discovery and basic research. Deep learning offered, for the first
      time, the prospect of solving it computationally at scale, turning a
      problem that had been a years-long experimental undertaking per
      protein into one that could be approached for the whole proteome at
      once.#cn()
    ],
    // -- What Is Emerging --
    [
      DeepMind's AlphaFold (2020) and AlphaFold 2 (2021) substantially
      solved the problem, predicting structures at accuracies rivaling
      experiment. The publicly released AlphaFold Protein Structure
      Database now holds predicted structures for more than 200 million
      proteins — close to the entire known protein universe — and has been
      folded into research workflows worldwide, so the benefit arrived not
      as a single laboratory's advantage but as a shared resource the wider
      community could build on immediately.#cn()
    ],
    // -- The Capability Question --
    [
      What made AlphaFold a benefit rather than just a benchmark win? The
      case poses the question of which conditions allow an AI capability to
      be safely and widely useful — and the answer turns out to lie around
      the model, not in it: an agreed benchmark, trustworthy training data,
      a verifiable output, and a deliberate decision about release. Each of
      these is an institutional or evidentiary precondition, not an
      artifact of the architecture, which is why the case reads as a lesson
      about capability infrastructure rather than about a model.#cn()
    ],
    // -- Early Evidence --
    [
      AlphaFold's success rested on four features, each a precondition
      rather than the model: the CASP benchmark the field had used for
      decades, high-quality experimental training data, output that
      biologists could check against known structures, and an open release
      that let the global community adopt the tool quickly. Where those
      conditions hold, AI amplifies capability; the technical model alone
      does not — and the same architecture dropped into a domain missing any
      one of those four would not have produced a comparable, trusted,
      widely adopted result.#cn()
    ],
    // -- Open Problems --
    [
      AlphaFold is the strongest positive AI case in the dataset for what
      supports beneficial deployment in a well-defined scientific domain.
      The open problem is generalization: most consequential problems lack
      an agreed benchmark, clean training data, or verifiable output. The
      frontier question is how much of the AlphaFold pattern can be
      reconstructed where those preconditions are not given for free — that
      is, whether a field can deliberately build the benchmark, the data,
      and the verification path that protein structure happened to have
      accumulated over decades.#cn()
    ],
  ),
  approaches: (
    during: (
      [Establish an agreed benchmark and high-quality training data for the target problem before building the model, treating these as preconditions rather than afterthoughts.],
      [Engineer the output to be verifiable against an independent ground truth, so users can check predictions rather than having to trust them.],
      [Decide the release and access terms deliberately as a governance choice, since open release is what distributed AlphaFold's benefit globally.],
    ),
    after: (
      [Monitor downstream use to confirm the verifiable-output property holds in practice, and that users are in fact checking predictions where stakes are high.],
      [Track whether the four preconditions still hold as the tool is applied to new protein families or adjacent problems beyond its validated domain.],
      [Sustain the open resource and benchmark over time, so the community-wide benefit does not erode as the field and the data move on.],
    ),
  ),
  references: (
    [Jumper et al. (2021), "Highly accurate protein structure prediction with AlphaFold," _Nature_ — the method and accuracy.],
    [Varadi et al. (2022), AlphaFold Protein Structure Database, _Nucleic Acids Research_ — the 200M+ structures and open release.],
    [Moult, J. (CASP organizer) commentary on AlphaFold2 (2020) — the benchmark and the achievement (paraphrased).],
    [CASP benchmark documentation — the decades-long agreed evaluation.],
    [Hassabis (DeepMind) public commentary — the open-release governance decision.],
  ),
  quote: [This will be one of the most important achievements in AI in the past decade.],
  quote-source: "Paraphrasing John Moult (organizer of the CASP benchmark) on AlphaFold2, 2020",
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
    productive AI deployment looks like, in LEN 9 as a technical
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
    [AlphaFold inherited a benchmark, clean data, and a verification path that protein structure had accumulated over decades. Pick a problem in your domain that lacks one of those preconditions, and lay out how a field would deliberately build it.],
  ),
  courses: ("LEN 1", "LEN 7", "LEN 9"),
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
  kind: "frontier",
  summary: [
    AI-augmented coding tools — GitHub Copilot, Cursor, Codeium, and peers
    — represent the largest real-time experiment in human-AI collaboration
    in this book, with tens of millions of developers using them daily.
    Published studies (Peng et al. 2023) document real short-term
    productivity gains; other work (Pearce et al. 2022) finds a substantial
    share of AI-generated completions in security-sensitive settings contain
    vulnerabilities, though a controlled study (Sandoval et al. 2023) found
    AI assistance did not significantly raise the rate of critical security
    bugs. The capability
    question is open: are developers becoming more capable, or more
    dependent? The short-term gains are real; the long-term consequences —
    especially for those who learn the craft with these tools always
    available — are not yet known. The discipline is being asked to define
    good before the longitudinal evidence is in.
  ],
  sections: (
    // -- The Shift --
    [
      AI coding assistants moved from novelty to infrastructure in a few
      years. GitHub Copilot, Cursor, Codeium, and similar tools now
      suggest, complete, and generate code for tens of millions of
      developers daily — the largest real-time experiment in human-AI
      collaboration in professional knowledge work to date, conducted not
      in a study design but in the live practice of an entire profession,
      with no control group and no agreed measure of what it is doing to
      the underlying craft.#cn()
    ],
    // -- What Is Emerging --
    [
      Two findings are accumulating in parallel. Controlled studies (Peng
      et al. 2023) document real short-term productivity gains. At the same
      time, the security picture is unsettled: Pearce et al. (2022) found a
      substantial fraction of Copilot completions in security-relevant
      scenarios contained vulnerabilities, while a controlled study by
      Sandoval et al. (2023) found AI assistance did not significantly
      increase the rate of critical security bugs. The two results do not
      cancel so much as mark how unsettled the picture is — output clearly
      rises, but the quality and safety of that output resist a single
      verdict.#cn()
    ],
    // -- The Capability Question --
    [
      The capability question is open and consequential: are developers
      using these tools becoming more capable, or more dependent?
      Short-term output rises, but whether the underlying skill grows or
      erodes — especially for those who learn the craft with the tools
      always present — is precisely what the productivity metrics cannot
      tell us, because a measure of how much code ships says nothing about
      whether the person shipping it could still produce or judge it
      without the assistant.#cn()
    ],
    // -- Early Evidence --
    [
      The longitudinal evidence is not yet sufficient to answer. Dell'Acqua
      et al. (2023) found a "jagged frontier" in professional LLM use:
      performance improves on tasks inside the tool's competence and
      degrades on tasks just outside it, where users over-trust the output.
      The short-term gains are real; the long-term capability consequences
      remain uncharacterized — and the jagged frontier is hard to navigate
      precisely because its edge is invisible from inside the task, so the
      user cannot tell when they have crossed from where the tool helps to
      where it misleads.#cn()
    ],
    // -- Open Problems --
    [
      AI-augmented coding is the live frontier for human-AI teaming in
      professional knowledge work, and the discipline LENS represents is
      being asked to specify what good looks like before the long-term
      evidence is in. The open problem is the longitudinal study that could
      distinguish capability growth from capability erosion — and a
      training practice that keeps the human's skill on the growing side,
      built and adopted while a generation is already learning the craft
      with the tools always within reach.#cn()
    ],
  ),
  approaches: (
    during: (
      [Define what competence the human must retain independently of the tool, and design the workflow so that skill is exercised rather than quietly handed off.],
      [Engineer the assistant to surface the jagged-frontier edge — flagging where a task sits outside its reliable competence — so users do not over-trust output just beyond it.],
      [Keep verification of generated code, especially in security-relevant settings, a required step rather than an optional one, given the unsettled quality picture.],
    ),
    after: (
      [Run the longitudinal study that productivity metrics cannot substitute for, measuring whether underlying skill is growing or eroding over years of use.],
      [Monitor for over-reliance at the competence boundary, where the evidence shows performance degrading as users trust the tool past its reliable range.],
      [Track outcomes for practitioners who learned the craft with the tools always present, the cohort whose long-term capability is most uncertain.],
    ),
  ),
  references: (
    [Peng et al. (2023), "The Impact of AI on Developer Productivity" — short-term productivity gains.],
    [Pearce et al. (2022), "Asleep at the Keyboard? Assessing the Security of GitHub Copilot's Code Contributions."],
    [Sandoval et al. (2023), "Lost at C," USENIX Security — AI assistance did not significantly increase critical security-bug rates.],
    [Dell'Acqua et al. (2023), "Navigating the Jagged Technological Frontier" (HBS / BCG) — professional LLM use.],
    [L. Bainbridge, "Ironies of Automation," _Automatica_ 19(6) (1983) — the classic deskilling and over-reliance problem, applied to AI-augmented work.],
  ),
  quote: [AI assistance changes what developers can do; it may also change what they need to know.],
  quote-source: "Editors' synthesis",
  le-insight: [
    AI-augmented coding is the live foundational case for human-AI
    teaming in professional knowledge work. The short-term gains are
    real. The long-term capability question — does the tool make the
    operator more capable, or more dependent — is the question the
    discipline must learn to ask and answer.
  ],
  lens-approach: [
    LENS uses AI-augmented coding in LEN 2 as the largest live human-
    AI teaming case in the dataset, in LEN 8 for the long-term
    capability-development question, and in LEN 10 (capstone) as a
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
    [The "jagged frontier" is hard to navigate because its edge is invisible from inside the task. Design a signal or practice that would tell a practitioner in your domain when they have crossed from where the tool helps to where it misleads.],
  ),
  courses: ("LEN 10", "LEN 2", "LEN 8"),
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
  kind: "frontier",
  summary: [
    The ninety-nine cases that precede this one are closed: the
    investigations are complete, the failures diagnosed, the interventions
    evaluated. This one is open. It belongs to the practitioners now in
    training — the students of the LDT program and the LENS specialization,
    the graduates who will take positions in healthcare, defense, education
    at scale, and the human-AI frontier, and the institutions they will
    build. The strongest evidence for the discipline is the cumulative
    record of what its absence has cost; the strongest argument for its
    possibility is the record of what its presence has produced. Capability
    engineering in 2026 sits roughly where INPO sat in 1979 or CRM in 1981
    — evidence accumulating, practitioners in training, institutional
    architecture not yet complete. What the reader does next is what fills
    in this case.
  ],
  sections: (
    // -- The Shift --
    [
      Every preceding case in this book is closed: the investigation is
      complete, the failure diagnosed or the intervention evaluated. This
      one is open. It belongs to the practitioners now in training — the
      students of the LDT program and the LENS specialization, and the
      institutions they will build across healthcare, defense, education,
      and the human-AI frontier. What distinguishes this case is not a
      verdict already reached but a verdict still to be earned, written by
      the choices its readers make once they leave the page.#cn()
    ],
    // -- What Is Emerging --
    [
      What is emerging is a discipline. The argument of this volume is that
      capability is engineerable — that training, interfaces, evidence
      systems, and institutions can be designed rather than left to chance
      — and that the work of designing them is a teachable practice with
      its own methods and growing body of knowledge. If that argument
      holds, then the gaps the preceding cases document are not the price
      of progress but the absence of work that could have been done.#cn()
    ],
    // -- The Capability Question --
    [
      The capability question this case poses is the largest one: can the
      discipline be built fast enough, and at enough scale, to close the
      gaps the preceding ninety-nine cases document? The strongest evidence
      for the discipline is the cumulative record of what its absence has
      cost; the strongest argument for its possibility is the record of
      what its presence has produced — and the case stays open precisely
      because that question is answered not by argument but by what the
      next generation of practitioners actually builds.#cn()
    ],
    // -- Early Evidence --
    [
      The early evidence is the success cases themselves. Capability
      engineering in 2026 sits roughly where INPO sat in 1979 or CRM in
      1981 — a discipline whose evidence is accumulating, whose
      practitioners are being trained, and whose institutional architecture
      is not yet complete. Those precedents became mature institutions
      within a generation, which is the most that can yet be claimed here:
      a comparable trajectory is plausible, but it is not given, and the
      comparison is an invitation rather than a guarantee.#cn()
    ],
    // -- Open Problems --
    [
      No specific incident sits behind this case because the work is not
      done. The institutions of capability engineering that exist today are
      insufficient to the volume of capability work the world now requires.
      What the practitioners reading this volume do next — a failure
      prevented, a success engineered, an institution built — is what fills
      in this case, and the page is left deliberately unfinished so that the
      record of the discipline's possibility can still be added to.#cn()
    ],
  ),
  approaches: (
    during: (
      [Treat capability as a system parameter to be specified and engineered from the outset of any deployment, not left to chance and diagnosed only after failure.],
      [Build the evidence system as a deliverable alongside the capability, so the discipline can show what its presence produces rather than only argue for it.],
      [Design the institution that will carry the practice forward, taking INPO and CRM as precedents for how a discipline matures within a generation.],
    ),
    after: (
      [Monitor whether the discipline is in fact closing the gaps the preceding cases document, treating the open case as a standing measure of progress.],
      [Sustain the institutional architecture once built, since the precedents show maturity is reached only by carrying the work across a generation.],
      [Keep the cumulative record of cost and of possibility current, so each failure prevented or success engineered is added to the evidence the discipline rests on.],
    ),
  ),
  references: (
    [LDT / LENS program statement, Johns Hopkins School of Education — the program and its commitments.],
    [Goodell & Kolodner (2022), _Learning Engineering Toolkit_ — the discipline's methods.],
    [The preceding ninety-nine cases of this volume — the cumulative record of cost and of possibility.],
    [INPO (Case 16) and CRM/CAST (Case 12) — institution-building precedents (1979, 1981).],
    [IEEE ICICLE Learning Engineering Body of Knowledge (LEBoK); the introduction to this volume.],
  ),
  quote: [Capability is engineerable. The institution to engineer it has not yet been built. That is the work.],
  quote-source: "LDT / LENS program statement, Johns Hopkins School of Education",
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
    project (LEN 10) is a small attempt at this case.
  ],
  literature-items: (
    [Goodell & Kolodner (2022)],
    [LEBoK at lebok.wiki],
    [The introduction to this volume],
  ),
  reflection-list: (
    [What is the case you are positioned to add to this dataset in the next ten years — a failure prevented, a success engineered, an institution built?],
    [If this book is read by the practitioners who will write its hundred-and-first case, what should that case look like?],
    [Capability engineering in 2026 is compared here to where INPO stood in 1979 — a plausible trajectory, not a guaranteed one. What would have to be true a generation from now for that comparison to hold, and what is the first institution you would build to make it so?],
  ),
  courses: ("LEN 1", "LEN 10", "LEN 8", "LEN 3",),
)
