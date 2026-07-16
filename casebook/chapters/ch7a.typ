// ============================================================
// Part VII — Algorithms, Governance & Public Systems · What Fails (Chapter 13)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part VII — Algorithms, Governance & Public Systems",
  number: "13",
  title: "Algorithms, Governance & Public Systems — What Fails",
  subtitle: "When delegation to systems outruns accountability for them.",
  epigraph: [No one could say who had decided, because no one had.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Case 180 — healthcare-gov-launch ----
#case(
  number: 180,
  slug: "healthcare-gov-launch",
  title: "Healthcare.gov Launch",
  year: "2013",
  domains-list: ("gov",),
  modes-code: "KTG",
  impact: "~27,000 federal-marketplace enrollments in the first month vs. a 7M first-year target; hundreds of millions in remediation",
  diagram: dgm.dgm-healthcaregov,
  kind: "failure",
  summary: [
    When Healthcare.gov launched on 1 October 2013 it collapsed under load
    it had never been tested for — about 27,000 enrollments through the
    federal marketplace in its first month against a seven-million first-year
    target. The people assembled to build it knew insurance
    markets and government programs but not technology product launches; key
    technical roles went unfilled, no office clearly owned the integration
    (CMS thought the contractor CGI was the lead integrator; CGI did not),
    and no end-to-end test was run before launch. The fix-it team that
    rescued the site became the U.S. Digital Service. At root it was a
    capability mismatch at scale: the organization lacked the human
    capabilities the system required, and the governance chain surfaced no
    signal of the gap before launch. It is the rare governance failure that
    produced lasting institutional reform.
  ],
  sections: (
    // -- Background --
    [
      Healthcare.gov was the federal insurance marketplace at the center of
      the Affordable Care Act — a high-visibility online system that millions
      would hit on day one, with a political deadline that could not slip. The
      people assembled to build it understood insurance markets and large
      government programs, but not the launch of a consumer technology product
      at that scale, and key technical positions went unfilled — so the very
      expertise the launch most needed was the expertise the team most
      lacked.#cn()
    ],
    // -- What Happened --
    [
      There was no clear division of responsibility among the many government
      offices involved; CMS believed the contractor CGI was the lead system
      integrator, and CGI did not share that understanding — so the single
      most important role on the program was one no party believed it held.
      No end-to-end test was run before launch, meaning the assembled pieces
      were never exercised together as a user would exercise them. The site
      went live on 1 October 2013 and immediately collapsed under load it had
      never been validated for: about 27,000 enrollments through the
      federal marketplace in its first month against a seven-million
      first-year target.#cn()
    ],
    // -- The Investigation --
    [
      Reviews by the GAO and the HHS Inspector General found that no single
      person had a clear understanding of the project's status, and that the
      governance chain had no signal that would surface the readiness gap
      before launch. With ownership diffused across offices and no integration
      test to fail, the chain could report progress at every level while the
      whole remained untested — a structure in which bad news had nowhere to
      enter and no one positioned to act on it.#cn()
    ],
    // -- The Capability Gap --
    [
      Healthcare.gov is a capability failure wearing a technology costume.
      The site was salvageable in weeks once the right people arrived, which
      is the clearest proof that the code was never the binding constraint;
      the original failure was that the wrong people had been assembled, and
      that the governance chain meant to catch the mismatch had no mechanism
      to see it. The missing capability was the matching of human capability
      to system requirement — and the institutional signal that would have
      flagged its absence before a deadline locked the launch in place.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The rescue effort pulled together the team that became the U.S. Digital
      Service — a permanent institution born from a failure visible on the
      news every night, its mandate built directly from what the launch had
      lacked.#cn() It is the rare case in this book of a governance failure
      that produced durable organizational reform, and a reminder that the
      technical narrative ("the website crashed") often hides the real one:
      the wrong capability was assembled, unnoticed, by a chain that had no
      way to notice.
    ],
  ),
  beats: (
    "Federal ACA marketplace built under fixed political deadline by teams lacking consumer-launch expertise",
    "No clear integrator; no end-to-end test; site collapsed serving 27,000 against seven-million target",
    "GAO and HHS-IG found no one understood project status; governance chain surfaced no readiness signal",
    "Capability failure wearing a technology costume; missing match of human capability to system requirement",
    "Rescue team became U.S. Digital Service; rare case producing durable institutional reform",
  ),
  references: (
    [U.S. GAO, Healthcare.gov reports (2014–2016) — the launch, the capability gaps, and the absent end-to-end testing.],
    [HHS Office of Inspector General, _Case Study of CMS Management of the Federal Marketplace_, OEI-06-14-00350 (2016) — unclear ownership and the CMS/CGI integration confusion.],
    [HHS OIG (2016) — "no single person had a clear understanding of the project's status" (quoted).],
    [J. Pahlka, _Recoding America_ (2023) — the founding of the U.S. Digital Service out of the rescue.],
    [Eaves & Goldenfein, "The Healthcare.gov Failure" (Harvard, 2014); Mergel et al. (2018), digital-government literature.],
  ),
  quote: [No single person had a clear understanding of the project's status.],
  quote-source: "Paraphrasing the HHS Office of Inspector General review of Healthcare.gov, 2016",
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
    program, and in LEN 8 to discuss the founding of USDS as
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
    [No single office believed it owned integration, so the gap stayed invisible until launch day. In a project you know, who actually owns the seam between components — and what signal would let them, rather than the news, learn the system is not ready?],
  ),
  approaches: (
    during: (
      [Match assembled human capability to the system's real requirements at staffing time — fill the technical roles a consumer-scale launch demands before committing to the deadline.],
      [Name a single accountable integration owner and confirm every party shares that understanding, so no critical role is one each office assumes someone else holds.],
      [Gate launch on a full end-to-end test that exercises the assembled system the way users will, not on per-component sign-offs.],
    ),
    after: (
      [Build a governance signal that can surface a readiness gap upward, with someone holding the authority to delay a politically fixed launch date.],
      [Independently audit project status against demonstrated capability, since a diffuse chain can report green at every level while the whole remains untested.],
      [Institutionalize the rescue capability — as USDS did — so the talent that fixes a launch outlives the crisis that summoned it.],
    ),
  ),
  courses: ("LEN 1", "LEN 5", "LEN 7", "LEN 6",),
  scale: "big",
  induced-anchor: "1.1",
  lens-anchor: "D1/PT1",
  clo-anchor: "CLO-1",
  evidence-source: "investigation",
)

// ---- Case 181 — eu-human-brain-project-top-down-vision ----
#case(
  number: 181,
  slug: "eu-human-brain-project-top-down-vision",
  title: "EU Human Brain Project — Top-Down Vision That Unraveled",
  year: "2013 – 2023",
  domains-list: ("neuroscience", "science policy (EU)"),
  modes-code: "GN",
  impact: "A €1B EU-flagship initiative to simulate a living brain governed top-down under a single PI; the project unraveled as the field disputed both feasibility and approach, restructured under protest, and concluded in 2023 with the founding framing abandoned",
  kind: "failure",
  scale: "big",
  evidence-source: "journalism",
  evidence-flag: "journalism-tier",
  induced-anchor: "5.1",
  lens-anchor: "D1+D5/PT4",
  clo-anchor: "CLO-1, CLO-5",
  summary: [
    The EU Human Brain Project, launched in 2013 as one of the EU's
    Future and Emerging Technologies Flagship programs, set out to
    build a computer simulation of a living brain under a single
    principal investigator (Henry Markram). The governance model was
    top-down: a central vision, a small leadership group, a
    decade-long funding commitment of about €1 billion, and a
    research community asked to align around the simulation goal. The
    case is drafted as the paired contrast to the BRAIN Initiative
    (Case 198), not as a standalone study: the same era, the same
    field-scale ambition, opposite governance models, opposite
    trajectories. The evidence base is largely journalism — MIT
    Technology Review retrospective, _In Silico_ documentary, science
    press, the project's own restructuring records — so the
    evidence-tier flag is rendered under the case title; future
    validation will continue. The teaching point survives the flag:
    the governance choice (top-down single-PI versus distributed
    working-group) was the variable that materially changed the
    trajectory of the two programs at field scale.
  ],
  sections: (
    [
      In 2013 the European Commission selected the Human Brain Project
      as one of two Future and Emerging Technologies Flagship
      programs, with a ten-year horizon and approximately €1 billion
      in committed funding. The founding vision, articulated and
      championed by Henry Markram, was a computer simulation of a
      living human brain. The governance was top-down: a small
      leadership group, a unified research framing, and a community
      of European neuroscience labs asked to organize around the
      simulation goal.#cn()
    ],
    [
      The contestation surfaced quickly. Open letters from a sizable
      fraction of the European neuroscience community questioned both
      the feasibility of the simulation goal and the project's
      governance — the breadth of expertise on the leadership group,
      the relationship between the cognitive neuroscience the field
      practiced and the molecular-scale simulation the project
      proposed, and the absence of a process for scope revision. The
      EU commissioned a mediation and restructuring exercise that
      broadened the leadership and re-scoped the research agenda
      around infrastructure platforms rather than a single
      simulation. The project ran to its scheduled 2023 conclusion;
      the founding framing was not what it delivered.#cn()
    ],
    [
      The case pairs directly with the BRAIN Initiative (Case 198).
      The two programs launched within months of each other, at
      comparable field-scale ambition, in the same decade of
      neuroscience. The governance models were not comparable: BRAIN
      organized a working group that visibly contested its own
      composition and re-baselined its scope on the public record;
      HBP organized around a single PI and a unified framing, and the
      community had to mediate the project away from that framing.
      The trajectory difference is not a verdict on either field; it
      is evidence about the governance variable at the launch
      moment.#cn()
    ],
    [
      The evidence-tier flag rendered under the case title is
      load-bearing here. The detailed account of the early
      contestation, the open letters, the mediation, and the
      restructuring lives largely in MIT Technology Review's
      retrospective, in the _In Silico_ documentary, and in
      science-press coverage from _Science_, _Nature_, and the
      European press; the project's own restructuring records add
      the formal layer. The case is teachable from this material —
      the structural pattern is consistent across sources — but the
      specific magnitudes and the exact language of the early
      contestation should be re-confirmed against primary sources
      before publication. Future validation will continue.#cn()
    ],
    [
      What the pair (Cases 198 + 79) teaches is that the governance
      model — distributed working-group with public-record
      contestation versus top-down single-PI with unified framing —
      is itself the variable that explains why one field-scale
      program survives and adapts while the other unravels and is
      mediated away from its founding goal. The capability
      deliverable at program launch is not the vision and not the
      tools; it is a governance architecture that can absorb
      contestation, document scope drift, and re-baseline without
      losing the program. BRAIN had one; HBP had to be retrofitted
      one.#cn()
    ],
  ),
  beats: (
    "EU FET Flagship 2013 with ~€1B over a decade and a single-PI top-down vision: simulate a living brain",
    "Community contestation surfaces quickly: feasibility, leadership breadth, no scope-revision process",
    "EU commissions mediation and restructuring; scope re-shaped around infrastructure platforms, not simulation",
    "Project runs to 2023 conclusion; founding framing is not what was delivered",
    "Pair with BRAIN (Case 198): same era and ambition, opposite governance models, opposite trajectories — governance is the variable",
  ),
  approaches: (
    during: (
      [Design the scope-revision process before the program launches; a program that cannot re-scope without external mediation is a program designed to fail open.],
      [Stress-test the leadership group's breadth before launch: does it span the disciplines the program will have to coordinate, or is it narrow enough to be captured by the founding framing?],
      [Treat early community contestation as governance information, not as friction; absorbing it programmatically is the capability the program needs to demonstrate.],
    ),
    after: (
      [When journalism-tier sourcing is what the record provides, flag it under the title and carry the standing "future validation ongoing" language into the printed case — the teaching value survives the flag, but the magnitudes do not.],
      [Commission a structured retrospective on the governance variable specifically: who held authority, how scope drift was named, how the program re-baselined. This is the documentation a future field-scale launch needs more than another success narrative.],
      [Cross-reference governance evidence across paired programs: a single program's trajectory is not evidence about governance; a paired comparison at the same era and ambition is.],
    ),
  ),
  references: (
    [MIT Technology Review (2021), retrospective on big-science brain projects — the principal critical assessment of HBP alongside BRAIN.],
    [_In Silico_ (2020), documentary by Noah Hutton — long-form follow of Markram and the HBP through the contestation period.],
    [_Science_ and _Nature_ contemporaneous coverage of the open letters and the mediation/restructuring (2014–2016).],
    [Human Brain Project final reports (2023) — the project's own restructuring and concluding documentation.],
    [Alivisatos et al. (2012), _Neuron_ — the BRAIN position paper that is the paired contrast (Case 198).],
  ),
  quote: [A program that cannot re-scope without external mediation is a program designed to fail open.],
  quote-source: "Editors' synthesis of the Human Brain Project record.",
  le-insight: [
    The EU Human Brain Project is the paired contrast to the BRAIN
    Initiative (Case 198): same era, same field-scale ambition,
    opposite governance models, opposite trajectories. Top-down
    single-PI governance with a unified framing did not survive
    community contestation; the program was mediated away from its
    founding goal and ran to its scheduled conclusion in 2023.
    Evidence base is journalism-tier and the flag is rendered
    under the title; future validation will continue.
  ],
  lens-approach: [
    HBP is the field-scale failure case in the v2 corpus
    (induced 5.1; LENS D1+D3/PT4) drafted as the contrast to BRAIN
    (Case 198). LENS uses the pair in Domain 1 (Systems Analysis)
    for the governance-variable comparison and in Domain 5
    (Navigating Sociotechnical Constraints) for the
    contestation-absorption capability. The
    evidence-tier flag is binding until primary-source
    confirmation completes; the structural pattern survives the
    flag, the specific magnitudes do not.
  ],
  literature-items: (
    [MIT Technology Review (2021), retrospective on big-science brain projects],
    [_In Silico_ (2020), documentary, dir. Noah Hutton],
    [Human Brain Project final reports (2023)],
  ),
  reflection-list: (
    [Identify a large program in your domain that ran a top-down single-PI governance model. What was the scope-revision process designed in at launch, and what was the process the program actually used when contestation arrived?],
    [Specify the paired-program comparison you would commission to learn from a field-scale program's trajectory, rather than from the program alone. What is the matched comparison case and what is the governance variable you are isolating?],
    [The evidence base for this case is largely journalism. What primary-source confirmation would you require — interviews, restructuring documents, mediation reports — before relying on this case for a deployment decision?],
  ),
  courses: ("LEN 1", "LEN 7", "LEN 8"),
)

// ---- Case 182 — amazon-hiring-ai-deprecated ----
#case(
  number: 182,
  slug: "amazon-hiring-ai-deprecated",
  title: "Amazon Hiring AI — Trained Bias, Deprecated 2018",
  year: "2014 – 2018",
  domains-list: ("technology", "hiring algorithms", "machine learning"),
  modes-code: "DKN",
  impact: "Amazon internal recruiting-algorithm project initiated 2014, deprecated 2017 – 2018 after engineers determined the model could not be debiased; trained on ten years of historical resume data in which men predominated in technical roles; the model downgraded resumes containing the word \"women's\" and resumes from all-women's colleges; Reuters single-source investigation Oct 10 2018",
  kind: "failure",
  scale: "big",
  evidence-source: "journalism",
  evidence-flag: "journalism-tier",
  induced-anchor: "8.1",
  lens-anchor: "D2+D4/PT6",
  clo-anchor: "CLO-4, CLO-5",
  summary: [
    Jeffrey Dastin's Reuters investigation, published October 10,
    2018, reported that Amazon had initiated an internal
    recruiting-algorithm project in 2014 with the goal of
    automating resume screening for technical roles, and had
    deprecated the project in 2017 – 2018 after engineers
    determined the model could not be debiased. The model was
    trained on ten years of historical resume data in which men
    predominated in technical roles. The training-data composition
    encoded an association between gender-correlated features and
    role suitability; engineers found that the model downgraded
    resumes containing the word "women's" (as in "women's chess
    club captain") and downgraded resumes from all-women's
    colleges. Attempts to remove the offending features
    surfaced additional features carrying the same signal — the
    trained bias could not be debiased through feature engineering
    inside the model. The case rests on Reuters single-source
    reporting; Amazon never published the technical detail. The
    journalism-tier evidence-flag under the title carries the
    standing language. The load-bearing teaching point — that
    trained bias cannot in general be debiased through
    downstream feature manipulation — is the case's curricular
    value even as the specific case details remain limited to
    journalism-tier sourcing.
  ],
  sections: (
    [
      The recruiting-algorithm project that Reuters reported on
      was an internal Amazon effort initiated in 2014, with the
      stated goal of automating the early-stage screening of
      resumes for technical roles. The architectural premise was
      to train a model on historical resume data — applicants
      who had been hired and applicants who had not, across the
      preceding decade — and to score new resumes against the
      learned pattern. The premise was operationally appealing
      to a company hiring at Amazon's scale and was consistent
      with contemporary practice in algorithmic hiring across
      the technology sector. The seam the project's deprecation
      surfaced is structural to the premise itself.#cn()
    ],
    [
      The training data composition encoded the gender imbalance
      of historical Amazon technical hiring. Men predominated in
      technical roles across the ten-year window, and the
      resumes that had been hired carried gender-correlated
      features — wording, extracurricular activities, college
      affiliations, vocabulary choice — that the model learned
      to associate with hire-suitability. The Reuters
      investigation reports that engineers found the model
      downgrading resumes that contained the word "women's" (in
      contexts like "women's chess club captain") and downgrading
      resumes from all-women's colleges. Attempts to remove the
      offending features did not eliminate the pattern; the
      remaining features carried correlated signal that
      reproduced the same downgrade. The trained bias was
      structural to the training-data composition and could not
      be debiased through downstream feature engineering inside
      the model architecture.#cn()
    ],
    [
      Amazon deprecated the project in 2017 – 2018 and did not
      deploy the model at production scale for hiring decisions.
      The deprecation is the load-bearing decision in the case:
      the engineering team determined that the model could not
      be made fair, and the organization withdrew the project
      rather than deploying it. The case's evidentiary structure
      rests on Reuters' single-source reporting — the company
      never published the technical detail, and the specific
      mechanism by which engineers verified the irreducibility
      of the bias is not available in the public record at the
      level of a peer-reviewed study or a regulator's audit. The
      evidence-flag under the title is binding: the case is
      journalism-tier, and future validation of the specific
      technical detail remains ongoing in the sense that the
      public record has not deepened beyond the 2018
      investigation.#cn()
    ],
    [
      The case pairs with Case 186 (Bartlett mortgage) for the
      fairness-through-unawareness-fails thread: removing the
      gender feature from the training data does not eliminate
      the gender signal when the remaining features carry
      correlated signal. Pair with Case 48 (Johnson school
      surveillance) for the algorithmic-employment-and-
      surveillance-decisions parallel at a different population.
      Pair with Case 88 (LiveHint AI bias across foundation
      models) for the trained-bias-in-foundation-models thread
      at contemporary scale. The Amazon case is unusual in that
      the project was deprecated rather than deployed; most
      cases in the corpus document deployments that ran for
      years before withdrawal, and the case's curricular value
      is partly that the engineering team's verification of
      irreducibility led to the decision not to deploy.#cn()
    ],
    [
      The load-bearing teaching point is that trained bias
      cannot in general be debiased through downstream feature
      manipulation. When the training-data composition encodes a
      historical disparity in the outcome the model is being
      trained to predict, the model will learn to reproduce the
      disparity through whatever features remain in the input
      space, and the remediation is not feature engineering. The
      remediation is at the construct-validity layer — what is
      the model being asked to predict, and is the historical
      record from which the prediction is being learned a
      defensible target — or at the deployment-architecture
      layer — what is the role of the model in the decision
      process, and what human-in-the-loop infrastructure
      surrounds it. The case's evidence-tier hedge is binding:
      the journalism-tier sourcing limits the specificity of the
      teaching point's mechanism, but the structural form of
      the teaching point — choose the construct, then ask
      whether the historical record supports learning to predict
      it — is the case's curricular anchor.
    ],
  ),
  beats: (
    "Amazon internal recruiting-algorithm project 2014 – 2018; goal: automate resume screening for technical roles; trained on 10 years of historical resume data",
    "Training-data composition encoded gender imbalance; model downgraded resumes containing \"women's\" and resumes from all-women's colleges",
    "Feature-engineering attempts to debias failed: remaining features carried correlated signal reproducing the same downgrade pattern",
    "Amazon deprecated the project 2017 – 2018; did not deploy at production scale; deprecation is the load-bearing decision",
    "Evidence is Reuters single-source reporting (Oct 10 2018); Amazon never published technical detail; journalism-tier flag binding",
  ),
  approaches: (
    during: (
      [Choose the construct the model is being asked to predict with construct validity in mind before training begins; the Amazon case demonstrates that when the historical record encodes a disparity in the outcome, the disparity will be learned regardless of feature engineering at the input layer.],
      [Verify the irreducibility of bias as a deployment gate; the engineering team's determination that the model could not be debiased is what enabled the deprecation decision, and the verification discipline is the curricular target.],
      [Treat the deprecation decision as the operational artifact that the verification supports; an organization able to deprecate a project at the verification finding is operating with a different decision architecture than one that defaults to deployment.],
    ),
    after: (
      [Carry the journalism-tier evidence-flag under the title without softening; the case rests on single-source reporting and the future-validation-ongoing language is binding for the specific technical detail.],
      [Pair in syllabi with Case 186 (Bartlett) so the fairness-through-unawareness-fails thread is taught at adjacent scales and in adjacent decision domains.],
      [Use the case to anchor the construct-choice CLO; the curricular target is the discipline of refusing to deploy when the historical record from which the model would be learned does not defensibly support the prediction the deployment requires.],
    ),
  ),
  references: (
    [Dastin, J. (2018), "Amazon scraps secret AI recruiting tool that showed bias against women," _Reuters_, October 10, 2018 — the primary investigation.],
    [Subsequent commentary: Kim, P. T. (2017), "Data-Driven Discrimination at Work," _William & Mary Law Review_ 58(3):857–936 — academic frame for the structural pattern the Amazon case instantiates.],
    [Raghavan, M., Barocas, S., Kleinberg, J., & Levy, K. (2020), "Mitigating Bias in Algorithmic Hiring: Evaluating Claims and Practices," _Proceedings of FAT\* 2020_, pp. 469–481 — survey of the algorithmic-hiring landscape into which the Amazon case is positioned.],
    [Bogen, M., & Rieke, A. (2018), _Help Wanted: An Examination of Hiring Algorithms, Equity, and Bias_, Upturn report — contemporary practice survey of algorithmic hiring at the time of the Amazon deprecation.],
  ),
  quote: [Trained bias cannot in general be debiased through downstream feature manipulation; when the training-data composition encodes a historical disparity in the outcome the model is being trained to predict, the disparity will be reproduced through whatever features remain in the input space.],
  quote-source: "Editors' synthesis of the Reuters investigation (Dastin, 2018) and the surrounding algorithmic-hiring literature.",
  le-insight: [
    Amazon Hiring AI is the trained-bias-cannot-be-debiased case
    at major-technology-company scale. The engineering team
    determined that the model could not be made fair through
    feature engineering and the organization deprecated the
    project rather than deploying it. The journalism-tier
    evidence-flag is binding for the specific technical detail;
    the structural teaching point — choose the construct, then
    ask whether the historical record supports learning to
    predict it — is the case's curricular anchor.
  ],
  lens-approach: [
    Amazon Hiring AI is the choose-the-construct case at hiring-
    algorithm scale (induced 8.1; LENS D2+D5/PT6; CLO-4 and
    CLO-5). LENS uses it in Domain 2 (Iterative Development)
    for the irreducibility-verification-as-deployment-gate
    discipline and in Domain 4 (Test and Evaluation) for the
    construct-validity-at-the-training-data-layer anchor. Pair
    with Case 186 (Bartlett mortgage), Case 48 (Johnson school
    surveillance), and Case 88 (LiveHint AI bias across
    foundation models). The journalism-tier evidence-flag is
    binding; the structural teaching point is the case's
    curricular value.
  ],
  literature-items: (
    [Dastin (2018), Reuters — Amazon hiring-AI deprecation investigation],
    [Raghavan et al. (2020), FAT\* — algorithmic-hiring landscape survey],
    [Bogen & Rieke (2018), Upturn — algorithmic-hiring practice survey],
  ),
  reflection-list: (
    [Identify a deployment in your domain whose training-data composition encodes a historical disparity in the outcome the model is being trained to predict. What construct-validity question would have to be answered before training proceeds, and who has authority to refuse training when the answer is "no"?],
    [Specify the irreducibility-verification protocol your team would run before deploying a model whose training data is known to carry historical bias. What is the operational threshold for "cannot be debiased," and what is the decision rule when the threshold is met?],
    [Amazon deprecated the project rather than deploying it. Pick a deployment in your domain that proceeded despite known bias-irreducibility findings, and ask: what would have had to be different in the decision architecture for the verification finding to have led to deprecation instead of deployment?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 183 — uber-atg-tempe-fatality ----
#case(
  number: 183,
  slug: "uber-atg-tempe-fatality",
  title: "Uber ATG / Tempe Fatality",
  year: "2018",
  domains-list: ("autonomous",),
  modes-code: "TNGH",
  impact: "One pedestrian killed — the first fatality involving a self-driving vehicle striking a pedestrian",
  diagram: dgm.dgm-uber,
  kind: "failure",
  summary: [
    On the night of 18 March 2018 a modified Volvo running Uber's
    self-driving system struck and killed Elaine Herzberg as she crossed a
    road in Tempe, Arizona — the first pedestrian killed by an autonomous
    vehicle. The NTSB found the safety operator had been watching a video on
    her phone, but placed heavy blame on Uber: it had not recognized the
    risk of automation complacency, trained for it, or enforced its own
    no-phone policy. The system itself was programmed not to brake when a
    crash was deemed unavoidable, and could not classify a pedestrian who was
    not near a crosswalk. The human was kept in the loop as a passive
    monitor — a role the NTSB noted is chronically unperformable — with no
    infrastructure to make it work. Uber ATG is the book's defining
    human-AI-teaming case.
  ],
  sections: (
    // -- Background --
    [
      Uber's Advanced Technologies Group tested self-driving cars on public
      roads with a safety operator behind the wheel, present to take over if
      the automation failed. The role was passive surveillance: watch a
      system that drove itself well almost all of the time, and intervene in
      the rare moment it did not.#cn() That structure asks a person to stay
      vigilant for an event that almost never comes, the precise condition
      under which human attention is known to lapse — so the role was set up
      to demand exactly the kind of sustained monitoring that people are
      least able to deliver.
    ],
    // -- What Happened --
    [
      On 18 March 2018 a modified Volvo SUV in autonomous mode struck and
      killed Elaine Herzberg as she crossed a road at night in Tempe,
      Arizona — the first pedestrian killed by a self-driving vehicle. The
      safety operator was looking down at a video on her phone in the seconds
      before impact.#cn() The phone was not an aberration but the predictable
      filling of an attention vacuum: a role with nothing to do for hours
      invites exactly that drift, and nothing in the car's design or the
      monitoring around the seat pulled the operator's eyes back to the road
      when it finally mattered.
    ],
    // -- The Investigation --
    [
      The NTSB's probable cause centered on the operator's failure to monitor
      the road, but it placed heavy blame on Uber, which "did not adequately
      recognize the risk of automation complacency and develop effective
      countermeasures": training was inadequate and the no-phone policy
      unenforced.#cn() Naming the company alongside the operator was the
      board's way of locating the fault in the design of the role rather than
      the lapse of the person filling it — the policy existed on paper but
      had no mechanism behind it to make compliance the default. The system
      compounded the human gap. It was programmed
      not to apply emergency braking when a crash was judged unavoidable —
      removing the automated backstop — and it could not classify an object
      as a pedestrian unless it was near a crosswalk, so the very situation on
      the road that night fell into a blind spot the software was not built
      to see.#cn()
    ],
    // -- The Capability Gap --
    [
      A human was retained not because the designers believed a person could
      meaningfully catch the failure, but because the regulatory and public
      posture required one present. The role of "monitor" was assigned
      without the interface, training, or authority to make it performable —
      a placeholder for safety rather than an instrument of it.
      As the NTSB chairman put it, "humans tend to tune out when tasked with
      monitoring automated systems that work well most of the time." The
      design was safe only on the assumption that the failure case would not
      arrive — until it did, and the assumption that had quietly held the
      whole arrangement together was paid for with a life.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Uber suspended testing, later exited self-driving, and the case
      reshaped how the industry and regulators treat safety drivers — toward
      two-operator teams, driver-monitoring systems, and honest accounting of
      what a monitor can and cannot do.#cn() Each of those reforms is a
      concession that the single passive observer had been an unsupported
      role all along: a second operator shares the vigilance burden, and
      driver-monitoring closes the attention vacuum the original design left
      open. Its lasting contribution is the
      reframing of passive monitoring as a role that must be engineered to be
      performable — or not assigned at all.
    ],
  ),
  beats: (
    "Uber ATG tested self-driving cars using safety operators as passive surveillance of rare failures",
    "A Volvo killed Elaine Herzberg in Tempe; the operator was watching a phone video",
    "NTSB faulted Uber for ignoring automation complacency; emergency braking was suppressed and pedestrian classification limited",
    "The monitor role lacked interface, training, and authority; design assumed failure would never arrive",
    "Uber exited self-driving; industry shifted toward two-operator teams and driver-monitoring systems",
  ),
  references: (
    [NTSB, _Collision Between Vehicle Controlled by Developmental Automated Driving System and Pedestrian_, Highway Accident Report HAR-19/03 (2019) — the Tempe collision and probable cause.],
    [NTSB HAR-19/03 (2019) — the safety operator's distraction (watching a video) before impact.],
    [NTSB HAR-19/03 (2019) — Uber "did not adequately recognize the risk of automation complacency"; training and policy failures (quoted in part).],
    [NTSB HAR-19/03 (2019) — the suppressed emergency braking and the inability to classify a pedestrian away from a crosswalk.],
    [NTSB Chairman R. Sumwalt, Tempe hearing remarks (2019) — "humans tend to tune out…" (quoted).],
    [R. Parasuraman & D. Manzey (2010), complacency in automation; L. Bainbridge (1983), "Ironies of Automation."],
  ),
  quote: [Repeatedly, humans tend to tune out when tasked with monitoring automated systems that work well most of the time.],
  quote-source: "NTSB Chairman Robert Sumwalt, Uber Tempe hearing remarks, 2019",
  le-insight: [
    Uber ATG is the defining case for the LENS Human-AI Teaming
    competency. A human was retained in the system not because the
    designers believed a human could meaningfully act, but because the
    regulatory architecture required a human be present. The role of
    "monitor" was assigned without the capability infrastructure to
    support it. The system that resulted was performable only on the
    assumption that the failure case would not arrive — until it did.
  ],
  lens-approach: [
    LENS treats this case in LEN 2 as the live exemplar of monitoring as
    an unsupportable role. Students reconstruct the capability
    requirements for the safety operator and design the interface,
    training, and authority structure that would have made the role
    performable — or made the case for not retaining the role at all.
  ],
  literature-items: (
    [Parasuraman & Manzey (2010) on complacency in automated systems],
    [Bainbridge (1983), "Ironies of Automation"],
    [Endsley (2017), "From Here to Autonomy"],
  ),
  reflection-list: (
    [Identify a passive-monitor role in your domain. What evidence would tell you the role is or is not performable as designed?],
    [The Tempe vehicle was programmed not to brake when a crash was unavoidable. Reconstruct the design rationale and propose the deliverable that should have prevented that decision.],
    [Uber had a no-phone policy with nothing to enforce it. What is a rule in your domain that exists on paper but lacks the mechanism to make compliance the default — and how would you engineer that mechanism?],
  ),
  approaches: (
    during: (
      [Engineer the monitoring role to be performable — give the operator an active task, a usable interface, and the authority to act — or do not assign a human backstop you do not expect to work.],
      [Keep the automated emergency-braking backstop active rather than suppressing it, so the system does not silently remove its own last line of defense.],
      [Validate object classification against the real operating environment, including pedestrians away from crosswalks, before fielding the system on public roads.],
    ),
    after: (
      [Enforce the no-phone and attention policies with driver-monitoring that detects and corrects drift in real time, not a written rule alone.],
      [Audit safety-operator attention data continuously, treating sustained lapses as a design failure of the role rather than a fault of the individual.],
      [Deploy two-operator teams or equivalent redundancy so the vigilance burden does not rest on a single person doing an unsupportable job.],
    ),
  ),
  courses: ("LEN 2",),
  scale: "big",
  induced-anchor: "3.2",
  lens-anchor: "D3/PT6",
  clo-anchor: "CLO-3",
  evidence-source: "investigation",
)

// ---- Case 184 — uk-post-office-horizon-scandal ----
#case(
  number: 184,
  slug: "uk-post-office-horizon-scandal",
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
    about Horizon bugs throughout. Convictions began to be quashed in December 2020,
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
      quashing convictions from December 2020, and the public inquiry under Sir Wyn
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
  beats: (
    "Sub-postmasters bore personal liability for shortfalls reported by Fujitsu's Horizon accounting system from 1999",
    "Phantom shortfalls drove around 900 prosecutions for theft; imprisonment, bankruptcy, and suicides followed",
    "Released documents showed engineers knew Horizon could err; convictions began being quashed in December 2020",
    "No regulator, prosecutor, or court had standing to interrogate Fujitsu's claim of reliability",
    "Parliament exonerated convictions and opened compensation schemes; the public inquiry continues its work",
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
  scale: "big",
  induced-anchor: "3.2",
  lens-anchor: "D3/PT6",
  clo-anchor: "CLO-3",
)

// ---- Case 185 — air-canada-chatbot-liability ----
#case(
  number: 185,
  slug: "air-canada-chatbot-liability",
  title: "Air Canada Chatbot Liability — Delegation Without Revocation",
  year: "2022 – 2024",
  domains-list: ("aviation", "customer service", "AI agents"),
  modes-code: "DKN",
  impact: "British Columbia Civil Resolution Tribunal ruled February 14 2024 in Moffatt v. Air Canada, 2024 BCCRT 149, that Air Canada was liable for bereavement-fare-policy misinformation provided to passenger Jake Moffatt by the airline's website chatbot; tribunal rejected Air Canada's argument that the chatbot was a \"separate legal entity\" responsible for its own outputs; small-claims-tribunal ruling with limited precedential weight outside BC but cited widely as articulating the principle that organizations are liable for representations made by their AI agents",
  kind: "failure",
  scale: "small",
  evidence-source: "investigation",
  induced-anchor: "5.2",
  lens-anchor: "D3/PT6",
  clo-anchor: "CLO-3, CLO-5",
  summary: [
    On February 14, 2024, the British Columbia Civil Resolution
    Tribunal issued its decision in _Moffatt v. Air Canada_, 2024
    BCCRT 149. Passenger Jake Moffatt had consulted Air Canada's
    website chatbot about the airline's bereavement-fare policy
    in November 2022, following the death of his grandmother.
    The chatbot represented that the bereavement fare could be
    claimed retroactively, after travel. Moffatt booked a full-
    fare flight in reliance on the chatbot's representation, then
    submitted a retroactive bereavement-fare claim. Air Canada
    refused the claim on the ground that the actual policy
    required pre-booking application. Moffatt sued in the BC
    Civil Resolution Tribunal — Canada's online small-claims
    forum — and the tribunal awarded \$650.88 in damages. Air
    Canada had argued that the chatbot was a "separate legal
    entity" responsible for its own outputs; the tribunal
    rejected the argument and held that Air Canada was liable
    for representations made by its chatbot. The ruling has
    limited precedential weight outside BC but has been cited
    widely as articulating the delegation-without-revocation
    principle. The case pairs with Case 5 (Epic Sepsis), Case
    67 (Watson for Oncology), and Case 77 (Hybrid Human-AI
    Tutoring).
  ],
  sections: (
    [
      In November 2022, Jake Moffatt visited Air Canada's website
      shortly after his grandmother's death and consulted the
      airline's chatbot — at the time, a customer-service AI
      agent embedded in the airline's customer-facing web
      property — about the bereavement-fare policy. The chatbot
      represented that the bereavement fare could be applied
      retroactively, after travel, by submitting a claim with
      supporting documentation. Moffatt booked a full-fare round
      trip to Toronto in reliance on the representation. After
      travel, he submitted a retroactive bereavement-fare claim
      with the documentation the chatbot had described. Air
      Canada's response was that the actual bereavement-fare
      policy required pre-booking application — that is, the
      reduced fare had to be applied for at the time of
      booking, not claimed retroactively.#cn()
    ],
    [
      The structural seam the case opens is that the airline's
      chatbot was producing representations that diverged from
      the airline's actual policy. The seam is straightforward
      operationally — the chatbot's outputs were not constrained
      to the airline's policy text in a way that would have
      prevented the misrepresentation — but it is structurally
      significant in legal terms. When the airline directed a
      customer to its website for policy information and the
      website's AI agent produced a representation that the
      customer relied on to his detriment, the question is
      whether the airline is liable for the AI agent's output.
      Air Canada's response in the tribunal was that the
      chatbot was a "separate legal entity" — the company
      argued, in effect, that it could delegate customer
      information to an AI agent without assuming legal
      responsibility for the agent's representations.#cn()
    ],
    [
      The tribunal rejected the argument unambiguously. The
      decision, written by Tribunal Member Christopher Rivers,
      found that Air Canada was responsible for "all the
      information on its website" and that the chatbot was part
      of the website. The argument that the chatbot was a
      separate legal entity was found to have no support in
      law. The tribunal awarded Moffatt \$650.88 in damages —
      the difference between the full fare he paid and the
      bereavement fare he had been led to believe he could
      claim. The dollar amount is small; the principle the
      ruling articulates is what has carried the case into
      widespread citation. Organizations that deploy AI agents
      to interact with customers are responsible for the
      representations the agents make, and the agents are not
      separate legal persons. The delegation-without-revocation
      form — the organization delegates customer interaction to
      the AI agent but cannot revoke responsibility for what
      the agent says — is the load-bearing structural
      finding.#cn()
    ],
    [
      The case pairs with Case 5 (Epic Sepsis) for the
      delegation-without-validation thread in healthcare AI; the
      structural form is the same — the organization deploys an
      AI agent that produces representations or assertions
      consequential for the affected person, and the
      organization's accountability for the agent's outputs is
      the load-bearing governance question. Pair with Case 3
      (Watson for Oncology) for the AI-agent-recommendations-in-
      practice thread. Pair with Case 77 (Hybrid Human-AI
      Tutoring) for the educational-AI-agent thread at adjacent
      scale. The Air Canada ruling is a small-claims-tribunal
      decision with limited precedential weight outside BC, but
      its principle has been cited in subsequent academic and
      practitioner writing as the first clear judicial
      articulation of the delegation-without-revocation form for
      AI agents.#cn()
    ],
    [
      The hedges the case carries are load-bearing. The
      tribunal's ruling has limited precedential weight outside
      BC and has not been litigated to a higher court; the
      principle has been cited but not adopted in binding form
      across Canadian or U.S. jurisdictions. The case teaches
      the form — organizations are liable for the
      representations of their AI agents — more than it
      establishes settled law. The structural reading is the
      load-bearing one: the case names a delegation structure
      and the legal question that the delegation surfaces, and
      it does so in a forum whose decision is operationally
      consequential for the parties and pedagogically clear for
      the field. The human-in-the-loop CLO at the customer-
      interaction-AI-agent seam is anchored by the case in the
      form the deployment architecture must support — the
      organization's accountability for the agent's outputs is
      the architecture's load-bearing constraint.
    ],
  ),
  beats: (
    "Nov 2022: Air Canada chatbot represents bereavement fare claimable retroactively; passenger Jake Moffatt books in reliance; Air Canada refuses claim",
    "BC Civil Resolution Tribunal small-claims forum; ruling Feb 14 2024 by Tribunal Member Christopher Rivers; \$650.88 in damages",
    "Air Canada argued chatbot was \"separate legal entity\" responsible for its own outputs; tribunal rejected, finding no support in law",
    "Principle: organizations are responsible for representations made by their AI agents; agents are not separate legal persons",
    "Small-claims ruling with limited precedential weight outside BC; case teaches the form more than it establishes settled law",
  ),
  approaches: (
    during: (
      [Constrain customer-facing AI agents to representations the deploying organization will stand behind; the Air Canada case demonstrates that the deployment surface of an AI agent's output is the same legal surface as the organization's own representations.],
      [Build the policy-text-to-agent-output integrity check as part of the deployment, not as a customer-service-recovery process; the divergence between the airline's policy text and the chatbot's representation was the deployment seam the tribunal found dispositive.],
      [Specify the revocation-and-recovery mechanism the deployment carries when the agent produces a misrepresentation; the organization's accountability for the agent's outputs requires a documented process for honoring the agent's representation or for compensating the affected party.],
    ),
    after: (
      [Carry the precedential-weight hedge into print without softening; the ruling is a small-claims-tribunal decision and the precedential limits are part of what the case teaches alongside the structural form it names.],
      [Pair in syllabi with Case 5 (Epic Sepsis) so the delegation-without-validation form is taught at both the healthcare and the customer-interaction-agent scales.],
      [Use the case to anchor the human-in-the-loop CLO at the customer-interaction-AI-agent seam; the curricular target is the discipline of treating the agent's outputs as the organization's representations, and of building the deployment architecture to that constraint.],
    ),
  ),
  references: (
    [_Moffatt v. Air Canada_, 2024 BCCRT 149 (British Columbia Civil Resolution Tribunal, February 14, 2024), Tribunal Member Christopher Rivers presiding.],
    [Cecco, L. (2024), "Air Canada ordered to pay customer who was misled by airline's chatbot," _The Guardian_, February 16, 2024 — contemporaneous press coverage of the ruling.],
    [Air Canada bereavement-fare policy text (as in effect November 2022 and through the period covered by the ruling) — referenced in the tribunal decision as the divergence the chatbot's representation produced.],
    [Sookman, B. (McCarthy Tétrault LLP, 2024), "Moffatt v. Air Canada: A Misrepresentation by an AI Chatbot," _McCarthy Tétrault TechLex Blog_, February 19, 2024 — practitioner-tier analysis of the tribunal's negligent-misrepresentation holding, the rejection of the "separate legal entity" defence, and the duty-of-care framing for AI-mediated consumer interactions. Available at: https://www.mccarthy.ca/en/insights/blogs/techlex/moffatt-v-air-canada-misrepresentation-ai-chatbot.],
  ),
  quote: [The chatbot is part of the website; the airline is responsible for all the information on its website; there is no support in law for the argument that the chatbot is a separate legal entity responsible for its own outputs.],
  quote-source: "Tribunal Member Christopher Rivers, Moffatt v. Air Canada, 2024 BCCRT 149 (Feb 14, 2024), editors' paraphrase.",
  le-insight: [
    Air Canada chatbot is the delegation-without-revocation case
    at customer-interaction-AI-agent scale. The BC Civil
    Resolution Tribunal's ruling holds that organizations are
    liable for representations made by their AI agents and that
    the agents are not separate legal persons; the small-claims
    venue limits the precedential weight, but the principle has
    been cited widely as the first clear judicial articulation
    of the form. The case teaches the form more than it
    establishes settled law.
  ],
  lens-approach: [
    Air Canada chatbot is the human-in-the-loop-at-the-customer-
    interaction-agent-seam case (induced 5.2; LENS D3/PT6;
    CLO-3 and CLO-5). LENS uses it in Domain 3 (Machine
    Teaming and Adaptation) for the
    organization-is-liable-for-agent-representations principle.
    Pair with Case 5 (Epic Sepsis delegation-without-
    validation), Case 3 (Watson for Oncology), and Case 77
    (Hybrid Human-AI Tutoring). The small-claims-tribunal
    venue limits precedential weight; the structural reading is
    the load-bearing one.
  ],
  literature-items: (
    [_Moffatt v. Air Canada_, 2024 BCCRT 149 (Feb 14 2024)],
    [Solaiman (2024), _CLSR_ — generative AI and law of agency synthesis],
    [Paired Case 5 (Epic Sepsis) delegation-without-validation form],
  ),
  reflection-list: (
    [Identify a customer-interaction AI agent in your domain whose outputs have not been integrity-checked against the organization's policy text. What divergence between agent representation and policy text would produce a Moffatt-style reliance harm, and what mechanism would close the divergence?],
    [Specify the revocation-and-recovery process your deployment carries when the agent produces a misrepresentation. What is the documented decision rule for honoring the representation versus refusing it, and who has authority to decide?],
    [The Moffatt ruling has limited precedential weight outside BC. Pick a deployment in your domain and ask: what would have to be true for the delegation-without-revocation principle to apply in your jurisdiction, and what is the deployment architecture that would honor the principle whether or not the law has settled it?],
  ),
  courses: ("LEN 5", "LEN 8", "LEN 9"),
)

// ---- Case 186 — algorithmic-mortgage-lending-omitting ----
#case(
  number: 186,
  slug: "algorithmic-mortgage-lending-omitting",
  title: "Algorithmic Mortgage Lending — Omitting the Variable Did Not Fix the Disparity",
  year: "2018 – 2022",
  domains-list: ("finance", "algorithmic fairness"),
  modes-code: "DGN",
  impact: "Algorithmic mortgage underwriting reduced face-to-face discrimination but preserved a measured pricing disparity even when race was excluded from the inputs — the variable's omission did not fix the harm",
  kind: "failure",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.2",
  lens-anchor: "D4+D3/PT6",
  clo-anchor: "CLO-4, CLO-5, CLO-3",
  summary: [
    Bartlett, Morse, Stanton, and Wallace (_Journal of Financial Economics_,
    2022) analyzed several million US mortgage applications across the
    fintech transition and documented two patterns that together unsettle a
    common intuition. Algorithmic underwriting was, on average, less
    discriminatory than face-to-face underwriting along the *acceptance*
    margin — fintech lenders accept-rejected Black and Latino applicants
    more equitably than traditional lenders. But the *pricing* margin
    persisted: minority borrowers were charged systematically higher rates
    for equivalent loans even when race was not in the model inputs. The
    excluded variable did not stay excluded; it re-entered through
    geography, credit-score history, and other features that correlate
    with race in the present US population. The case is the canonical
    instance of why "fairness through unawareness" is not, by itself,
    fairness. It pairs directly with the Coots et al. fintech fairness
    audit (Case 196, preprint-tier): the next teaching step is that
    competing fairness definitions can disagree about what counts as fair
    even when the inputs are held constant.
  ],
  sections: (
    [
      The US mortgage market is the most consequential consumer-credit
      market in which algorithmic underwriting now competes with
      face-to-face underwriting at large scale. Fintech entrants over the
      2010s automated significant parts of the application-to-approval
      pipeline, and the public-policy question that followed was whether
      automation reduced or preserved the discrimination documented in
      traditional lending.#cn()
    ],
    [
      Bartlett et al. assembled a corpus of several million applications
      from a period spanning fintech adoption, and decomposed
      discrimination along two distinct margins: the *acceptance* decision
      (do you get a loan) and the *pricing* decision (what interest rate
      you pay if you do). On acceptance, algorithmic lenders did better:
      Black and Latino applicants with equivalent observable
      characteristics were accepted at rates closer to those of comparable
      White applicants than face-to-face lending produced. The result is
      consistent with the intuition that removing the loan officer
      removes some of the channel through which bias entered.#cn()
    ],
    [
      The pricing margin tells the harder story. Even when race was not
      among the model inputs, minority borrowers were charged
      systematically higher rates than equivalent White borrowers — by
      about 8 basis points on purchase loans and 3 on refinances in the
      paper's central estimate. The disparity did not vanish because the
      variable was omitted; the variable returned through features
      correlated with race in the present US population — geography,
      credit-history depth, and other proxies that the model is allowed
      to use and that carry the historical signal of where lending has
      and has not flowed.#cn()
    ],
    [
      What the case teaches is the structural form of "fairness through
      unawareness": when protected attributes are excluded from a model
      that operates over a population in which other admissible features
      correlate with the protected attribute, the model can preserve the
      disparity it was meant to remove. Omission shifts the channel of
      discrimination but does not close it. The capability deliverable is
      a measurement architecture that surfaces disparate impact in the
      *outputs*, not assurance about the *inputs*. The acceptance/pricing
      asymmetry also reframes the policy question: a model can be more
      equitable on one decision margin and unchanged on another within
      the same transaction.#cn()
    ],
    [
      The case is the headline mortgage-finance instance of a pattern that
      now surfaces in clinical algorithms (eGFR, Cases 25, 26 and 6), in
      hiring and proctoring tools (Case 47 small-tier proctoring bias),
      and in welfare administration (SyRI). It pairs with the Coots et
      al. fintech fairness audit (Case 196) which shows the next layer:
      once the practitioner accepts that omission is not the answer,
      competing fairness definitions disagree about which adjustment is
      the right one — and the choice has to be made on judgment under
      irreducible uncertainty, not on a technical optimum.
    ],
  ),
  beats: (
    "Algorithmic underwriting reaches the mortgage market at scale; the question is whether automation reduces or preserves discrimination",
    "Bartlett et al. decompose discrimination along acceptance and pricing margins across millions of applications",
    "Algorithmic acceptance is more equitable than face-to-face; algorithmic pricing preserves a measured disparity even with race excluded",
    "Excluded variable returns through correlated features (geography, credit history); omission shifts but does not close the channel",
    "Fairness through unawareness is not fairness; the deliverable is output-level disparate-impact measurement, not input-level assurance",
  ),
  approaches: (
    during: (
      [Specify, before deployment, the disparate-impact measurement on outputs (acceptance rate, pricing) stratified by protected attribute, with a pre-registered threshold for what would trigger remediation.],
      [Audit the model's correlated features for the channel through which an excluded attribute can re-enter — geography, credit-history depth, transaction venue — and decide whether each feature's predictive value justifies its disparate-impact contribution.],
      [Separate acceptance and pricing as distinct decision margins; do not assume parity on one implies parity on the other.],
    ),
    after: (
      [Publish stratified outcome metrics at intervals long enough for selection effects to settle; the central finding required a multi-year panel.],
      [Treat omission of the protected attribute as a baseline, not a remedy; the test of fairness is the output distribution, not the input set.],
      [When the measurement surfaces a disparity, name the fairness definition under which it is a problem — group calibration, equalized odds, demographic parity — and the trade-offs of the chosen remediation.],
    ),
  ),
  references: (
    [Bartlett, Morse, Stanton, & Wallace (2022), "Consumer-lending discrimination in the FinTech era," _Journal of Financial Economics_ 143(1):30–56, doi:10.1016/j.jfineco.2021.05.047.],
    [Consumer Financial Protection Bureau, _Mortgage Market Activity and Trends_ (annual HMDA reports), supporting the population-level disparities backdrop.],
    [Dwork et al. (2012), "Fairness Through Awareness," ITCS 2012 — the foundational technical statement of the limits of unawareness.],
    [Mitchell, Potash, Barocas, D'Amour, & Lum (2021), "Algorithmic Fairness: Choices, Assumptions, and Definitions," _Annual Review of Statistics and Its Application_ 8:141–163 — the competing-definitions framing.],
  ),
  quote: [The omitted variable does not stay omitted. It re-enters through every feature that carries the same signal.],
  quote-source: "Editors' synthesis of Bartlett et al. (2022) and Dwork et al. (2012).",
  le-insight: [
    Bartlett et al. is the canonical mortgage-finance instance of why
    "fairness through unawareness" is not fairness. Algorithmic
    underwriting reduced the acceptance-margin disparity but the
    pricing-margin disparity persisted even with race excluded —
    because correlated admissible features carry the same signal.
    The capability deliverable is output-level disparate-impact
    measurement, not input-level assurance.
  ],
  lens-approach: [
    Bartlett is the headline equity-and-construct case in
    consumer credit (induced 8.2; LENS D4+D4/PT6). LENS uses it
    in Domain 4 (Test and Evaluation) for the CLO *Fairness
    beyond omission*, in Domain 3 (Human-System Collaboration) for delegation to underwriting models, and in
    Domain 5 (Navigating Sociotechnical Constraints) for the
    fair-lending regulatory regime. Direct pair with Case 196
    (Coots fintech fairness audit). Adjacent to the race-construct
    trio in clinical medicine (Cases 25, 26 and 6) — same structural
    lesson at the construct-definition layer rather than the
    pricing layer.
  ],
  literature-items: (
    [Bartlett et al. (2022), _Journal of Financial Economics_],
    [Dwork et al. (2012), "Fairness Through Awareness," _ITCS_],
    [Mitchell et al. (2021), _Annual Review of Statistics_ — competing fairness definitions],
  ),
  reflection-list: (
    [Identify a model in your domain where a protected attribute is excluded from the inputs. Which admissible features correlate with the excluded attribute in your population? What is the channel through which the excluded variable could re-enter?],
    [Design the disparate-impact measurement you would publish at intervals after deployment. Specify the fairness definition, the decision margin (acceptance, pricing, escalation), and the threshold that would trigger remediation.],
    [Bartlett's central finding is that the acceptance margin can be more equitable than the face-to-face baseline while the pricing margin remains unchanged. What policy or design intervention would address each margin without assuming parity on one implies parity on the other?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 9"),
)

// ---- Case 187 — compas-recidivism-prediction ----
#case(
  number: 187,
  slug: "compas-recidivism-prediction",
  title: "COMPAS Recidivism Prediction — Calibration vs. Equal Error Rate",
  year: "2014 – 2018",
  domains-list: ("criminal justice", "predictive analytics", "algorithmic fairness"),
  modes-code: "DKN",
  impact: "Northpointe COMPAS (Correctional Offender Management Profiling for Alternative Sanctions) risk-assessment instrument used in pretrial, parole, and sentencing decisions across multiple U.S. jurisdictions; ProPublica's May 2016 investigation reported a 2× higher false-positive rate for Black defendants; Chouldechova (2017) and Kleinberg, Mullainathan & Raghavan (2017) independently formalized the impossibility of simultaneously satisfying calibration and equal false-positive/false-negative rates across groups with unequal base rates",
  kind: "failure",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.4",
  lens-anchor: "D4+D5/PT6",
  clo-anchor: "CLO-4, CLO-5",
  summary: [
    Northpointe's COMPAS risk-assessment instrument, deployed in
    pretrial, parole, and sentencing decisions across multiple
    U.S. jurisdictions, became the central case in the
    algorithmic-fairness literature after ProPublica's May 2016
    investigation reported that the instrument produced false-
    positive rates approximately twice as high for Black
    defendants as for white defendants. Northpointe's response
    argued that COMPAS satisfied predictive parity — that within
    each risk score, the rate of subsequent recidivism was
    approximately equal across groups. Both parties were correct
    by their respective definitions. Chouldechova's 2017 paper
    and Kleinberg, Mullainathan, and Raghavan's 2017 paper
    independently formalized the impossibility result: when base
    rates of the outcome differ across groups, calibration
    (predictive parity) and equal false-positive and false-
    negative rates cannot be simultaneously satisfied except in
    degenerate cases. The case pairs with Case 186 (Bartlett
    mortgage — fairness through unawareness fails), Case 196
    (Coots — competing fairness definitions), and Case 189
    (SyRI). The impossibility result is the load-bearing
    teaching point.
  ],
  sections: (
    [
      COMPAS is a proprietary risk-assessment instrument developed
      by Northpointe (now Equivant) and used in pretrial release,
      parole, and sentencing decisions across many U.S.
      jurisdictions through the 2010s. The instrument scores a
      defendant on a scale of recidivism risk based on a
      questionnaire covering criminal history, employment,
      education, family circumstances, and attitudes. The score
      is then surfaced to judges, parole boards, and pretrial
      services as one input among several into consequential
      decisions about the defendant's liberty. The deployment
      scale was large enough that the instrument was the central
      target of the contemporary algorithmic-fairness literature
      when the first sustained external audit was published.#cn()
    ],
    [
      ProPublica's May 2016 investigation, led by Julia Angwin,
      Jeff Larson, Surya Mattu, and Lauren Kirchner, audited
      COMPAS scores against subsequent recidivism for
      approximately 7,000 defendants in Broward County, Florida.
      The headline finding was that among defendants who did not
      go on to reoffend within two years, Black defendants had
      been scored as high-risk at roughly twice the rate of white
      defendants — a false-positive-rate disparity. Northpointe's
      response, authored by William Dieterich, Christina Mendoza,
      and Tim Brennan, argued that COMPAS satisfied predictive
      parity (also called calibration): within each risk score
      band, the rate of subsequent recidivism was approximately
      equal across racial groups. The defendant assigned a "high
      risk" score had approximately the same probability of
      reoffending whether Black or white. The two findings appear
      contradictory but are not; they describe two different
      fairness criteria applied to the same instrument.#cn()
    ],
    [
      Chouldechova's 2017 paper in _Big Data_ and Kleinberg,
      Mullainathan, and Raghavan's 2017 ITCS paper independently
      formalized the impossibility result. Calibration within
      groups (predictive parity) and equality of false-positive
      and false-negative rates across groups cannot be
      simultaneously satisfied when the base rates of the outcome
      differ across the groups, except in degenerate cases. The
      base rate of subsequent recidivism in the Broward County
      data was higher for Black defendants than for white
      defendants. Under that base-rate difference, an instrument
      calibrated equally across groups will produce unequal
      false-positive rates, and an instrument with equal false-
      positive rates across groups will produce miscalibration.
      The mathematics is binding. The choice between fairness
      criteria is a normative and governance question, not a
      technical one.#cn()
    ],
    [
      The case pairs with Case 186 (Bartlett mortgage discrimination)
      for the fairness-through-unawareness-fails thread: removing
      protected attributes from training data does not eliminate
      disparate-impact concerns when the remaining features carry
      protected-attribute signal. Pair with Case 196 (Coots) for
      the competing-fairness-definitions thread at a different
      domain and scale. Pair with Case 189 (SyRI) for the
      governance-objection-correct-in-advance complement; in
      COMPAS the objection surfaces in the auditing record, in
      SyRI the objection succeeded in court before population-
      scale harm was produced. The COMPAS case is the central
      reference in the contemporary algorithmic-fairness literature
      because the impossibility result was formalized against its
      audit record; the literature's subsequent decade of work on
      fairness criteria operates inside the constraint the case
      made legible.#cn()
    ],
    [
      The hedges the case carries are load-bearing. Both
      Northpointe and ProPublica are correct by their respective
      definitions, and the impossibility result formalizes the
      tension rather than resolving it. The case does not teach
      that COMPAS is fair or that COMPAS is unfair; it teaches
      that the choice between fairness criteria is governance and
      normative work that the deployment did not surface to the
      affected jurisdictions or to the defendants whose liberty
      depended on the score. The CLO on fairness beyond omission
      is anchored by the case in its mature form — the
      impossibility result requires the deploying institution to
      choose, document, and disclose which fairness criterion the
      instrument optimizes, and to make the trade-off legible to
      the people the criterion does not protect.
    ],
  ),
  beats: (
    "Northpointe COMPAS deployed across U.S. pretrial, parole, sentencing decisions; ProPublica May 2016 audit on ~7,000 Broward County defendants",
    "ProPublica finding: ~2× false-positive rate for Black defendants among non-reoffenders; Northpointe response: predictive parity within risk scores",
    "Both findings correct by their respective definitions; Chouldechova 2017 and Kleinberg/Mullainathan/Raghavan 2017 formalize the impossibility result",
    "Calibration and equal FPR/FNR cannot be simultaneously satisfied when base rates differ across groups except in degenerate cases — binding mathematics",
    "Pair with Case 186 (Bartlett), Case 196 (Coots), Case 189 (SyRI); central reference for the algorithmic-fairness literature",
  ),
  approaches: (
    during: (
      [Choose, document, and disclose the fairness criterion the instrument optimizes for in advance of deployment; the impossibility result requires the deploying institution to make the choice and to make the trade-off legible to the people the criterion does not protect.],
      [Audit the deployed instrument against multiple fairness criteria simultaneously; the COMPAS record demonstrates that an instrument can satisfy predictive parity and fail equality of false-positive rates at the same time, and the audit must surface both.],
      [Treat the base-rate difference across groups as a governance fact, not a technical artifact; the difference is what makes the impossibility binding, and pretending it can be eliminated is the rhetorical move the case teaches to refuse.],
    ),
    after: (
      [Carry the impossibility result into print as the load-bearing teaching point; the case does not teach that COMPAS is fair or that COMPAS is unfair, and the editorial framing must preserve the formal constraint that both audit findings instantiate.],
      [Pair in syllabi with Case 186 (Bartlett) so the fairness-through-unawareness-fails thread and the impossibility-of-multiple-criteria thread are taught together as complementary structural arguments about disparate impact.],
      [Use the case to anchor the fairness-beyond-omission CLO; the curricular target is the discipline of choosing and disclosing the fairness criterion when the impossibility result rules out satisfying all of them simultaneously.],
    ),
  ),
  references: (
    [Angwin, J., Larson, J., Mattu, S., & Kirchner, L. (2016), "Machine Bias," _ProPublica_, May 23, 2016 — the audit investigation of COMPAS scores in Broward County, Florida.],
    [Dieterich, W., Mendoza, C., & Brennan, T. (2016), _COMPAS Risk Scales: Demonstrating Accuracy Equity and Predictive Parity_, Northpointe Inc. response document.],
    [Chouldechova, A. (2017), "Fair Prediction with Disparate Impact: A Study of Bias in Recidivism Prediction Instruments," _Big Data_ 5(2):153–163, doi:10.1089/big.2016.0047.],
    [Kleinberg, J., Mullainathan, S., & Raghavan, M. (2017), "Inherent Trade-Offs in the Fair Determination of Risk Scores," _Proceedings of ITCS 2017_, doi:10.4230/LIPIcs.ITCS.2017.43.],
  ),
  quote: [Both Northpointe and ProPublica were correct by their respective definitions of fairness; the impossibility result is that calibration and equal false-positive rates cannot be simultaneously satisfied when base rates differ across groups, except in degenerate cases.],
  quote-source: "Editors' synthesis of the COMPAS audit record and the 2017 impossibility-result papers.",
  le-insight: [
    COMPAS is the central reference in the contemporary
    algorithmic-fairness literature because the impossibility
    result was formalized against its audit record. Both the
    ProPublica finding (unequal false-positive rates) and the
    Northpointe response (predictive parity within risk scores)
    are correct by their respective definitions; the
    Chouldechova and Kleinberg/Mullainathan/Raghavan results
    show that the two cannot be simultaneously satisfied when
    base rates differ. The choice between fairness criteria is
    governance work, not technique.
  ],
  lens-approach: [
    COMPAS is the impossibility-result case at consequential-
    decision scale (induced 8.4; LENS D4+D3/PT6; CLO-4 and
    CLO-5). LENS uses it in Domain 4 (Test and Evaluation) for
    the multi-criterion-audit discipline and in Domain 5
    (Navigating Sociotechnical Constraints) for the
    surfacing-bias-through-governance-not-just-technique anchor.
    Pair with Case 186 (Bartlett mortgage — fairness through
    unawareness fails), Case 196 (Coots — competing fairness
    definitions), and Case 189 (SyRI governance-objection-
    correct precedent). The impossibility result is the load-
    bearing teaching point; both Northpointe and ProPublica are
    correct by their respective definitions.
  ],
  literature-items: (
    [Angwin et al. (2016), ProPublica — the audit investigation],
    [Chouldechova (2017), _Big Data_ — formal impossibility-with-disparate-base-rates],
    [Kleinberg, Mullainathan, Raghavan (2017), ITCS — inherent trade-offs in risk-score fairness],
  ),
  reflection-list: (
    [Identify a risk-assessment instrument in your domain whose fairness criterion has not been chosen and disclosed in advance of deployment. What are the candidate criteria, and which of them are jointly satisfiable given the base-rate differences across affected groups?],
    [Specify the multi-criterion audit you would run against a deployed instrument. What is the format in which the audit surfaces incompatibility findings to the deploying institution, and what is the documented decision rule when incompatibility is found?],
    [The impossibility result is mathematical; the choice between criteria is governance and normative work. Pick a setting in your domain and ask: who has authority to make the choice, who is accountable for documenting and disclosing the trade-off, and to whom is the trade-off disclosable?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 188 — cambridge-analytica-facebook ----
#case(
  number: 188,
  slug: "cambridge-analytica-facebook",
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
  beats: (
    "Facebook's Graph API let apps collect quiz-takers' data and their friends' data without friends consenting",
    "A personality-quiz app taken by 270,000 people harvested about 87 million profiles for political micro-targeting",
    "UK ICO and U.S. FTC investigations, prompted by Guardian reporting, found Facebook responsible for what its design permitted",
    "The architecture worked as designed; a load-bearing assumption of developer benevolence was never red-teamed",
    "GDPR and CCPA accelerated; the FTC imposed a five-billion-dollar penalty and a continuing consent decree",
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
    LENS anchors Cambridge Analytica cleanly to the platform and API
    governance seam (induced 5.3): the app-permission model let one
    app harvest friends-of-friends data far beyond the consenting user.
    This is a governance-seam case — acceptable under canonical
    competency 5 — about where a platform's interface contract carries
    obligations its design never enforced; it is not a
    capability-development or problem-framing case, and is not taught
    as one.
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
  scale: "big",
  induced-anchor: "5.3",
  lens-anchor: "D5/PT5",
  clo-anchor: "CLO-5",
)

// ---- Case 189 — dutch-syri-welfare-fraud-risk-scoring ----
#case(
  number: 189,
  slug: "dutch-syri-welfare-fraud-risk-scoring",
  title: "Dutch SyRI — Welfare-Fraud Risk Scoring Halted on Rights Grounds",
  year: "2014 – 2020",
  domains-list: ("government/welfare (Netherlands)", "algorithmic decision-making", "public-sector AI"),
  modes-code: "DGN",
  impact: "An opaque risk-scoring system that combined up to 17 categories of previously siloed government data on citizens — disproportionately deployed in low-income and minority neighborhoods — halted by the District Court of The Hague in 2020 as a violation of Article 8 ECHR; also reported as operationally ineffective",
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "5.1",
  lens-anchor: "D5+D3/PT6",
  clo-anchor: "CLO-5, CLO-3",
  summary: [
    The Dutch System Risk Indication (SyRI) combined up to 17 categories
    of previously siloed government data — tax, benefits, housing,
    education — to produce risk scores intended to flag potential
    welfare fraud. Deployed from 2014, it was targeted at low-income
    and minority neighborhoods. On February 5, 2020 the District Court
    of The Hague halted the program as a violation of Article 8 ECHR
    (right to private life) — one of the first times a court anywhere
    stopped a welfare-AI system on human-rights grounds. Investigative
    reporting also found that, on its own terms, the system did not
    work: none of the algorithmic investigations had detected new
    fraud. The case is the paired contrast to the Open University
    (Case 81): SyRI's governance objection was correct, not
    dissolvable by design — the system was both rights-violating and
    ineffective. The court left open that a more transparent system
    could pass, which makes the case a governance-objection-diagnostic
    teaching point rather than a verdict against all
    public-sector AI: design can correct some objections; some
    objections are correct, and no design dissolves them.
  ],
  sections: (
    [
      SyRI — the System Risk Indication — was a Dutch government
      analytics program intended to surface potential welfare fraud
      by combining up to seventeen categories of previously siloed
      government data on citizens: tax, benefits, housing, education,
      employment. Deployed from 2014, it operated as a closed system:
      citizens were not informed they were being scored; the model
      and its inputs were not disclosed; the program was targeted at
      specific low-income and minority neighborhoods.#cn()
    ],
    [
      The governance objection was raised by a coalition of civil
      society organizations and individual citizens who sued the
      Dutch state, arguing that SyRI violated Article 8 of the
      European Convention on Human Rights — the right to private
      life. The case was heard by the District Court of The Hague.
      On February 5, 2020, the court halted the program: the system
      was found insufficiently transparent and disproportionate to
      its stated aim. The ruling is one of the first instances
      anywhere of a court stopping a welfare-AI system on
      human-rights grounds.#cn()
    ],
    [
      Investigative reporting alongside the court case surfaced a
      second finding: on its own operational terms, SyRI was
      ineffective. Reporting documented that none of the algorithmic
      investigations the program had launched had detected new fraud
      — the system had been deployed for six years and the headline
      capability claim had not been demonstrated. The case is
      structurally important because it is both rights-violating
      *and* ineffective; the rights argument did not depend on the
      effectiveness gap, and the effectiveness gap did not depend on
      the rights argument. The two failures landed on the same
      system.#cn()
    ],
    [
      What the court explicitly left open is also pedagogically
      load-bearing. The ruling did not say no welfare-analytics
      system could pass Article 8; it said *this* system, in its
      specific opacity and disproportionality, could not. A more
      transparent system, with auditability and a credibly
      narrower scope, might pass. The case is therefore the
      governance-objection-diagnostic counter to the Open
      University (Case 81): both faced credible governance
      objections at the same era; OU's was about trust and
      accountability and was dissolved by a co-authored consent
      architecture; SyRI's was about rights and proportionality
      and could not be dissolved by design because the design was
      the rights violation.#cn()
    ],
    [
      The pair (Cases 81 + 80) is the case-grounded basis for
      the governance-objection diagnostic proposed in
      the v2 research backbone: distinguishing a governance objection
      that good design can dissolve from one that correctly
      signals the system should not deploy. The capability is to
      make the diagnostic call before deployment, not after — and
      the diagnostic itself is testable: a system whose
      operational claim has not been demonstrated after years of
      deployment, and whose data subjects have not been informed
      they are being scored, is not a case where design can fix
      the governance problem.
    ],
  ),
  beats: (
    "SyRI combines up to 17 categories of siloed government data; deployed 2014; targeted at low-income and minority neighborhoods",
    "Civil-society and citizen coalition sue; District Court of The Hague halts program 5 Feb 2020 as Article 8 ECHR violation",
    "Investigative reporting: on its own terms, SyRI did not work — no new fraud detected in six years of algorithmic investigations",
    "Court leaves open that a more transparent and narrower system could pass; the ruling is system-specific, not categorical",
    "Pair with OU (Case 81): governance-objection diagnostic — when design dissolves the objection vs. when the objection is correct",
  ),
  approaches: (
    during: (
      [Before deploying a public-sector analytics system, document the data subjects who will be scored, the inputs, the model behavior, and the proportionality argument; opacity is a governance liability that compounds over the life of the deployment.],
      [Specify in advance the operational evidence that would demonstrate the capability claim — for SyRI, fraud actually detected by algorithmic investigation — with a published reporting cadence and a pre-registered threshold for what would count as success or failure.],
      [Conduct the governance-objection diagnostic openly: is the objection about trust and accountability (potentially dissolvable by design) or about rights and proportionality (not dissolvable by design)? Different answers imply different deployment paths.],
    ),
    after: (
      [If a court or rights body halts the program, treat the ruling as governance information about the design specifically, not as a verdict about all related systems; redesign with the named deficiencies addressed.],
      [Publish the operational effectiveness evidence on the cadence specified at launch; six years without published evidence of the headline capability is itself a governance finding.],
      [Treat the rights-and-proportionality channel as a separate evaluation from the technical-accuracy channel; a system can be technically accurate and still fail the proportionality test, and SyRI failed both.],
    ),
  ),
  references: (
    [District Court of The Hague (2020), judgment of 5 February 2020 (NJCM et al. v. State of the Netherlands), ECLI:NL:RBDHA:2020:865.],
    [Rachovitsa & Johann (2022), "The Human Rights Implications of the Use of AI in the Digital Welfare State," _Human Rights Law Review_ 22(2), doi:10.1093/hrlr/ngac010.],
    [Library of Congress Global Legal Monitor (2020), report on the SyRI ruling.],
    [Algorithm Watch (2020), case study of the SyRI ruling and its implications for public-sector AI in Europe.],
  ),
  quote: [Some governance objections are correct. Design does not dissolve them — it is what the objection is to.],
  quote-source: "Editors' synthesis of the SyRI ruling and Rachovitsa & Johann (2022).",
  le-insight: [
    SyRI is the canonical case in the corpus of a governance
    objection that was correct. The system was both
    rights-violating (Article 8 ECHR) and operationally
    ineffective (no new fraud detected). The court ruling is
    system-specific — it does not foreclose all public-sector
    AI — which is what makes the case a governance-objection
    diagnostic teaching point rather than a categorical
    verdict.
  ],
  lens-approach: [
    SyRI is the negative Domain 5 / Problem Type 6 governance
    case (induced 5.1; LENS D5+D4/PT6) drafted as the
    contrast to the Open University (Case 81). LENS uses
    the pair in Domain 5 (Navigating Sociotechnical
    Constraints) for the governance-objection
    diagnostic — distinguishing dissolvable from correct
    objections — and in Domain 3 (Human-System Collaboration) for the delegation-with-revocation CLO: the
    court was the revocation channel because the system did
    not have one of its own. Adjacent to the AI-delegation
    typology (TREWS / Epic / SyRI / Watson) the v2 corpus
    builds.
  ],
  literature-items: (
    [District Court of The Hague judgment (2020), ECLI:NL:RBDHA:2020:865],
    [Rachovitsa & Johann (2022), _Human Rights Law Review_],
    [Algorithm Watch (2020), SyRI case study],
  ),
  reflection-list: (
    [Identify a public-sector analytics system in your jurisdiction. Are the data subjects informed they are being scored? Is the model and its inputs disclosed? What is the proportionality argument the deploying agency would make if challenged?],
    [Specify the pre-registered operational evidence — what the system has to demonstrate, on what cadence — that would let a deployment be evaluated against its capability claim. SyRI ran for six years without published evidence of the headline claim.],
    [The pair OU (Case 81) and SyRI (Case 189) teaches the governance-objection diagnostic. Construct a candidate diagnostic for your own domain: what features of an objection indicate that good design could dissolve it, and what features indicate that the objection is to the design itself?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 9"),
)

// ---- Case 190 — cruises-partial-disclosure-how ----
#case(
  number: 190,
  slug: "cruises-partial-disclosure-how",
  title: "Cruise's Partial Disclosure — How Disclosure Posture Decides Deployment",
  year: "2023",
  domains-list: ("autonomous vehicles", "regulatory governance", "incident disclosure"),
  modes-code: "GKN",
  impact: "On 24 October 2023 the California DMV suspended Cruise's driverless deployment and testing permits, citing the company's misrepresentation of safety-relevant information after a robotaxi dragged a pedestrian roughly 20 feet at ~7 mph following an initial stop — disclosure posture, not the underlying collision sequence, was the load-bearing failure",
  kind: "failure",
  scale: "big",
  evidence-source: "journalism",
  evidence-flag: "journalism-tier",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT6",
  clo-anchor: "CLO-5, CLO-3",
  summary: [
    On 2 October 2023 a pedestrian was struck by a human-driven
    vehicle in San Francisco and propelled into the path of a Cruise
    robotaxi. The robotaxi came to a stop, then performed a pullover
    maneuver that dragged the pedestrian roughly 20 feet at about
    7 mph before stopping again. Cruise initially shared video of the
    initial stop with regulators and reporters but did not disclose
    the subsequent movement; the California DMV learned of the
    pullover from another agency and obtained the fuller video weeks
    later. On 24 October the DMV suspended Cruise's driverless
    deployment and testing permits, citing misrepresentation of
    safety-relevant information. The case is the explicit contrast to
    Case 199 (Waymo): the same regulatory regime, the same
    delegation problem, the opposite governance choice. Partial
    disclosure was the load-bearing failure mode, not the
    underlying collision sequence. The evidence-tier flag is
    journalism: the DMV's published Order of Suspension is
    investigation-grade, but the partial-disclosure mechanism and
    internal timeline are reconstructed from contemporaneous
    reporting at TechCrunch, NBC News, SF Standard, and Mission
    Local. The underlying Cruise internal post-mortem is
    referenced in public statements but not fully public. Future
    validation will continue on long-run regulatory consequences.
  ],
  sections: (
    [
      The night of 2 October 2023, on a San Francisco street, a
      pedestrian was struck by a human-driven vehicle and propelled
      into the path of a Cruise robotaxi operating without a safety
      driver. The robotaxi detected the collision and came to a
      stop. The vehicle then executed what Cruise later described
      as a pullover maneuver, traveling roughly 20 feet at about
      7 mph with the pedestrian pinned beneath it. The collision
      sequence itself involved a human driver, not Cruise's
      software, but the post-impact behavior was Cruise's system
      acting on its own.#cn()
    ],
    [
      In the immediate days after the incident, Cruise shared video
      of the initial stop with reporters and regulators. The
      pullover maneuver and the dragging of the pedestrian were
      not included in those initial disclosures. The California
      DMV did not learn of the full sequence from Cruise; it
      learned of the pullover from another agency and obtained
      the fuller video weeks after the incident. The mechanism of
      failure shifted in the regulator's view from the collision
      to the company's disclosure posture.#cn()
    ],
    [
      On 24 October 2023 the DMV issued an Order of Suspension
      revoking Cruise's driverless deployment permit and its
      driverless testing permit. The order cited misrepresentation
      of safety-relevant information — that the company had
      "misrepresented information related to the safety of its
      autonomous technology" — as a load-bearing reason for the
      revocation. The Order of Suspension is the
      investigation-grade artifact in this case; the reconstruction
      of the partial-disclosure mechanism and the internal
      timeline rests on contemporaneous journalism.#cn()
    ],
    [
      The case is the explicit foil to Case 199 (Waymo). Same
      regulatory regime, same delegation problem, opposite
      governance choice. Where Waymo answered an opacity
      objection by engineering a published safety-case
      framework and commissioning third-party audits, Cruise
      answered an incident-disclosure obligation by sharing
      partial video. The same DMV that permitted Waymo to
      continue revoked Cruise's permits. The journalism-tier
      flag is load-bearing: the DMV's published order is
      investigation-grade, but the precise sequence of internal
      decision-making rests on TechCrunch, NBC News, SF
      Standard, and Mission Local reporting that has not been
      independently corroborated by the company's full
      post-mortem.#cn()
    ],
    [
      The LENS teaching point pairs directly with Waymo. The new
      CLO *Delegation with revocation* requires that the
      deploying organization design the disclosure architecture
      *before* the failure event — what will be reported, on
      what cadence, to which oversight body, with what
      verification. Partial disclosure under crisis is not a
      strategy; it is what happens when no architecture was
      designed. Future validation will continue on the long-run
      regulatory consequences as Cruise pursues reinstatement
      and as the broader AV regulatory regime updates its
      disclosure requirements in light of the 2023 events.#cn()
    ],
  ),
  beats: (
    "2 October 2023: pedestrian struck by human-driven vehicle, propelled into path of Cruise robotaxi; Cruise vehicle stopped, then pullover maneuver dragged pedestrian ~20 ft at ~7 mph",
    "Cruise initial disclosure to regulators and reporters showed only the initial stop; full pullover sequence not disclosed",
    "DMV learned of pullover from another agency; obtained fuller video weeks after incident",
    "24 October 2023: DMV Order of Suspension revokes driverless deployment and testing permits, citing misrepresentation of safety-relevant information",
    "Journalism-tier flag: Order is investigation-grade; partial-disclosure mechanism reconstructed from TechCrunch, NBC News, SF Standard, Mission Local — future validation ongoing",
  ),
  approaches: (
    during: (
      [Design the incident-disclosure architecture before deployment, not under crisis — what will be reported, on what cadence, to which oversight body, with what verification by which agency.],
      [Treat the disclosure obligation as load-bearing on its own — partial disclosure of a safety-relevant event is not "less bad" than non-disclosure; under the regulator's framing it can be the failure mode that triggers revocation.],
      [Build the verification path the regulator will use into the architecture. The DMV learning the fuller sequence from another agency is the failure mode the architecture has to preclude.],
    ),
    after: (
      [Use the CLO *Delegation with revocation*: revocation pathways must be designed and exercisable, and the deploying organization should expect the regulator to exercise them when the disclosure architecture fails.],
      [Pair the case with Case 199 (Waymo) in any LENS Domain 4 module — the contrast between an engineered legitimacy artifact and partial crisis disclosure is the teaching point, not either case alone.],
      [Carry the journalism-tier flag honestly: the DMV Order is the investigation-grade primary; the internal-timeline reconstructions are journalistic; future validation will improve as Cruise's own post-mortem and any subsequent litigation discovery enter the public record.],
    ),
  ),
  references: (
    [California DMV (24 October 2023), Order of Suspension, Cruise LLC — driverless deployment and testing permits.],
    [NBC News (October 2023), reporting on the Cruise pedestrian incident and DMV suspension.],
    [TechCrunch (October 2023), incident-disclosure reconstruction.],
    [SF Standard (October 2023), San Francisco AV regulatory reporting.],
    [Mission Local (October 2023), San Francisco-specific incident reporting.],
    [Cruise public statements and partial post-mortem references, October–November 2023.],
  ),
  quote: [The collision involved a human driver. The suspension was about what the company chose not to show.],
  quote-source: "Editors' synthesis of the California DMV Order of Suspension and the contemporaneous reporting.",
  le-insight: [
    Cruise is the foil to Waymo: same regulatory regime, same
    delegation problem, opposite governance choice. The DMV's
    Order of Suspension is investigation-grade; the
    partial-disclosure mechanism is reconstructed from
    journalism. The evidence-tier flag is load-bearing — the
    internal timeline is journalism-tier and future validation
    continues as more of the company's own post-mortem
    becomes public.
  ],
  lens-approach: [
    Cruise is the AV partial-disclosure failure (induced 5.4;
    LENS D5/PT6). LENS uses it in Domain 5 (Navigating
    Sociotechnical Constraints) for the CLO *Delegation
    with revocation* — the case shows what revocation looks
    like when the disclosure architecture fails — and in
    Domain 3 (Emerging Systems and Human-System Collaboration) for the
    oversight obligations that follow when a system acts
    autonomously after a triggering event. Direct foil to
    Case 199 (Waymo); pairs with Case 200 (CPUC) on the
    regulator-side.
  ],
  literature-items: (
    [California DMV Order of Suspension, 24 October 2023],
    [Contemporaneous reporting: TechCrunch, NBC News, SF Standard, Mission Local],
    [Cruise public statements and partial post-mortem references],
  ),
  reflection-list: (
    [Imagine you operate an autonomous system that has just been involved in a safety-relevant event. Design the disclosure decision: what is reported, to whom, on what cadence, with what verification — *before* you have the lawyer's advice on what the disclosure obligation strictly requires. Where does your architecture leave you exposed?],
    [Compare Cases 199 (Waymo) and 158 (Cruise) as a paired teaching unit. What is the smallest pre-incident artifact a deploying organization could publish that would make the post-incident disclosure architecture credible to a regulator?],
    [The case rests partly on journalism-tier reconstruction of internal decisions. What evidence would you want to see — court discovery, the company's full post-mortem, a multi-source corroboration — before treating any specific internal-timeline claim as decision-grade?],
  ),
  courses: ("LEN 4", "LEN 8", "LEN 9"),
)

// ---- Case 191 — australia-robodebt ----
#case(
  number: 191,
  slug: "australia-robodebt",
  title: "Australia Robodebt — Algorithmic Debt-Recovery and the Royal Commission Verdict",
  year: "2016 – 2023",
  domains-list: ("government", "social welfare", "algorithmic administration"),
  modes-code: "DGN",
  impact: "Income-averaging algorithm used by the Australian Department of Human Services and Centrelink raised approximately 470,000 wrongful debts against welfare recipients between 2016 and 2019; Royal Commission led by Catherine Holmes AC SC delivered its final report July 7 2023 finding the scheme unlawful and circumstantially attributing multiple deaths to its operation",
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "5.2",
  lens-anchor: "D5+D3/PT6",
  clo-anchor: "CLO-5, CLO-3",
  summary: [
    The Royal Commission into the Robodebt Scheme delivered its
    final report on July 7, 2023, under the leadership of
    Commissioner Catherine Holmes AC SC. The report concluded that
    the income-averaging algorithm operated by the Australian
    Department of Human Services and Centrelink between 2016 and
    2019 had raised approximately 470,000 wrongful debts against
    welfare recipients and had operated outside the law. The
    algorithm averaged annual taxable income from the Australian
    Taxation Office across fortnightly Centrelink reporting periods
    and treated any resulting discrepancy as a debt the recipient
    had to disprove. The burden of proof was reversed onto the
    recipient. The Commission's attribution language on causation
    of deaths is careful — the attribution is circumstantial and
    not a direct legal finding of individual causation — but the
    finding that multiple deaths were associated with the scheme's
    operation is part of the adjudicated record. The case pairs
    with Case 189 (SyRI, the governance-objection-correct
    precedent), Case 48 (Johnson school surveillance, the
    algorithmic-public-administration parallel), and Case 5
    (Epic Sepsis, the delegation-without-validation form).
  ],
  sections: (
    [
      The Australian income-support architecture pairs Centrelink
      fortnightly income reporting with annual taxable income
      reporting to the Australian Taxation Office. The two
      reporting cadences exist because they measure different
      things — Centrelink measures earnings inside each fortnight
      so the income-test taper can be applied, and the ATO
      measures annual taxable income for the tax system. Between
      2016 and 2019, the Department of Human Services deployed an
      automated debt-recovery system that took the ATO annual
      figure, divided it by 26, and compared the fortnightly
      average against the Centrelink reported figures. Any
      apparent shortfall was raised as a debt against the
      recipient, and the recipient was required to produce
      contemporaneous payslips to disprove it.#cn()
    ],
    [
      The mathematical operation the algorithm performed cannot
      establish what it was being asked to establish. Annual
      income divided by 26 is not the income earned in any
      particular fortnight; a recipient who worked irregularly,
      or whose hours varied, would generate large arithmetic
      discrepancies between the averaged figure and the actual
      fortnightly earnings without ever having been overpaid. The
      Royal Commission's final report documents that the agency's
      own legal advice flagged this seam before deployment and
      that the advice was set aside. Approximately 470,000 debts
      were raised across the operating window; many recipients
      paid debts they did not owe, and the Commission identified
      cases in which recipients took their lives in proximity to
      the scheme's operation. The attribution language on those
      deaths is careful — "circumstantial" rather than a direct
      legal finding of individual causation — and the careful
      language is itself part of the record the case carries.#cn()
    ],
    [
      The structural critique the Commission delivered is the
      reversal of the burden of proof. In a properly administered
      welfare-recovery scheme, the agency must establish that a
      debt is owed before pursuing recovery. The income-averaging
      method reversed this: the algorithm asserted a debt on the
      strength of arithmetic that could not establish overpayment,
      and the recipient had to produce documentary evidence —
      often payslips from years earlier, often from employers no
      longer reachable — to disprove the assertion. The Federal
      Court's 2019 Prygodicz judgment had already found the
      method unlawful; the Royal Commission's 2023 report
      adjudicated the governance question of how the scheme had
      been built, approved, and operated for three years across
      multiple ministerial portfolios. The Commission named
      individuals; some are subject to subsequent referrals to
      the National Anti-Corruption Commission and to professional
      bodies.#cn()
    ],
    [
      The case pairs with Case 189 (SyRI, the Dutch System Risk
      Indication ruling by the Hague District Court) as the
      governance-objection-correct precedent — SyRI was struck
      down before it produced a debt-scale harm record;
      Robodebt operated for three years and the harm record is
      what the Commission adjudicated. Pair with Case 48
      (Johnson school surveillance) for the algorithmic-public-
      administration parallel at a different population and a
      smaller scale; the structural form — algorithm asserts,
      affected party must disprove — recurs across the two
      cases. Pair with Case 5 (Epic Sepsis) for the
      delegation-without-validation form: in Epic Sepsis the
      delegated system asserts a clinical risk; in Robodebt the
      delegated system asserts a financial debt; in both, the
      asserting party did not validate the assertion against the
      ground truth before consequences were transmitted to the
      affected person.#cn()
    ],
    [
      The hedges the case carries are load-bearing. The Royal
      Commission's attribution language on deaths is
      circumstantial; the Commission did not, and could not on
      the evidence available, make individual legal findings of
      causation in those deaths. The case teaches the structural
      pattern — algorithmic public administration with the burden
      of proof reversed, deployed without the legal-advice seam
      being honored, operated for three years across multiple
      ministers — and the structural pattern is what makes
      Robodebt the load-bearing reference for an entire class of
      contemporary algorithmic-administration failures. The
      Commission's careful attribution language and the case's
      careful editorial framing travel together; neither is
      smoothed in the casebook's rendering.
    ],
  ),
  beats: (
    "Income-averaging algorithm: ATO annual income ÷ 26 compared to Centrelink fortnightly reports; arithmetic cannot establish overpayment",
    "~470,000 wrongful debts raised 2016–2019; burden of proof reversed onto recipients; agency legal advice flagged the seam and was set aside",
    "Prygodicz 2019 Federal Court judgment found the method unlawful; Royal Commission final report July 7 2023 adjudicated the governance question",
    "Commission attribution on deaths is circumstantial — not individual legal findings of causation; the careful language is part of the record",
    "Pair with Case 189 (SyRI precedent), Case 48 (Johnson algorithmic public administration), Case 5 (Epic Sepsis delegation without validation)",
  ),
  approaches: (
    during: (
      [Treat agency legal advice on the lawfulness of an algorithmic-administration method as a binding gate, not a negotiable input; the Commission's record on Robodebt is that the seam was flagged in advance and that the override of the advice is itself the governance failure.],
      [Maintain the burden of proof on the asserting party for any algorithmically generated debt or risk; arithmetic that cannot establish the asserted fact cannot be the basis for transmitting consequences to an affected person.],
      [Build the cross-portfolio review surface that a multi-year algorithmic-administration scheme requires; Robodebt operated across multiple ministers and the cross-portfolio handoff was where the governance check kept being deferred.],
    ),
    after: (
      [Carry the Commission's careful attribution language on deaths into print without softening; the case's load-bearing quality depends on the circumstantial nature of the attribution being preserved alongside the structural finding.],
      [Pair in syllabi with Case 189 (SyRI) so the governance-objection-correct precedent and the governance-objection-overridden harm record are taught together; the two cases together teach what advance objection can prevent and what its absence can produce.],
      [Use the case to anchor the human-in-the-loop CLO at population scale; the form Robodebt makes legible is what consequential-decision delegation looks like when the loop is removed and the asserting party operates on arithmetic that cannot establish its assertion.],
    ),
  ),
  references: (
    [Royal Commission into the Robodebt Scheme, _Final Report_, Commissioner Catherine Holmes AC SC, July 7, 2023 (Commonwealth of Australia).],
    [Prygodicz v Commonwealth of Australia (No 2) \[2021\] FCA 634 — Federal Court class-action settlement following the 2019 unlawfulness finding.],
    [Australian National Audit Office, _Centrelink's Compliance Activities — Income Compliance Program_, performance audit reports across 2017–2020.],
    [Whiteford, P. (2021), "Debt by Design: The Anatomy of a Social Policy Fiasco," _Australian Journal of Public Administration_ 80(2):340–360 — academic synthesis of the policy and administrative history.],
  ),
  quote: [The income-averaging method could not establish what it was being asked to establish, the burden of proof was reversed onto the recipient, and the Commission's attribution on associated deaths is circumstantial — and these three facts together are what Robodebt teaches.],
  quote-source: "Editors' synthesis of the Royal Commission final report (Holmes AC SC, July 2023).",
  le-insight: [
    Robodebt is the load-bearing reference for algorithmic public
    administration deployed at population scale without the
    burden of proof being honored. The Royal Commission's final
    report adjudicated approximately 470,000 wrongful debts and
    circumstantially attributed multiple deaths to the scheme's
    operation; the careful attribution language and the
    structural finding travel together, and neither is smoothed
    in the casebook's rendering.
  ],
  lens-approach: [
    Robodebt is the burden-of-proof-reversal case at population
    scale (induced 5.2; LENS D5+D4/PT6; CLO-5 and CLO-3). LENS
    uses it in Domain 5 (Navigating Sociotechnical Constraints)
    for the agency-legal-advice-as-binding-gate discipline and in
    Domain 3 (Human-System Collaboration) for the human-in-
    the-loop-for-consequential-decisions anchor. Pair with Case
    155 (SyRI governance-objection-correct precedent), Case 48
    (Johnson school surveillance algorithmic-public-administration
    parallel), and Case 5 (Epic Sepsis delegation-without-
    validation form). The Commission's circumstantial attribution
    on deaths is the load-bearing hedge.
  ],
  literature-items: (
    [Royal Commission into the Robodebt Scheme, Final Report (Holmes AC SC, 2023)],
    [Prygodicz v Commonwealth (2021); ANAO compliance audits],
    [Whiteford (2021), _Australian Journal of Public Administration_],
  ),
  reflection-list: (
    [Identify an algorithmic-administration scheme in your domain whose arithmetic asserts a fact against an affected person. What is the asserting party's burden of proof, and what would the affected person have to produce to disprove the assertion?],
    [Specify the legal-advice gate you would treat as binding in advance of deployment. What is the documented escalation path when the advice flags an unlawfulness seam, and who has authority to override it?],
    [The Royal Commission's attribution on deaths is circumstantial — careful, not adjudicated as individual legal findings. Pick a setting where harm attribution to an algorithmic system is contested, and ask: what language would honor both the structural pattern and the limits of what the evidence can establish?],
  ),
  courses: ("LEN 5", "LEN 8", "LEN 9"),
)

// ---- Case 192 — apple-card-algorithmic-gender-disparity ----
#case(
  number: 192,
  slug: "apple-card-algorithmic-gender-disparity",
  title: "Apple Card / Goldman Sachs — When the Lender Cannot Explain Its Own Model",
  year: "2019 – 2021",
  domains-list: ("financial services", "consumer credit", "algorithmic decision-making"),
  modes-code: "DKN",
  impact: "New York State Department of Financial Services investigation March 2021 found no violation of New York anti-discrimination law in Apple Card credit-limit decisions following David Heinemeier Hansson's November 2019 viral allegation that his wife received a credit limit approximately 20 times lower despite shared assets; DFS documented \"lack of transparency\" as the structural problem and required Goldman Sachs to overhaul its customer-service process",
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "5.2",
  lens-anchor: "D5/PT6",
  clo-anchor: "CLO-5, CLO-3",
  summary: [
    On November 7, 2019, software developer David Heinemeier
    Hansson posted on Twitter that his Apple Card credit limit
    had been set approximately 20 times higher than his wife
    Jamie Heinemeier Hansson's, despite the couple filing taxes
    jointly and Jamie having a higher credit score. The thread
    went viral, with Apple co-founder Steve Wozniak reporting a
    similar disparity with his wife. The New York State
    Department of Financial Services opened an investigation. Its
    March 2021 report concluded that the credit-decisioning
    algorithm operated by Goldman Sachs (the issuing bank for
    Apple Card) did not violate New York anti-discrimination law,
    finding no statutory finding of intent or disparate-impact
    violation. DFS documented "lack of transparency" as the
    structural problem: Goldman Sachs could not adequately explain
    individual credit decisions to applicants who challenged them.
    DFS required Goldman Sachs to overhaul its customer-service
    process. The case pairs with Case 186 (Bartlett mortgage),
    Case 196 (Coots), and Case 86 (Gándara). The DFS finding of
    "no violation but lack of transparency" is the load-bearing
    nuance.
  ],
  sections: (
    [
      The Apple Card launched in August 2019 as a co-branded
      consumer credit product issued by Goldman Sachs, with
      underwriting and credit-line decisions made by Goldman's
      consumer-banking unit. The product was Goldman's first
      retail consumer credit product at meaningful scale, and the
      decisioning architecture was built de novo against
      contemporary algorithmic-underwriting practice. On
      November 7, 2019, David Heinemeier Hansson posted that his
      Apple Card credit limit was approximately 20 times his
      wife's, despite jointly filed taxes and Jamie's higher
      credit score. The thread surfaced similar reports — Steve
      Wozniak named the same pattern with his wife — and rapidly
      moved from social media to regulatory attention.#cn()
    ],
    [
      The structural seam the case opens is that Goldman Sachs
      could not adequately explain individual credit decisions to
      the applicants who challenged them. When Jamie Heinemeier
      Hansson asked Goldman to explain why her credit limit was
      lower, the customer-service response was that the algorithm
      had set the limit and that the decision could not be
      explained at the individual level. The escalation moved
      through standard customer-service channels, then to social-
      media-amplified public pressure, then to regulatory
      investigation, and at no point along the path did Goldman
      surface an account of why the decision had been made. The
      explainability gap was operational rather than algorithmic
      in the narrow sense: even if the underlying model was
      defensible at the population level, the bank had not built
      the infrastructure to defend individual decisions to
      applicants.#cn()
    ],
    [
      The New York State Department of Financial Services opened
      its investigation in late November 2019 and released its
      findings in March 2021. The headline finding was that DFS
      did not find a violation of New York anti-discrimination
      law — neither intentional discrimination nor an actionable
      disparate-impact violation under the applicable standards.
      The investigation reviewed approximately 400,000 New York
      State credit-line decisions. The hedge is binding: DFS's
      "no violation" finding is specific to the statutory standard
      the agency applied, not a general finding that the
      decisioning was fair or non-discriminatory across all
      criteria. What DFS did find was "lack of transparency" as
      the structural problem and required Goldman Sachs to
      overhaul its customer-service process, build appeal
      mechanisms, and document its credit-decisioning explanations
      at the individual-applicant level.#cn()
    ],
    [
      The case pairs with Case 186 (Bartlett mortgage) for the
      consumer-credit-fairness thread at adjacent scale and
      regulatory regime. Pair with Case 196 (Coots) for the
      competing-fairness-definitions thread; the DFS standard is
      one of several available standards, and the case teaches
      that "no violation under a specific statutory standard" is
      not "fair." Pair with Case 86 (Gándara) for the
      explainability-of-individual-predictions thread at a
      different population and scale. The case is unusual in the
      casebook for the speed of regulatory response — DFS opened
      the investigation within weeks of the viral thread — and
      for the structural conclusion that the failure was
      explainability rather than the decisioning algorithm
      itself.#cn()
    ],
    [
      The load-bearing hedge is the precise DFS finding. The case
      does not teach that Apple Card was unfair, and it does not
      teach that DFS found Apple Card was fair. It teaches that
      under the specific statutory standard the agency applied,
      no violation was found, and that the structural failure
      the agency named was "lack of transparency" — Goldman
      Sachs's inability to explain individual credit decisions to
      applicants who challenged them. The human-in-the-loop CLO
      is anchored by the case at the appeal-and-explanation
      seam: a consequential-decision system that cannot explain
      its individual decisions to affected applicants does not
      have a functioning human-in-the-loop appeal mechanism, and
      the absence of the mechanism is the governance failure
      whether or not the decisioning is statistically
      defensible.
    ],
  ),
  beats: (
    "Nov 7 2019: Heinemeier Hansson Twitter thread on ~20× Apple Card credit-limit disparity; Wozniak names similar pattern; viral within days",
    "Goldman Sachs (issuing bank) cannot explain individual credit decisions to challenging applicants; explainability gap is operational, not narrowly algorithmic",
    "NY DFS investigation opened late Nov 2019, findings released March 2021; reviewed ~400,000 New York credit-line decisions",
    "DFS: no violation of NY anti-discrimination law under applicable statutory standard; structural finding is \"lack of transparency\"",
    "Goldman required to overhaul customer-service process, build appeal mechanisms, document individual-applicant credit-decisioning explanations",
  ),
  approaches: (
    during: (
      [Build the individual-applicant explanation infrastructure as part of the deployment, not as a customer-service afterthought; the Apple Card case demonstrates that a defensible population-level model paired with no individual-explanation infrastructure produces a regulatory finding of lack of transparency.],
      [Specify the appeal mechanism before the first decision is made; the human-in-the-loop CLO at consumer-credit scale is the appeal-and-explanation seam, and its absence is the governance failure the case names.],
      [Treat the customer-service escalation path as a deployment surface, not a support function; the case's escalation went from customer service to social media to regulation in days, and the deployment surface that mattered was the first one.],
    ),
    after: (
      [Carry the precise DFS finding into print without softening; "no violation under the applicable statutory standard, but lack of transparency as the structural problem" is the load-bearing nuance and the case's pedagogical value depends on the nuance being preserved.],
      [Pair in syllabi with Case 186 (Bartlett) so the consumer-credit-fairness regulatory architecture is taught at both the mortgage and credit-card scales.],
      [Use the case as the anchor for the explainability-as-governance frame at consumer-credit scale; the curricular target is the appeal-and-explanation infrastructure that converts an algorithmic decision into a contestable one.],
    ),
  ),
  references: (
    [New York State Department of Financial Services, _Report on Apple Card Investigation_, March 23, 2021.],
    [Heinemeier Hansson, D. (2019), Twitter thread of November 7, 2019, archived in DFS investigation record and contemporaneous press coverage (Bloomberg, _New York Times_, _Wall Street Journal_, November 2019).],
    [Vigdor, N. (2019), "Apple Card Investigated After Gender Discrimination Complaints," _The New York Times_, November 10, 2019.],
    [Goldman Sachs Bank USA, public response and credit-line-review process documentation submitted to DFS during the investigation (2019 – 2021).],
  ),
  quote: [DFS did not find a violation of New York anti-discrimination law; DFS did find lack of transparency as the structural problem, and required Goldman Sachs to overhaul its customer-service process — the case teaches that "no violation under a statutory standard" is not "fair."],
  quote-source: "Editors' synthesis of the NY Department of Financial Services report on the Apple Card investigation (March 2021).",
  le-insight: [
    Apple Card is the consumer-credit explainability case at
    deployment scale. DFS found no violation of New York anti-
    discrimination law under the applicable statutory standard,
    and DFS also found lack of transparency as the structural
    problem; Goldman Sachs was required to overhaul its
    customer-service process and build individual-applicant
    appeal mechanisms. The load-bearing hedge is the precision
    of the DFS finding — neither "fair" nor "unfair," but "no
    violation under this standard, transparency gap as the
    structural problem."
  ],
  lens-approach: [
    Apple Card is the explainability-as-governance case at
    consumer-credit scale (induced 5.2; LENS D5/PT6; CLO-5 and
    CLO-3). LENS uses it in Domain 5 (Navigating Sociotechnical
    Constraints) for the appeal-and-explanation-infrastructure
    discipline and in Domain 3 (Human-System Collaboration)
    for the human-in-the-loop-for-consequential-decisions anchor
    at the appeal seam. Pair with Case 186 (Bartlett mortgage),
    Case 196 (Coots competing fairness definitions), and Case
    133 (Gándara explainability of individual predictions). The
    precise DFS finding — "no violation but lack of transparency"
    — is the load-bearing hedge.
  ],
  literature-items: (
    [NY DFS, _Report on Apple Card Investigation_ (March 2021)],
    [Heinemeier Hansson Twitter thread (Nov 7 2019); contemporaneous press coverage],
    [Paired Case 186 (Bartlett mortgage) consumer-credit-fairness architecture],
  ),
  reflection-list: (
    [Identify a consequential-decision system in your domain whose individual-applicant explanation infrastructure has not been built. What is the customer-service escalation path when an affected person challenges a decision, and what would the path look like with an appeal-and-explanation seam built into the deployment?],
    [Specify the precise statutory or regulatory standard against which your deployment is being evaluated. What does "no violation under this standard" leave open about fairness across other standards, and how would the trade-off be disclosed?],
    [The Apple Card escalation moved from customer service to social media to regulatory investigation within days. Pick a deployment in your domain and ask: what is the first deployment surface an affected person encounters when challenging a decision, and what would have to be true for that surface to resolve the challenge before it moves further?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 193 — bernard-madoff-sec-failures ----
#case(
  number: 193,
  slug: "bernard-madoff-sec-failures",
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
      (Case 10) as a case in which a regulator lacked the technical
      capability to challenge the evidence in front of it.#cn()
    ],
  ),
  beats: (
    "Former NASDAQ chairman reported steady returns that were entirely fictitious Ponzi fabrications",
    "Markopolos delivered SEC a detailed quantitative memo in 2005; investigation closed without action",
    "SEC Inspector General found numerous missed opportunities and staff deference to Madoff's stature",
    "Regulator's technical-evaluation pipeline lacked people able to check the checkable math",
    "Collapse prompted SEC reforms including Office of Market Intelligence for technical triage",
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
    LENS uses Madoff in LEN 6 as an operator-to-institution
    feedback-channel failure: Harry Markopolos sent the SEC a specific,
    checkable memo — the channel existed and the signal was correct —
    and the institution had no one able to act on what came through it.
    The teaching point is the receiving capability a feedback channel
    requires to be real: a tip line without the technical expertise to
    evaluate the tip is not a channel. It pairs with the Mark 14
    torpedo (Case 133), where the Bureau of Ordnance dismissed
    submariners' field reports for the same structural reason — the
    channel carried the truth and the institution could not receive it
    — and with Theranos (Case 10) on the regulator's missing technical
    depth. The Ponzi narrative is not the lesson; the channel is.
  ],
  induced-anchor: "6.2",
  lens-anchor: "D5/PT3",
  clo-anchor: "CLO-2",
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
  scale: "big",
  evidence-source: "investigation",
)
