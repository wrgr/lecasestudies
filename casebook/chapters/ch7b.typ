// ============================================================
// Part VII — Algorithms, Governance & Public Systems · What Works — and the Frontier (Chapter 14)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part VII — Algorithms, Governance & Public Systems",
  number: "14",
  title: "Algorithms, Governance & Public Systems — What Works — and the Frontier",
  subtitle: "When governance is designed as an artifact, not litigated after the fact.",
  epigraph: [The objection dissolved when the evidence was engineered to answer it.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Case 194 — estonia-x-road-continuous-migration-as ----
#case(
  number: 194,
  slug: "estonia-x-road-continuous-migration-as",
  title: "Estonia X-Road — Continuous Migration as a Governance Pattern (and the No-Legacy Paradox)",
  year: "2001 – present",
  domains-list: ("e-government", "distributed data exchange", "national IT infrastructure"),
  modes-code: "GKN",
  impact: "By December 2024 Estonia reported effectively 100% digitalization of government services across the X-Road data-exchange layer, with sub-five-minute tax filing and >95% of tax declarations filed electronically; the load-bearing self-critique is that the country has now created its own legacy system — the very thing the program set out to avoid",
  kind: "intervention",
  scale: "big",
  evidence-source: "program-report",
  induced-anchor: "7.1",
  lens-anchor: "D1/PT1",
  leo-anchor: "LEO-1, LEO-5",
  summary: [
    Estonia launched X-Road in 2001 as the answer to fragmented
    government databases: a distributed data-exchange layer that
    lets services interoperate without forcing a central
    monolith. By December 2024 the country reported effectively
    100% digitalization of government services across X-Road,
    with more than 95% of tax declarations filed electronically, most in a few minutes. The case sits inside C7 not because of the
    headline outcomes but because of the load-bearing
    self-critique surfaced in the peer-reviewed analysis: by
    committing the country to X-Road as the data-exchange layer,
    Estonia has effectively created its own legacy system — the
    very thing its founders set out to avoid. The "no-legacy
    paradox" is the C7 teaching the corpus does not get from any
    other case: success-as-aging is the failure mode, and the
    modernization regime must contemplate its own future
    obsolescence as part of its current design discipline. The
    load-bearing self-critique — the no-legacy paradox — is
    peer-reviewed text in Kattel and Mergel, not practitioner
    reflection, and the program is well-documented in peer-reviewed
    and program-report sources alike. What remains open is whether
    the deliberate generational-replacement plans carry through. Cross-listed with
    Gap 5 (non-US/UK/EU coverage, Estonia).
  ],
  sections: (
    [
      Estonia's pre-2001 problem was the standard one for a
      small state with a recent administrative inheritance:
      government databases were fragmented, agency-by-agency,
      with no common exchange layer. X-Road was the architectural
      answer — a distributed data-exchange protocol that lets
      each agency keep its own system but interoperate via a
      shared, authenticated channel. The design choice avoided
      the trap of a central monolith and made cross-agency
      services possible without requiring agencies to surrender
      their data.#cn()
    ],
    [
      The deployment trajectory across two decades has been the
      defining national IT case study in the EU region. By
      December 2024 the country reported effectively 100%
      digitalization of government services, with sub-five-minute
      tax filing and more than 95% of tax declarations filed electronically. The Mission
      Mystique and the Hiding Hand chapter (Oxford 2019) and the
      ICEGOV 2021 historical analysis are the peer-reviewed
      treatments; the X-Road Global program documentation extends
      the case to the institutions that have since adopted the
      protocol elsewhere.#cn()
    ],
    [
      The load-bearing self-critique is what makes this a C7
      case and not just a digital-government success story. The
      analysis says it outright. Kattel and Mergel write that with the decision to focus its digital development on X-Road only, Estonia has effectively created its own legacy system — a move that the initial thinkers wanted to avoid. The paradox is named against Estonia's own design rule: no legacy, meaning public digital infrastructure should not run on solutions older than thirteen years. The protocol is
      now twenty-plus years old; the agency systems that hang
      off it have accreted their own logic; the generational
      replacement of the platform itself is now the
      modernization problem the founders thought they had
      designed out. Success-as-aging is the failure mode.#cn()
    ],
    [
      The sourcing is worth stating precisely, because the
      self-critique is the load-bearing part. The peer-reviewed
      sources cover the program's design, its trajectory, and the
      self-critical framing including the no-legacy paradox; the
      program-report and practitioner material supplies the
      day-to-day operational picture around it. The country's
      generational-replacement plans for X-Road exist and have begun
      to materialize: X-Road version 7 ("Unicorn") is in production
      and version 8 ("Spaceship") is planned for 2026, re-scoping the
      platform toward a federated "dataspace" model and aligning its
      trust framework with the Gaia-X trust framework — the modernization regime
      acting on its own paradox rather than leaving it as theory.
      Future validation will continue as the next-generation
      data-exchange architecture is deployed.#cn()
    ],
    [
      What the case adds at the LENS layer is the C7 teaching
      that no other corpus case supplies: a modernization
      regime must contemplate its own future obsolescence as
      part of its current design discipline. The Domain-1 frame
      applies: systems analysis of the data-exchange layer as
      an artifact whose own aging trajectory is part of the
      system's behavior. The Domain-5 frame applies because the
      sociotechnical commitment of a state to a single
      data-exchange protocol is itself the governance choice
      that determines what the future modernization will have
      to undo. The case is also a Gap-5 non-US/UK case from a
      small EU state, which the corpus needs.
    ],
  ),
  beats: (
    "X-Road launched 2001 as distributed data-exchange answer to fragmented government databases",
    "By Dec 2024: effectively 100% digitalization; sub-five-minute tax filing; >95% of declarations filed electronically",
    "Load-bearing self-critique — the no-legacy paradox — surfaces in the peer-reviewed analysis",
    "Success-as-aging is the failure mode; generational replacement of the platform itself is the new modernization problem",
    "Sources are peer-reviewed analysis plus program-report and practitioner material; whether the replacement plans carry through is open",
  ),
  approaches: (
    during: (
      [Design the data-exchange or platform layer so that its own future obsolescence is contemplated in the current design — the no-legacy paradox is the warning the case carries.],
      [Treat the generational-replacement plan as part of the deployment commitment, not as a future problem; the Estonia case is open precisely because the replacement is open.],
      [Document the sociotechnical commitment of the state or institution to the platform explicitly, so the cost of future replacement is in the record from the start.],
    ),
    after: (
      [Track the platform's aging trajectory as a system variable — accreted agency logic, protocol drift, dependency depth — not only its operational uptime.],
      [Carry the self-critical framing honestly; the load-bearing teaching is that success creates its own aging problem, not that the program failed.],
      [Pair with other C7 cases (Patriot/Dhahran, Ariane 5, Knight Capital, CrowdStrike, TSB) for the failure-and-modernization contrast, and with Cases 116–26 for the small-tier transition thread.],
    ),
  ),
  references: (
    [Kattel, R., & Mergel, I. (2019), "Estonia's Digital Transformation: Mission Mystique and the Hiding Hand," in Compton, M., & 't Hart, P. (eds.), _Great Policy Successes_ (Oxford University Press, 2019) — peer-reviewed analytical chapter.],
    [Jackson, Dreyling, & Pappel (2021), "A Historical Analysis on Interoperability in Estonian Data Exchange Architecture," _ICEGOV 2021_ proceedings, doi:10.1145/3494193.3494209.],
    [X-Road Global / Nordic Institute for Interoperability Solutions (NIIS) — program documentation and deployment-partner case studies.],
    [Republic of Estonia, e-Estonia briefing materials and Year-in-Review documentation (2024) — program-report sourcing.],
  ),
  quote: [Success creates its own aging problem. The modernization regime must contemplate its own future obsolescence as part of its current design.],
  quote-source: "Editors' synthesis of the no-legacy paradox in the Estonia X-Road analysis.",
  le-insight: [
    Estonia X-Road is the C7 case the corpus needed for the
    success-as-aging failure mode: a 100%-digitalization
    program whose own success has now created the legacy
    system its founders set out to avoid. Evidence is mixed —
    peer-reviewed analytical chapters plus program-report and
    practitioner reflection; the generational-replacement
    trajectory is the open empirical question. Future
    validation ongoing. Non-US/UK case, Gap-5 cross-listed.
  ],
  lens-approach: [
    X-Road is the C7 big-tier transition case with a small-tier
    self-critique (induced 7.1 and 5.3 alternate; LENS D1/PT1).
    LENS uses it in Domain 1 (Systems Analysis) for LEO-1 —
    the data-exchange layer is an artifact whose own aging is
    part of system behavior — and in Domain 5 (Navigating
    Sociotechnical Constraints) for LEO-5, since the state's
    commitment to the protocol is itself the governance choice
    determining future modernization cost. Pair with Cases
    25–26 for the C7 thread and with the big-tier C7
    failures the corpus already documents.
  ],
  literature-items: (
    [Kattel & Mergel (2019), _Mission Mystique_ chapter — Estonia digital transformation],
    [Jackson et al. (2021), ICEGOV 2021 — historical interoperability analysis],
    [X-Road Global / NIIS program documentation],
  ),
  reflection-list: (
    [Identify a platform or data-exchange layer in your context whose success has created a generational-replacement problem the original design did not contemplate. What would the no-legacy-paradox-aware redesign look like?],
    [Specify the aging-trajectory variables you would track on the platform (accreted agency logic, protocol drift, dependency depth) so the future-obsolescence question is in the operational record, not a future surprise.],
    [The case is peer-reviewed analysis plus program-report plus practitioner reflection. What additional evidence would you require before committing your own institution to a platform that may itself become the legacy system in twenty years?],
  ),
  courses: ("LEN 1", "LEN 5", "LEN 6"),
)

// ---- Case 195 — tesla-autopilot-recurring-fatalities ----
#case(
  number: 195,
  slug: "tesla-autopilot-recurring-fatalities",
  title: "Tesla Autopilot — Recurring Fatalities",
  year: "2016 – present",
  domains-list: ("autonomous",),
  modes-code: "TNGH",
  impact: "14 deaths across the 467 Autopilot crashes NHTSA analysed in EA22-002; first U.S. cases of Level-2 automation contributing to fatal injury",
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
    operationally responsible at all times. NHTSA's engineering analysis of Autopilot found 13 fatal
    crashes, and 14 deaths, among the 467 it examined, and the record runs
    back to the 2016 death of Joshua Brown in Florida. The pattern is
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
      NHTSA has documented 13 fatal crashes among the 467 Autopilot crashes it analysed through August 2023. The pattern is consistent: long periods
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
      NHTSA's engineering analysis (ODI EA22-002, closed April 2024 and
      superseded by the December 2023 recall of roughly two million
      vehicles) identified Tesla's driver-engagement design as inadequate
      to maintain the attention safe operation requires, and the recurring
      fatality pattern across NTSB
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
      (Case 183): a passive-monitoring role deployed without the capability
      infrastructure — training, engagement design, attention measurement —
      to make it performable. The open problem is what driver-engagement
      architecture, if any, could make Level-2 monitoring sustainable for
      an average driver over years of use, and whether the answer is a
      better attention check or a concession that the role itself has to be
      redesigned out of the human's hands.#cn() The question did not stay
      settled at the recall: in April 2024 NHTSA opened a new investigation
      into whether the December 2023 remedy was even adequate, and in
      October 2024 opened a separate probe of Full Self-Driving after four reduced-visibility crashes, one of them a pedestrian fatality. Then in June 2025 Tesla launched a
      limited driverless robotaxi service in Austin — moving the company
      past Level-2 monitoring into a service it calls autonomous, which drew regulator contact within days — though a Tesla safety monitor rode in the front passenger seat, so the human was relocated, not removed.#cn()
    ],
  ),
  beats: (
    "Level-2 driving automation reaches untrained consumers with no qualification gate for monitoring",
    "Fatal crashes accumulate as reliable operation erodes the vigilance the system silently requires",
    "Liability rests with drivers whose inattention the engagement design itself helped to produce",
    "NHTSA finds driver-engagement inadequate; automation-complacency evidence points the same direction",
    "Whether any engagement architecture can make consumer Level-2 monitoring sustainable stays open",
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
    [NHTSA Office of Defects Investigation EA22-002 (opened 2022; closed April 2024, superseded by recall 23V-838) — driver-engagement adequacy.],
    [NHTSA recall-query RQ24009 (April 2024) into the adequacy of the December 2023 Autopilot remedy, and investigation PE24031 (October 2024) into Full Self-Driving; Tesla's June 2025 Austin robotaxi launch and the ensuing regulator scrutiny.],
    [Parasuraman, R. & Manzey, D. (2010) — automation complacency and monitoring.],
  ),
  quote: [Contributing to the car driver's overreliance on the vehicle automation was its operational design, which permitted his prolonged disengagement from the driving task and his use of the automation in ways inconsistent with guidance and warnings from the manufacturer.],
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
  scale: "big",
  induced-anchor: "3.2",
  lens-anchor: "D3/PT6",
  leo-anchor: "LEO-3",
  evidence-source: "investigation",
)

// ---- Case 196 — fintech-lending-fairness-audit-when ----
#case(
  number: 196,
  slug: "fintech-lending-fairness-audit-when",
  title: "Fintech Lending Fairness Audit — When Including Race Reduces Disparity",
  year: "2025",
  domains-list: ("finance", "algorithmic fairness", "fintech"),
  modes-code: "DGN",
  impact: "A fintech-lending fairness audit finds a consumer-credit model miscalibrated by group when the protected attribute is withheld, and shows that using the attribute to correct the calibration reduces the disparity — surfacing the next teaching point: competing fairness definitions disagree, and the choice is a judgment",
  kind: "frontier",
  scale: "small",
  evidence-source: "peer-reviewed",
  evidence-flag: "preprint-tier",
  induced-anchor: "8.1",
  lens-anchor: "D4/PT6",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    The Coots et al. (2025) fintech lending fairness audit, posted as a
    preprint, examines a deployed consumer-lending model and finds it
    miscalibrated by group when the protected attribute is withheld from
    inputs — underestimating default risk for some borrowers and
    overestimating it for others. It then shows that using the protected
    attribute in a controlled fashion to correct the calibration reduces
    the resulting disparity — a small-scale echo of the pattern Bartlett
    documented at the mortgage-market scale. The case is a frontier candidate: it
    sharpens the teaching point that "fairness through unawareness" is
    not the conservative or safe choice it is often assumed to be, and
    it surfaces the next layer — competing fairness definitions disagree
    about what the same model is doing, and the practitioner has to
    decide *which definition* the deployment is being held to before the
    measured disparity can even be interpreted. The evidence-tier flag
    is preprint: the finding has not yet completed peer review, the
    metric choices and mitigation specifics may move, and future
    validation will continue. The teaching point survives those caveats,
    which is why the case is included with the flag rather than held.
  ],
  sections: (
    [
      The lending pair (Cases 186 and 196) takes the practitioner past
      the first equity intuition — *just don't use the protected
      attribute* — and into the harder territory the equity literature
      now operates in. Bartlett showed that omission preserves the
      disparity through correlated features. The Coots audit shows the
      next thing: the model is miscalibrated by group when the attribute
      is withheld, and using it to correct the calibration lowers the
      resulting disparity. Both findings are about the
      same family of models; they disagree about what makes a model
      fair.#cn()
    ],
    [
      The audit is a profit-and-calibration analysis of a deployed
      fintech-lending model. Under unawareness — the protected attribute
      withheld from inputs — the model is miscalibrated by group,
      underestimating default risk for some borrowers and overestimating
      it for others. Using the protected attribute to correct that
      calibration reduces the resulting disparity — small scale, but the
      pattern matches the mortgage-finance finding (Case 186) and the
      broader fair-ML literature that omission does not equal fairness.#cn()
    ],
    [
      The case is a frontier candidate because it surfaces the layer
      Bartlett alone does not reach: competing fairness definitions
      disagree about the same model. A model that is more equitable on
      group calibration may be less equitable on equalized odds, and
      vice versa; the impossibility results of the fair-ML literature
      (Chouldechova; Kleinberg, Mullainathan, & Raghavan) make this
      explicit. The Coots audit is concrete enough to ground the choice:
      the practitioner cannot postpone the question of *which
      definition* the deployment is being held to.#cn()
    ],
    [
      The evidence-tier flag is load-bearing here and is rendered under
      the case title. The Coots audit is a preprint; the metric choices,
      the mitigation specifics, the dataset window, and the reported
      magnitude may move in peer review. The structural pattern — that
      using the protected attribute to correct group miscalibration can
      reduce disparity relative to omission — is consistent with the
      broader fair-ML literature and with Bartlett's mortgage-finance
      finding, but the specific magnitudes in the audit should be
      treated as the strongest current preprint claim, not as a settled
      fact. Future validation will continue, and this case will be
      updated when peer review lands.#cn()
    ],
    [
      What the pair (Cases 186 + 196) teaches together is the form of
      the equity capability deliverable: the practitioner must specify,
      in advance, the fairness definition the deployment will be
      evaluated against, audit on outputs rather than reasoning about
      inputs, and decide on judgment that the trade-offs across
      competing definitions are acceptable for the deployment context.
      This is the case-grounded basis for the subobjective *Fairness beyond
      omission* (4.6) and the subobjective *Judgment under inadequate evidence* (4.4)
      — the audit is itself a worked
      example of deciding under irreducible disagreement.#cn()
    ],
  ),
  beats: (
    "Past omission: a model miscalibrated by group under unawareness, where using the protected attribute to correct the calibration reduces the disparity",
    "Coots audit: a profit/calibration analysis of a deployed fintech-lending model finding group miscalibration under unawareness",
    "Frontier point: competing fairness definitions disagree about the same model; impossibility results force a choice",
    "Preprint-tier evidence; metric specifics and magnitudes may move in peer review; future validation will continue",
    "The capability deliverable is to pre-specify the fairness definition, audit on outputs, and decide under irreducible disagreement",
  ),
  approaches: (
    during: (
      [Specify, before model selection, which fairness definition the deployment is being held to — group calibration, equalized odds, demographic parity — and the metric values that will count as acceptable.],
      [If the protected attribute is included under a controlled-mitigation regime, document the inclusion path (training-time, post-processing) and the auditing pipeline that verifies the mitigation does what it claims.],
      [Distinguish what is preprint-tier evidence from what is settled in the literature you are drawing on, so a deployment decision does not ride on the strongest unreviewed claim.],
    ),
    after: (
      [Audit the deployed model on outputs stratified by protected attribute, with the pre-registered fairness definition; publish the metric values and the cases that disconfirm them.],
      [Track the preprint to publication; when peer review lands, update the auditing pipeline to reflect the settled metric choices and any revised magnitudes.],
      [When competing fairness definitions disagree, name the trade-off explicitly in the deployment documentation; do not present the chosen definition as the technical optimum.],
    ),
  ),
  references: (
    [Coots, Bartlett, Nyarko, & Goel (2025), "Algorithmic Bias in Lending: Evidence from a Fintech Audit," arXiv:2512.20753 — audit of ~80,000 personal loans showing model miscalibration disparities and that controlled inclusion of protected attributes could correct them; the evidence-tier flag is binding until peer review completes.],
    [Bartlett, Morse, Stanton, & Wallace (2022), "Consumer-lending discrimination in the FinTech era," _Journal of Financial Economics_ 143(1):30–56 — the paired big-tier case (186).],
    [Chouldechova (2017), "Fair Prediction with Disparate Impact," _Big Data_ 5(2):153–163 — the impossibility result for calibration and error-rate parity.],
    [Kleinberg, Mullainathan, & Raghavan (2017), "Inherent Trade-Offs in the Fair Determination of Risk Scores," _ITCS_ — competing fairness definitions are not jointly achievable.],
    [Mitchell, Potash, Barocas, D'Amour, & Lum (2021), "Algorithmic Fairness: Choices, Assumptions, and Definitions," _Annual Review of Statistics and Its Application_ 8:141–163 — practitioner-facing survey.],
  ),
  quote: [Once you accept that omission is not the answer, the next question — which fairness definition — is the one the deployment cannot avoid.],
  quote-source: "Editors' synthesis of Coots et al. (2025) and Mitchell et al. (2021).",
  le-insight: [
    The Coots audit is the small-tier frontier instance of the
    finding that using a protected attribute to correct group
    miscalibration can reduce disparity relative to omission. With Bartlett
    (Case 186) it forms the canonical lending pair: omission does
    not fix the harm; competing fairness definitions disagree about
    what fix is. Evidence is preprint-tier; future validation will
    continue.
  ],
  lens-approach: [
    Coots is the small-tier frontier counter-case to Bartlett. LENS
    uses the pair in Domain 4 (Test and Evaluation) for the subobjective *Fairness beyond omission* (4.6); in Domain 4 again for the subobjective *Judgment under inadequate evidence* (4.4) (the pair is itself a
    decision under irreducible disagreement); and in Domain 3 (Human-System Collaboration) for delegation of
    consequential consumer-finance decisions to a model. The
    preprint-tier flag is binding until peer review completes.
  ],
  literature-items: (
    [Coots, Bartlett, Nyarko, & Goel (2025), arXiv:2512.20753 — fintech lending audit],
    [Chouldechova (2017), _Big Data_ — impossibility result],
    [Kleinberg, Mullainathan, & Raghavan (2017), _ITCS_],
  ),
  reflection-list: (
    [Identify a fairness audit in your domain conducted at preprint or unpublished stage. What part of its claim survives if peer review modifies the metric choices? What part is contingent on the specific magnitudes?],
    [Specify which fairness definition your deployment is being held to before the audit is run. What trade-off — across calibration, equalized odds, demographic parity — does that choice accept?],
    [Coots' finding is consistent with Bartlett (Case 186) and with the broader fair-ML literature, but the specific magnitudes are preprint-tier. What is the minimum follow-up evidence you would require before allowing this case to drive an operational decision in your context?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 9"),
)

// ---- Case 197 — predictive-policing-predpol ----
#case(
  number: 197,
  slug: "predictive-policing-predpol",
  title: "Predictive Policing — PredPol",
  year: "2011 – present",
  domains-list: ("gov", "tech"),
  modes-code: "GHD",
  impact: "Predictive-policing tools deployed across scores of U.S. police jurisdictions; Santa Cruz banned them outright in 2020 and other cities have since dropped or restricted their programs",
  diagram: dgm.dgm-compare(
    "training data",
    "reported incidents",
    "ground truth",
    "past crime",
    framing: "the system learns reporting patterns, not crime patterns",
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
    already-over-policed neighborhoods. Cities including Santa Cruz, New Orleans, and Los Angeles have since suspended or abandoned predictive-policing deployments — Santa Cruz on the bias case, Los Angeles on pandemic budget cuts, New Orleans after the secrecy of its Palantir contract became public. The capability
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
      Researchers examining these systems found a structural flaw. PredPol's place-based forecasts ran on reported crime incidents — type, location, date and time — not on arrest records. The feedback concern survives the correction and changes shape: reporting is itself uneven across neighbourhoods, and directing patrols to forecast cells generates more recorded incidents there, so the model can learn the distribution of police attention alongside the distribution of crime. Lum & Isaac (2016) showed the result is
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
      feeding directly into predictive systems. Santa Cruz banned predictive policing outright in June 2020, the first U.S. city to do so; Los Angeles had dropped PredPol that April citing pandemic budget cuts, a year after its Inspector General warned against drawing strong conclusions from the available statistics; New Orleans let a Palantir contract lapse in 2018 once the arrangement became public. Abandonment came only after the tools were already in service, the construct problem surfaced by external review rather than caught before the systems shaped where officers were sent.#cn() The product itself
      did not outlast the critique: PredPol rebranded as Geolitica in
      2021, and after a 2023 investigation by _The Markup_ found its
      predictions for one New Jersey department accurate less than 0.5%
      of the time, SoundThinking (formerly ShotSpotter) hired its engineering team and moved to acquire some of its intellectual property, and Geolitica ceased operations at the end of 2023 — the construct-validity failure ending in commercial
      wind-down rather than correction.#cn()
    ],
    // -- Open Problems --
    [
      Predictive policing is the canonical algorithmic-governance case in
      U.S. policing and pairs with COMPAS (Case 187) and educational
      algorithmic bias (Case 46). The open problem is a construct-validity
      audit — a way to establish, before deployment, whether a predictive
      system's training data is a record of ground truth or merely of
      institutional behavior — implemented in some jurisdictions and absent
      in most, so the same construct error remains available to the next
      department that mistakes a record of enforcement for a map of crime.#cn()
    ],
  ),
  beats: (
    "Police adopted statistical prediction tools lending discretionary judgment a veneer of objectivity",
    "Training on reported crime incidents, with reporting and patrol allocation both uneven, models learn enforcement patterns and create self-confirming feedback loops",
    "Whether a model trained on institutional behavior can predict the underlying phenomenon",
    "Dirty data documented; Santa Cruz banned the tools in 2020, Los Angeles and New Orleans dropped theirs on cost and secrecy",
    "Pre-deployment construct-validity audit remains absent in most jurisdictions adopting these systems",
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
    [Sankin, A. & Mattu, S. (2023), "Predictive Policing Software Terrible at Predicting Crimes," _The Markup_, 2 October 2023 (copublished with _Wired_) — the Plainfield, NJ accuracy analysis; and reporting on PredPol/Geolitica's 2021 rebrand and 2023 wind-down into SoundThinking.],
  ),
  quote: [It is predicting future policing, not future crime.],
  quote-source: "Lum, K. & Isaac, W., \"To predict and serve?\", Significance 13(5), 2016, p. 17",
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
  scale: "big",
  induced-anchor: "8.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4",
)

// ---- Case 198 — launching-the-brain-initiative ----
#case(
  number: 198,
  slug: "launching-the-brain-initiative",
  title: "Launching the BRAIN Initiative — Governance of a Grand Challenge",
  year: "2011 – 2015 – present",
  domains-list: ("neuroscience", "science policy"),
  modes-code: "GKN",
  impact: "A multi-billion-dollar national research endeavor launched via a position-paper-to-policy iteration sequence, with governance contestation on the public record and a 2021 critical retrospective documenting that the unified-understanding framing exceeded what the science delivered",
  kind: "intervention",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "5.1",
  lens-anchor: "D5+D1/PT4",
  leo-anchor: "LEO-1, LEO-5",
  coi: "Institutional overlap: an editor works in the connectomics field adjacent to this case and shares institutional ties to the BRAIN research community; no editor authored or contributed to this work. Anchored to widely cited primary position papers and independent journalism, not the editor's own work; the critical retrospective is the deliberate safeguard.",
  summary: [
    The BRAIN Initiative is one of the few large-program launches in the
    corpus whose governance trail is publicly documented end-to-end: a
    2011 Kavli symposium produced a six-author _Neuron_ position paper
    (Alivisatos et al., 2012); the proposal was shepherded to the White
    House OSTP, became a Presidential initiative in 2013, and was
    operationalized by an NIH working group whose _BRAIN 2025: A
    Scientific Vision_ report (2014; reviewed in peer-reviewed form by the group as Jorgenson et al., 2015) set milestones and cost estimates. What
    makes it teachable rather than triumphalist is the governance
    contestation visible in the same record. Yuste worried the advisory
    panel was "packing the committee with users, rather than tool
    builders" — diluting the original focus; Bargmann, who later co-chaired the working group, had written in February 2013 that "there is great concern in the neuroscience community that this sounds like a big central planning project that will take resources away from creative work." A 2021 MIT Technology
    Review retrospective assessed that the big-science brain projects,
    BRAIN included, did not deliver the unified understanding their
    framing promised. The case pairs with the EU Human Brain Project
    (Case 181) as a contrast in governance models — distributed
    working-group versus top-down single-PI — at the same era, the
    same ambition, and opposite trajectories.
  ],
  sections: (
    [
      In 2011 a small group of neuroscientists convened at a Kavli
      Foundation symposium argued that the field had a tractable
      grand-challenge target: recording the activity of large numbers
      of neurons across whole circuits. The argument was published in
      _Neuron_ in 2012 as the Brain Activity Map proposal (Alivisatos,
      Chun, Church, Greenspan, Roukes, and Yuste) and was shepherded
      through Kavli's Miyoung Chun to the White House Office of
      Science and Technology Policy. The position paper named a
      capability the field could be organized around and a sequence of
      tools that would have to be built; it was a launch artifact
      rather than a results report.#cn()
    ],
    [
      In April 2013 President Obama announced the BRAIN Initiative.
      The operational governance was an NIH working group, co-chaired
      by Cori Bargmann and Bill Newsome, charged with translating the
      vision into a milestone-and-cost-bearing plan. The group
      released the _BRAIN 2025: A Scientific Vision_ report in June
      2014, reviewed the following year in peer-reviewed form by members of the group (Jorgenson et al., _Phil. Trans. R. Soc. B_, 2015); it named seven priority areas,
      set timelines, and laid out funding ranges. Among the few large
      research-program launches in the corpus, this is one whose
      position-paper-to-policy-to-implementation sequence is openly
      auditable — every step has a published artifact attached.#cn()
    ],
    [
      What makes the case teachable rather than triumphalist is the
      governance contestation visible in the same record. Yuste, one
      of the original six authors, voiced concern that the advisory
      panel was being expanded with users of the tools the program
      was meant to build, rather than the tool-builders the original
      proposal had centered — a documented dilution of scope.
      Bargmann, before her appointment, had relayed in a February 2013 email the neuroscience community's concern that a big central planning project would draw resources away from creative work. The
      governance choices — who leads, tool-builders versus users,
      central plan versus distributed creativity — were not made in
      private and then defended; they were litigated in the public
      record while the program ran.#cn()
    ],
    [
      The 2021 MIT Technology Review retrospective took the
      ten-year view: big-science brain projects, BRAIN among them,
      did not deliver the unified understanding their founding
      framing had promised. The honest assessment is that the
      initiative produced tools, atlases, and a coordinated funding
      stream — meaningful capability — while drifting from the
      grand-challenge framing the position paper had used to mobilize
      political support. The case is the instructive form of the
      "enthusiasm-evidence gap" at field scale: the framing carried
      the politics, and the science delivered something different
      and more diffuse.#cn()
    ],
    [
      What the case teaches is that large-program governance is the
      capability deliverable — not the framing, not the early
      tools, not the eventual results. The position-paper-to-policy
      sequence, the working-group composition decision, and the
      public airing of scope drift are the artifacts a future
      capability-development program can study. Paired with the EU
      Human Brain Project (Case 181), the case sets a distributed working-group model against a top-down single-PI one. No published assessment attributes the two trajectories to that difference; the record shows the HBP board replacing Markram's three-member executive committee with a 22-member governing board in 2015, after an open letter from hundreds of European scientists, while BRAIN ran on with funding through 2026. The framing, ambition, and era were comparable; the governance was not.#cn()
    ],
  ),
  beats: (
    "Kavli 2011 symposium → 2012 Neuron position paper → 2013 OSTP/Presidential launch → 2015 BRAIN 2025 working-group plan",
    "Position-paper-to-policy iteration is auditable: every step has a published artifact",
    "Governance contestation on the public record: tool-builders vs. users; central planning vs. distributed creativity",
    "2021 retrospective: unified-understanding framing exceeded delivered science; enthusiasm-evidence gap at field scale",
    "Governance model is the deliverable — distributed working-group vs. top-down single-PI; HBP restructured under an open letter in 2015, BRAIN funded through 2026",
  ),
  approaches: (
    during: (
      [Make the position-paper-to-policy iteration auditable by attaching a published artifact to every step — proposal, OSTP transmittal, working-group composition, milestone plan.],
      [Treat working-group composition as a governance act, not a staffing decision: tool-builders vs. users vs. integrators is a framing-shaping choice, and naming the trade-off openly is part of the work.],
      [Carry the founding scope through the operational record: name where the program is keeping faith with the founding framing and where it is drifting, while the program is running rather than only in retrospect.],
    ),
    after: (
      [Commission and publish a long-window retrospective that compares the founding framing to delivered capability honestly — not as a closure ritual but as governance evidence the next program can use.],
      [When scope drift is documented, decide explicitly whether to reframe the program publicly or to re-baseline against the original framing; the worst case is leaving the gap unaddressed in the record.],
      [Treat governance contestation in the public record as program documentation, not as program failure; the contested record is what makes the case teachable.],
    ),
  ),
  references: (
    [Alivisatos, Chun, Church, Greenspan, Roukes, & Yuste (2012), "The Brain Activity Map Project and the Challenge of Functional Connectomics," _Neuron_ 74(6):970–974, doi:10.1016/j.neuron.2012.06.006.],
    [Jorgenson et al. (2015), "The BRAIN Initiative: developing technology to catalyse neuroscience discovery," _Phil. Trans. R. Soc. B_ 370(1668):20140164, doi:10.1098/rstb.2014.0164 — the BRAIN 2025 plan.],
    [Yuste & Bargmann (2017), "Toward a Global BRAIN Initiative," _Cell_ 168(6):956–959, doi:10.1016/j.cell.2017.02.023.],
    [Underwood (2013), "As White House Embraces BRAIN Initiative, Questions Linger," _Science_ / ScienceInsider (April 3, 2013) — source of the Yuste and Bargmann public-record contestation quotes.],
    [Mullin, E. (2021), "How big science failed to unlock the mysteries of the human brain," _MIT Technology Review_ (25 August 2021) — the critical ten-year assessment.],
  ),
  quote: [Governance contestation in the public record is not program failure. It is what makes the case teachable.],
  quote-source: "Editors' synthesis of the BRAIN Initiative record (2012 – 2021).",
  le-insight: [
    The BRAIN Initiative is one of the few large-program launches
    in the corpus whose position-paper-to-policy-to-implementation
    sequence is fully auditable. Governance choices were litigated
    in the public record, scope drifted from the founding framing,
    and a critical ten-year retrospective is part of the case
    materials. Its teaching value is the contested record, not a
    clean success or scandal.
  ],
  lens-approach: [
    BRAIN is the field-scale stakeholder-and-governance case in
    the v2 corpus (induced 5.1; LENS D5+D1/PT4). LENS uses it in
    Domain 1 (Systems Analysis) for the position-paper-to-policy
    iteration sequence; in Domain 5 (Navigating Sociotechnical
    Constraints) for the public-record governance contestation;
    and in Domain 4 (Test and Evaluation) for the
    enthusiasm-evidence gap as the framing exceeded delivered
    science. Direct pair with Case 181 (EU Human Brain Project),
    same era and ambition, opposite governance model. The COI
    disclosure under the title is binding: the editor's research
    adjacency is what motivated the critical retrospective being
    included as a deliberate counterweight.
  ],
  literature-items: (
    [Alivisatos et al. (2012), _Neuron_ — Brain Activity Map proposal],
    [Jorgenson et al. (2015), _Phil. Trans. R. Soc. B_ — BRAIN 2025],
    [Yuste & Bargmann (2017), _Cell_ — Global BRAIN argument],
  ),
  reflection-list: (
    [Identify a large research or capability-development program in your domain whose launch artifacts (position papers, working-group reports, milestone plans) are publicly auditable. What governance choices were made openly and which were made in private?],
    [Specify the founding-framing-vs-delivered-capability comparison you would publish at year five and year ten of a program you are designing. What is the evidence form, who commissions it, and where does it live in the record?],
    [BRAIN survived and adapted while the EU Human Brain Project (Case 181) unraveled. What is the minimum governance documentation that would let a future program-designer learn the difference, rather than reconstruct it from contested press accounts?],
  ),
  courses: ("LEN 1", "LEN 7", "LEN 8"),
)

// ---- Case 199 — waymos-safety-case-framework-governance ----
#case(
  number: 199,
  slug: "waymos-safety-case-framework-governance",
  title: "Waymo's Safety Case Framework — Governance Objection Dissolved by Designed Artifact",
  year: "2023 – 2026",
  domains-list: ("autonomous vehicles", "transportation safety", "public-sector governance"),
  modes-code: "GKN",
  impact: "After a California court let Waymo withhold trade-secret-laden safety data from a DMV public-disclosure request, the company answered the governance objection with a published, structured safety case framework — and in November 2025 commissioned the first independent third-party audits of both the safety case and the remote-assistance program",
  kind: "intervention",
  scale: "big",
  evidence-source: "practitioner",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "5.1",
  lens-anchor: "D5/PT6",
  leo-anchor: "LEO-5, LEO-3",
  summary: [
    In 2022 a California court permitted Waymo to withhold
    trade-secret-laden safety details from a public DMV disclosure,
    leaving regulators and the riding public with a credibility gap
    Waymo could not close by sharing the contested data. The
    company's response was to publish, in 2023, a structured
    *safety case framework*: a top-down argument with explicit
    claims, sub-claims, and the evidence types each rests on,
    accompanied by published operating-domain performance figures.
    In November 2025 Waymo released the first independent
    third-party audits of both the safety case and the
    remote-assistance program — the audits themselves disclosed,
    rather than the underlying trade-secret data the original
    objection targeted. The pattern is the
    OU-Analyse / inBloom move (governance objection dissolved by
    better design) transposed from education into physical-safety
    AV: the response to an opacity objection was a falsifiable
    argument structure auditable by third parties, not a defense
    of opacity. The evidence-tier flag rendered under the title is
    load-bearing — the analysis rests on the practitioner
    whitepaper plus the 2025 audit summaries, not on a
    peer-reviewed safety-engineering evaluation. Future validation
    will continue as the audit cadence and post-deployment
    failure record accumulate.
  ],
  sections: (
    [
      The precipitating event was not a crash. In 2022 a California
      court ruled that Waymo could withhold trade-secret-laden
      safety details from a DMV public-records process. The company
      had a legal answer to the disclosure request and no
      legitimacy answer to the public-trust gap that ruling
      created. The governance objection — "you are asking us to
      trust an opaque system whose failure modes we cannot
      inspect" — could not be answered by disclosing the contested
      data without giving up the trade-secret position the court
      had just protected.#cn()
    ],
    [
      Waymo's 2023 response was to publish a structured *safety
      case framework*: a top-down argument with claims and
      sub-claims, the evidence categories each rests on
      (operational performance data, simulation and testing,
      hazard analysis, third-party assessment), and the
      operational-domain figures available at the time of
      publication. The artifact's design move is that the
      *structure* of the safety argument is public even where
      individual evidence items remain proprietary — outside
      auditors can interrogate the chain of reasoning without
      seeing the trade secrets.#cn()
    ],
    [
      In November 2025 Waymo commissioned and released the
      results of independent third-party audits of the safety
      case and of the remote-assistance program. The audits
      themselves — not the underlying data — were the disclosure
      artifact. The pattern is OU-Analyse / inBloom in the AV
      domain: a governance objection answered by a designed
      legitimacy artifact rather than by disclosure of the
      contested data. Where opacity could not be defended, a
      structured falsifiable argument plus audited assurance
      took its place.#cn() The post-deployment failure record the
      framework anticipated has since begun to accumulate under real
      regulator action: a December 2025 recall over vehicles not
      stopping for school buses, a January 2026 NHTSA/NTSB
      investigation after a Waymo struck a child near a Santa Monica
      school, and a June 2026 recall of roughly 3,900 vehicles for
      entering freeway construction zones — the safety-case regime now
      being stress-tested by the revocation-and-recall machinery it
      was built to invite rather than resist.#cn()
    ],
    [
      The evidence-tier flag rendered under the case title is
      load-bearing. The framework and audit summaries are
      practitioner-authored or auditor-authored — not
      peer-reviewed safety-engineering analyses. Some
      audit-tier elements push toward investigation-grade, but
      the synthesis as a whole rests on Waymo and Montreal AI
      Ethics Institute documents. The honest framing in print
      is that the source confidence is flagged and that future
      validation — particularly post-deployment failure-record
      analysis and continued auditor independence — is
      ongoing.#cn()
    ],
    [
      The teaching point for LENS is that delegation of
      consequential decisions to an automated system creates a
      governance debt that the deploying organization owes the
      public. The subobjective *Delegation with revocation* (3.3) is the
      capability the case exercises: the safety case framework
      is the artifact that makes revocation possible —
      regulators or auditors can identify which sub-claim has
      failed, on what evidence, and require the deploying
      organization to act on the gap. Pair with Case 190
      (Cruise) as the foil: the same regulatory regime, the
      opposite governance choice, the opposite outcome. Pair
      with Case 200 (CPUC permit framework) as the
      regulator-side counterpart of the deployer-side
      artifact.#cn()
    ],
  ),
  beats: (
    "2022 court let Waymo withhold trade-secret safety data from a public DMV disclosure — public-trust gap with no disclosure-side answer",
    "2023 response: structured safety case framework — claims/sub-claims/evidence types public; trade-secret items remain proprietary",
    "November 2025 independent third-party audits of safety case and remote-assistance program — the audits disclosed, not the underlying data",
    "Practice-synthesis tier: Waymo whitepaper + Montreal AI Ethics Institute + 2025 audit summaries; future validation ongoing",
    "Pairs with Case 190 (Cruise foil) and Case 200 (CPUC permit framework); exercises NEW LEO Delegation with revocation",
  ),
  approaches: (
    during: (
      [Treat the disclosure objection as a design problem: what falsifiable artifact can you publish that addresses the legitimacy gap without requiring you to surrender trade-secret evidence?],
      [Structure the safety case as a top-down argument with explicit claims, sub-claims, and evidence types so an outside auditor can interrogate the *chain of reasoning* rather than only the contested data points.],
      [Commission and publish third-party audits of the argument structure and of the operational programs (e.g. remote assistance) that the safety case rests on — the audits are the disclosure artifact when the data cannot be.],
    ),
    after: (
      [Treat the safety case framework as a living document — update the claims and evidence as post-deployment failure data accumulates, and publish the updates so the legitimacy artifact does not calcify.],
      [Use the subobjective *Delegation with revocation* (3.3): design the framework so a regulator or auditor can identify which sub-claim has failed and trigger a revocation pathway, not only a "trust us, we will fix it" assurance.],
      [Carry the practice-synthesis evidence-tier flag honestly in any program documentation citing the framework — the artifact pattern is teachable, but the magnitude of its public-trust effect is still being measured.],
    ),
  ),
  references: (
    [Waymo (2023), "A Blueprint for AV Safety: Waymo's Toolkit For Building a Credible Safety Case," whitepaper.],
    [Waymo (November 2025), "Independent Audits of Waymo's Safety Case and Remote Assistance Programs," summary release.],
    [NHTSA recall and investigation record (December 2025 school-bus recall; January 2026 NHTSA/NTSB investigation of a Santa Monica child-strike; June 2026 recall of ~3,900 vehicles over freeway construction zones) — the post-deployment failure record under regulator action.],
    [Montreal AI Ethics Institute (2023), summary and analysis of the Waymo safety case framework.],
    [California Public Utilities Commission, AV passenger-service permit framework documents — paired Case 200 for the regulator-side artifact.],
    [Cruise / California DMV Order of Suspension (October 2023) — paired Case 190 as the foil.],
  ),
  quote: [Where opacity could not be defended, a structured falsifiable argument plus audited assurance took its place.],
  quote-source: "Editors' synthesis of the Waymo safety case framework and the November 2025 third-party audits.",
  le-insight: [
    Waymo's safety case framework is the AV-domain instance of
    the OU-Analyse / inBloom move: a governance objection
    dissolved by a designed artifact, not by disclosure of the
    contested data. Evidence-tier flag is practice-synthesis;
    the artifact pattern is teachable and the third-party
    audit posture pushes some elements toward
    investigation-grade, but the synthesis as a whole is
    practitioner-authored and future validation is ongoing.
  ],
  lens-approach: [
    Waymo is the AV-safety governance case (induced 5.1; LENS
    D5/PT6). LENS uses it in Domain 5 (Navigating
    Sociotechnical Constraints) for the subobjective *Delegation
    with revocation* (3.3) — the safety case is what makes
    revocation possible — and in Domain 3 (Emerging Systems
    and Human-System Collaboration) for the deployer-side artifact that
    permits oversight of a system whose internals are trade
    secret. Pair with Case 190 (Cruise) as the foil and Case
    200 (CPUC) as the regulator-side complement.
  ],
  literature-items: (
    [Waymo (2023), safety case framework whitepaper],
    [Waymo (2025), independent third-party audit summaries],
    [Montreal AI Ethics Institute (2023), analysis of the framework],
  ),
  reflection-list: (
    [Identify an automated system in your context that faces a public-trust objection it cannot answer by full disclosure. What falsifiable argument structure could you publish that would make the system's reasoning auditable without requiring disclosure of the contested data?],
    [Specify how a regulator or independent auditor would *revoke* the delegation in your system if a sub-claim of the safety case failed. The subobjective *Delegation with revocation* (3.3) requires this pathway to exist before deployment, not only after a public-facing failure.],
  ),
  courses: ("LEN 4", "LEN 8", "LEN 9"),
)

// ---- Case 200 — cpuc-av-passenger-service-permits ----
#case(
  number: 200,
  slug: "cpuc-av-passenger-service-permits",
  title: "CPUC AV Passenger-Service Permits — Conditions as a Designed Objection-Dissolver",
  year: "2020 – 2026",
  domains-list: ("autonomous vehicles", "public-utility governance", "accessibility"),
  modes-code: "GKD",
  impact: "California's Public Utilities Commission built an AV passenger-service permit framework whose one Commission-authored condition — a mandatory Passenger Safety Plan for riders with disabilities — operationalizes the accessibility objection, while the operating limits on hours, geography, speed and weather ride on the DMV-approved operational design domain and the Commission declined San Francisco's request to cap fleet, hours and service area",
  kind: "intervention",
  scale: "big",
  evidence-source: "program-report",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "5.1",
  lens-anchor: "D5/PT6",
  leo-anchor: "LEO-5, LEO-3",
  summary: [
    The California Public Utilities Commission established an AV
    passenger-service permit framework whose conditions are
    explicitly designed to address common governance objections —
    safety, equity, fleet scale — by writing them into the permit
    rather than treating them as binary deploy / don't-deploy
    questions. The Commission's own condition is a required Passenger Safety Plan documenting how the driverless service handles riders with limited mobility, vision impairments, and other disabilities; the limits on hours, geography, speed and weather arrive with the DMV-approved operational design domain. Draft DMV rules circulated for comment in 2024 and adopted in April 2026 gave the DMV authority to impose targeted operational restrictions for safety, and the case shows the regime in operation: the
    Cruise suspension (Case 190) shows the regime can revoke; the
    Waymo continuation (Case 199) shows it can permit
    conditionally. The structural complement to the Waymo
    deployer-side safety case framework is exactly this
    regulator-side artifact — the permit conditions make the
    safety case operative as a regulatory instrument. The
    evidence-tier flag rendered under the title is
    practice-synthesis: the program is documented in CPUC
    decisions and program guidance, but no peer-reviewed
    evaluation of the program's equity-of-service outcomes for
    disabled and disadvantaged-community riders yet exists.
    Future validation will continue as ridership and incident
    data accumulate.
  ],
  sections: (
    [
      The governance question California faced from 2018 onward
      was how to regulate AV passenger service in a regime where
      the California DMV regulates the vehicle and the CPUC
      regulates the passenger service the vehicle provides.
      Treating each AV deployment as a binary deploy /
      don't-deploy decision risked either blocking deployment
      outright on objections the operator could not satisfy, or
      permitting deployment without a governance handle on the
      objections the public and the disability-rights community
      brought to the proceedings.#cn()
    ],
    [
      The CPUC's structural answer was to attach one condition of its own to a permit that otherwise carries the DMV-approved operational design domain. The AV passenger-service permits inherit the DMV's limits on hours, geography, speed and weather, and add a mandatory Passenger Safety Plan documenting how the driverless service will accommodate riders with limited mobility, vision impairments, hearing impairments, and other disabilities. When San Francisco asked the Commission to cap fleet size and restrict hours and service area, Resolution TL-19144 declined: the Commission would "neither modify the DMV-approved ODD … nor set limits on fleet size." The conditions are not policy aspirations
      — they are permit terms whose violation triggers
      enforcement.#cn()
    ],
    [
      In August 2024 the DMV released draft regulations for public
      comment that would strengthen its authority to impose
      targeted operational restrictions for safety reasons during
      the deployment lifecycle, not only at initial permit
      issuance. That authority was finalized: the DMV adopted new AV
      regulations on 28 April 2026 that codify targeted operational
      restrictions (fleet size, location, speed, weather), authorize
      heavy-duty AV trucks and medium-duty transit AVs, add
      law-enforcement notices of noncompliance, and require AVs to
      clear emergency zones within two minutes; the CPUC separately
      opened a successor passenger-service rulemaking in August 2025
      covering airport and shared-ride operations, personally-owned
      AVs, and unaccompanied minors. The
      regulatory regime can therefore tighten the conditions in
      response to operational evidence. The pattern: rather than
      treat the governance objection as binary, the CPUC made the
      objection itself a design parameter the deployer must
      satisfy and that the regulator can re-tune.#cn()
    ],
    [
      The case is the structural complement to Case 199 (Waymo)
      and the inverse-outcome companion of Case 190 (Cruise). The
      Waymo safety case framework is the deployer-side artifact;
      the CPUC permit conditions are the regulator-side artifact
      that makes the safety case operative as a regulatory
      instrument. The Cruise suspension shows the regime can
      revoke when the disclosure architecture fails; the Waymo
      conditional continuation shows it can permit when the
      conditions are satisfied. Together the trio teaches the
      structural form of regulator-deployer interaction at the
      AV physical-safety C5 layer.#cn()
    ],
    [
      The evidence-tier flag rendered under the title is
      practice-synthesis. The CPUC decisions, the program
      guidance, and the permit conditions themselves are
      public; no peer-reviewed evaluation of the
      equity-of-service goals (disabled-rider access,
      disadvantaged-community access) has yet measured whether
      the Passenger Safety Plan conditions translate into
      measured ridership outcomes. The condition-as-objection-dissolver
      pattern is teachable and the regulatory architecture is
      explicit, but the outcome evidence is not yet
      decision-grade. Future validation will continue as the
      program ages and as the equity outcomes are
      independently measured.
    ],
  ),
  beats: (
    "CPUC and California DMV regulate AV passenger service in a split-jurisdiction regime; binary deploy/don't-deploy risked either blocking deployment or losing governance handle",
    "Permit conditions: DMV-set operational design domain (hours, geography, speed, weather) plus the CPUC's own mandatory Passenger Safety Plan for riders with disabilities; TL-19144 refused fleet, hour and geography caps",
    "August 2024 draft regulations (public comment): proposed DMV authority to impose targeted operational restrictions for safety during the deployment lifecycle",
    "Structural complement to Case 199 (Waymo deployer-side safety case) and inverse-outcome companion of Case 190 (Cruise revocation)",
    "Practice-synthesis tier: program guidance and permit decisions documented; no peer-reviewed evaluation of equity-of-service outcomes yet — future validation ongoing",
  ),
  approaches: (
    during: (
      [Treat governance objections as design parameters rather than as binary blockers — write them into the permit conditions where compliance is verifiable and violation triggers enforcement.],
      [Require a documented Passenger Safety Plan (or equivalent equity-of-service artifact) at initial permit issuance so the equity objection has an operational answer the regulator can audit.],
      [Build the regulatory authority to re-tune the conditions during the deployment lifecycle into the regime itself; the Cruise suspension (Case 190) is what re-tuning under a failure event looks like.],
    ),
    after: (
      [Pair the case with Case 199 (Waymo) as the regulator-deployer artifact dyad — the safety case framework and the permit conditions are co-constitutive, not independent moves.],
      [Use the case in LENS Domain 5 modules on cross-regime governance seams (CPUC and DMV) — the regime structure is itself part of the capability question.],
      [Carry the practice-synthesis flag honestly: the condition-design pattern is teachable, but the equity-of-service outcome data are not yet peer-reviewed; future validation requires independent evaluation of the Passenger Safety Plan deliverables.],
    ),
  ),
  references: (
    [California Public Utilities Commission, "Autonomous Vehicle Passenger Service Programs" — program page for the Drivered and Driverless pilot and deployment programs, including the Passenger Safety Plan requirement.],
    [CPUC permit decisions for Cruise and Waymo, 2020–2024.],
    [California Department of Motor Vehicles, "New Autonomous Vehicle Regulations Strengthen Oversight and Enforcement, Authorize Trucks and Transit" (28 April 2026) — adopted authority to impose targeted operational restrictions on fleet size, location, speed and weather; draft language circulated for comment 30 August 2024.],
    [California Public Utilities Commission, Resolution TL-19144 (Waymo), issued 11 August 2023 — approves driverless deployment in all of San Francisco 24 hours a day per the DMV-approved ODD, and declines to set limits on operating hours, geography or fleet size.],
  ),
  quote: [The governance objection was not refused. It was made a permit condition.],
  quote-source: "Editors' synthesis of the CPUC AV passenger-service permit framework.",
  le-insight: [
    The CPUC permit framework is the regulator-side
    counterpart to the Waymo safety case (Case 199): conditions
    operationalize objections rather than blocking deployment.
    Evidence-tier flag is practice-synthesis; the regulatory
    architecture is documented in CPUC decisions, but no
    peer-reviewed evaluation of the equity-of-service goals
    yet exists, and future validation is ongoing.
  ],
  lens-approach: [
    CPUC is the AV regulator-side governance case
    (induced 5.1; LENS D5/PT6). LENS uses it in Domain 5
    (Navigating Sociotechnical Constraints) for cross-regime
    governance seams (DMV regulates the vehicle; CPUC
    regulates the service; both can act) and for the
    condition-as-design-parameter pattern that makes the
    deployer-side safety case (Case 199) operative as a
    regulatory instrument. Pairs with Case 190 as the
    revocation event under the regime.
  ],
  literature-items: (
    [CPUC AV passenger-service permit program documents],
    [CPUC permit decisions for Cruise and Waymo],
    [California DMV strengthened safety-restriction authority, 2024],
  ),
  reflection-list: (
    [Identify a deployment regime in your context where governance objections are currently treated as binary deploy / don't-deploy questions. How could the objections be rewritten as permit-style conditions whose compliance is verifiable and whose violation triggers enforcement?],
    [Specify the equity-of-service artifact your regime would require at permit issuance — the analogue of the Passenger Safety Plan — and the auditable evidence the deployer must provide that the artifact is operational.],
    [The case is practice-synthesis tier. What independent outcome evidence — disabled-rider ridership figures, disadvantaged-community access measurements, comparative incident rates by permit condition — would you require before treating the condition-as-objection-dissolver pattern as a validated regulatory architecture?],
  ),
  courses: ("LEN 4", "LEN 8", "LEN 9"),
)

// ---- Case 201 — aadhaar-exclusion-litigation-judicial ----
#case(
  number: 201,
  slug: "aadhaar-exclusion-litigation-judicial",
  title: "Aadhaar Exclusion — Biometric Welfare Delegation and Its Judicial Reckoning in India",
  year: "2018 – 2025",
  domains-list: ("digital identity", "welfare", "biometric authentication", "India"),
  modes-code: "GNH",
  impact: "India's Aadhaar biometric-identity system, with more than 1.2 billion numbers issued and some 800 million people drawing subsidised food under it, produced operational exclusion when authentication failed at the ration shop or pension window; the 2018 Puttaswamy II majority upheld the Section 7 welfare-linkage while Justice Chandrachud's dissent held that exclusion from technological error — through no fault of the individual — violates constitutional dignity, naming a principle the executive had already reached for in its October 2017 instruction that no one be denied rations for want of Aadhaar",
  kind: "intervention",
  scale: "big",
  evidence-source: "investigation",
  evidence-flag: "journalism-tier",
  induced-anchor: "5.2",
  lens-anchor: "D5/PT5",
  leo-anchor: "LEO-1, LEO-5",
  summary: [
    Aadhaar — India's biometric digital-identity system, with more than 1.2 billion enrolled — was designed to streamline
    welfare delivery and reduce identity fraud. Across more than a
    decade of deployment the load-bearing failure mode became
    operational exclusion: when biometric authentication failed
    for an individual (worn fingerprints, missing iris match,
    connectivity loss at the point of service), the welfare to
    which the person was entitled became inaccessible. The
    constitutional reckoning came in the 2018 Puttaswamy II
    Aadhaar judgment: the 4–1 majority upheld Section 7 of the
    Aadhaar Act, which conditions subsidies and benefits on
    authentication, while Justice D. Y. Chandrachud's lone dissent
    named the load-bearing principle — that "exclusion based on
    technological errors, with no fault of the individual, is a
    violation of dignity." The empirical predicate is the
    documented exclusion record: the 2017 Jharkhand starvation deaths (Santoshi Kumari, 28 September 2017, one of 57 starvation deaths the Right to Food Campaign investigated across nine states from 2015, of which at least nineteen were directly linked to Aadhaar) and the Drèze–Khalid–Khera–Somanchi field study finding over forty percent of non-transacting households citing Aadhaar-authentication problems. The correction that followed was
    executive and doctrinal rather than a majority holding —
    circulars barring denial of rations for want of Aadhaar, and,
    in the distinct 2025 _Pragya Prasun_ ruling, a right to
    accessible digital access read into Article 21 in the e-KYC
    context. The case is the non-US automated-welfare-delegation
    case the corpus needs alongside SyRI and the UK Post Office
    Horizon thread. The evidence tier is mixed: the judgments are
    investigation-grade; the lived-exclusion sourcing rests on
    journalism and advocacy reporting, with the field data
    peer-reviewed. Future validation continues on whether the
    fallback requirement is honored at the operator interface.
    Gap-5 non-US/UK/EU case (India).
  ],
  sections: (
    [
      Aadhaar was designed as a population-scale solution to two
      problems the Indian welfare state had identified by the
      late 2000s: fragmented identification across welfare
      schemes and identity fraud in benefits delivery. The
      design choice was biometric authentication at the point
      of service — fingerprints and iris — keyed to a unique
      twelve-digit identifier issued by the UIDAI. Enrollment
      passed 1.2 billion. The capability the
      system promised was streamlined welfare access; the
      authority it required was delegation of identity
      verification to the biometric.#cn()
    ],
    [
      The load-bearing failure mode emerged across deployment:
      operational exclusion. When biometric authentication
      failed at the ration-shop card-reader or the pension
      window — worn fingerprints from manual labor, missing
      iris matches, connectivity loss, device malfunction —
      the welfare to which the person was entitled became
      inaccessible. The failure was not the absence of
      identity; the person had the Aadhaar number. The failure
      was the brittleness of the authentication system at the
      operator interface. The people most dependent on the
      welfare were the people whose biometrics were most
      likely to fail.#cn()
    ],
    [
      The constitutional reckoning came in stages. In the 2018
      Puttaswamy II judgment the Supreme Court's 4–1 majority
      upheld Aadhaar and Section 7 of the Aadhaar Act — the
      provision conditioning subsidies and benefits on
      authentication — reasoning that targeted delivery and
      leakage-reduction were legitimate, proportionate state
      aims. Justice D. Y. Chandrachud, dissenting alone, named
      the structural risk the majority did not: that Section 7
      was over-broad and that "exclusion based on technological
      errors, with no fault of the individual, is a violation of
      dignity." Across the following years the documented
      exclusion record accumulated, and the correction arrived
      not as a reversal of the majority but as executive
      circulars barring denial of rations for want of Aadhaar
      and, in the distinct 2025 _Pragya Prasun_ ruling, a right
      to accessible digital access read into Article 21 in the
      e-KYC context for persons with disabilities.#cn()
    ],
    [
      The evidence-tier flag is split and load-bearing. The
      court judgments themselves are investigation-grade — the
      published opinions are the record. The empirical body
      rests on two tiers: the lived-exclusion account is
      journalism and advocacy reporting (the Right to Food
      Campaign's compilation of the Jharkhand starvation deaths;
      the Indian press), while the exclusion-rate evidence is
      peer-reviewed field work — Drèze, Khalid, Khera and Somanchi's Jharkhand survey ("Pain without Gain?", EPW 2017) found over forty percent of non-transacting households citing Aadhaar-authentication problems, and Ranchi district's own point-of-sale records put about twenty percent of cardholders unable to transact in an average month. The journalism-tier flag travels with the
      lived-exclusion material; the field data and the judgments
      carry their own, higher, tiers. Whether the fallback
      requirement is honored at the operator interface is the
      open empirical matter the future will validate.#cn()
    ],
    [
      What the case adds at the LENS layer is the non-US
      automated-welfare-delegation thread the corpus needs.
      The Domain-5 frame applies — a sociotechnical constraint
      (population-scale biometric delegation) tested against
      constitutional dignity — and the LEO around fairness
      beyond omission applies directly: the harm was not the
      absence of the system but the operational exclusion
      produced by it. The LEO on delegation with revocation
      applies too: the correction did not revoke the delegation
      but sought to bound it with a fallback requirement — and
      the gap between the Chandrachud dissent's principle and
      the majority's holding is precisely why the revocation
      remains contested rather than settled. The case pairs with
      SyRI (Dutch welfare-fraud system halted on rights grounds)
      and the UK Post Office Horizon thread as the global lineage
      of judicial reckoning with automated welfare delegation.#cn()
    ],
  ),
  beats: (
    "Aadhaar at 1.2 billion-plus enrolled, ~800 million on NFSA rations — biometric authentication delegated for welfare access at the point of service",
    "Operational exclusion as load-bearing failure mode — worn fingerprints, missing iris, connectivity loss at the operator interface",
    "Puttaswamy II (2018) — 4–1 majority upholds Section 7; Chandrachud's dissent: exclusion from technological error, no fault of the individual, violates dignity",
    "Empirical predicate — Santoshi Kumari, Jharkhand, September 2017; 19 of 57 Right to Food Campaign starvation deaths across nine states since 2015 linked to Aadhaar; Drèze–Khera field data — over 40% of non-transacting households cite ABBA",
    "Correction is executive and doctrinal, not a majority holding — circulars barring ration denial; the distinct 2025 Pragya Prasun ruling reads a right to accessible digital access into Article 21",
  ),
  approaches: (
    during: (
      [Treat the operator-interface brittleness of any biometric system as a design variable from the start: who is most likely to be excluded, and what is the alternative at the point of service.],
      [Specify the fairness-beyond-omission test the system must pass before deployment: not "is the system available," but "does it work for the people most dependent on the welfare it gates."],
      [Document the delegation explicitly — what authority is delegated to the biometric, under what conditions it can fail, and what the operator's authority to override is — so the revocation question is answerable later.],
    ),
    after: (
      [Track operational exclusion as a primary outcome metric, not a downstream complication; the case teaches that the exclusion is the failure mode the design ignored.],
      [Carry the journalism-tier flag on the lived-exclusion material and the investigation-grade flag on the court judgments separately; the case is teachable because the two tiers are explicit.],
      [Pair with SyRI and the UK Post Office Horizon thread when teaching automated-welfare delegation; the cross-jurisdictional pattern is the lineage of judicial correction of these systems.],
    ),
  ),
  references: (
    [Supreme Court of India (2018), _Justice K. S. Puttaswamy (Retd.) v. Union of India_, (2019) 1 SCC 1 — the Aadhaar judgment; 4–1 majority upholding Section 7, with Justice D. Y. Chandrachud's dissent on technological exclusion and dignity.],
    [Drèze, J., Khalid, N., Khera, R., & Somanchi, A. (2017), "Aadhaar and Food Security in Jharkhand: Pain without Gain?," _Economic & Political Weekly_ 52(50) — field study of biometric-authentication exclusion in the PDS.],
    [Right to Food Campaign compilation and Indian journalism (The Hindu, The Wire, Scroll.in, 2017–2019) on the Jharkhand starvation deaths (Santoshi Kumari, September 2017) — lived-exclusion sourcing with journalism-tier flag.],
    [Supreme Court of India (2025), _Pragya Prasun & Ors. v. Union of India_, 2025 INSC 599 — the distinct, later ruling reading a right to accessible digital access into Article 21 in the e-KYC context for persons with disabilities.],
    [Dixon, P. (2017), "A Failure to 'Do No Harm' — India's Aadhaar biometric ID program and its inability to protect privacy in relation to measures in Europe and the U.S.," _Health and Technology_ 7(4):539–567 — comparative privacy and data-protection analysis, reporting biometric-authentication failure rates alongside it.],
  ),
  quote: [Exclusion based on technological errors, with no fault of the individual, is a violation of dignity.],
  quote-source: "Justice D. Y. Chandrachud, dissenting, Puttaswamy II (2018)",
  le-insight: [
    Aadhaar exclusion is the non-US automated-welfare-delegation
    case the corpus needed: an operational-exclusion failure mode
    whose constitutional statement is Justice Chandrachud's 2018
    dissent — exclusion from technological error, no fault of the
    individual, as a dignity violation — set against a majority
    that upheld the Section 7 linkage. The correction that
    followed was executive and doctrinal rather than a majority
    holding. Evidence tier is split: judgments investigation-grade,
    field data peer-reviewed, lived-exclusion sourcing journalism
    plus advocacy. Future validation ongoing on whether the
    fallback requirement is honored.
  ],
  lens-approach: [
    The designed teaching point is operational failure-mode
    attribution (induced 5.2; canonical competency 8.1; LENS
    D5/PT5). At the ration-shop card-reader and the pension
    window, a biometric authentication that did not match was
    logged as user error — the claimant's worn fingerprints,
    the elderly applicant's failed iris read — when it was in
    fact a designed exclusion mode of the system: manual
    laborers and the elderly are precisely the populations
    whose biometrics the design could not reliably read, so the
    failure belongs to the authentication design, not to the
    excluded person. The capability discipline is to attribute
    an authentication failure to the system that produced it
    rather than to the user it shut out, and to name who the
    design predictably excludes before deployment. Justice
    Chandrachud's dissent performed exactly this attribution —
    naming technological exclusion, through no fault of the
    individual, as the system's dignity violation — even as the
    majority upheld the linkage; the correction has since been
    pursued through executive fallback mandates rather than a
    settled revocation. Pair with SyRI (Case 189) and the UK
    Post Office Horizon thread.
  ],
  literature-items: (
    [Puttaswamy II (2018) — Supreme Court of India Aadhaar judgment; Chandrachud dissent],
    [Drèze, Khalid, Khera & Somanchi (2017), EPW — "Pain without Gain?" Jharkhand field study],
    [Right to Food Campaign reporting on Aadhaar-linked exclusion; Pragya Prasun (2025) as the later digital-access ruling],
  ),
  reflection-list: (
    [Identify a delegated authentication or eligibility-check system in your context whose failure mode is operational exclusion of the people most dependent on the service it gates. What is the alternative at the point of service, and is it actually available?],
    [Specify the fairness-beyond-omission test such a system would have to pass before deployment. The Aadhaar pattern teaches that the harm is not the absence of the system but the exclusion the system produces — what would the equivalent test be in your domain?],
    [The case has split evidence tiers: court judgments investigation-grade, lived-exclusion sourcing journalism plus advocacy plus comparative analysis. How would you carry the tier split into a teaching artifact without smoothing either tier away?],
  ),
  courses: ("LEN 5", "LEN 8", "LEN 9"),
)

// ---- Case 202 — care-principles-indigenous-data ----
#case(
  number: 202,
  slug: "care-principles-indigenous-data",
  title: "CARE Principles — Indigenous Data Governance as a Replaced Regime",
  year: "2019 – 2020 (principles); ongoing",
  domains-list: ("data governance", "Indigenous data sovereignty", "Australia / NZ / US"),
  modes-code: "GN",
  impact: "The CARE Principles (Collective Benefit, Authority to Control, Responsibility, Ethics) were developed by Indigenous Data Sovereignty networks in Aotearoa NZ, Australia, and the US to shift the framing from consultation under existing data regimes to Indigenous Peoples as the data owners and beneficiaries; the Lowitja Journal 2025 documents one of the first detailed implementation case studies",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "5.1",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-5, LEO-4",
  summary: [
    The CARE Principles for Indigenous Data Governance — Collective
    Benefit, Authority to Control, Responsibility, Ethics — were
    published by Carroll and colleagues in _Data Science Journal_
    in 2020. They were developed by Indigenous Data Sovereignty
    networks in Aotearoa New Zealand, Australia, and the United
    States with an explicit purpose: to shift the framing from
    "consultation under existing data regimes" to "Indigenous
    Peoples as the data owners and beneficiaries." The Lowitja
    Journal 2025 case study of the Ngangk Yira Institute for
    Change documents one of the first detailed implementation
    accounts. The teaching point is the governance-replacement
    structure: not "this system should not deploy" but "this
    governance regime must be replaced for any deployment to be
    legitimate." The case sits alongside CARE-adjacent equity
    threads in the v2 corpus and supports the subobjective *Fairness beyond omission* (4.6) — CARE specifies positive
    sovereignty, not merely the avoidance of harm. Practice-
    synthesis-tier flag preserved: principles are peer-reviewed;
    implementation literature is still emerging. Future
    validation ongoing on multi-institution adoption and
    outcomes.
  ],
  sections: (
    [
      Data-governance regimes built around individual privacy —
      GDPR, HIPAA, and the broader consent-and-de-identification
      stack — assume the relevant rights-holder is the individual
      data subject. Indigenous data sovereignty networks named the
      mismatch: data about Indigenous Peoples is not only data
      about individuals, and the rights to it are not exhausted by
      individual consent. The CARE Principles were authored to
      make that mismatch operative in governance design.#cn()
    ],
    [
      Carroll et al. (2020) name four principles. _Collective
      Benefit_: data ecosystems are designed and operate in ways
      that enable Indigenous Peoples to derive benefit.
      _Authority to Control_: Indigenous Peoples' rights and
      interests in data are recognized and supported. _Responsibility_:
      those working with Indigenous data have a responsibility to
      share how that data is used to support self-determination
      and collective benefit. _Ethics_: rights and well-being of
      Indigenous Peoples are the primary concern at all stages of
      the data life cycle.#cn()
    ],
    [
      The structural move worth naming is the replacement of the
      governance regime rather than its supplementation. The
      familiar pattern in data-governance reform is to add a
      consultation layer to existing privacy frameworks. CARE
      does not do that. CARE specifies what an Indigenous-led
      governance regime would have to satisfy — collective
      benefit, authority, responsibility, ethics — and positions
      existing privacy frameworks as inadequate to the rights at
      stake. The deployment legitimacy question is not "did you
      consult" but "is the governance regime the right one."#cn()
    ],
    [
      The Lowitja Journal 2025 paper documents the Ngangk Yira
      Institute for Change's operationalization. It is one of the
      first detailed case studies of CARE implementation at an
      institutional scale and supplies the practitioner-tier
      evidence the principles paper does not contain. The
      implementation literature is emerging, and the Lowitja
      paper is the anchor; adjacent work from the Australian,
      New Zealand, and US Indigenous Data Sovereignty networks
      will continue to consolidate the evidence base.#cn()
    ],
    [
      For the v2 framework revision, CARE is the case-grounded
      basis for the subobjective *Fairness beyond omission* (4.6). Removing
      a biased feature, omitting a demographic variable, or
      de-identifying a dataset is fairness-by-subtraction; CARE
      specifies fairness-by-replacement of the governance regime.
      The principles are peer-reviewed; the implementation
      literature behind them is still thin, and that is the limit
      the case carries. It stands until multi-institution adoption
      produces an evidence base to read.
    ],
  ),
  beats: (
    "CARE Principles (Carroll et al. 2020): Collective Benefit, Authority to Control, Responsibility, Ethics",
    "Developed by Indigenous Data Sovereignty networks in Aotearoa NZ, Australia, US — explicit non-US-centered leadership",
    "Governance-replacement structure, not governance-supplementation — existing privacy regimes named as inadequate",
    "Lowitja Journal 2025 documents Ngangk Yira Institute implementation — first detailed case study at institutional scale",
    "Supports subobjective *Fairness beyond omission* (4.6) — fairness as positive sovereignty, not subtraction of biased features",
  ),
  approaches: (
    during: (
      [When data about a collective rights-holder is in scope, audit whether the governance regime treats the collective as a rights-holder or only the individuals within it; CARE is the explicit test.],
      [Specify the four CARE conditions — collective benefit, authority, responsibility, ethics — as design constraints on the data architecture from the start, not as consultation overlays added late.],
      [Carry the implementation limit through any policy decision CARE informs; the principles are peer-reviewed but the evidence base behind their implementation is still emerging.],
    ),
    after: (
      [Track implementation outcomes against the four CARE conditions separately; the Lowitja Journal paper is the genre exemplar for what such a tracking report can look like.],
      [Use CARE as the case-grounded basis for the subobjective *Fairness beyond omission* (4.6) — fairness as governance-regime replacement, not as feature-level subtraction.],
      [When asked whether CARE travels, name what the AU/NZ/US Indigenous Data Sovereignty networks supply (sustained institutional leadership, recognized peoplehood frameworks) before asserting transfer to other collective-rights contexts.],
    ),
  ),
  references: (
    [Carroll, S. R., Garba, I., Figueroa-Rodríguez, O. L., et al. (2020), "The CARE Principles for Indigenous Data Governance," _Data Science Journal_ 19(1):43, doi:10.5334/dsj-2020-043.],
    [Ngangk Yira Institute for Change (2025), "Recognising Indigenous data sovereignty and implementing Indigenous data governance at the Ngangk Yira Institute for Change," _The Lowitja Journal_, doi:10.1016/j.lowitj.2025.100030.],
    [Global Indigenous Data Alliance (GIDA), CARE Principles documentation and implementation guidance.],
    [Cross-reference: equity-thread cases in the v2 corpus for the comparative framing.],
  ),
  quote: [The deployment legitimacy question is not 'did you consult.' It is 'is the governance regime the right one.'],
  quote-source: "Editors' synthesis of the CARE Principles and the Ngangk Yira implementation paper.",
  le-insight: [
    CARE is the governance-replacement case for Indigenous
    data: collective benefit, authority, responsibility,
    ethics — published peer-reviewed in 2020 with an emerging
    implementation literature anchored by the Lowitja Journal
    2025 Ngangk Yira paper. Practice-synthesis-tier — the
    principles are peer-reviewed, the deployment cases are
    still consolidating. Future validation ongoing.
  ],
  lens-approach: [
    CARE is the non-US governance-replacement case (induced
    5.1; LENS D5/PT4). LENS uses it in Domain 5 (Navigating
    Sociotechnical Constraints) for the governance-regime
    replacement structure — existing privacy regimes named as
    inadequate to collective rights — and as the case-grounded
    basis for the subobjective *Fairness beyond omission* (4.6): fairness
    as positive sovereignty, not the subtraction of biased
    features. Companion to the equity-thread cases in the v2
    corpus.
  ],
  literature-items: (
    [Carroll et al. (2020), _Data Science Journal_ — CARE Principles],
    [Ngangk Yira (2025), _The Lowitja Journal_ — implementation case study],
    [Global Indigenous Data Alliance, CARE implementation guidance],
  ),
  reflection-list: (
    [Identify a data system in your context whose subjects include a collective rights-holder (Indigenous Peoples, a labor collective, a patient community). Does the governance regime treat the collective as a rights-holder, or only the individuals within it? Run the four CARE conditions as the audit.],
    [The case is included on peer-reviewed principles plus emerging implementation literature. What is the minimum additional evidence — multi-institution adoption, longitudinal outcome data, independent audits of CARE implementations — you would require before relying on CARE as a settled implementation template in your context?],
    [Specify the difference between fairness-by-subtraction (removing a biased feature) and fairness-by-replacement (replacing the governance regime) for a deployment you are considering. Which class of intervention does the rights structure require?],
  ),
  courses: ("LEN 4", "LEN 5", "LEN 8"),
)

// ---- Case 203 — nyc-ll144-aedt-2023 ----
#case(
  number: 203,
  slug: "nyc-ll144-aedt-2023",
  title: "NYC Local Law 144 — Bias Audits as Governance Artifact",
  year: "2023 – present",
  domains-list: ("government", "hiring algorithms", "audit and disclosure"),
  modes-code: "DGK",
  impact: "New York City Local Law 144 of 2021, implemented through Department of Consumer and Worker Protection rules effective July 5 2023, requires employers using \"automated employment decision tools\" (AEDTs) for hiring or promotion decisions in NYC to conduct annual independent bias audits, publish audit summaries, and provide candidate notice; the first national municipal regulation of algorithmic hiring tools at this scope",
  kind: "intervention",
  scale: "small",
  evidence-source: "program-report",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT5",
  leo-anchor: "LEO-4, LEO-5",
  summary: [
    New York City Local Law 144 of 2021 became operationally
    effective on July 5, 2023, after the New York City Department
    of Consumer and Worker Protection finalized implementing
    rules. The law requires employers using "automated employment
    decision tools" (AEDTs) for hiring or promotion decisions in
    NYC to conduct annual independent bias audits, to publish a
    summary of the most recent audit on the employer's website,
    and to provide candidate notice that an AEDT will be used.
    The audit must compute selection-rate and impact-ratio
    metrics by sex, race/ethnicity, and intersectional categories.
    The law was the first municipal regulation of algorithmic
    hiring tools at this scope in the United States and has
    been an influential reference for subsequent state-level
    proposals. Independent academic critiques have surfaced two
    load-bearing limitations: bias audits without bias data —
    employers often lack the protected-attribute data the audit
    metrics require — and null compliance — 18 of 391 employers posted an audit at all, and non-compliance cannot be established. The case pairs with Case 85 (OU
    Analyse — governance-objection dissolved by design), Case
    86 (Gándara community-college predictive equity), and Case
    182 (Amazon hiring AI). The intervention is the audit-as-
    governance-artifact discipline; whether the audits reduce
    actual disparate impact at the hiring level remains under-
    evidenced.
  ],
  sections: (
    [
      Local Law 144 was passed by the New York City Council on
      10 November 2021 and became law without the Mayor's signature on 11 December 2021, the Mayor returning it unsigned on 13 December, with
      the operational rules to be specified by the Department of
      Consumer and Worker Protection. The rulemaking process
      extended through 2022 and into 2023, with two rounds of
      public comment that surfaced substantial industry and
      civil-society engagement. The final rules became effective
      on July 5, 2023, and the law moved from statute to
      operational regime on that date. The scope is municipal —
      employers using an AEDT for a hiring or promotion decision
      affecting a position in New York City — but the practical
      reach is broad because many employers operating nationally
      use AEDTs that touch New York City positions.#cn()
    ],
    [
      The operational requirements have three components. First,
      an annual independent bias audit by a person or entity
      that has not used or developed the AEDT, computing
      selection-rate and impact-ratio metrics by sex, race/
      ethnicity, and the intersectional categories the rules
      specify. Second, publication of a summary of the most
      recent audit on the employer's website, including the
      date the audit was conducted, the date the AEDT was first
      used, and the audit's selection-rate and impact-ratio
      findings. Third, candidate notice — applicants must be
      told that an AEDT will be used and given a process to
      request alternative selection or accommodations. The audit-
      and-notice structure is the artifact the law produces; the
      law does not prohibit AEDTs or set bias thresholds for
      use, and the regulatory theory is disclosure-and-audit
      rather than substantive standards.#cn()
    ],
    [
      The independent academic critiques have surfaced two
      load-bearing limitations. Andrus, Spitzer, Brown, and Xiang's 2021 interviews with 38 algorithmic-fairness practitioners found that they routinely lack access to the demographic data bias detection requires; an employer deploying an AEDT inherits that constraint, and the audits that proceed are either limited to attributes the employer happens to have or rely on imputation methods whose accuracy is itself under-evidenced. Wright et al.'s 2024 study put 155 investigators onto 391 employers and found 18 had posted an audit report and 13 a transparency notice; the posted audits were data tables with minimal explanation, none of them sufficient to inform a job seeker's decision to opt out. The paper names the deeper problem *null compliance* — employers hold enough discretion over whether the law applies that non-compliance cannot be established at all.
    ],
    [
      The case pairs with Case 85 (OU Analyse) for the
      governance-objection-dissolved-by-design thread: OU
      Analyse's deployment surfaced an equity question that the
      design process resolved structurally; Local Law 144's
      audit regime surfaces equity questions structurally
      through disclosure rather than through a design change.
      Pair with Case 86 (Gándara community-college predictive
      equity) for the predictive-equity thread at higher-
      education scale. Pair with Case 182 (Amazon hiring AI) for
      the same domain — the audit regime is the governance
      instrument that, had it been in place, would have applied
      to an internal recruiting tool of Amazon's described
      character had it been deployed against NYC candidates.
      The case is the rare example in the corpus of an
      intervention at the regulatory scale; whether the audit
      regime reduces actual disparate impact at the hiring level
      remains under-evidenced, and the open evaluation question
      is part of the case. A December 2025 New York State
      Comptroller audit sharpened that question from the
      enforcement side: it found the Department of Consumer and
      Worker Protection's enforcement of the law "ineffective" —
      flagging only one likely non-compliant disclosure among the
      32 it reviewed, where the Comptroller identified at least
      17, and finding that roughly 75% of test complaint calls to
      311 never reached the agency — moving the open issue from
      whether disclosure reduces disparate impact to whether the
      regime is being enforced at all.#cn()
    ],
    [
      The load-bearing hedges are explicit. The bias-audit-as-
      governance-artifact intervention is an audit-and-disclosure
      regime, not a substantive-standards regime; the law does
      not require employers to achieve any specific impact ratio
      or to refrain from deploying an AEDT that performs poorly
      on the audit. Whether the disclosure-and-audit structure
      reduces actual disparate impact at the hiring level is an
      empirical question the published evidence does not yet
      resolve. The 5% posting rate and the unprovability of non-compliance are themselves findings the case carries — a governance artifact almost nobody publishes, and whose absence proves nothing, is a weaker instrument than the regulatory theory assumes. The intervention is real and
      its limits are real; the change-control-and-disclosure-as-
      governance-artifacts LEO is anchored by the case at the
      municipal-regulatory scale, and the evaluation arc the
      audit regime opens is at the start of its evidence
      development.
    ],
  ),
  beats: (
    "NYC Local Law 144 of 2021; Department of Consumer and Worker Protection implementing rules effective July 5 2023; first U.S. municipal AEDT regulation at this scope",
    "Three requirements: annual independent bias audit, publication of audit summary, candidate notice and alternative-selection request process",
    "Audit metrics: selection rate and impact ratio by sex, race/ethnicity, intersectional categories; computed by independent auditor not associated with the AEDT",
    "Andrus et al. 2021, 38 practitioner interviews: the demographic data bias detection requires is routinely unavailable; Wright et al. 2024: 18 of 391 employers posted an audit, and null compliance makes non-compliance unprovable",
    "Pair with Case 85 (OU Analyse), Case 86 (Gándara), Case 182 (Amazon hiring AI); whether audits reduce actual disparate impact remains under-evidenced",
  ),
  approaches: (
    during: (
      [Specify the protected-attribute data the audit metrics will require before the audit is commissioned; the Andrus et al. critique names data availability as the precondition the regulatory theory does not provide for, and the data infrastructure has to be built in advance of the audit.],
      [Choose an independent auditor whose methodology will produce a documentation-detailed audit rather than a single-paragraph summary; the thinness of the posted audits the Wright et al. study found is itself a deployment choice, and the choice of auditor is where it surfaces.],
      [Build the candidate-notice and alternative-selection process as part of the deployment, not as a compliance afterthought; the candidate-side governance interaction is the seam at which the disclosure-and-audit structure becomes contestable for the affected person.],
    ),
    after: (
      [Carry the load-bearing hedges — disclosure-and-audit regime not substantive-standards regime; reduction of actual disparate impact under-evidenced; a 5% audit-posting rate, and non-compliance that cannot be established — into print without softening; the case's pedagogical value depends on the intervention's limits being preserved.],
      [Pair in syllabi with Case 85 (OU Analyse) so the governance-objection-dissolved-by-design and governance-objection-surfaced-by-disclosure threads are taught together as complementary intervention forms.],
      [Use the case as the change-control-and-disclosure-as-governance-artifacts anchor at the municipal-regulatory scale; the curricular target is the discipline of building the data infrastructure and the audit-quality criteria the disclosure regime presupposes.],
    ),
  ),
  references: (
    [New York City Department of Consumer and Worker Protection, _Rules Implementing Local Law 144 of 2021 (Automated Employment Decision Tools)_, effective July 5, 2023.],
    [Wright, L., Muenster, R. M., Vecchione, B., Qu, T., Cai, S., Smith, A., Metcalf, J., & Matias, J. N. (2024), "Null Compliance: NYC Local Law 144 and the Challenges of Algorithm Accountability," in _Proceedings of FAccT 2024_, doi:10.1145/3630106.3658998.],    [Engler, A. (2023), "The EU and U.S. diverge on AI regulation: A transatlantic comparison and steps to alignment," _Brookings Institution_ commentary — regulatory-comparative frame for the municipal intervention.],
    [Office of the New York State Comptroller (2025), audit of the Department of Consumer and Worker Protection's enforcement of Local Law 144 — finding enforcement "ineffective" (December 2025).],
  ),
  quote: [The audit-and-notice regime is a disclosure-and-audit instrument, not a substantive-standards instrument; whether it reduces actual disparate impact at the hiring level is an empirical question the published evidence does not yet resolve.],
  quote-source: "Editors' synthesis of the Local Law 144 rule text and the Andrus et al. and Wright et al. academic critiques.",
  le-insight: [
    NYC Local Law 144 is the bias-audit-as-governance-artifact
    intervention at municipal-regulatory scale. The audit-and-
    notice regime is the first national municipal regulation of
    algorithmic hiring tools at this scope; the Andrus et al. and
    Wright et al. critiques name the data-availability and
    audit-quality limitations the regulatory theory does not
    provide for. The intervention is real; whether it reduces
    actual disparate impact at the hiring level is under-
    evidenced and is the open evaluation question the case
    carries.
  ],
  lens-approach: [
    NYC Local Law 144 is the change-control-and-disclosure-as-
    governance-artifacts case at municipal-regulatory scale
    (induced 5.4; LENS D5/PT5; LEO-4 and LEO-5). LENS uses it
    in Domain 5 (Navigating Sociotechnical Constraints) for the
    audit-as-governance-instrument discipline. Pair with Case
    85 (OU Analyse governance-objection-dissolved-by-design),
    Case 86 (Gándara community-college predictive equity), and
    Case 182 (Amazon hiring AI). The intervention is real and
    its limits are real; the disclosure-and-audit structure is
    not a substantive-standards structure, and the reduction-
    of-actual-disparate-impact evaluation question is at the
    start of its evidence development.
  ],
  literature-items: (
    [NYC DCWP rules implementing Local Law 144 (effective July 5 2023)],
    [Andrus, Spitzer, Brown & Xiang (2021), FAccT — "What We Can't Measure, We Can't Understand": demographic-data procurement for fairness audits, doi:10.1145/3442188.3445888],
    [Wright et al. (2024), FAccT — "Null Compliance," 391-employer compliance study, doi:10.1145/3630106.3658998],
  ),
  reflection-list: (
    [Identify a regulated decision domain in your setting in which a disclosure-and-audit regime has been proposed or adopted. What is the protected-attribute data infrastructure the audit metrics will require, and is the infrastructure in place before the regime's effective date?],
    [Specify the audit-quality criteria you would apply when commissioning an independent audit. What is the format that distinguishes a documentation-detailed audit from a single-paragraph compliance summary, and what is the decision rule for accepting an auditor's methodology?],
    [The Local Law 144 regime is at the start of its evidence development on whether disclosure-and-audit reduces actual disparate impact. Pick a regulatory intervention in your domain and ask: what is the empirical-evaluation arc that would surface the intervention's effect, and what evidence-development infrastructure would the arc require?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 204 — cruise-robotaxi-pedestrian-drag ----
#case(
  number: 204,
  slug: "cruise-robotaxi-pedestrian-drag",
  title: "Cruise Robotaxi — Pedestrian Drag",
  year: "2023 – 2024",
  domains-list: ("autonomous",),
  modes-code: "GDH",
  impact: "GM Cruise robotaxi struck a pedestrian and then dragged her ~20 feet; California suspended Cruise's permit; the program was substantially shut down",
  diagram: dgm.dgm-timeline(
    (("collision", "—"), ("drag", "20 ft"), ("partial video", "to regulator"), ("permit suspended", "DMV"), ("shutdown", "GM")),
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
      The consequences cascaded. The California DMV suspended Cruise's driverless
      permits for misrepresenting the incident, NHTSA opened a defects
      investigation, and in September 2024 Cruise settled with NHTSA (a
      \$1.5 million consent order) and the DOJ (admitting it had submitted a
      false report, a \$500,000 penalty). In December 2024 General Motors
      ended the story outright — halting funding for Cruise's robotaxi
      development and folding the unit into GM after more than \$10 billion
      in spend, with roughly half the remaining staff cut in early 2025. A
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
  beats: (
    "Driverless robotaxi oversight rests on operator-controlled disclosure to regulators who cannot inspect directly",
    "Pedestrian struck by another car was hit then dragged by a Cruise vehicle",
    "Whether commercial autonomy programs disclose fully under pressure becomes the institutional question",
    "Permit suspended; NHTSA opened investigation; GM shut down commercial operations entirely",
    "What auditable pre-committed disclosure commitment commercial autonomy should require before operating",
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
    autonomy program. This frontier case carries the
    institutional-governance treatment of the October 2023
    incident; Case 190 (Part VII, What Fails) is its paired
    disclosure-posture treatment of the same event.
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
  scale: "big",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-5",
)
