// ============================================================
// Part II — Education, Training & the Learning Workforce · What Fails (Chapter 3)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part II — Education, Training & the Learning Workforce",
  number: "3",
  title: "Education, Training & the Learning Workforce — What Fails",
  subtitle: "When learning systems scale faster than their evidence.",
  epigraph: [The pilot results were real. The scale-up assumed they would travel on their own.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Case 45 — tennessee-voluntary-pre-k-study ----
#case(
  number: 45,
  slug: "tennessee-voluntary-pre-k-study",
  title: "Tennessee Voluntary Pre-K Study",
  year: "2009–2018",
  domains-list: ("education",),
  modes-code: "GD",
  impact: "Vanderbilt longitudinal RCT of a state-funded universal pre-K program: early gains faded by third grade; sixth-grade outcomes were worse than the control group on several measures",
  diagram: dgm.dgm-curve(
    ((1.0, 2.6), (2.0, 2.7), (3.5, 1.9), (5.5, 1.0), (7.5, 0.8), (8.8, 0.7)),
    milestone: 2.0,
    milestone-label: "kindergarten",
    x-label: "grade level",
    y-label: "effect size",
    framing: "early gains fade; by sixth grade the curve runs below the control",
    caption: "Tennessee Pre-K — measurement architecture worked; the field's response did not",
  ),
  kind: "failure",
  summary: [
    Tennessee's Voluntary Pre-K program enrolled some 18,000 four-year-olds
    a year, and Vanderbilt researchers studied it with a rare large-scale
    randomized controlled trial — children randomly assigned to an offer of admission against children randomly assigned to the wait list. Through kindergarten the pre-K children
    showed the expected gains in literacy and vocabulary. By third grade the control children had caught up and surpassed them, and by sixth grade the pre-K group scored lower on state reading, math and science tests and had more disciplinary infractions and special-education placements. The unwelcome
    result was contested, its methods attacked, and the field largely
    declined to absorb it. The case is in the book not because pre-K is bad —
    other programs show durable effects — but because the measurement was
    unusually rigorous and the discipline's capacity to act on an
    inconvenient finding was tested and largely failed.
  ],
  sections: (
    // -- Background --
    [
      The Tennessee Voluntary Pre-Kindergarten Program served roughly 18,000
      four-year-olds a year. Demand exceeded supply, and that scarcity created
      an ethical lottery — a fair way to ration scarce seats that doubled as a
      clean randomizer. It let Vanderbilt's Peabody Research Institute run
      something rare in education: a randomized controlled trial, following children randomly assigned to an offer of admission against children randomly assigned to the wait list, the kind of design rarely available in a live policy setting.#cn()
    ],
    // -- What Happened --
    [
      Through kindergarten the pre-K children showed the expected gains —
      stronger letter knowledge, vocabulary, early literacy — exactly the
      early result the program had been funded to produce. By third grade the control children had caught up and surpassed them. By sixth grade, the researchers reported, the pre-K children scored *lower* on state reading, math and science tests and had more disciplinary infractions and special-education placements — a reversal
      that turned an expected success story into an uncomfortable one the
      longitudinal design had been built to detect.#cn()
    ],
    // -- The Investigation --
    [
      The result contradicted policy consensus and provoked an unusual
      response: the study was attacked, its methods contested, and the field
      largely declined to internalize the findings, defending the policy
      rather than interrogating it. Other rigorous programs — Perry Preschool,
      Abecedarian — remain durable, so the lesson is not that pre-K fails; it
      is that a discipline met an unwelcome, well-measured answer and mostly
      looked away, treating the inconvenient evidence as an attack to repel
      rather than a finding to absorb.#cn()
    ],
    // -- The Capability Gap --
    [
      Tennessee Pre-K is the cleanest case in the dataset for what happens
      when a field has not engineered its own capacity to update on contrary
      evidence. The measurement instrument worked — a real RCT in a real
      policy setting, the rare study whose design could not easily be waved
      off. The institutional architecture for acting on what it found did not,
      so a strong instrument fed a discipline with no pathway to receive its
      answer. A measurement that returns an inconvenient result is only as
      valuable as the discipline's willingness to absorb it, and here the
      willingness was the part that was missing.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The debate continued for years through follow-up studies and
      counter-analyses, and the episode became a touchstone in the
      methodology of early-childhood research — argued over more than acted
      upon.#cn() Its place in this book is as a governance-of-evidence case:
      the capability that needed engineering was not a better study but an
      implementation-science pathway that could route an unwelcome finding
      into program redesign rather than rejection, so the cost of the study
      bought a course correction instead of a controversy.
    ],
  ),
  beats: (
    "Tennessee Voluntary Pre-K served 18,000 four-year-olds; oversubscription enabled a rare lottery-based RCT",
    "Controls caught up and surpassed by third grade; sixth-grade pre-K children scored lower and had more infractions",
    "Field contested the methods and largely declined to internalize findings, defending policy rather than interrogating",
    "Measurement instrument worked; institutional architecture for absorbing inconvenient evidence did not exist",
    "Episode became methodological touchstone in early-childhood research, argued over more than acted upon",
  ),
  references: (
    [#link("https://doi.org/10.1016/j.ecresq.2018.03.005")[M. Lipsey, D. Farran & K. Durkin, "Effects of the Tennessee Pre-Kindergarten Program… Through Third Grade," _Early Childhood Research Quarterly_ 45: 155–176 (2018)] — the RCT and fade-out.],
    [K. Durkin, M. Lipsey, D. Farran & S. Wiesen, "Effects of a Statewide Pre-Kindergarten Program… Through Sixth Grade," _Developmental Psychology_ 58(3): 470–484 (2022) — the sixth-grade reversal (quoted).],
    [Responses and counter-analyses to the TN-VPK findings (2018–2022) — the contested reception.],
    [National Institute for Early Education Research, _State of Preschool_ yearbooks (2010–2022) — program scale and context.],
    [D. Phillips et al., _Puzzling It Out: The Current State of Scientific Knowledge on Pre-Kindergarten Effects_ (2017); J. Heckman on durable early-childhood programs.],
  ),
  quote: [By sixth grade, children who had attended TN-VPK were doing somewhat worse on academic achievement and discipline measures than children in the control group.],
  quote-source: "Durkin, Lipsey, Farran & Wiesen (2022), Vanderbilt Peabody Research Institute",
  le-insight: [
    Tennessee Pre-K is the cleanest case in the dataset for what
    happens when a discipline has not engineered its own capacity to
    update on contrary evidence. The measurement instrument worked.
    The institutional architecture for acting on what it found did
    not. Compare to Case 8 (Makary methodology debate) and Case 7
    (VA Wait-Time): in each, a measurement that returned an
    unwelcome answer was contested rather than absorbed.
  ],
  lens-approach: [
    LENS uses Tennessee Pre-K in LEN 4 as a measurement-architecture
    case (longitudinal RCT in a real policy context), in LEN 7 to
    discuss the institutional politics of unwelcome findings, and in
    LEN 10 as a studio prompt for designing the implementation-science
    pathway that would absorb such findings into program redesign
    rather than rejection.
  ],
  literature-items: (
    [Lipsey, Farran & Durkin (2018, 2022) — primary study and 6th-grade follow-up],
    [Heckman (2008), _The Case for Investing in Disadvantaged Young Children_],
    [Phillips et al. (2017), _Puzzling It Out: The Current State of Scientific Knowledge on Pre-Kindergarten Effects_],
  ),
  reflection-list: (
    [What measurement instrument in your domain has returned an unwelcome answer, and how did the discipline respond?],
    [Design the implementation-science pathway that would absorb a Tennessee-Pre-K-style finding into program redesign rather than rejection.],
    [The Tennessee RCT was strong enough that its methods were attacked rather than its conclusion accepted. What decides, in your field, whether a rigorous but inconvenient result is absorbed or contested — and who holds the authority to act on it?],
  ),
  approaches: (
    during: (
      [Commit in advance to a decision rule for how an unwelcome but well-measured result will change the program, so the response is designed before the finding arrives.],
      [Build the longitudinal measurement to detect fade-out and reversal, not just the early gains a program is funded to show.],
      [Establish an implementation-science pathway that can route a contrary finding into redesign, giving the evidence somewhere to go.],
    ),
    after: (
      [Audit how the discipline actually receives inconvenient evidence, treating reflexive method-attacks as a symptom of a missing absorption pathway.],
      [Sustain follow-up measurement through later grades so a faded or reversed effect cannot be obscured by an early success.],
      [Protect the independence of the measurement function so a strong instrument is not dismantled for returning an answer the field did not want.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 10",),
  scale: "big",
  induced-anchor: "2.4",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4",
)

// ---- Case 46 — algorithmic-bias-in-educational ----
#case(
  number: 46,
  slug: "algorithmic-bias-in-educational",
  title: "Algorithmic Bias in Educational Predictive Analytics",
  year: "ongoing",
  domains-list: ("education",),
  modes-code: "GHD",
  impact: "Predictive \"at-risk\" models misclassify by race in two directions — a community-college degree model would route support to fewer marginal Black students, and national models over-predict failure for Black and Hispanic students; 63 percent of institutions in a 2020 Chronicle survey use predictive analytics for retention",
  diagram: dgm.dgm-edbias,
  kind: "failure",
  summary: [
    Sixty-three percent of the 589 institutions in a 2020 Chronicle survey use predictive analytics to improve retention and graduation, most often by flagging "at-risk" students for early support. Research finds these models carry racial calibration bias, and it runs two ways: Bird and colleagues find a degree-completion model would send extra support to fewer marginal Black students, and Gándara and colleagues find models predict failure for Black and Hispanic students who in fact succeed. Either way the flag misdirects the support the prediction is meant to trigger. The magnitude depends heavily on how
    "at-risk" is defined, making this partly a construct-definition problem:
    the choice of what to predict is itself a capability decision with equity
    consequences. The models inherit historical patterns of discrimination
    from their training data, and a "flag" can confirm a biased instructor's
    low expectations rather than prompt help. It is the educational analog of
    the UK A-level case — an algorithm built to do good that can allocate
    help away from the students who need it most.
  ],
  sections: (
    // -- Background --
    [
      Colleges increasingly use predictive analytics to identify students at
      risk of failing or dropping out, so advisors can intervene early — a
      genuinely well-meant aim, to reach struggling students before they
      vanish. Sixty-three percent of the 589 institutions surveyed by the Chronicle in 2020 said they use some form of these models, which makes any bias they carry a quiet, sector-wide feature of how support is allocated rather than an isolated experiment.#cn()
    ],
    // -- What Happened --
    [
      The intervention is well-intentioned, but research finds the models
      carry racial calibration bias: they miscalibrate by race in two directions: a Virginia community-college degree model over-predicts success for Black students, so fewer marginal Black students are flagged for support, while national models over-predict failure for Black and Hispanic students who actually succeed. In both readings the flag lands on the wrong students.
      Crucially, the magnitude of the bias depends on how "at-risk" is
      defined, which makes it partly a construct-definition problem rather
      than a coding bug — a flaw in what the model was asked to predict, not
      in how it computes the prediction.#cn()
    ],
    // -- The Investigation --
    [
      Researchers studying equity in completion-prediction models have
      documented these calibration gaps and traced them to training data
      that encodes historical patterns of discrimination — so the model
      learns the past's inequities and projects them forward as predictions.#cn()
      Baker and Hawn's review catalogs which groups algorithmic bias in education is known to harm and which stages and agents in the development and deployment of educational algorithms are implicated — and the harm compounds when
      an instructor with deficit assumptions reads an "at-risk" flag as
      confirmation rather than a cue to help, letting the prediction become a
      self-fulfilling label.#cn()
    ],
    // -- The Capability Gap --
    [
      The bias is not in the math; it is in the definition of "at-risk."
      Define it one way and support flows to one population; define it
      another way and it flows to another, so the construct silently sets who
      the system decides to help. The choice of what the model predicts — the
      construct — is a capability-engineering decision with measurable equity
      consequences, and it is the part most often made implicitly, by whoever
      assembles the training labels, rather than governed deliberately by
      anyone accountable for where help is sent.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Unlike the discrete failures elsewhere in this chapter, this one is
      ongoing and quiet — embedded in advising dashboards at hundreds of
      institutions — which is what makes it dangerous: there is no single
      collapse to force a reckoning, only a steady misallocation no headline
      announces.#cn() Its lesson, pushed upstream, is the chapter's:
      governing an algorithm's fairness begins not at deployment but at
      construct definition and label choice, with an equity audit of what the
      model is asked to predict and for whom the prediction allocates help —
      catching the bias where it is introduced rather than where it surfaces.
    ],
  ),
  beats: (
    "Sixty-three percent of institutions in a 2020 Chronicle survey use predictive analytics to flag at-risk students for early advising support",
    "Research finds racial calibration bias misclassifying Black and Latinx students; magnitude depends on construct",
    "Researchers traced calibration gaps to training data encoding historical discrimination; deficit framing compounds harm",
    "Bias lives in the construct definition of at-risk; capability-engineering decision made implicitly through labels",
    "Ongoing and quiet across hundreds of dashboards; no single collapse forces a reckoning",
  ),
  references: (
    [_The Evolving State of Predictive Analytics_, The Chronicle of Higher Education (2020), survey conducted by Maguire Associates, 589 institutions — 63 percent use predictive analytics for retention and graduation; only 20 percent institution-wide.],
    [K. Bird et al., "Are Algorithms Biased in Education? Exploring Racial Bias in Predicting Community College Student Success," _Journal of Policy Analysis and Management_ 44 (2025), 379–402 — racial calibration bias, ~5× higher at the bottom decile depending on the "at-risk" construct.],
    [D. Gándara, H. Anahideh, M. Ison & L. Picchiarini, "Inside the Black Box: Detecting and Mitigating Algorithmic Bias across Racialized Groups in College Student-Success Prediction," _AERA Open_ (2024) — bias traced to training data encoding historical discrimination.],
    [R. Baker & A. Hawn, "Algorithmic Bias in Education," _International Journal of Artificial Intelligence in Education_ 32 (2022), 1052–1092 — foundational review of algorithmic bias in education.],
    [M. Ekowo & I. Palmer, _Predictive Analytics in Higher Education: Five Guiding Practices for Ethical Use_, New America (2017) — the deficit-versus-asset mindset and the handling of "at-risk," "low-risk," and "high-risk" labels from early-alert systems.],
    [Cf. UK A-Level / Ofqual (Case 49); V. Eubanks, _Automating Inequality_ (2018).],
  ),
  quote: [Algorithmic bias in educational systems poses significant threats to educational equity, potentially amplifying existing social and economic disparities.],
  quote-source: "Editors' paraphrase of Baker & Hawn (2021)",
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
    (Case 80). LEN 4 examines construct definition as the decisive
    measurement choice. LEN 7 examines the governance architecture that
    determines whose construct gets adopted. LEN 9 covers the
    technical bias-mitigation methods.
  ],
  literature-items: (
    [Bird et al. (2025), _JPAM_; Gándara et al. (2024), _AERA Open_],
    [Baker & Hawn (2021) on algorithmic bias in education],
    [Friedman & Nissenbaum (1996), "Bias in Computer Systems"],
  ),
  reflection-list: (
    [Pick a predictive analytic in your institution. Reconstruct the construct definition behind it. What is the equity consequence of that definition?],
    [Design the governance review that a new predictive model should pass before it allocates resources to or away from a population.],
    [This failure is ongoing and quiet, with no single collapse to force a reckoning. What would it take to make a slow, distributed misallocation visible enough that someone with authority had to act on it?],
  ),
  approaches: (
    during: (
      [Govern the construct definition deliberately: have an accountable owner decide and document what "at-risk" means and whom the prediction will route help toward.],
      [Audit training data for encoded historical discrimination before fitting, so the model does not learn past inequities as future predictions.],
      [Test calibration across racial groups during development and treat disparate misclassification as a design defect, not a tolerable residual.],
    ),
    after: (
      [Monitor deployed dashboards for the quiet, distributed misallocation that has no single failure event to announce it.],
      [Train advisors and instructors to read an "at-risk" flag as a cue to help rather than confirmation of a deficit assumption.],
      [Sustain a recurring equity audit of what each model predicts and for whom, since a bias embedded across hundreds of institutions persists until someone is tasked to find it.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 9"),
  scale: "big",
  induced-anchor: "8.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4",
)

// ---- Case 47 — algorithmic-bias-in-automated-exam ----
#case(
  number: 47,
  slug: "algorithmic-bias-in-automated-exam",
  title: "Algorithmic Bias in Automated Exam Proctoring",
  year: "2022",
  domains-list: ("ed-tech", "algorithmic fairness", "assessment"),
  modes-code: "DNK",
  impact: "The first quantitative study of facial-detection bias in automated exam proctoring software found that students with darker skin tones and Black students were significantly more likely to be flagged for instructor review for potential cheating; at the race–sex intersection, women with the darkest skin tones were 4.4 times more likely to be flagged than medium-skin-tone women and 5.6 times more likely than lighter-skinned women",
  kind: "failure",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.2",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-5",
  summary: [
    The COVID-era expansion of remote learning produced a rapid
    deployment of automated exam-proctoring software across higher
    education: computer-vision systems that monitor the student
    via webcam during an exam and flag suspicious behavior for
    instructor review. Yoder-Himes et al. (_Frontiers in
    Education_, 2022) ran the first quantitative study of
    facial-detection bias in this class of software. Students with
    darker skin tones and Black students were significantly more
    likely to be flagged for instructor review for potential
    cheating than students with lighter skin tones; at the
    race–sex intersection, women with the darkest skin tones were
    far more likely to be flagged than other groups. The study
    examined one major proctoring product and concludes the
    product "may employ biased AI algorithms that unfairly
    disadvantage students." It documents the disparity but not a
    remediation, so it is a failure / diagnosis case. The harm
    comes directly from validation that did not stratify across
    skin tone, surfacing a group-specific failure in a deployed
    system. Trio with Cases 25 (eGFR), 26 (pulse oximetry), and
    6 (Hoffman pain bias) at the race-construct-and-validation
    layer.
  ],
  sections: (
    [
      Automated exam proctoring is a recent and rapidly deployed
      class of ed-tech: a webcam-based monitoring system that
      observes the student during a remote-administered exam and
      uses computer vision to flag suspicious behavior — looking
      off-camera, multiple faces in the frame, the face leaving
      the frame — for instructor review. The COVID-era pivot to
      remote instruction expanded the deployment of this software
      across U.S. higher education at speed. The systems' face
      detection and face tracking are the computer-
      vision components: a failure in face detection translates
      directly into a false flag for instructor review, and
      systematic failures in face detection across demographic
      groups translate into systematic group-level harm.#cn()
    ],
    [
      Yoder-Himes et al. (_Frontiers in Education_, 2022) ran the
      first published quantitative study of facial-detection bias
      in this class of software. The study examined the instructor outputs for about 357 students in four large STEM courses at a single university, with skin tone classified on an expanded Fitzpatrick scale and race and sex taken from university records. The headline finding
      ran in the direction the broader face-recognition-bias
      literature had documented (Buolamwini and Gebru, Raji, and
      others) and extended that finding into the assessment
      context. Students with darker skin tones, and Black students
      specifically, were significantly more likely to be flagged
      for instructor review for potential cheating than students
      with lighter skin tones.#cn()
    ],
    [
      The intersectional analysis sharpened the finding.
      Women with the darkest skin tones were 4.4 times more likely to be flagged than medium-skin-tone women and 5.6 times more likely than lighter-skinned women — the race-by-sex intersection produced the largest disparity, consistent
      with the broader face-recognition literature's intersectional
      findings. The harm class is not abstract: a flag for
      instructor review under an academic-integrity process
      produces real downstream consequence — the student has to
      defend themself against a suspicion the software generated,
      and the institutional resolution mechanism is not designed
      for the case where the suspicion was generated by a
      software bias rather than by a student behavior.#cn()
    ],
    [
      The study's claim is calibrated and direct: the product
      "may employ biased AI algorithms that unfairly disadvantage
      students." The study documents the disparity in a real
      deployment of a real product and does not document a
      remediation, so it is a failure / diagnosis case rather
      than a failure-to-intervention arc. The harm comes
      directly from validation that did not stratify across skin
      tone: the computer-vision face-detection model behind the
      proctoring system was deployed without demographic
      validation of its detection rates, and the group-specific
      failure was therefore present in the deployed system from
      day one and only surfaced post-hoc by external
      researchers.#cn()
    ],
    [
      Drafted alongside the race-construct trio (Cases 25
      eGFR, 26 pulse oximetry, 6 Hoffman pain bias), the
      proctoring case extends the validation-must-be-
      demographically-stratified lesson into the ed-tech and
      assessment context. The structural form is the same as
      pulse oximetry: a deployed system measured on an
      unrepresentative sample, producing aggregate accuracy that
      conceals a group-specific failure for years, until external
      researchers stratify the validation post-hoc. The eGFR
      cross-reference is the construct-definition counterpart;
      the Hoffman cross-reference is the human-judgment
      counterpart. All four sit in the small-and-big-tier
      conversation about validation discipline as an equity
      design commitment.
    ],
  ),
  beats: (
    "COVID-era expansion of remote-learning automated exam proctoring; webcam-based face detection flagging suspicious behavior for instructor review",
    "Yoder-Himes et al. _Frontiers in Education_ 2022 — first published quantitative study of facial-detection bias in this class of software",
    "Students with darker skin tones and Black students significantly more likely to be flagged for instructor review for potential cheating",
    "Intersectional finding: women with the darkest skin tones far more likely to be flagged than other groups",
    "Failure / diagnosis case: documents the disparity, not a remediation; trio with Cases 25 (eGFR), 26 (pulse oximetry), 6 (Hoffman pain bias)",
  ),
  approaches: (
    during: (
      [Stratify validation across skin tone (and across the race–sex intersection) before deployment, not after, so the group-specific failure surfaces in the engineering record before it surfaces in the harm record.],
      [Specify the harm class the false-positive flag produces — academic-integrity defense, downstream consequence to the student — and design the institutional resolution mechanism to handle the case where the flag was generated by software bias.],
      [Require the proctoring vendor to publish demographic stratification of their detection rates, on a standard skin-tone scale, as a deployment condition rather than as a post-hoc disclosure.],
    ),
    after: (
      [Treat the Yoder-Himes finding as the diagnosis it is: the disparity is documented in one product; the remediation is not.],
      [Carry the intersectional reading explicitly (women with the darkest skin tones far more likely to be flagged) in any communication about the case; the broader race-by-sex intersectional finding is consistent with the face-recognition-bias literature and should not be smoothed into a single-dimension finding.],
      [Build the cross-case reading with eGFR (Case 25), pulse oximetry (Case 26), and Hoffman pain bias (Case 6): the validation-must-be-demographically-stratified lesson runs across clinical, device, and assessment domains, and the proctoring case is the assessment-domain anchor.],
    ),
  ),
  references: (
    [Yoder-Himes, D. R., Asif, A., Kinney, K., Brandt, T. J., Cecil, R. E., Himes, P. R., Cashon, C., Hopp, R. M. P., \& Ross, E. (2022). Racial, skin tone, and sex disparities in automated proctoring software. _Frontiers in Education_, 7:881449. doi:10.3389/feduc.2022.881449 — the case's primary study.],
    [Buolamwini, J., \& Gebru, T. (2018). Gender shades: Intersectional accuracy disparities in commercial gender classification. _Proceedings of Machine Learning Research_, 81:77–91 — the foundational intersectional-bias finding in face recognition.],
    [Raji, I. D., \& Buolamwini, J. (2019). Actionable auditing: Investigating the impact of publicly naming biased performance results of commercial AI products. _AAAI/ACM Conference on AI, Ethics, and Society_ — the audit-and-disclosure mechanism the case calls for.],
    [Sjoding, M. W., Dickson, R. P., Iwashyna, T. J., Gay, S. E., \& Valley, T. S. (2020). Racial bias in pulse oximetry measurement. _New England Journal of Medicine_, 383(25):2477–2478 — the structural analog in the medical-device context (Case 26).],
  ),
  quote: [Together, these results suggest that a major automated proctoring software may employ biased AI algorithms that unfairly disadvantage students.],
  quote-source: "Yoder-Himes et al., Frontiers in Education 2022.",
  le-insight: [
    Automated exam proctoring is the assessment-domain
    counterpart to pulse oximetry's medical-device bias.
    Yoder-Himes et al. 2022 is the first quantitative study
    of the disparity in this class of software, with the
    intersectional finding the broader face-recognition
    literature predicts. The case documents the disparity in
    one product; the remediation is not yet documented.
  ],
  lens-approach: [
    Proctoring bias is the small-tier ed-tech
    validation-stratification failure (induced 8.2; LENS
    D4/PT5). LENS uses it in Domain 4 (Test and Evaluation)
    for the validation-must-be-demographically-stratified
    discipline, and in Domain 5 (Navigating Sociotechnical
    Constraints) for the institutional resolution mechanism
    that has to handle the case where the flag was generated
    by software bias. Trio with Cases 25 (eGFR), 26 (pulse
    oximetry), and 6 (Hoffman pain bias) at the
    race-construct-and-validation layer.
  ],
  literature-items: (
    [Yoder-Himes et al. (2022), _Frontiers in Education_],
    [Buolamwini \& Gebru (2018), _PMLR_ — Gender Shades],
    [Raji \& Buolamwini (2019), _AAAI/ACM AIES_],
  ),
  reflection-list: (
    [Identify a deployed system in your domain whose validation rests on an aggregate accuracy figure rather than a demographically stratified one. What would the stratified validation actually require, and who would have to commission it before deployment rather than after?],
    [The Yoder-Himes finding is intersectional: women with the darkest skin tones were 4.4 times more likely to be flagged than medium-skin-tone women. What is the analog intersectional structure of the harm in your domain, and is it visible in the engineering record before the harm record?],
    [The case documents the disparity in one product; the remediation is not yet documented. What would a remediation look like — vendor disclosure, regulatory disclosure requirement, institutional resolution-mechanism redesign — and which of those is in your scope?],
  ),
  courses: ("LEN 5", "LEN 8", "LEN 9"),
)

// ---- Case 48 — school-surveillance-and-black-student ----
#case(
  number: 48,
  slug: "school-surveillance-and-black-student",
  title: "School Surveillance and Black Student Outcomes — Infrastructure as the Mechanism",
  year: "2010s – 2022",
  domains-list: ("K-12 education", "school safety infrastructure", "racial disparities"),
  modes-code: "GKN",
  impact: "Johnson and Jabbari (Journal of Criminal Justice, 2022) find that the most heavily surveilled schools suspend more students even with school disorder and student misbehavior controlled, and that surveillance lowers math scores and college enrollment for suspended and non-suspended students alike; the \"safety tax\" is greatest for Black students, who are far more likely to attend high-surveillance schools — one of the motivating cases for the LEO Gap attribution",
  kind: "failure",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4",
  coi: "Institutional overlap: an editor shares an institution (Johns Hopkins School of Engineering) with an author of this work; no editor was personally involved. Included on the published peer-reviewed evidence (Journal of Criminal Justice, 2022); editorial framing keeps critical distance.",
  summary: [
    Johnson and colleagues, writing in the _Journal of Criminal
    Justice_ in 2022, analyzed the relationship between
    school-surveillance infrastructure — cameras, metal detectors,
    school resource officers, ID-check protocols — and outcomes
    for Black students across U.S. schools. The study's
    learning-engineering content is in where it locates the
    mechanism. The analysis holds school social disorder and student misbehavior constant and still finds that the most heavily surveilled schools suspend more students, and that surveillance depresses math scores and college enrollment for suspended and non-suspended students alike; because Black students are far more likely to attend those schools, they carry the largest share of the cost the authors call a safety tax. The mechanism, in other words,
    is the infrastructure, not the students. The case is one of
    the motivating cases in the v2 sweep for the subobjective *Gap
    attribution* (4.2) — the discipline
    of asking, when a disparity in outcomes is observed, what
    share of the disparity is attributable to the institutional
    or technical infrastructure rather than to the population the
    infrastructure is operating on. The standing COI rendered
    under the title is binding: an editor of this volume shares
    an institution with the study's authors, and the case is
    anchored to the peer-reviewed _Journal of Criminal Justice_
    evidence rather than to institutional press. The case
    extends the race-construct trio (Cases 25 eGFR, 26 pulse
    oximetry, 6 Hoffman) into the K-12 education domain at the
    infrastructure layer.
  ],
  sections: (
    [
      U.S. public schools have, over the past two decades, deployed a
      progressively more elaborate surveillance infrastructure:
      cameras throughout common areas; metal detectors at entry
      points; school resource officers (sworn law enforcement
      stationed in schools); ID-check protocols and visitor
      management systems; behavioral-tracking software. The
      distribution of that infrastructure across schools has not
      been uniform. Schools serving predominantly Black student
      populations have, on average, carried more of it. The
      institutional rationale has typically been safety — the
      surveillance infrastructure is described as keeping students
      safe — and the question the Johnson study confronts is
      whether the surveillance is operating as safety
      infrastructure or as something else, measured by the
      outcomes the infrastructure produces.#cn()
    ],
    [
      Johnson and colleagues (_Journal of Criminal Justice_, 2022)
      analyzed the relationship between school-surveillance
      infrastructure and outcomes for Black students across the
      U.S. public-school sector. The study's design uses counterfactual and multi-level modeling on national longitudinal data, comparing students in the highest-surveillance schools with comparable students in the lowest. The headline analytic result the case rests on: with school social disorder and student misbehavior controlled, students in heavily surveilled schools are suspended more, score lower in mathematics, and enroll in college at lower rates — the non-suspended along with the suspended. The infrastructure is
      acting as a driver of the outcome gap, not only as a
      response to it.#cn()
    ],
    [
      The mechanism is what makes the case the canonical
      gap-attribution case. When a disparity in outcomes is
      observed, the analytical default in many institutional
      settings is to attribute the disparity to the population
      the outcomes are measured on — to differences in
      preparation, behavior, family context. The Johnson study
      shows that, in the school-surveillance case, that default
      is wrong in a measurable sense: the institutional
      infrastructure is itself a driver of the disparity, and
      attributing the outcome gap to the students rather than to
      the infrastructure mis-locates the mechanism in a way the
      data does not support. The case extends the race-construct
      trio (Cases 25 eGFR, 26 pulse oximetry, 6 Hoffman)
      into K-12 education at the infrastructure layer: in eGFR
      and pulse oximetry the mechanism was in the device or the
      formula; in Hoffman the mechanism was in the practitioner's
      cognitive baseline; here the mechanism is in the
      institutional architecture itself.#cn()
    ],
    [
      The standing COI rendered under the title is binding. An
      editor of this volume shares an institution (Johns Hopkins University) with the study's lead author, who is appointed in the School of Education and the Bloomberg School of Public Health. The case
      is anchored to the published peer-reviewed evidence in the
      _Journal of Criminal Justice_, not to institutional press
      or to commentary by the editor or the authors outside the
      paper. The editorial framing has been written to maintain
      critical distance from the home-institution affiliation;
      the case's claim is what the published evidence supports,
      and the disclosure is the safeguard that makes the
      institutional adjacency visible at the point of reading.#cn()
    ],
    [
      The case is one of the motivating cases in the v2 sweep for
      the subobjective *Gap attribution* (4.2) — the discipline of asking, when a
      disparity in outcomes is observed, what share of the
      disparity is attributable to the institutional or
      technical infrastructure rather than to the population the
      infrastructure is operating on. The race-construct trio
      established the pattern at the device/formula/cognitive-
      baseline layers; this case carries the pattern at the
      institutional-infrastructure layer. The four-case set
      (Cases 25, 26, 6, 48) is the case-grounded basis for
      Gap attribution as a designed competency: practitioners
      and program designers have to be trained to look for the
      mechanism in the infrastructure they built, not only in
      the population they are serving, and the evidence the case
      carries is what makes the proposed LEO defensible.
    ],
  ),
  beats: (
    "U.S. school-surveillance infrastructure (cameras, metal detectors, SROs, ID checks) distributed unevenly — schools with predominantly Black students carry more",
    "Johnson & Jabbari 2022 (Journal of Criminal Justice): counterfactual multi-level analysis; surveillance lowers math scores and college enrollment with disorder and misbehavior controlled",
    "Mechanism is the infrastructure, not the students — attributing the gap to the population mis-locates the mechanism in a measurable sense",
    "Extends race-construct trio (Cases 25 eGFR, 26 pulse oximetry, 6 Hoffman) into K-12 education at the institutional-infrastructure layer",
    "One of the motivating cases for the LEO Gap attribution — discipline of asking which share is the infrastructure vs. the population",
  ),
  approaches: (
    during: (
      [Design the analysis to separate population-level variables from infrastructure-level variables so the share of the disparity attributable to each can be estimated; the Johnson study's design is the worked example.],
      [Treat the institutional infrastructure as a candidate mechanism, not as a neutral background; the default attribution-to-population analysis cannot test the infrastructure if the infrastructure is not a variable in the model.],
      [Anchor the editorial framing to the peer-reviewed evidence rather than to institutional press; the COI is rendered openly under the title and the framing maintains critical distance.],
    ),
    after: (
      [Carry the Gap-attribution discipline into curriculum design: practitioners have to be trained to look for the mechanism in the infrastructure they built, not only in the population they are serving.],
      [Pair the case with the race-construct trio (Cases 25, 26, 6) so the gap-attribution pattern is taught at multiple layers — device, formula, cognitive baseline, institutional architecture.],
      [Preserve the COI render — shared institution, anchored to peer-reviewed evidence, critical editorial distance — as the standing language for home-institution-shared cases across the corpus.],
    ),
  ),
  references: (
    [O. Johnson & J. Jabbari (2022), "Infrastructure of social control: A multi-level counterfactual analysis of surveillance and Black education," _Journal of Criminal Justice_ 83:101983 — the peer-reviewed source for the case.],
    [Hoffman, Trawalter, Axt, & Oliver (2016), "Racial bias in pain assessment and treatment recommendations, and false beliefs about biological differences between blacks and whites," _PNAS_ 113(16):4296–4301 — race-construct trio at the cognitive-baseline layer (Case 6).],
    [Inker, Eneanya, Coresh, et al. (2021), "New Creatinine- and Cystatin C–Based Equations to Estimate GFR without Race," _NEJM_ — race-construct trio at the formula layer (Case 25).],
    [Sjoding, Dickson, Iwashyna, Gay, & Valley (2020), "Racial Bias in Pulse Oximetry Measurement," _NEJM_ 383:2477–2478 — race-construct trio at the device layer (Case 26).],
  ),
  quote: [The "safety tax" students pay with their average levels of test performance and college going rates is greatest for Black students of both genders given their overrepresentation in high-surveillance schools.],
  quote-source: "Johnson and Jabbari, Journal of Criminal Justice, 2022.",
  le-insight: [
    The Johnson school-surveillance study locates the mechanism
    of an outcome disparity in the institutional infrastructure,
    not in the population the infrastructure operates on. The
    case extends the race-construct trio (eGFR, pulse oximetry,
    Hoffman) into K-12 education at the infrastructure layer and
    is one of the motivating cases for the LEO Gap
    attribution. COI under the title — shared institution — is
    binding and rendered openly.
  ],
  lens-approach: [
    Johnson school surveillance is the
    infrastructure-as-mechanism gap-attribution case
    (induced 8.1; LENS D4/PT5) — Domain 4 as the case-grounded
    basis for *Gap attribution*; Domain 5 for the
    institutional-architecture-as-mechanism framing. Pair with
    Cases 25, 26, 6. COI binds.
  ],
  literature-items: (
    [Johnson & Jabbari (2022), _Journal of Criminal Justice_ — "Infrastructure of social control"],
    [Hoffman et al. (2016), _PNAS_ — race-construct trio companion],
    [Inker et al. (2021), _NEJM_; Sjoding et al. (2020), _NEJM_ — race-construct device/formula layers],
  ),
  reflection-list: (
    [Identify a disparity in outcomes in your domain that is currently attributed primarily to the population the outcomes are measured on. What infrastructure-level variables would you have to add to the analysis to test whether the institutional architecture is itself a mechanism of the disparity?],
    [Specify the design pattern the Johnson study uses: separating student-level from school-level variables so the share of the disparity attributable to each can be estimated. What is the analog in your context, and where is the default analysis most at risk of mis-locating the mechanism?],
    [The case is one of the motivating cases for the LEO Gap attribution. What instance from your work — a device, a formula, a cognitive baseline, an institutional architecture — would you carry as the case-grounded basis for training practitioners in your context to look for the mechanism in the infrastructure they built?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 49 — ofqual-a-level-algorithm-2020 ----
#case(
  number: 49,
  slug: "ofqual-a-level-algorithm-2020",
  title: "UK Ofqual A-Level Algorithm — National-Scale Grading Replaced by Algorithm, Withdrawn in Days",
  year: "2020",
  domains-list: ("government", "education at scale", "high-stakes assessment"),
  modes-code: "DKN",
  impact: "Ofqual standardisation algorithm applied to summer 2020 A-level grades following examination cancellation downgraded approximately 39.1% of teacher-estimated grades; results released August 13 2020; algorithm withdrawn August 17 2020 after four days of public protest; Centre Assessment Grades (teacher estimates) substituted; the Office for Statistics Regulation's 2021 review found the model failed to command public confidence and that acceptability testing had examined the calculation process rather than the impact on individuals",
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "5.4",
  lens-anchor: "D4+D5/PT5",
  leo-anchor: "LEO-4, LEO-5",
  summary: [
    With summer 2020 examinations cancelled in response to the
    COVID-19 pandemic, the UK Office of Qualifications and
    Examinations Regulation (Ofqual) deployed a statistical
    standardisation model to produce A-level grades from Centre
    Assessment Grades (teacher estimates) and Centre-level
    historical performance. Results were released on August 13,
    2020. Approximately 39.1 percent of teacher-estimated grades
    were downgraded by the algorithm. State-school students in
    larger cohorts were downgraded at higher rates than independent-
    school students in smaller cohorts, because the model relied
    on Centre-level historical performance more heavily where
    Centre-level cohorts were larger. After four days of public
    protest, on August 17, 2020, the algorithm was withdrawn and
    Centre Assessment Grades were substituted. The Ofqual technical report states that its statistical measures are meaningful only for groups of students and would over-interpret the evidence if used to predict an individual result, and that greater reliance on teacher grades at small centres carries an absolute disadvantage for students at larger ones. The case pairs with Case 86 (Gándara / AERA
    Open community-college fairness), Case 88 (LiveHint AI bias
    across foundation models), and Case 48 (Johnson school
    surveillance).
  ],
  sections: (
    [
      The summer 2020 examination cancellation removed the
      mechanism by which A-level grades had historically been
      produced. The Department for Education and Ofqual judged
      that teacher estimates alone would generate grade inflation
      incompatible with university admissions and higher-education
      capacity planning. The decision was to combine teacher
      Centre Assessment Grades with a statistical standardisation
      model that drew on Centre-level historical performance to
      adjust the distribution of grades each Centre's cohort
      received. The intent of the standardisation was to preserve
      year-on-year comparability of the national grade
      distribution; the seam that surfaced under deployment was
      that population-level comparability and individual-student
      fairness are not reconcilable when the standardisation
      mechanism depends on cohort size.#cn()
    ],
    [
      The model's mechanics carried the seam. Where a Centre's
      cohort for a subject was small, the model relied more
      heavily on the teacher-submitted Centre Assessment Grade and
      rank order, because small-cohort historical performance was
      not informative enough to standardise against. Where a
      Centre's cohort was large, the model relied more heavily on
      the Centre's historical performance, because the larger
      cohort gave the standardisation more purchase. The
      distributional consequence was structural: independent
      schools and selective settings with small cohorts received
      grades close to teacher estimates; state schools and large-
      cohort comprehensive settings received grades pulled
      downward toward the Centre's historical distribution. The
      headline result was that approximately 39.1 percent of
      teacher-estimated grades were downgraded and that the
      downgrade rate was higher for state-school students in
      large cohorts.#cn()
    ],
    [
      The four-day withdrawal arc is the governance record. Grades
      were released on Thursday, August 13, 2020. Public protest —
      students gathering with signs reading "the algorithm stole
      my future," extensive press coverage of named individual
      cases, and rapid political pressure — built across the
      weekend. On Monday, August 17, 2020, Ofqual and the
      Department for Education announced that A-level and GCSE
      grades would be reissued at the teacher-submitted Centre
      Assessment Grade level. The withdrawal was structural — it
      affected the entire 2020 cohort — and it was rapid in a way
      that few national-scale algorithmic deployments have been.
      The Office for Statistics Regulation's March 2021 review adjudicated the governance record and named the engagement failure as the decisive one: acceptability testing had examined the process of calculating grades rather than the impact on individuals. The technical report had been internally honest about the cohort-size dependence, and the failure was that the dependence had not been surfaced to affected schools and students in advance of deployment.#cn()
    ],
    [
      The case pairs with Case 86 (Gándara / community-college
      predictive equity in _AERA Open_) at the higher-education
      scale: both cases turn on the question of whether a
      standardisation or prediction mechanism that is statistically
      defensible at the population level can be deployed in a way
      that is defensible at the individual-student level. Pair
      with Case 88 (LiveHint AI bias across foundation models)
      for the bias-surfacing thread in education-deployed
      algorithms. Pair with Case 48 (Johnson school surveillance)
      for the algorithmic-administration-in-education parallel at
      a different scale. The Ofqual case is unusual in the
      casebook because it is the rare deployment that was
      withdrawn within days under public pressure; most cases in
      the corpus document deployments that ran for years before
      withdrawal or that were never withdrawn.#cn()
    ],
    [
      The technical report's hedge is binding.
      Ofqual's own document states that the statistical measures
      behind the standardisation are meaningful only for groups
      of students, that using them to predict an individual
      result would over-interpret them, and that the leniency
      granted to small centres imposes an absolute disadvantage
      on students entering through larger ones.
      The case teaches the change-control-and-disclosure-as-
      governance-artifacts pattern: an algorithm that is
      internally documented as carrying a distributional seam
      cannot be deployed at population scale without the
      distributional seam being surfaced to the affected
      population in advance of deployment. The four-day
      withdrawal is the governance evidence that the population
      had not been consulted; the structural argument the case
      anchors is that the consultation is the governance artifact
      whose absence the withdrawal made visible.
    ],
  ),
  beats: (
    "Summer 2020 examinations cancelled; Ofqual deployed standardisation algorithm combining Centre Assessment Grades and Centre historical performance",
    "~39.1% of teacher-estimated grades downgraded; state-school students in large cohorts downgraded at higher rates than independent-school students in small cohorts",
    "Results released Aug 13 2020; withdrawn Aug 17 2020 after four days of public protest; Centre Assessment Grades substituted",
    "Cohort-size dependence of model is structural; technical report acknowledges incompatibility of standardisation with individual-level fairness",
    "Pair with Case 86 (Gándara community-college equity), Case 88 (LiveHint bias), Case 48 (Johnson school surveillance)",
  ),
  approaches: (
    during: (
      [Surface the distributional seam an internally documented standardisation mechanism carries to the affected population in advance of deployment; the Ofqual technical report was internally honest about the cohort-size dependence, and the governance failure was that the honesty did not travel out of the document.],
      [Treat the consultation-with-affected-stakeholders process as the change-control artifact a national-scale algorithmic deployment requires; the four-day withdrawal under public protest is the evidence that the consultation had not occurred.],
      [Pre-specify the individual-student fairness criterion against which a standardisation mechanism will be evaluated, and refuse deployment when the criterion is incompatible with the standardisation goal.],
    ),
    after: (
      [Carry the technical report's hedge — the statistical measures "are only sufficiently meaningful to be informative for groups of students," and small-centre leniency "would lead to an absolute disadvantage to those students entering through larger centres" — into print without softening; the case's pedagogical value depends on the internal documentation of the seam being visible alongside the public withdrawal.],
      [Pair in syllabi with Case 86 (Gándara) so the population-level-versus-individual-level fairness tension is taught at both the secondary-to-higher-education transition scale and the community-college transition scale.],
      [Use the case as the rare example of an algorithmic deployment withdrawn at national scale within days; the four-day withdrawal arc is the curricular target for governance-response speed under public pressure.],
    ),
  ),
  references: (
    [Ofqual, _Awarding GCSE, AS, A level, advanced extension awards and extended project qualifications in summer 2020: interim report_, August 2020.],
    [UK House of Commons Education Committee, _Getting the grades they've earned: Covid-19: the cancellation of exams and 'calculated' grades_, First Report of Session 2019–21, HC 617, 11 July 2020 — the pre-deployment warning; Office for Statistics Regulation, _Ensuring statistical models command public confidence_, 2 March 2021 — the post-withdrawal review.],
    [Royal Statistical Society, _Submission to the Office for Statistics Regulation on the summer 2020 grading process_, 2020 — independent statistical review of the standardisation methodology.],
    [Smith, H. (2020), "Algorithmic bias: should students pay the price?" _AI & Society_ 35(4):1077–1078 — early academic commentary on the equity dimensions of the withdrawal.],
  ),
  quote: [Approximately 39.1 percent of teacher-estimated grades were downgraded; the algorithm was withdrawn within four days under public protest; the technical report was internally honest about the cohort-size dependence and the failure was that the honesty did not travel out of the document.],
  quote-source: "Editors' synthesis of the Ofqual technical report and the Office for Statistics Regulation review (2021).",
  le-insight: [
    The Ofqual A-level case is the rare national-scale algorithmic
    deployment withdrawn within days under public pressure. The
    technical report was internally honest about the cohort-size
    dependence and the incompatibility of population-level
    standardisation with individual-level fairness; the four-day
    withdrawal is the evidence that the internal honesty did not
    travel out of the document to the affected population in
    advance of deployment.
  ],
  lens-approach: [
    Ofqual A-level 2020 is the change-control-and-disclosure-as-
    governance-artifacts case at national scale (induced 5.4;
    LENS D4+D5/PT5; LEO-4 and LEO-5). LENS uses it in Domain 4
    (Test and Evaluation) for the consultation-with-affected-
    stakeholders process as the test surface and in Domain 5
    (Navigating Sociotechnical Constraints) for the cohort-size
    dependence as the distributional seam the deployment carried.
    Pair with Case 86 (Gándara community-college predictive
    equity), Case 88 (LiveHint AI bias across foundation
    models), and Case 48 (Johnson school surveillance). The
    technical report's acknowledgement of incompatibility is the hedge that matters.
  ],
  literature-items: (
    [Ofqual technical report (August 2020); Office for Statistics Regulation review (2021)],
    [Royal Statistical Society submission (2020)],
    [Smith, _AI & Society_ (2020) — early equity commentary],
  ),
  reflection-list: (
    [Identify a standardisation or prediction mechanism in your domain whose internal documentation flags a distributional seam. What is the consultation process that would surface the seam to the affected population in advance of deployment, and what would deployment without consultation look like?],
    [Specify the individual-level fairness criterion against which a population-level standardisation in your setting would be evaluated. Is the criterion compatible with the standardisation goal, and if not, which governs?],
    [The Ofqual case is unusual for the speed of withdrawal — four days. Pick a deployment in your domain whose distributional seam has not yet surfaced publicly, and ask: what would have to be true for a four-day withdrawal arc to be possible, and what would have to be true for the seam to have been surfaced in advance instead?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 50 — wisconsin-dews-merged ----
#case(
  number: 50,
  slug: "wisconsin-dews-merged",
  title: "Wisconsin DEWS — A Decade of Algorithmic Dropout Prediction",
  year: "2012 – 2023",
  domains-list: ("education at scale", "predictive analytics", "algorithmic equity"),
  modes-code: "DKN",
  impact: "Wisconsin Department of Public Instruction's Dropout Early Warning System (DEWS) ran from 2012 until DPI withdrew the dashboards in October 2023, scoring over 225,000 sixth- through ninth-grade students a year; Perdomo, Britton, Hardt, & Abebe FAccT 2025 regression-discontinuity analysis on 2013–2021 data put the effect of a higher risk label on on-time graduation at about 5 percentage points, on a 95% interval of −2% to 11.6% that cannot rule out zero; DPI's own 2021 internal equity analysis found false-alarm rates 42 points higher for Black and 18 points higher for Hispanic students, and DPI told no one and changed nothing",
  kind: "failure",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.3",
  lens-anchor: "D4+D5/PT6",
  leo-anchor: "LEO-4, LEO-5",
  summary: [
    The Wisconsin Department of Public Instruction has operated
    the Dropout Early Warning System (DEWS) since 2012,
    producing dropout-risk scores for approximately 200,000
    sixth- through ninth-grade students across the state each
    year. Two evidence streams converge on the deployment.
    Perdomo, Britton, Hardt, and Abebe's 2025 FAccT paper used a regression-discontinuity design on 2013–2021 DEWS-and-graduation data and estimated that moving a student from the moderate to the high-risk category raises on-time graduation by about 5 percentage points, on a 95 percent confidence interval of −2 to 11.6 percent that cannot rule out zero effect. The Wisconsin DPI's own 2021 internal equity analysis — the slide The Markup obtained is headed "Is DEWS Fair?" — found false-alarm rates 42 percentage points higher for Black students and 18 points higher for Hispanic students than for White students, and the agency neither told districts nor changed the model. The Markup's
    2023 investigation by Todd Feathers documented the
    disparate-impact finding and the agency's response. Both
    findings are binding. The case pairs with Case 48
    (Johnson school surveillance), Case 86 (Gándara
    community-college predictive equity), and Case 52 (Purdue
    Course Signals — reverse causality). This case carries both
    the peer-reviewed and journalism-investigation evidence
    streams in one entry rather than parallel ones.
  ],
  sections: (
    [
      The Wisconsin Dropout Early Warning System was built in-house at the Wisconsin Department of Public Instruction, under senior research analyst Jared Knowles, and deployed in 2012. The system
      ingests student-level administrative data — attendance,
      course performance, behavioral incidents, mobility, and
      demographics — and produces a dropout-risk score for each
      student in grades six through nine. The score is
      surfaced to school administrators, counselors, and
      teachers, with the operational theory that the early
      warning enables school-level interventions — additional
      counseling, tutoring, mentoring, or family contact — that
      improve the student's graduation trajectory. The system
      has operated at scale for more than a decade and produces risk scores for over 225,000 sixth- through ninth-grade students each year.#cn()
    ],
    [
      Perdomo, Britton, Hardt, and Abebe's 2025 paper at FAccT
      (also available as arXiv 2304.06205) is the decisive
      causal-inference evidence on the deployment. The
      researchers used a regression-discontinuity design,
      exploiting the DEWS risk-threshold cutoff to compare
      students just above the threshold (classified as high-
      risk and surfaced to the school's intervention surface)
      against students just below it (not so surfaced),
      controlling for the continuous risk score itself. The
      analysis covered approximately ten years of DEWS data
      and the corresponding graduation outcomes. The headline finding is a point estimate of about 5 percentage points on on-time graduation for a student moved from moderate to high risk, on a 95 percent confidence interval of −2 to 11.6 percent. The interval contains zero, so the analysis cannot rule out that the risk category changes nothing; the estimate is directionally correct and not rigorously conclusive. The hedge the paper preserves is binding: the
      RDD analysis cannot establish a negative finding either
      (the interval includes small positive effects), but it can and does establish that eight years of statewide data leave the prediction-triggers-intervention-that-changes- outcome theory unsettled.#cn()
    ],
    [
      The Wisconsin DPI's own 2021 internal equity audit,
      titled "Is DEWS Fair?", is the decisive disparate-
      impact evidence on the deployment. The analysis found that DEWS raised false alarms about Black and Hispanic students at far higher rates than about their White classmates — 42 percentage points higher for Black students, 18 for Hispanic students. The agency's own response to its own analysis was to tell no one and change nothing. The Markup's 2023
      investigation by Todd Feathers documented both the
      finding and the agency's response, and the journalism-
      investigation evidence stream entered the public record
      in 2023. The case carries both evidence streams — the
      peer-reviewed causal-inference null and the agency-and-
      investigation disparate-impact finding — in one entry,
      rather than as parallel cases, because the deployment is
      one deployment and the two streams describe complementary
      structural problems with it.#cn()
    ],
    [
      The case pairs with Case 48 (Johnson school surveillance)
      for the algorithmic-public-administration-in-education
      parallel; both cases involve administrative-data
      predictions deployed against student populations and both
      surface disparate-impact concerns at the deployment
      surface. Pair with Case 86 (Gándara community-college
      predictive equity) for the predictive-equity-in-education
      thread at adjacent population scale. Pair with Case 52
      (Purdue Course Signals) for the reverse-causality and
      null-effect thread in education predictive analytics; the
      Purdue case named the same conceptual problem that the
      Perdomo et al. analysis evidences at population scale.
      DEWS is the rare deployment in the corpus that is
      evidenced from both the peer-reviewed causal-inference
      direction and the disparate-impact-investigation
      direction, and the editorial decision to carry both
      streams in one entry reflects the structural unity of
      the deployment.#cn()
    ],
    [
      The hedges the case carries are binding and both
      streams are preserved. The Perdomo et al. RDD analysis cannot rule out zero treatment effect on graduation across 2013–2021 data — eight years of statewide records still cannot settle whether the prediction triggers the intervention the deployment theory requires. The DPI's own equity analysis found DEWS raised false alarms about Black and Hispanic students at far higher rates than about White students, and the agency continued operating the system unchanged for two years afterward. Both findings are binding and travel together.
      The LEO on designing predictions to trigger support
      rather than gatekeeping is anchored by the case at the
      deployment-with-null-causal-effect-and-disparate-accuracy
      seam: a prediction system operating at population scale
      for more than a decade, without evidence that the
      prediction triggers outcome-changing intervention and with
      evidence that the prediction's accuracy varies across
      protected-attribute subgroups, is the deployment form
      whose persistence the case asks the reader to account
      for.
    ],
  ),
  beats: (
    "Wisconsin DPI Dropout Early Warning System deployed 2012–2023; over 225,000 students per year in grades 6 – 9 receive risk scores",
    "Perdomo, Britton, Hardt, Abebe FAccT 2025 RDD on 2013–2021 data: +5 points on on-time graduation, 95% interval −2% to 11.6%, cannot rule out zero",
    "Wisconsin DPI 2021 internal equity analysis (slide headed \"Is DEWS Fair?\"): false-alarm rates 42 points higher for Black, 18 for Hispanic students; agency told no one",
    "The Markup 2023 investigation (Feathers) documented disparate-impact finding and agency response",
    "both streams binding; pair with Case 48 (Johnson), Case 86 (Gándara), Case 52 (Purdue Course Signals reverse causality)",
  ),
  approaches: (
    during: (
      [Pre-specify the causal-inference design that will evaluate whether the prediction triggers outcome-changing intervention; the Perdomo et al. RDD is the deployment-evidence form that the prediction-triggers-support theory requires for verification at multi-year horizons.],
      [Treat the agency's own equity audit as a binding governance input, not as an internal document; the DPI's "Is DEWS Fair?" audit was internally honest about the disparate-accuracy finding, and the case's central observation is the agency's continued operation of the system unchanged.],
      [Design predictions to trigger support, not gatekeeping; the case's central LEO anchor is the discipline of building the intervention surface that the prediction is meant to trigger, and of verifying — not assuming — that the prediction's operational role produces the outcome change the deployment theory requires.],
    ),
    after: (
      [Carry both evidence streams into print as decisive and complementary; the case's pedagogical value depends on the peer-reviewed null and the agency-audit disparate-impact finding traveling together rather than being separated into parallel entries.],
      [Pair in syllabi with Case 48 (Johnson) and Case 52 (Purdue) so the algorithmic-public-administration-in-education and reverse-causality threads are taught alongside the multi-year-deployment-with-null-causal-effect finding.],
      [Use the case as the anchor for the designing-predictions-to-trigger-support LEO; the curricular target is the multi-year deployment record that demonstrates the gap between the prediction's operational theory and the evidence the deployment produces.],
    ),
  ),
  references: (
    [Perdomo, J. C., Britton, T., Hardt, M., & Abebe, R. (2025), "Difficult Lessons on Social Prediction from Wisconsin Public Schools," _Proceedings of FAccT 2025_, doi:10.1145/3715275.3732175 (also arXiv:2304.06205).],
    [Wisconsin Department of Public Instruction (2021), internal equity analysis of the Dropout Early Warning System — unpublished; the presentation summarizing it, whose slide is headed "Is DEWS Fair?", was obtained by _The Markup_ under public records.],
    [Feathers, T. (2023), "False Alarm: How Wisconsin Uses Race and Income to Label Students 'High Risk,'" _The Markup_, April 27, 2023 — investigation documenting the disparate-impact finding and the agency response.],
    [Knowles, J. E. (2015), "Of Needles and Haystacks: Building an Accurate Statewide Dropout Early Warning System in Wisconsin," _Journal of Educational Data Mining_ 7(3):18–67 — the original DEWS technical-methodology paper.],
  ),
  quote: [The RDD estimate is about 5 points on graduation, on an interval that cannot rule out zero; the agency's own equity analysis found DEWS raised false alarms about Black students 42 points more often than about White students; the agency told no one.],
  quote-source: "Editors' synthesis of Perdomo et al. (2025, FAccT), the Wisconsin DPI internal equity audit (2021), and The Markup investigation (Feathers, 2023).",
  le-insight: [
    Wisconsin DEWS is the reference case for a prediction system operating at population scale for more than a decade without conclusive evidence that the prediction triggers outcome-changing intervention and with evidence that the prediction's error rates vary across protected-attribute subgroups. Both the peer-reviewed null and the agency-audit
    disparate-impact finding travel together; the case carries
    both evidence streams in one entry rather than parallel
    ones.
  ],
  lens-approach: [
    Wisconsin DEWS is the designing-predictions-to-trigger-
    support-not-gatekeeping case at population scale (induced
    8.3; LENS D4+D5/PT6; LEO-4 and LEO-5). LENS uses it in
    Domain 4 (Test and Evaluation) for the causal-inference-
    on-multi-year-deployment discipline and in Domain 5
    (Navigating Sociotechnical Constraints) for the equity-
    audit-as-binding-input anchor. Pair with Case 48 (Johnson
    school surveillance), Case 86 (Gándara community-college
    predictive equity), and Case 52 (Purdue Course Signals
    reverse causality). Both the peer-reviewed null and the
    journalism-and-agency-audit disparate-impact finding are
    decisive.
  ],
  literature-items: (
    [Perdomo et al. (2025), FAccT — RDD analysis on a decade of DEWS data],
    [Wisconsin DPI (2021), _Is DEWS Fair?_ — internal equity audit],
    [Feathers (2023), The Markup — disparate-impact investigation],
  ),
  reflection-list: (
    [Identify a prediction system in your domain that has operated at scale for years without RDD-style causal evaluation of whether the prediction triggers outcome-changing intervention. What would the causal-evaluation design look like in your setting, and what would a null finding require of the deployment?],
    [Specify the equity-audit-as-binding-input discipline you would apply when an internal audit finds disparate accuracy across protected-attribute subgroups. What is the documented decision rule for modifying or withdrawing the system, and what is the rule when the agency continues operation unchanged?],
    [The case carries both the peer-reviewed null and the disparate-impact-investigation finding in one entry. Pick a deployment in your domain that has evidence streams in tension, and ask: what is the editorial discipline that carries the streams together rather than separating them, and what would separating them lose?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 51 — atlanta-public-schools-cheating-scandal ----
#case(
  number: 51,
  slug: "atlanta-public-schools-cheating-scandal",
  title: "Atlanta Public Schools Cheating Scandal",
  year: "2009 – 2015",
  domains-list: ("education", "gov"),
  modes-code: "GN",
  impact: "178 educators named, 38 of them principals; cheating found in 44 of 56 schools examined; 35 indicted; 11 convicted under RICO statute; foundational U.S. education measurement-gaming case",
  diagram: dgm.dgm-stat( "178", "educators named · 44 of 56 schools examined",
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
    principals pressured teachers, staff held weekend "erasure parties" — and the incentive system rewarded the gaming with
    bonuses and promotions. The state investigation named 178 educators, 35
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
      administered the state tests on which it was being judged and held the answer documents afterward. With the reward attached to the number and the number produced
      in-house, the people under pressure to improve the score also
      controlled the answer sheets that determined it.#cn()
    ],
    // -- What Happened --
    [
      Over several years, educators at dozens of APS elementary and middle
      schools systematically changed students' answers after testing. The cheating was organized rather than incidental: 38 of the 178 educators named were principals, who pressured teachers to hit targets, and staff held weekend "erasure parties" to correct answer sheets. Suspiciously high rates of
      wrong-to-right erasures flagged the pattern — a statistical fingerprint
      the gaming left behind precisely because correcting a wrong answer to a
      right one is far rarer, by chance, than the reverse.#cn()
    ],
    // -- The Investigation --
    [
      A 2008 _Atlanta Journal-Constitution_ analysis of improbable score gains, then a February 2010 erasure analysis by the Governor's Office of Student Achievement, then a Governor-ordered special investigation supported by the Georgia Bureau of Investigation, documented the scheme in a 2011 report.
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
  beats: (
    "District administered and held custody of the high-stakes tests determining bonuses and recognition",
    "Educators across dozens of schools organized erasure parties to change students' answers",
    "Newspaper analysis and state investigators documented scheme; thirty-five indicted, eleven convicted under RICO",
    "Institution being measured operated the instrument measuring it, with no independent audit",
    "Convictions made APS the prominent U.S. high-stakes-testing fraud case fuelling reassessment",
  ),
  references: (
    [Office of the Governor, Special Investigators (Bowers, Wilson, Hyde), _Special Investigation into Test Tampering in Atlanta's School System_, Vol. 1 (June 30, 2011) — the organized cheating and the quoted finding.],
    [_Atlanta Journal-Constitution_ investigative series (2009–2011) — the erasure-rate analysis.],
    [_State of Georgia v. Hall et al._ (2013–2015) — indictments and RICO convictions.],
    [Koretz, D. (2017), _The Testing Charade_ — high-stakes-testing distortion.],
    [Campbell, D. (1976), "Assessing the Impact of Planned Social Change" — Campbell's Law.],
  ),
  quote: [Dr. Hall and her administration emphasized test results and public praise to the exclusion of integrity and ethics.],
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
    APS is the protect-the-instrument-from-the-operator-who-controls-it
    case (induced 2.2): the educators measured on the test also
    administered and scored it, so the instrument was capturable by the
    very people it judged. LENS pairs it explicitly with VA wait-times
    (Case 7), a same-shape instrument-integrity failure where the unit
    being measured operated the measurement and quietly rewrote the
    number. The lesson is an instrument-integrity design choice —
    separate the measured from the measurer, and audit independently of
    the institution being judged — not the surface reading that people
    cheated under pressure.
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
  scale: "big",
  induced-anchor: "2.2",
  lens-anchor: "D4/PT3",
  leo-anchor: "LEO-4",
)

// ---- Case 52 — purdue-course-signals-the-reverse ----
#case(
  number: 52,
  slug: "purdue-course-signals-the-reverse",
  title: "Purdue Course Signals — The Reverse-Causality Retention Claim",
  year: "2012 – 2013",
  domains-list: ("higher-ed analytics", "early-warning systems", "evidence architecture"),
  modes-code: "DKN",
  impact: "Purdue's widely cited claim that students taking two or more Course Signals classes were 21% more likely to be retained was challenged by Mike Caulfield in 2013, who identified the dose–response curve as an artifact of selection: students persist and therefore take more Signals courses, not the reverse — Alfred Essa reproduced the apparent retention gain by substituting 'received a piece of chocolate' for 'took a Signals class' in a simulation",
  kind: "failure",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-5",
  summary: [
    Purdue's Course Signals was one of the most-cited early-warning
    learning-analytics interventions of the early 2010s. The
    program's headline outcome claim — students who took two or more
    Signals courses were 21 percent more likely to be retained — was
    published by Arnold and Pistilli at LAK 2012 and circulated
    widely in the learning-analytics community and in vendor
    materials. In 2013 Mike Caulfield, blogging at _Hapgood_ and then at _e-Literate_, identified the dose–response curve as a reverse-causality artifact: students who persist in college
    therefore take more Signals courses, so the apparent retention
    gain reflects selection, not effect. Alfred Essa built a
    simulation that substituted "received a piece of chocolate" for
    "took a Signals class" and reproduced the apparent retention
    gain, demonstrating the methodological flaw. The study was peer-reviewed for LAK and never reanalysed on its own data, yet became one of the most-referenced learning-analytics studies of its era — which is itself the cautionary point about the field's evidence architecture. The case is the small-tier methodological
    companion to v1 Cases 46 (educational predictive-analytics bias)
    and 80 (Georgia State predictive analytics).
  ],
  sections: (
    [
      Course Signals at Purdue was a faculty-facing dashboard that
      classified students enrolled in a course as green, yellow, or
      red, based on a predictive model of academic risk built from
      LMS and grade-book signals. Faculty used the classification to
      send targeted communications to students flagged at risk. The
      design and the operational use were not the subject of the
      later critique; what became contested was the system's
      headline outcome claim, published by Arnold and Pistilli at
      Learning Analytics and Knowledge 2012: students who took two
      or more Signals courses were 21 percent more likely to be
      retained at the institution than students who took fewer.#cn()
    ],
    [
      The figure circulated. It appeared in conference keynotes,
      vendor materials, accreditor presentations, and in widely
      shared accounts of what early-warning analytics could deliver.
      The claim's status in the literature outran its evidentiary base: the LAK 2012 paper was peer-reviewed but four pages long, and the institutional dataset behind the headline number was not made available for independent reanalysis. The field cited the result anyway,
      because it was the kind of result the field wanted to be
      true.#cn()
    ],
    [
      In 2013 Mike Caulfield, writing at _Hapgood_ and then at _e-Literate_, asked a specific methodological question: was the
      dose–response curve — more Signals classes, more retention —
      what it appeared to be? Caulfield argued the relationship was
      a reverse-causality artifact. Students who persist at the
      institution have more semesters in which to take Signals
      courses; students who depart cannot. The "took two or more
      Signals courses" group was therefore an inadvertent selection
      on persistence — not a sample exposed to a different
      treatment intensity. Alfred Essa then built a simulation that
      substituted "received a piece of chocolate" for "took a
      Signals class," with chocolate having no causal effect on
      anything, and reproduced the apparent retention gain. The
      reverse-causality reading survived the simulation
      replication.#cn()
    ],
    [
      The methodological point is precise: the published analysis
      did not isolate the treatment from the selection mechanism
      that determined treatment intensity, and the dose–response
      curve that looked like the effect was generated by the
      selection itself. The case is not an argument that Course
      Signals had no effect on retention. It is an argument that
      the published evidence could not distinguish effect from
      selection, and that the institution measured a number which
      *felt* like the failure mode it cared about (retention) using
      a design that could not actually answer the causal question.
      This is the textbook 2.1 failure: measuring the failure mode
      with a design the institution can deceive itself with.#cn()
    ],
    [
      Drafted as a deeper-evidence-of v1 Cases 46 and 80, the
      Purdue case carries a named methodological failure into the
      corpus's predictive-analytics conversation. The cautionary
      thread runs through three places at once: the original study's standing in the field outpaced the four peer-reviewed pages it rested on; the
      field's citation practice amplified the headline without
      probing the design; and the correction (Caulfield, Essa) was
      mounted from outside the original study's institutional
      network. The case teaches the evidence-architecture failure
      mode that the LENS Iterative Development domain and the
      Navigating Sociotechnical Constraints domain both have to
      protect against — and that v1 Cases 46 and 80 anchor at the
      bias and the institutional-deployment layers respectively.
    ],
  ),
  beats: (
    "Arnold & Pistilli LAK 2012 — 21% retention advantage for students taking two or more Course Signals classes; widely cited",
    "Caulfield 2013 (_Hapgood_, then _e-Literate_) — identifies dose–response curve as reverse-causality artifact: persistence enables more Signals classes, not the reverse",
    "Essa simulation — substituting 'received a piece of chocolate' for 'took a Signals class' reproduces the apparent retention gain",
    "Original study a peer-reviewed four-page LAK paper, never reanalysed on its data, yet became one of the most-referenced learning-analytics studies",
    "Deeper-evidence-of v1 Cases 46 (predictive-analytics bias) and 80 (Georgia State); a named methodological failure distinct from the bias finding",
  ),
  approaches: (
    during: (
      [Specify the causal question the analysis is built to answer in advance, and design the comparison group so that the selection mechanism into "treatment intensity" is not itself the variable doing the work.],
      [Pre-register the dose–response analysis with the threats-to-validity table — selection, censoring, reverse causality — visible at design time, so the published headline cannot outrun the analysis it rests on.],
      [Choose the publication venue that fits the evidentiary claim: conference proceedings for an early result, peer-reviewed journal with independent reanalysis for the figure the field will cite.],
    ),
    after: (
      [Make the dataset available for independent reanalysis; the Caulfield / Essa correction succeeded because the published claim was simulatable on plausible data, not because the original dataset was inspected.],
      [Treat the simulation-replication finding as program evidence about the analysis design, not as a verdict on the intervention; Course Signals may have had an effect, and the published study could not detect or measure it.],
      [Carry the cautionary reading into the field's citation practice: a headline outcome circulating widely without peer review outside conference proceedings is itself an evidence-architecture failure, separate from any specific methodological flaw.],
    ),
  ),
  references: (
    [Arnold, K. E., \& Pistilli, M. D. (2012). Course Signals at Purdue: Using learning analytics to increase student success. _Proceedings of LAK 2012_, 267–270. doi:10.1145/2330601.2330666 — the original study at the center of the critique.],
    [Caulfield, M. (2013). "Why the Course Signals Math Does Not Add Up," _Hapgood_, September 26, 2013, and "Purdue Course Signals Data Issue Explainer," _e-Literate_, November 12, 2013 — the reverse-causality critique.],
    [Essa, A. (2013). "Can We Improve Retention Rates by Giving Students Chocolates?" alfredessa.com — the placebo simulation reproducing the Course Signals retention curve.],
    [Feldstein, M. (2013). "Purdue's Non-Answer on Course Signals," _e-Literate_, November 6, 2013 — the field-level critique of promoting research and then declining scrutiny.],
  ),
  quote: [Substituting "received a piece of chocolate" for "took a Signals class" in a simulation reproduces the apparent retention gain.],
  quote-source: "Editors' synthesis of Essa's 2013 simulation demonstration.",
  le-insight: [
    Course Signals is the named methodological failure in the
    predictive-analytics conversation: the institution measured
    a number that felt like the failure mode it cared about,
    using a design that could not isolate effect from
    selection. The published claim was never reanalysed on the institution's own data; the correction came from outside the original network. Both are part of the
    cautionary reading.
  ],
  lens-approach: [
    Course Signals is the small-tier evidence-architecture
    failure (induced 2.1; LENS D4/PT5). LENS uses it in
    Domain 4 (Test and Evaluation) for measurement design that
    cannot deceive the institution, and in Domain 5
    (Navigating Sociotechnical Constraints) for the
    citation-practice failure mode in which a headline outcome
    outpaces the evidence it rests on. Deeper-evidence-of v1
    Cases 46 (predictive-analytics bias) and 80 (Georgia State
    predictive analytics) — distinct because this is a named
    methodological-validity failure, not a bias finding.
  ],
  literature-items: (
    [Arnold \& Pistilli (2012), _LAK 2012_],
    [Caulfield (2013), _Hapgood_ / _e-Literate_],
    [Essa (2013), simulation demonstration],
  ),
  reflection-list: (
    [Identify a predictive or early-warning analytics deployment in your domain whose published outcome claim circulates more widely than the peer-reviewed evidence supports. What threats to validity — selection, reverse causality, censoring — would a Caulfield-style external critic name first?],
    [Specify the comparison-group design that would isolate effect from selection in your context. What pre-registered analysis plan, with simulated placebo treatment, would let the field check the claim before it circulates?],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 8"),
)

// ---- Case 53 — inbloom ----
#case(
  number: 53,
  slug: "inbloom",
  title: "inBloom",
  year: "2014",
  domains-list: ("education",),
  modes-code: "G",
  impact: "$100M initiative collapsed in ~14 months; all 9 announced partner states pulled out or disavowed participation; data infrastructure for education set back years",
  diagram: dgm.dgm-inbloom,
  kind: "failure",
  summary: [
    inBloom was a \$100-million, Gates- and Carnegie-funded shared data infrastructure for
    U.S. student records — and the technology worked: no bug, no breach, no
    performance failure. What killed it in about fourteen months was
    everything around the technology. It launched without consent
    frameworks, community engagement, transparency about data use, or a way
    for parents to participate in decisions about their children's data.
    Parent-privacy groups organized opposition state by state, and the coalition of nine shrank to three in seven months. Analysts read inBloom as low public tolerance for risk meeting an initiative that never communicated its benefits — the assumption that technically sound infrastructure generates
    its own legitimacy. It is the purest governance failure in the dataset,
    and the book's clearest argument that in education at scale, stakeholder
    trust and governance are not optional features but load-bearing structure.
  ],
  sections: (
    // -- Background --
    [
      inBloom was an ambitious shared data infrastructure for U.S. K-12
      student records, backed by roughly \$100 million from the Gates
      Foundation and the Carnegie Corporation of New York, hosted on
      commercial cloud, and built by enterprise engineers. The
      premise was that a common store would spare districts from rebuilding
      the same plumbing and let applications interoperate across systems that
      had never spoken to one another. Technically it was sound — no bug, no
      breach, no performance failure ever undid it, and that very soundness is
      what makes the case instructive.#cn()
    ],
    // -- What Happened --
    [
      What undid it was everything around the technology. inBloom launched
      without adequate consent frameworks, without meaningful community
      engagement on data governance, without ever explaining what the platform was for, in terms a teacher or parent could use, and without any way for parents to participate in
      decisions about their children's data. Each omission read, to a worried
      parent, as a decision made about their child without them in the room.
      Parent groups organized opposition state by state, and the coalition of nine shrank to three in seven months — Louisiana out first, then Kentucky, Georgia and Delaware, then Colorado's pilot district — as the political cost of staying overtook any promised efficiency. New York, the last and
      largest partner, was barred from sharing student data with inBloom by
      a provision in the state budget enacted at the end of March 2014, and
      on 21 April 2014 inBloom announced it would wind down. Within about
      fourteen months the \$100-million initiative had collapsed.#cn()
    ],
    // -- The Investigation --
    [
      Analysts at Data & Society read the collapse as two forces meeting: a public with low tolerance for risk and uncertainty, and an initiative that never communicated its benefits or won buy-in from the stakeholders it needed. Legitimacy, on that reading, is earned from the people a system acts upon, not conferred by the quality of its engineering. The technology was never
      the problem; the governance was — the consent, transparency, and trust
      that had been treated as add-ons rather than as the foundation the whole
      effort needed before a single record moved.#cn()
    ],
    // -- The Capability Gap --
    [
      inBloom is the purest governance failure in this dataset: nothing
      technical was wrong, and everything sociotechnical was. The missing
      capability was the design of stakeholder trust — consent,
      accountability, and a voice for the families whose data was at stake —
      treated as a precondition for deployment rather than a feature to add
      later. Once opposition formed, no patch could retrofit the trust that
      should have been built in from the start, because trust withheld at
      launch cannot be engineered back in under fire. In education at scale,
      those are load-bearing elements, not optional ones.#cn()
    ],
    // -- Aftermath & Reform --
    [
      inBloom's collapse set back shared education-data infrastructure for
      years and became a standard cautionary tale; it also helped drive a
      wave of state student-data-privacy laws that codified, after the fact,
      the consent and transparency the project had skipped.#cn() The lesson
      the book takes from it is that ethics-as-design-constraint is not
      ideology but engineering — and inBloom is the \$100-million empirical
      test of what happens when you skip it, paid not in downtime but in a
      dead initiative and a chilled field.
    ],
  ),
  beats: (
    "Gates-funded \$100M shared student-data store; technically sound, built by enterprise engineers on commercial cloud",
    "Launched without consent, engagement, or parent voice; all nine announced partner states pulled out or disavowed participation within fourteen months",
    "Data and Society read it as technocratic reform assuming engineering quality confers legitimacy",
    "Stakeholder trust treated as add-on rather than precondition; no patch retrofits trust under fire",
    "Set shared education infrastructure back years; drove a wave of state student-privacy laws",
  ),
  references: (
    [M. Bulger, P. McCormick & M. Pitcan, _The Legacy of inBloom_, Data & Society Research Institute (2017) — inBloom as a failure of technocratic reform.],
    [Education Week and Hechinger Report coverage of the state withdrawals (2013–2014) — nine states exiting.],
    [Bulger et al. (2017) — the diagnosis: low public tolerance for risk and uncertainty meeting a failure to communicate benefits and win stakeholder buy-in.],
    [N. Selwyn, _Distrusting Educational Technology_ (2014); d. boyd & K. Crawford, "Critical Questions for Big Data" (2012).],
    [Parent Coalition for Student Privacy archives and the wave of state student-data-privacy legislation that followed inBloom.],
  ),
  quote: [inBloom was a great solution, but it also highlighted a policy and governance gap that was in K-12, and unfortunately that gap eroded the value proposition of inBloom.],
  quote-source: "Jat Pannu, COO of the IlliniCloud and K-12 Federation, interviewed in Bulger, McCormick & Pitcan, Data & Society, 2017",
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
    commitments, not modules. Studio projects (LEN 10) require students
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
    [inBloom's engineers were excellent and its technology never failed, yet the project collapsed. Where in your own domain is technical soundness being mistaken for legitimacy — and who would have to consent before a system you build could claim it?],
  ),
  approaches: (
    during: (
      [Treat consent, transparency, and a parent-facing voice as requirements gathered before the data store is built, not features bolted on after launch.],
      [Engage the families and districts whose data is at stake as design stakeholders from the outset, so the governance questions surface in requirements rather than in opposition.],
      [Make legitimacy an explicit deliverable: document who must agree, on what terms, before any student record moves into shared infrastructure.],
    ),
    after: (
      [Audit live deployments for the gap between technical soundness and stakeholder trust, since a clean system can still be losing the political ground it stands on.],
      [Monitor state-by-state consent and withdrawal signals as a leading indicator, treating organized parent opposition as data about a governance defect, not noise.],
      [Sustain a standing transparency channel so families can see what is collected and why throughout operation, not only at adoption.],
    ),
  ),
  courses: ("LEN 1", "LEN 10", "LEN 7", "LEN 6",),
  scale: "big",
  induced-anchor: "5.1",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-5",
)

// ---- Case 54 — summit-learning-personalized-learning ----
#case(
  number: 54,
  slug: "summit-learning-personalized-learning",
  title: "Summit Learning / Personalized Learning Rollout",
  year: "2014–2019",
  domains-list: ("education",),
  modes-code: "GTK",
  impact: "Personalized-learning platform deployed across ~380 U.S. schools and 72,000 students; parent and student revolts in Cheshire, Brooklyn, McPherson and Wellington; districts suspended, scaled back, or conceded opt-outs between 2017 and 2019",
  kind: "failure",
  summary: [
    Summit Learning, a personalized-learning platform from Summit Public
    Schools backed by the Chan Zuckerberg Initiative, was offered free to
    U.S. districts from 2015 and reached roughly 380 schools and ~72,000
    students by 2018. Adopters pulled back under parent and student pressure — Cheshire, Connecticut suspended the platform midyear in 2017, a Brooklyn high school cut it for eleventh and twelfth grade after a student walkout in 2018, and McPherson, Kansas conceded an opt-out in 2019 — amid complaints about screen time, disengagement, and data privacy. The
    pedagogy itself (competency-based progression, projects, mentoring) was
    defensible and often effective; what failed was deployment governance.
    There was no evaluation framework districts could read before adopting,
    no parent-facing data agreement, and no exit path independent of the
    vendor. Summit is a clean test of the book's claim that the governance
    architecture must be engineered alongside the tool.
  ],
  sections: (
    // -- Background --
    [
      Summit Learning was a personalized-learning platform developed by
      Summit Public Schools with technical and financial support from the
      Chan Zuckerberg Initiative, offered free to U.S. districts from 2015 —
      a price that lowered the bar to adoption while raising no governance
      questions at the door. Its pedagogy — competency-based progression,
      self-directed projects, mentor check-ins — was defensible and in many
      places effective, which is why the eventual revolt could not be blamed
      on the instructional design.#cn()
    ],
    // -- What Happened --
    [
      By 2018 the platform reached roughly 380 schools and an estimated
      72,000 students, scaling fast on the strength of a free offer and a
      well-funded sponsor. By 2019 its most visible adopters were pulling back under parent and student pressure: about a hundred students at Brooklyn's Secondary School for Journalism walked out in November 2018 and the school cut the program for eleventh and twelfth grade; Cheshire, Connecticut had suspended it midyear in December 2017 after a parent petition; McPherson, Kansas conceded an opt-out for up to 225 students after a January 2019 walkout. Walkouts and complaints about screen
      time, eye strain, disengagement, and data privacy converged into a
      revolt that was not about the instructional design at all.#cn()
    ],
    // -- The Investigation --
    [
      Press coverage and later analyses located the failure in deployment governance, not pedagogy: there was no academic research on whether Summit's model worked, and Summit had declined the Harvard evaluation whose planning it helped fund while still naming that collaboration in its own materials, no parent-facing data-handling agreement,
      and no exit pathway that did not depend on the vendor's goodwill — three
      absences that each became a grievance the moment families looked for
      them. The implementation never surfaced the governance questions parents
      would ask, so when those questions arrived they arrived as opposition
      rather than as design input, and the argument was lost before it
      started.#cn()
    ],
    // -- The Capability Gap --
    [
      Summit is a clean test of the book's central claim: a technology that
      worked at the pedagogical level still failed because the governance
      architecture — consent, evidence, measurement, exit — had not been
      engineered alongside it. A working tool with no accountability contract
      is a liability waiting for the first organized objection. The pattern
      recurs across the ed-tech dataset (inBloom, Case 53): a well-intentioned
      tool, a well-funded rollout, and no institutional contract with the
      families and teachers operating inside it — the same omission producing
      the same collapse in a second case.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Several districts withdrew or rebranded their use, CZI and Summit
      revised their outreach, and the episode became a standard caution in
      ed-tech adoption — a reputational cost paid for governance work that
      would have been cheaper to do first.#cn() Its lesson for the field is
      concrete: an adoption decision should have to produce a public evidence
      summary at parent reading level, a data-handling agreement at the same
      resolution, and a documented exit path — governance artifacts that make
      a tool's deployment legitimate, not just its design sound, and that turn
      the questions parents will ask into inputs gathered before launch rather
      than weapons raised after it.
    ],
  ),
  beats: (
    "CZI-backed personalized-learning platform offered free from 2015 on defensible competency-based pedagogy",
    "Reached 380 schools, 72,000 students; 2017–2019 parent revolts brought suspensions, rollbacks and opt-outs over screen time and privacy",
    "Analysts located failure in deployment governance; no evaluation framework, data agreement, or exit path",
    "Working pedagogy with no accountability contract collapsed; same pattern as inBloom recurring at scale",
    "Districts withdrew, CZI revised outreach; episode became standard caution in ed-tech adoption",
  ),
  references: (
    [#link("https://www.nytimes.com/2019/04/21/technology/silicon-valley-kansas-schools.html")[N. Bowles, "Silicon Valley Came to Kansas Schools. That Started a Rebellion," _New York Times_ (2019)] — the parent revolt.],
    [N. Singer, "The Silicon Valley Billionaires Remaking America's Schools," _New York Times_ (2017) — the CZI/Summit rollout.],
    [S. Schwartz, "Two Districts Roll Back Summit Personalized Learning Program," _Education Week_ (December 22, 2017) — the Cheshire suspension and the Indiana Area rollback.],
    [M. Barnum, "Summit Learning declined to be studied, then cited collaboration with Harvard researchers anyway," _Chalkbeat_ (January 18, 2019) — the missing evaluation framework.],
    [Chan Zuckerberg Initiative & Summit Learning public program documentation (2015–2019); cf. inBloom (Case 53).],
  ),
  quote: [The tools were free. The accountability architecture had not been built.],
  quote-source: "Editors' synthesis of Summit Learning rollout coverage (New York Times, Wired, Education Week, 2018–2019)",
  le-insight: [
    Summit Learning is a clean test of the book's central claim:
    technology that worked at the pedagogical level still failed
    because the *governance* architecture (consent, evidence,
    measurement, exit) had not been engineered alongside it. The
    pattern — well-intentioned tool, well-funded rollout, no
    institutional contract with the families and teachers operating
    inside it — recurs across the educational-technology dataset
    (Cases 53, 139, 67) and is the educator's-side analog of the
    governance failures in Cases 49 and 191.
  ],
  lens-approach: [
    LENS uses Summit Learning in LEN 7 as the foundational
    consent-and-evidence case for educational technology, and in
    LEN 10 as a studio prompt for the governance artifacts that any
    educational-technology adoption decision should produce: a
    public evidence summary at parent reading level, a data-handling
    agreement at the same resolution, and a documented exit pathway
    that does not depend on the vendor's goodwill.
  ],
  literature-items: (
    [Selwyn (2016), _Is Technology Good for Education?_],
    [Watters (2021), _Teaching Machines_],
    [Eubanks (2018), _Automating Inequality_ (governance-pattern analog)],
  ),
  reflection-list: (
    [What is the equivalent of the "free tool, free of governance" pattern in your domain — the offer that bypasses the accountability architecture because it does not yet exist?],
    [Design the parent-reading-level governance artifact that a district should require before adopting an educational-technology platform.],
    [Summit's withdrawals in Brooklyn, Cheshire, and McPherson were led by parents, not regulators. What is the equivalent local constituency in your domain that institutional accountability has not yet accommodated, and how would they be heard before deployment rather than after?],
  ),
  approaches: (
    during: (
      [Engineer the governance architecture — consent, evidence, measurement, exit — in lockstep with the pedagogy, so a sound tool ships with a sound accountability contract.],
      [Produce, before adoption, a public evidence summary and data-handling agreement at parent reading level that answer the questions families will raise.],
      [Build a documented exit pathway that does not depend on the vendor's goodwill, so a district can leave without being captured.],
    ),
    after: (
      [Treat organized parent and student objections as governance signal about a missing contract, not as resistance to the instructional design.],
      [Monitor adopting districts for the early grievances — screen time, privacy, disengagement — that precede a withdrawal, and route them to a decision-maker.],
      [Maintain a re-adoption pathway so a withdrawn district can return only after completing the governance work that the first rollout skipped.],
    ),
  ),
  courses: ("LEN 7", "LEN 10", "LEN 8",),
  scale: "big",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-5",
)

// ---- Case 55 — enrollment-algorithm-yield-optimization ----
#case(
  number: 55,
  slug: "enrollment-algorithm-yield-optimization",
  title: "Enrollment-Algorithm Yield Optimization Across U.S. Higher Education",
  year: "2010s – present (Brookings synthesis 2021)",
  domains-list: ("higher education", "predictive analytics", "access pricing"),
  modes-code: "TKN",
  impact: "An academic study reports a 23.3% out-of-state yield gain (12.1% to 14.8%) at an unnamed large public university; vendor case studies report 33% net tuition increases with a 6-point cut to discount rate (EAB) and 173 additional freshmen without aid-budget increases (Othot); algorithms across at least six named vendors price aid offers against each accepted applicant's modeled willingness to pay",
  kind: "failure",
  scale: "big",
  evidence-source: "program-report",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "8.3",
  lens-anchor: "D5/PT5",
  leo-anchor: "LEO-4, LEO-5",
  coi: "Institutional overlap: John Katzman collaborates with an editor's institution (Johns Hopkins) but was not involved in this work. He is not associated with the specific vendors named here.",
  summary: [
    Engler's 2021 Brookings paper documents the two-stage
    architecture of contemporary enrollment-management algorithms:
    predict each accepted applicant's probability of enrollment,
    then optimize the financial-aid offer to maximize either net
    tuition revenue or yield. He names the vendor landscape — Ruffalo Noel Levitz, EAB, Rapid Insight, Capture Higher Ed, Othot, Whiteboard Higher Education, and others — touching at least 700 U.S. institutions. Vendor-reported case studies cite large
    gains in yield or tuition revenue per matriculant. The
    structural critique is the inversion of Case 80 (Georgia
    State, where prediction triggered support): here, the
    algorithm identifies "willingness to pay" so the institution
    can offer the minimum scholarship that will still yield
    enrollment, reducing aid per low-income student. The honest
    hedges Engler preserves are binding: critical details are
    obscured by vendors and colleges; algorithmic optimization is
    hard to separate from manual leveraging; without auditing
    specific college data and models, fairness impacts on
    protected classes cannot be confirmed. The evidence-tier flag
    under the title carries the standing language; future
    validation ongoing.
  ],
  sections: (
    [
      The structural seam the case opens is that financial-aid
      distribution is itself a deployed prediction system, operating
      across hundreds of U.S. institutions, with measurable consequences
      for who attends college and how much they pay. Engler's
      Brookings synthesis is the most thorough public mapping of
      the deployment surface, drawing on vendor case studies and the
      higher-education enrollment-management literature. The first
      stage of the two-stage architecture is prediction: estimate
      the probability that an accepted applicant will enroll, given
      observable attributes from the application, the FAFSA, and
      third-party data. The second stage is optimization: choose
      the financial-aid offer that maximizes a chosen objective —
      net tuition revenue per matriculant, total tuition revenue,
      or class size at a target discount rate.#cn()
    ],
    [
      The vendor landscape Engler names is large and concentrated.
      Ruffalo Noel Levitz works with roughly 300 institutions; EAB
      with 150; Rapid Insight with 150; Capture Higher Ed with
      100; Othot with around 30; Whiteboard Higher Education
      rounds out the named tier, with Civitas Learning named separately as a student-success-only firm. The reported effect sizes: a 23.3 percent out-of-state yield gain — 12.1 percent to 14.8 percent — at an unnamed large public university in a University of Washington study; EAB's 33 percent
      net-tuition gain paired with a 6-point cut to the discount
      rate; Othot's 173 additional freshmen recruited without an
      increase to the aid budget. The vendor effect sizes are
      vendor-reported and are not auditable from outside the
      institution — a hedge Engler is explicit about, and one the
      evidence-tier flag preserves into the case.#cn()
    ],
    [
      The structural critique runs through what the algorithm
      is optimized for. The chosen construct — willingness to pay
      — is the operational target the prediction system was built
      around, and Engler's argument is that this construct turns
      the financial-aid award into a pricing instrument rather
      than a need-or-merit one. The downstream evidence he marshals
      is the literature linking institutional aid to graduation
      outcomes: roughly a 0.9 percent gain in graduation odds per additional \$1,000 in merit aid, with larger effects for need-based aid; a more than 5 percent cut in low-income graduation likelihood per additional \$1,000 in unsubsidized loans. If the algorithm reduces aid per student to find
      the minimum that still yields enrollment, the downstream
      cost is the completion gap that grant aid was buying down.#cn()
    ],
    [
      The case sits as the structural inverse of Case 80 (Georgia
      State's predictive advising) and pairs with Case 186 (mortgage-
      lending fairness) and Case 86 (community-college predictive
      equity). Georgia State used prediction to trigger support;
      enrollment-management algorithms use prediction to reduce
      the help allocated. Bartlett's lending analysis names the
      same construct-substitution pattern at the pricing layer
      across a different deployed prediction system; Gándara's
      community-college work names it at the access layer. The
      anchor the three cases share is the inversion of the
      gatekeeping-vs-support frame: the prediction is used to
      gatekeep the help, and the gatekeeping is invisible at the
      applicant's end of the transaction.#cn()
    ],
    [
      The hedges Engler names are binding on the case's framing,
      and the evidence-tier flag's standing language — future
      validation ongoing — applies in a precise sense. Critical
      details of the optimization are obscured by vendor non-
      disclosure and college contracting confidentiality;
      algorithmic optimization is hard to distinguish from manual
      "leveraging" of the same logic by human enrollment officers;
      without auditing specific college data and models, the
      protected-class fairness questions cannot be answered with
      the precision Bartlett-class auditing would require. The
      Brookings synthesis is the strongest public evidence
      available; it is policy-tier analysis built on vendor case
      studies and Engler's read of the operational record, and
      the case rests at that tier, not at the audited-deployment
      tier the corpus would prefer.
    ],
  ),
  beats: (
    "Two-stage architecture: predict enrollment probability per accepted applicant, then optimize aid offer for net tuition or yield",
    "Six enrollment vendors named: Ruffalo Noel Levitz, EAB, Rapid Insight, Capture Higher Ed, Othot, Whiteboard Higher Education",
    "Effect sizes: 23.3% yield gain at an unnamed public university (UW study), 33% net tuition gain with 6-point discount cut (EAB case study), 173 added freshmen (Othot case study)",
    "Inversion of Case 80 (Georgia State support-trigger) and pair with Cases 186 (Bartlett lending) and 86 (Gándara community college)",
    "Engler hedges binding: vendor obscurity, algorithmic vs. manual leveraging, no audit of specific protected-class impact; future validation ongoing",
  ),
  approaches: (
    during: (
      [Name the optimization construct explicitly. "Willingness to pay" is not "need" and is not "merit"; the choice of construct is the decisive fairness decision, and the institution that does not name it has nonetheless made it.],
      [Require vendor disclosure of the model's inputs, training data, and objective function as a condition of contracting; the case's evidence-tier limit is partly the result of contractual non-disclosure that institutions could refuse to sign.],
      [Tie the deployed algorithm's outputs back to downstream completion data; the literature linking aid to graduation odds is the evidence base the optimization should be tested against, not abstracted from.],
    ),
    after: (
      [Commission an external audit of the deployed enrollment-management model against protected-class outcomes; the audit Engler says cannot be done from outside the institution is the audit institutions can choose to commission from inside.],
      [Publish the discount-rate-and-completion link as a paired metric; institutions that report only net-tuition gains and not the completion consequences are publishing a partial scorecard.],
      [Treat the gatekeeping-vs-support inversion as a curricular pattern: pair this case in syllabi with Case 80 so the design choice — which direction the prediction points — is taught as the design choice, not as an institutional default.],
    ),
  ),
  references: (
    [Engler, A. (2021), "Enrollment algorithms are contributing to the crises of higher education," Brookings Institution, 14 Sept 2021.],
    [Franke, R. (2012), _Towards the Education Nation: Revisiting the Impact of Financial Aid, College Experience, and Institutional Context on Baccalaureate Degree Attainment_, UCLA doctoral dissertation — the aid-and-graduation effect sizes Engler cites.],
    [Goldrick-Rab, S. (2016), _Paying the Price_ — broader synthesis on net-price, unsubsidized loans, and low-income completion.],
    [Vendor case studies cited in Engler (Othot, EAB, Ruffalo Noel Levitz, University of Washington) — vendor-reported and not externally audited; flagged at evidence-tier under the title.],
  ),
  quote: [The algorithms excel at identifying a student's exact willingness to pay. The construct is the decisive fairness decision, and the institution that does not name it has nonetheless made it.],
  quote-source: "Editors' synthesis of Engler (2021), Brookings Institution.",
  le-insight: [
    Enrollment-algorithm yield optimization is the construct-choice
    case at the pricing layer of higher-education access: prediction
    is used to reduce aid per applicant, not to trigger support, and
    the operational target is "willingness to pay." The evidence-
    tier flag is binding — vendor case studies are not auditable,
    the algorithmic-vs-manual distinction is bounded, and the
    protected-class fairness question requires audit access the
    public synthesis cannot supply. Future validation ongoing.
  ],
  lens-approach: [
    Engler / enrollment-management is the construct-choice case
    at population scale (induced 8.3; LENS D5/PT5). LENS uses it
    in Domain 5 (Navigating Sociotechnical Constraints) for the
    construct-substitution anchor and the disclosure architecture
    the deployment lacks, and in Domain 4 (Test and Evaluation)
    for the evidence-tier discipline — practice-synthesis is the
    strongest available tier, and the case says so. Pair with
    Case 80 (Georgia State support-trigger inversion), Case 186
    (Bartlett lending fairness), and Case 86 (Gándara community-
    college equity). coi-light render under the title is binding.
  ],
  literature-items: (
    [Engler (2021), Brookings — enrollment algorithms synthesis],
    [Franke (2012), UCLA dissertation — merit-aid, loans, and completion],
    [Goldrick-Rab (2016), _Paying the Price_],
  ),
  reflection-list: (
    [Identify a deployed prediction system in your domain whose optimization target is named on the institutional side and obscure on the applicant or user side. What is the construct the optimization is built around — and what would change if the construct were named at the point of transaction?],
    [Specify a vendor-disclosure clause you would require as a condition of contracting an enrollment-management or analogous optimization system. What inputs, training data, and objective function would the institution insist on auditing, and which would the vendor be willing to disclose under contract?],
    [The case sits as the inversion of Case 80 (Georgia State, prediction to trigger support). Pick a prediction system in your domain and ask: in which direction does the prediction point — toward more help or less — and where is that design choice documented?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 56 — crisis-point-merit-aid-leveraging-at ----
#case(
  number: 56,
  slug: "crisis-point-merit-aid-leveraging-at",
  title: "Crisis Point — Merit-Aid Leveraging at Public Flagships",
  year: "2001 – 2017 (Burd Peterson's/CDS analysis); 2024 (Lifting the Veil)",
  domains-list: ("higher education", "financial aid policy", "social mobility"),
  modes-code: "TKN",
  impact: "Burd's Peterson's/CDS analysis: nearly $32 billion of public four-year institutional aid 2001–2017 went to students the federal government deemed able to pay without aid — about $2 of every $5 of institutional aid; financially needy students at high-merit-aid publics face larger unmet-need gaps",
  kind: "failure",
  scale: "big",
  evidence-source: "program-report",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "8.1",
  lens-anchor: "D5/PT5",
  leo-anchor: "LEO-4, LEO-5",
  coi: "Institutional overlap: John Katzman collaborates with an editor's institution (Johns Hopkins) but was not involved in this work. Burd's volume is independent of Katzman.",
  summary: [
    Burd's 2020 New America report analyzes licensed Peterson's and
    Common Data Set aid data on
    public four-year universities' institutional-aid distribution
    from 2001 to 2017. The headline finding: nearly \$32 billion of
    institutional aid went to students the federal government
    deemed able to pay without aid — about \$2 of every \$5 of
    institutional aid. The mechanism Burd reconstructs is the
    adoption by public flagships of enrollment-management
    practices pioneered at private institutions, driven by state
    disinvestment and the competitive imperative to rise in
    national rankings. The 2024 Harvard Education Press volume he
    edited, _Lifting the Veil on Enrollment Management_, extends
    the documentation across multiple authors — researchers,
    journalists, industry insiders. The construct substitution at
    the center: the decisive institutional metric quietly
    shifted from "students served" to "net tuition revenue per
    matriculant," and the disclosure required to surface that
    shift never happened. The evidence-tier flag is binding —
    Burd 2020 is policy-tier analysis of licensed Peterson's/Common
    Data Set aid data; the
    2024 volume is multi-author synthesis; future validation
    ongoing on the causal share attributable to enrollment-
    management vendors vs. broader market dynamics.
  ],
  sections: (
    [
      Public flagship universities once distributed institutional
      aid largely on need. Burd's analysis of the Peterson's/Common Data Set
      record from 2001 to 2017 documents how comprehensively that
      practice eroded. Across the seventeen-year window, public
      four-year universities directed nearly \$32 billion of
      institutional aid to students the federal government's own
      need analysis deemed able to pay without aid — about \$2 of
      every \$5 of institutional aid awarded. The redirection was
      not the result of a deliberative public-policy decision; it
      accumulated, year by year and campus by campus, as the
      operational metric of institutional success shifted underneath
      the public mission.#cn()
    ],
    [
      The mechanism Burd reconstructs has two interlocking parts.
      State disinvestment cut the per-student public subsidy that
      had historically allowed flagships to charge low sticker
      prices and distribute aid on need. The competitive imperative
      to rise in national rankings — themselves built on metrics
      that reward selectivity and per-student spending — pushed
      flagships to adopt the enrollment-management practices
      developed at private institutions: predict yield, target
      aid offers at applicants whose enrollment is most sensitive
      to price, and accept the resulting cut to need-based aid as
      the price of competitive position.#cn()
    ],
    [
      The consequence for financially needy students is the part
      of the picture that the institutional reporting does not
      surface. At high-merit-aid public flagships, low-income
      students face larger unmet-need gaps than they would have
      under the prior need-based regime, because the institutional
      dollars that previously closed those gaps are now committed
      to merit-aid offers that influence the enrollment decisions
      of higher-income applicants. The construct substitution at
      the center — from "students served" to "net tuition revenue
      per matriculant" — is what Burd's analysis makes visible,
      and what the public flagship's own reporting structures do
      not.#cn()
    ],
    [
      The 2024 Harvard Education Press volume Burd edited,
      _Lifting the Veil on Enrollment Management_, extends the
      documentation. Researchers, journalists, and industry
      insiders contribute chapters covering the vendor landscape,
      the ranking-incentive structure, the discount-rate
      consequences for completion, and the institutional-mission
      drift. The volume's structural argument is the one Burd's
      2020 report opens: the construct substitution that drove
      the merit-aid arms race was never debated as a policy
      change, and the disclosure architecture that would have
      surfaced it never existed. The case pairs with Case 55
      (Engler / enrollment algorithms) as the institutional-
      governance frame to its technical-deployment frame.#cn()
    ],
    [
      The honest hedges the case carries are the ones the
      evidence-tier flag's standing language implies. Burd 2020
      is policy-tier analysis of licensed Peterson's/Common Data Set data, which is
      strong evidence on the aggregate-flow side but bounded on
      the causal-attribution side: how much of the merit-aid
      shift is attributable to enrollment-management vendors
      versus broader competitive and demographic dynamics is a
      decomposition the aggregate aid data cannot perform on its own.
      The 2024 volume is a multi-author synthesis, peer-reviewed
      at the press editorial tier rather than the journal tier.
      Future validation ongoing on whether the post-2020
      demographic cliff and the 2024 OPM-industry collapse force
      a return to need-based distribution at the public-flagship
      tier the case documents leaving it.
    ],
  ),
  beats: (
    "Burd Peterson's/CDS analysis 2001–2017: nearly $32B of public institutional aid to students federally deemed able to pay — $2 of every $5",
    "Mechanism: state disinvestment + ranking-driven adoption of private-sector enrollment-management practices at public flagships",
    "Consequence: low-income students at high-merit-aid publics face larger unmet-need gaps; need-based dollars redirected to yield",
    "2024 Lifting the Veil (Harvard Ed Press, Burd ed.): multi-author synthesis — researchers, journalists, industry insiders",
    "Construct substitution: 'students served' → 'net tuition revenue per matriculant'; never deliberated as policy; pair with Case 55",
  ),
  approaches: (
    during: (
      [Name the institutional metric the operational system is optimizing for; when "net tuition revenue per matriculant" replaces "students served" without deliberation, the substitution is the failure mode.],
      [Build the disclosure architecture before the change: a public board-level report that ties institutional-aid distribution to need-vs-merit shares and to unmet-need outcomes is the artifact a construct substitution would have had to survive.],
      [Treat ranking pressure as an external incentive whose internal consequences are designable; the flagship that names the trade-off it is making between rank and need-based commitment is the one that can choose differently.],
    ),
    after: (
      [Commission the public-IPEDS-analog audit at the institutional level: aid distribution by Pell status, unmet-need gaps, and four-year completion by income quartile, reported as a paired scorecard.],
      [Publish the merit-aid-vs-completion link openly; the policy gap Burd documents persists in part because the institutional reporting does not include the downstream completion consequences of the aid pattern.],
      [Treat the multi-author 2024 volume as a model for how a field-scale critique is built: practitioner, journalist, and researcher contributions in a single book-length synthesis. The cross-source structure is itself the evidence-architecture lesson.],
    ),
  ),
  references: (
    [Burd, S. J. (2020), "Crisis Point: How Enrollment Management and the Merit-Aid Arms Race Are Derailing Public Higher Education," New America, ERIC ED604970.],
    [Burd, S. J. (ed., 2024), _Lifting the Veil on Enrollment Management: How a Powerful Industry Is Limiting Social Mobility in American Higher Education_, Harvard Education Press, ISBN 9781682538920.],
    [Peterson's "Undergraduate Financial Aid and Undergraduate Databases" (New America license, 2018) supplemented by institutions' Common Data Sets — public four-year institutional aid distribution 2001–2017, the data backbone of Burd's analysis.],
    [Hossler, D., & Bontrager, B. (2014), _Handbook of Strategic Enrollment Management_ — practitioner-side reference Burd's volume engages.],
  ),
  quote: [The construct quietly shifted from students served to net tuition revenue per matriculant. The shift was never debated as a policy change, and the disclosure architecture that would have surfaced it never existed.],
  quote-source: "Editors' synthesis of Burd (2020, 2024).",
  le-insight: [
    Burd's Peterson's/CDS analysis is the construct-substitution case at
    public-flagship scale. Nearly \$32 billion of institutional aid
    over seventeen years was redirected from need-based to merit-
    based distribution without a deliberative public-policy
    decision. The 2024 Harvard Education Press volume extends the
    documentation across multiple author types. Evidence-tier flag
    binding — policy-tier analysis, multi-author synthesis,
    causal-share decomposition bounded; future validation ongoing.
  ],
  lens-approach: [
    Burd / Crisis Point is the construct-substitution case at
    institutional scale (induced 8.1; LENS D5/PT5). LENS uses it
    in Domain 5 (Navigating Sociotechnical Constraints) for the
    disclosure-architecture lesson — the deliberation that did
    not happen — and in Domain 4 (Test and Evaluation) for the
    evidence-tier discipline binding policy-tier analysis to
    audit-tier verification. Pair with Case 55 (Engler /
    enrollment algorithms) as governance frame to technical
    frame, and with Cases 186 (Bartlett) and 86 (Gándara) for
    the construct-choice anchor across deployed prediction
    systems. coi-light render under the title is binding.
  ],
  literature-items: (
    [Burd (2020), New America — Crisis Point],
    [Burd (ed., 2024), Harvard Education Press — Lifting the Veil],
    [Peterson's / Common Data Set — public institutional aid distribution data],
  ),
  reflection-list: (
    [Identify an institutional metric in your domain that has quietly substituted for the stated mission metric. What was the deliberative process that produced the substitution — and if there was none, what would the disclosure architecture have to look like to surface the change?],
    [Specify the paired scorecard you would publish at board level for an aid-distribution program: need-based vs. merit-based shares, unmet-need gaps by income quartile, four-year completion by Pell status. Which of these is your institution currently reporting?],
    [Burd's 2024 volume brings together researchers, journalists, and industry insiders in a single book-length synthesis. What is the analog you would commission for a field-scale critique in your domain — and which voice is the hardest to include?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 57 — gao-online-program-manager-oversight ----
#case(
  number: 57,
  slug: "gao-online-program-manager-oversight",
  title: "GAO Online Program Manager Oversight Gap (GAO-22-104463)",
  year: "2022",
  domains-list: ("higher education", "regulatory oversight", "online education"),
  modes-code: "DKN",
  impact: "GAO found at least 550 colleges contracted with OPMs to support at least 2,900 academic programs as of July 2021; in a survey GAO cites, 16 of 25 colleges paid the OPM between 41% and 60% of program tuition revenue and four paid 61% or more; instructions to auditors and colleges lacked key details on OPM arrangements, leaving a risk that ED would not have the information it needs to detect incentive-compensation violations",
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "5.3",
  lens-anchor: "D5/PT6",
  leo-anchor: "LEO-5, LEO-3",
  coi: "Institutional overlap: John Katzman collaborates with an editor's institution (Johns Hopkins) but was not involved in this work. Katzman founded 2U — central to the OPM debate, though not named in this GAO report.",
  summary: [
    The Government Accountability Office's April 2022 audit
    (GAO-22-104463) names a structural oversight gap in the
    federal regime governing online program managers. As of
    July 2021, at least 550 colleges contracted with OPMs to
    support at least 2,900 academic programs; in survey data GAO cites, 16 of 25 colleges paid the OPM between 41 and 60 percent of program tuition revenue and four paid 61 percent or more. The 1992 Higher Education Act amendments
    prohibited incentive compensation for student recruiters
    as a fraud-prevention measure; the Department of Education's
    2011 "bundled-services" guidance exempted OPMs from the ban
    when recruiting was bundled with other services. The GAO found that instructions to auditors and to colleges lacked key details about identifying OPM arrangements, leaving a risk that the Department would not have the information it needs to detect violations. 2U's July 2024 Chapter 11 filing closed one
    boundary of the policy debate at the commercial level; at the
    federal level the Department opened a review of the guidance
    but did not rescind it — the January 2025 Dear Colleague
    Letter reaffirmed the 2011 bundled-services guidance. The
    underlying delegation-
    and-oversight problem persists for successor OPMs and
    revenue-share structures.
  ],
  sections: (
    [
      The federal regime against incentive compensation in
      higher-education recruiting dates to 1992 and was built to
      address a specific fraud pattern: recruiters paid by
      enrollment will enroll students the program cannot serve,
      because the recruiter's compensation is tied to the
      enrollment rather than to the student's outcome. The 1992 Higher Education Act amendments banned it for any person or entity engaged in student recruiting or admissions. The 2011 "bundled-services"
      guidance the Department of Education issued exempted
      online program managers from the ban when student
      recruiting was bundled with other services such as program
      design, platform delivery, and student support — a
      construct that allowed the revenue-share contracting model
      to grow rapidly across the next decade.#cn()
    ],
    [
      The GAO's audit documents the scale the regime grew to.
      By July 2021, at least 550 colleges had contracted with
      OPMs to support at least 2,900 academic programs.
      In the Eduventures survey GAO cites, 16 of 25 colleges transferred between 41 and 60 percent of program tuition revenue to the OPM and four transferred 61 percent or more. The OPM operated under the
      university brand — recruiting, marketing, and program
      operations conducted by OPM employees identifying as the
      university — while receiving compensation tied directly to
      the enrollments those operations generated. The structural
      seam the regime had created was an exemption that allowed
      the prohibited compensation structure as long as the
      structure was administered by a contracted vendor.#cn()
    ],
    [
      The oversight gap the GAO documents is operational. Auditor instructions did not reference OPMs or the 2011 guidance, so compliance audits might not assess relevant arrangements; instructions to colleges lacked the detail that would have made them report those arrangements, and GAO found a risk that the Department would not have the information it needs to detect violations.
      The audit's central finding is not that the OPM regime was
      designed to fail; it is that the oversight architecture
      required to police the exemption's boundaries was never
      built, and the contracting structure that the exemption
      allowed grew faster than the monitoring capacity that
      would have surfaced violations.#cn()
    ],
    [
      2U's July 2024 Chapter 11 filing closed one boundary of the
      policy debate at the commercial level; at the federal level
      the Department opened a review of the bundled-services
      guidance in 2023–2024 but did not rescind it, and its January
      2025 Dear Colleague Letter reaffirmed the 2011 guidance.
      Neither closed the
      underlying delegation-and-oversight problem. Successor OPMs
      and revenue-share structures continue to operate; the
      universities that delegated student recruitment under the
      pre-2024 regime retain the operational dependencies and the
      brand-and-program commitments built during the decade of
      growth. The pair with Case 58 (USC × 2U Luna class action)
      shows the consumer-side litigation half of the same
      delegation; the pair with Case 55 (Engler / enrollment
      algorithms) shows the pricing-side optimization half.#cn()
    ],
    [
      The case is investigation-grade — a GAO audit is the
      strongest tier of evidence the corpus carries for
      regulatory-oversight failure — and it is the structural
      delegation-with-revocation case at population scale. The
      university delegated student recruitment to a contracted
      vendor under a regulatory exemption that did not include
      the monitoring architecture the exemption's boundaries
      required. The delegation was reversible in principle: the
      contracts could be terminated, the exemption could be
      withdrawn, the operations could be brought back inside the
      university. In practice, the delegation accumulated
      operational and contractual lock-in across the decade the
      GAO audit covers, and the revocation when it came in 2024
      was forced by commercial collapse rather than by the
      oversight architecture the audit recommended.
    ],
  ),
  beats: (
    "1992 HEA banned incentive compensation for recruiters; 2011 ED guidance exempted OPMs under bundled-services construct",
    "GAO 2022: at least 550 colleges, 2,900 programs, surveyed revenue shares of 41–60% of program tuition for 16 of 25 colleges, 61%+ for four",
    "Oversight gap: auditor and college instructions lacked key OPM detail, leaving a risk ED would not have the information needed to detect violations",
    "2U July 2024 Chapter 11 closed the commercial boundary; ED opened a review but reaffirmed the 2011 guidance (Jan. 2025 DCL), federal boundary unclosed; successor OPMs and underlying delegation problem persist",
    "Investigation-grade delegation-with-revocation case at population scale; pair with Case 58 (USC × 2U Luna) and Case 55 (Engler)",
  ),
  approaches: (
    during: (
      [Build the monitoring architecture as a condition of any regulatory exemption; the bundled-services exemption created a foreseeable contracting structure, and the oversight infrastructure to police its boundaries should have been built with it.],
      [Require contract-disclosure as a federal reporting obligation, not as an institutional discretion; the GAO's data-collection finding is operationally addressable by mandatory reporting of revenue-share rates and recruiter-compensation arrangements.],
      [Treat the delegation as reversible from the start: contract terms should preserve termination rights and operational-knowledge transfer; the lock-in the universities experienced was partly contractual and partly operational, and both halves are designable.],
    ),
    after: (
      [Carry the investigation-grade audit into the curriculum without softening: the GAO's central finding is that the oversight architecture was not built, and that is the teaching point.],
      [Pair the case with Case 58 (USC × 2U) so the regulator-side audit and the consumer-side litigation are taught together; one half names what the regulator missed, the other names what the delegated marketing actually did.],
      [Track post-review and post-2U-bankruptcy successor structures as a continuation of the case; the underlying delegation problem persists, and the case's frame is the regime-level oversight gap, not the specific 2U arrangement.],
    ),
  ),
  references: (
    [U.S. Government Accountability Office (2022), "Higher Education: Education Needs to Strengthen Its Approach to Monitoring Colleges' Arrangements with Online Program Managers," GAO-22-104463.],
    [U.S. Department of Education (2011), "Dear Colleague" guidance on incentive-compensation bundled-services exemption — the regulatory artifact the GAO audits.],
    [Higher Education Amendments of 1992, Pub. L. No. 102-325, incentive-compensation prohibition, 20 U.S.C. § 1094(a)(20) — the statutory basis the 2011 guidance interpreted.],
    [2U Inc. (2024), Chapter 11 bankruptcy filing (July 25, 2024); U.S. Department of Education, "Dear Colleague" Letter (Jan. 14, 2025) reaffirming the 2011 bundled-services guidance (GEN-11-05) — the commercial-boundary closure alongside the federal guidance's continued validity.],
  ),
  quote: [Without clearer instructions to auditors and colleges about the information on OPM arrangements that must be assessed during compliance audits and agency reviews, there is a risk that Education will not have the information it needs to detect incentive compensation violations.],
  quote-source: "U.S. Government Accountability Office, GAO-22-104463 (2022).",
  le-insight: [
    GAO-22-104463 is the investigation-grade delegation-with-
    revocation case at population scale. A regulatory exemption
    permitted a contracting structure across 550+ colleges and
    2,900+ programs; the monitoring architecture required to
    police the exemption's boundaries was never built. 2U's July
    2024 Chapter 11 closed the commercial boundary; ED opened a
    review but did not rescind the guidance (reaffirmed in the
    January 2025 DCL);
    the underlying delegation problem persists for successor
    OPMs.
  ],
  lens-approach: [
    GAO OPM oversight gap is the regulatory-seam case (induced
    5.3; LENS D5/PT6). LENS uses it in Domain 5 (Navigating
    Sociotechnical Constraints) for the cross-regime delegation
    pattern and in Domain 3 (Human-System Collaboration) for
    the delegation-with-revocation frame — the contract is
    reversible in principle, locked-in in practice. Pair with
    Case 58 (USC × 2U Luna, the litigation half) and Case 55
    (Engler / enrollment algorithms, the pricing-optimization
    half). coi-light render under the title is binding.
  ],
  literature-items: (
    [GAO-22-104463 (2022) — OPM oversight audit],
    [ED 2011 bundled-services guidance — the audited regulatory artifact],
    [Higher Education Act 1992 — statutory incentive-compensation prohibition],
  ),
  reflection-list: (
    [Identify a regulatory exemption in your domain that permits a contracting structure without specifying the monitoring architecture required to police its boundaries. What would the audit-detectable artifact be — and is anyone currently collecting it?],
    [Specify the contract terms you would require to preserve revocability of a delegated capability. Termination rights, operational-knowledge transfer, data portability — which of these are typically written into your domain's standard contracts, and which are left to negotiation?],
    [GAO-22-104463 documents what happened when oversight architecture lagged contracting growth across a decade. What is the analog in your domain — a contracting pattern that grew under an exemption whose monitoring infrastructure was not built — and where would the equivalent investigation-grade audit have to come from?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 58 — usc-2u-online-msw-when-the-delegation ----
#case(
  number: 58,
  slug: "usc-2u-online-msw-when-the-delegation",
  title: "USC × 2U Online MSW — When the Delegation Becomes the Product (Luna v. USC)",
  year: "2010s – 2024",
  domains-list: ("higher education", "online program management", "professional licensure"),
  modes-code: "DKN",
  impact: "USC's MSW program grew from ~300 students per cohort pre-2010 to more than 3,000 students enrolled, almost entirely through online growth under the 2U partnership; 2023 class action alleges USC marketed the online program as the 'same' as the residential program while outsourcing recruiting, advising, and clinical placement to 2U employees; partnership wind-down announced November 2023",
  kind: "failure",
  scale: "big",
  evidence-source: "journalism",
  evidence-flag: "journalism-tier",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT6",
  leo-anchor: "LEO-5, LEO-3",
  coi: "Institutional overlap: John Katzman collaborates with an editor's institution (Johns Hopkins) but was not involved in this work. Katzman founded 2U but had departed before the USC MSW expansion documented here.",
  summary: [
    USC's Master of Social Work program grew from about 300 students per cohort before 2010 to more than 3,000 students enrolled, almost entirely through online growth under the 2U partnership. The
    May 2023 _Luna v. USC_ class-action complaint alleges that USC
    marketed the online program as the "same" as the residential
    program while outsourcing recruiting, advising, and clinical
    placement to 2U employees who carried usc.edu email addresses.
    Plaintiffs further allege that 2U marketers targeted students
    of color and veterans with aggressive, deceptive tactics, and
    that the online program's tuition (over \$100,000) reflected
    on-campus pricing while the delivered student experience did
    not. USC and 2U announced the partnership's termination on the
    MSW and other programs in November 2023. The case is in litigation, and
    the predatory-targeting reconstruction rests on the complaint
    and on contemporaneous reporting rather than on a fact-finder's
    ruling — the evidence-tier flag is binding, and the case
    carries the journalism-tier framing with the standing
    language: future validation ongoing.
  ],
  sections: (
    [
      The structural pattern the case names is the inversion of
      a stable institutional practice. USC's residential MSW
      program had been an established, modestly sized clinical
      training program with a known student experience. The 2U
      partnership took the program's name and credential and
      built a parallel online operation at roughly ten times the
      cohort scale, with student-facing operations — recruiting,
      enrollment counseling, clinical-placement coordination —
      run by 2U employees who identified to applicants and
      enrollees with usc.edu email addresses. The university's
      delegation extended beyond program operations to the
      student-facing surface that defines what the credential
      means to the student paying for it.#cn()
    ],
    [
      The Luna class-action complaint, filed in Los Angeles County
      Superior Court in May 2023, structures its case around two
      central allegations. The first is misrepresentation: USC
      marketed the online program as the "same" as the residential
      program — same faculty, same standards, same credential —
      while the operational substance of the program had been
      outsourced. The tuition price (over \$100,000) tracked the
      residential pricing structure while the delivered student
      experience tracked the OPM-operated structure. The second
      is targeting: 2U marketers, the complaint alleges, focused
      aggressive and deceptive recruitment tactics on students of
      color and veterans — populations for whom the credential
      cost-and-mobility calculation is structurally different
      and for whom the misrepresentation has differential
      consequences.#cn()
    ],
    [
      The downstream consequences the complaint identifies extend
      into the licensure question. The MSW credential is a
      professional-licensure prerequisite, and clinical placement
      is the operational core of the training the licensure
      depends on. The complaint alleges that the delegated
      clinical-placement coordination — handled by 2U employees
      under usc.edu cover — did not consistently produce
      placements at the quality the residential program's
      reputation implied. The licensure-board half of the
      consequence chain — what graduates were actually able to do
      in practice, given clinical-placement quality — has not been
      independently studied, and the case carries that gap
      honestly rather than collapsing it.#cn()
    ],
    [
      USC and 2U announced the partnership's termination on the
      MSW and other programs in November 2023. The termination closed the
      operational arrangement at the boundary the litigation and
      the broader 2U commercial collapse forced; it did not
      adjudicate the legal claim, did not refund tuition paid
      under the prior arrangement, and did not produce an
      independent record of what the delegated operations
      actually delivered. The case sits at the consumer-side
      counterpart to Case 57 (GAO OPM oversight gap): one half
      is the regulator-side audit of the regime, the other is
      the litigation that names what happened to specific
      applicants and enrollees under the regime. Pair also with
      Case 55 (Engler / enrollment algorithms) for the pricing-
      optimization half.#cn() That commercial collapse became
      terminal: 2U filed a prepackaged Chapter 11 in July 2024 and
      emerged in September 2024 as a privately held company, delisted
      from Nasdaq — the delegated vendor at the center of the
      arrangement ceasing to exist in the public-company form the
      disclosure record had assumed, and USC reabsorbing the programs
      it had outsourced.
    ],
    [
      The journalism-tier evidence flag is binding on the case's
      framing. The complaint is a contested pleading that has survived two demurrers with no ruling on the merits, and the partnership-termination record is contemporaneous reporting; neither is investigation-grade in the sense a GAO audit is, and the journalism-tier flag governs both. The
      predatory-targeting reconstruction relies on the
      complaint's allegations and on contemporaneous reporting
      — Higher Ed Dive, classaction.org summaries, the Project
      on Predatory Student Lending's statement — rather than on
      a fact-finder's ruling or an independent audit of 2U's
      marketing operations. Future validation ongoing on the
      litigation's outcome, on the licensure-board half of the
      consequence chain, and on whether the post-2024
      successor-OPM contracts incorporate the disclosure
      architecture the case names as missing.
    ],
  ),
  beats: (
    "USC MSW grew from ~300 per cohort pre-2010 to >3,000 students enrolled via online growth with 2U; tuition tracked residential pricing (>$100K)",
    "Luna 2023 complaint: USC marketed online program as 'same' as residential while outsourcing recruiting, advising, clinical placement to 2U",
    "Complaint alleges aggressive targeting of students of color and veterans; usc.edu email cover on OPM-employee operations",
    "Licensure half: clinical-placement quality independently unstudied; downstream what-can-graduates-do question carried as gap",
    "Partnership wind-down announced Nov 2023; pair with Case 57 (GAO regulator-side) and Case 55 (Engler pricing); journalism-tier flag binding",
  ),
  approaches: (
    during: (
      [Treat the student-facing surface — recruiting communications, advising emails, clinical-placement coordination — as part of the disclosable program substance, not as operational discretion to be delegated under brand cover.],
      [Require that delegated personnel identify their actual employer in student-facing communications; the usc.edu email cover the complaint names is operationally addressable by branding policy.],
      [Build a paired disclosure that ties the delivered student experience back to the marketed program description; the gap the complaint alleges is between what was promised and what was delivered, and the gap is reportable.],
    ),
    after: (
      [Carry the journalism-tier framing into print without softening; the litigation is ongoing, the targeting reconstruction is allegation-tier, and the case's pedagogical power rests on naming the evidence tier honestly.],
      [Pair the case in syllabi with Case 57 so the regulator-side and consumer-side halves of the OPM regime are taught together; one half names what the audit missed, the other names what the affected students alleged happened.],
      [Track the licensure-board half over time; an independent study of clinical-placement quality and post-graduation practice capacity is the audit the case names as the missing evidence.],
    ),
  ),
  references: (
    [_Stephanie Luna v. University of Southern California_, class action complaint, Los Angeles County Superior Court, May 2023.],
    [Higher Ed Dive reporting on the Luna complaint, May 2023; classaction.org and topclassactions.com summaries.],
    [Project on Predatory Student Lending statement on USC-2U partnership termination, November 2023.],
    [2U Inc. and USC public statements on partnership termination, November 2023; broader 2U commercial-collapse reporting referenced through Case 57.],
  ),
  quote: [The tuition tracked residential pricing. The delivered student experience tracked the OPM-operated structure. The gap between what was promised and what was delivered is the case.],
  quote-source: "Editors' synthesis of the Luna v. USC complaint and contemporaneous reporting.",
  le-insight: [
    Luna v. USC is the consumer-side journalism-tier counterpart
    to GAO-22-104463 (Case 57). The complaint alleges USC
    marketed the online MSW as the "same" as the residential
    program while outsourcing the student-facing operations to 2U;
    the licensure-board half of the consequence chain is
    independently unstudied. Journalism-tier flag is binding —
    the predatory-targeting reconstruction is allegation-tier;
    future validation ongoing on litigation outcome and licensure
    consequences.
  ],
  lens-approach: [
    USC × 2U Luna is the disclosure-as-deliverable case at
    OPM-delegation scale (induced 5.4; LENS D5/PT6). LENS uses it
    in Domain 5 (Navigating Sociotechnical Constraints) for the
    promised-vs-delivered disclosure gap and in Domain 3 (Human-System Collaboration) for the delegation-with-revocation
    pattern — the partnership wind-down was announced in November 2023, but the
    consequences for students who enrolled under the prior
    arrangement persist. Pair with Case 57 (GAO regulator-side
    audit), Case 55 (Engler pricing optimization), and Case 5
    (Epic Sepsis governance gap). coi-light render under the
    title is binding.
  ],
  literature-items: (
    [_Luna v. USC_ complaint (2023)],
    [Higher Ed Dive and Project on Predatory Student Lending reporting],
    [GAO-22-104463 — paired regulator-side audit (Case 57)],
  ),
  reflection-list: (
    [Identify a program in your domain where the student-facing surface — recruiting, advising, placement — has been delegated to a contracted vendor operating under institutional brand. What is the disclosure your institution makes to applicants about that delegation, and at what point in the transaction?],
    [Specify the paired disclosure you would build to tie delivered student experience back to the marketed program description. What data — placement outcomes, advising-load ratios, vendor-employee proportion of student-facing communications — would you commit to publishing alongside enrollment marketing?],
    [The journalism-tier flag is binding because the targeting reconstruction is allegation-tier. What is the investigation-grade study that would convert the case from allegation-tier to audit-tier — and who could commission it?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 59 — in-re-2u-securities-class-action ----
#case(
  number: 59,
  slug: "in-re-2u-securities-class-action",
  title: "In re 2U, Inc. Securities Class Action — When Yield Management Crashes Into Disclosure",
  year: "2019 – 2022",
  domains-list: ("higher education", "securities law", "enrollment management"),
  modes-code: "DKN",
  impact: "Consolidated federal securities class action in the District of Maryland (TDC-19-3455, consolidated with TDC-20-1006); §10(b) and §20(a) allegations that 2U executives misled investors about declining enrollment projections during the Feb 26 2018 – Jul 30 2019 class period; $37M settlement July 2022; final approval Dec 9 2022 by Hon. Theodore D. Chuang",
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT5",
  leo-anchor: "LEO-4, LEO-5",
  coi: "Institutional overlap: John Katzman co-founded 2U and collaborates with an editor's institution (Johns Hopkins) but was not involved in the underlying litigation.",
  summary: [
    The consolidated federal securities class action against 2U,
    Inc. — filed December 2019 in the District of Maryland before
    Hon. Theodore D. Chuang and settled for \$37 million in July
    2022 with final approval December 9, 2022 — names a distinct
    structural seam in the enrollment-management-vendor frame.
    Lead plaintiff Fiyyaz Pirani and additional named plaintiff
    the Oklahoma City Employee Retirement System alleged that 2U executives
    intentionally misled investors about declining enrollment
    projections across the February 26, 2018 to July 30, 2019
    class period, sounding in §10(b) and §20(a) of the Securities
    Exchange Act. The settlement is not an admission of liability,
    and the case is pedagogically useful for what the disclosure
    architecture failed to do, not for any adjudicated finding of
    wrongdoing. The case pairs with Case 57 (GAO OPM oversight)
    and Case 58 (USC × 2U Luna) to complete the regulator-side,
    consumer-side, and investor-side triangle around the same
    delegation structure that Case 55 names at the pricing layer.
  ],
  sections: (
    [
      The enrollment-management vendor model that grew across the
      2010s tied a public-company revenue line directly to the
      yield mechanics the casebook documents elsewhere. 2U's
      stock price depended on continued growth in program
      partnerships and per-program enrollments; the OPM revenue-
      share structure documented in Case 57 transmitted
      university enrollment outcomes onto the company's quarterly
      results. When enrollment trends weakened, the disclosure
      question that securities law imposes on a public company
      became the decisive one. The consolidated complaint
      alleges that executive statements to investors did not
      track the operating signal the company's own enrollment
      projections were generating across the class period.#cn()
    ],
    [
      The procedural record is the part of the case that is
      adjudicated. The consolidated action carries docket numbers
      TDC-19-3455 (filed December 2019) and TDC-20-1006, before
      Hon. Theodore D. Chuang of the U.S. District Court for the
      District of Maryland. Fiyyaz Pirani was appointed lead
      plaintiff; the Oklahoma City Employees Retirement System
      served as co-lead. The class period the complaint defined
      ran from February 26, 2018 to July 30, 2019. The legal
      theory sounded in §10(b) and §20(a) of the Securities
      Exchange Act of 1934 — the standard misrepresentation and
      control-person provisions for a federal securities-fraud
      class action. The case settled for \$37 million in July
      2022; Judge Chuang granted final approval on December 9,
      2022. The settlement explicitly disclaims admission of
      liability.#cn()
    ],
    [
      The pedagogical seam the case opens is the disclosure
      architecture of an OPM-driven enrollment-management business
      run as a public company. The hedge the casebook must
      preserve is binding: a securities-class settlement is not
      a finding of wrongdoing, and the case teaches the
      structural pattern, not adjudicated fault. The pattern is
      the structural one. A company whose revenue line is built
      on partner-university enrollments must disclose changes in
      enrollment trajectory under federal securities law; the
      enrollment-management vendor relationship Case 55 maps
      operates downstream of the same trajectory the disclosure
      must describe. The class period closes in the same window
      — late 2019 through 2022 — that the GAO audit (Case 57)
      and the Luna complaint (Case 58) cover, and the alignment
      is not coincidental. Multiple oversight surfaces converged
      on the same delegation structure at the same time.#cn()
    ],
    [
      The case sits as the investor-side complement to Case 57
      (regulator-side audit of the OPM regime) and Case 58
      (consumer-side litigation by online MSW enrollees against
      USC). Each surface saw the same underlying business
      arrangement from a different vantage. The regulator asked
      whether the incentive-compensation exemption's monitoring
      architecture had been built; the answer documented in the
      GAO audit was that it had not. The enrolled students
      alleged that the marketed program substance had been
      delegated to vendor employees operating under brand cover.
      The investor class alleged that executive communications
      during a window of weakening enrollment did not surface
      the projection signal the operating record was generating.
      The three surfaces together define the disclosure-as-
      governance frame the case anchors. Pair also with Cases
      55 and 56 (Engler and Burd) for the enrollment-
      management context this litigation operates inside of.#cn()
    ],
    [
      The honest hedges the case carries are not decoration. The
      settlement is not an admission of liability, and the case
      teaches the disclosure-architecture pattern, not
      adjudicated wrongdoing. The class period and the
      allegation structure are adjudicated record; the executive
      intent that the complaint frames as "intentional" was not
      tested by a fact-finder. The case's value to the corpus is
      that a public-company disclosure regime is one of the few
      external oversight mechanisms that operated on the OPM-
      enrollment-management model during its growth window, and
      that the convergence with Cases 57 and 58 across the
      same calendar window is a structural rather than incidental
      pattern. The coi-light disclosure under the title is
      binding for the affiliation, and the case's editorial
      framing has been written to maintain critical distance
      from any reading that would convert the settlement into
      an adjudicated finding. The public-company disclosure regime
      the case anchors on later closed: after continued enrollment
      and revenue decline, 2U filed a prepackaged Chapter 11 in
      July 2024 and emerged in September 2024 as a privately held,
      Nasdaq-delisted company — ending the §10(b) public-reporting
      oversight surface under which this litigation had arisen.
    ],
  ),
  beats: (
    "Consolidated federal securities class action TDC-19-3455 + TDC-20-1006, D. Md., Hon. Theodore D. Chuang; filed Dec 2019",
    "Class period Feb 26 2018 – Jul 30 2019; §10(b) and §20(a) allegations on enrollment-projection disclosure to investors",
    "Lead plaintiff Fiyyaz Pirani; additional named plaintiff Oklahoma City Employee Retirement System",
    "$37M settlement July 2022; final approval Dec 9 2022; not an admission of liability — case teaches disclosure pattern, not fault",
    "Investor-side complement to Case 57 (regulator audit) and Case 58 (consumer litigation); pair with Cases 55 and 56",
  ),
  approaches: (
    during: (
      [Treat enrollment-trajectory signals as a primary disclosure surface when the business model ties revenue to partner enrollments; the case names the seam where operating-record signal and investor-facing communication must be reconciled in a federal-securities-law-graded sense.],
      [Build the projection-disclosure pipeline before it is needed: a documented internal process for translating partner-enrollment signals into investor-facing communication is the artifact a §10(b) defense would have to invoke.],
      [Treat the convergence of regulator-side, consumer-side, and investor-side oversight on the same delegation as a leading indicator; when three independent oversight surfaces close on a single business arrangement within the same calendar window, the structural pattern is the diagnostic.],
    ),
    after: (
      [Carry the case in print with the hedge intact — settlement is not an admission of liability, and the case teaches the disclosure-architecture pattern, not adjudicated wrongdoing.],
      [Pair in syllabi with Case 57 (GAO audit) and Case 58 (Luna complaint) so the three oversight surfaces are taught together; the pedagogical move is to show how a single delegation structure looked from three vantage points across overlapping windows.],
      [Use the case to teach the disclosure-as-governance frame: federal securities law is one of the few external regimes whose disclosure standards apply to the OPM-enrollment-management model, and the standards' application is itself the artifact the case names.],
    ),
  ),
  references: (
    [In re 2U, Inc. Securities Class Action, Consolidated Case No. 8:19-cv-03455-TDC (TDC-19-3455, consolidated with TDC-20-1006), D. Md., before Hon. Theodore D. Chuang; underlying actions filed August 2019 (S.D.N.Y., transferred and consolidated in D. Md.); consolidated complaint filed July 30, 2020.],
    [Stipulation of settlement and motion for final approval, In re 2U, Inc. Securities Class Action, July 2022; final approval order, December 9, 2022.],
    [Securities Exchange Act of 1934, §10(b) and §20(a), and SEC Rule 10b-5; and Securities Act of 1933, §§11, 12(a)(2) and 15 (tied to the May 2018 secondary-offering Registration Statement) — the statutory basis the consolidated complaint sounded in.],
    [Paired investigation-grade record: U.S. Government Accountability Office, GAO-22-104463 (2022); _Luna v. USC_ class action complaint (2023) — the regulator-side and consumer-side surfaces of the same delegation structure (Cases 57, 58).],
  ),
  quote: [The settlement is not an admission of liability. The case teaches the disclosure-architecture pattern, not adjudicated wrongdoing — and the convergence of three oversight surfaces on the same delegation structure within the same calendar window is the structural diagnostic.],
  quote-source: "Editors' synthesis of the In re 2U class action record (2019 – 2022).",
  le-insight: [
    In re 2U is the investor-side disclosure-architecture case at
    OPM-delegation scale. A federal securities class action over
    enrollment-projection communications during a weakening-
    enrollment window settled for \$37 million without admission
    of liability. The case teaches the disclosure pattern, not
    adjudicated fault, and completes the regulator-side and
    consumer-side oversight triangle with Cases 57 and 58 across
    the same calendar window.
  ],
  lens-approach: [
    In re 2U is the disclosure-as-governance case at the public-
    company boundary (induced 5.4; LENS D5/PT5; LEO-4 and LEO-5).
    LENS uses it in Domain 5 (Navigating Sociotechnical Constraints)
    for the change-control and disclosure-architecture anchor and
    in Domain 4 (Test and Evaluation) for the convergence-of-
    oversight-surfaces diagnostic. Pair with Case 57 (GAO
    regulator-side audit), Case 58 (Luna consumer-side complaint),
    and Cases 55 and 56 (Engler and Burd, the enrollment-
    management context). coi-light render under the title is
    binding for the affiliation.
  ],
  literature-items: (
    [In re 2U, Inc. Securities Class Action (D. Md., 2019 – 2022)],
    [Securities Exchange Act §10(b), §20(a); Rule 10b-5],
    [Paired Cases 57 (GAO-22-104463) and 58 (Luna v. USC)],
  ),
  reflection-list: (
    [Identify a business arrangement in your domain whose revenue trajectory depends on a delegated operational counterpart. What disclosure surfaces — to investors, regulators, customers, affected populations — currently apply, and which of them are absent in the architecture as built?],
    [Specify the internal pipeline you would build to translate operating-record signal into investor-facing disclosure. What is the documented decision rule for when an emerging trajectory becomes a disclosable trend, and who signs off on the rule?],
    [The case is part of a three-surface convergence on the same delegation structure across a single calendar window. Pick an arrangement in your domain and ask: which oversight surfaces have closed on it within overlapping windows, and what would the editorial synthesis of those convergent records teach a future practitioner?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 60 — houston-evaas-value-added-teacher ----
// VERIFY: pin-cite page for the quoted opinion language — the opinion is at 251 F. Supp. 3d 1168 (S.D. Tex. 2017) and the quote is widely reported from it, but the exact page of the quoted sentence has not been independently pin-verified.
// VERIFY: "high-mobility students" bias claim — the published quantitative bias record (Amrein-Beardsley & Geiger 2020) documents school-composition correlations for ELL, free-or-reduced-lunch, and special-education populations; a specific high-mobility finding is hedged in prose rather than stated as fact.
#case(
  number: 60,
  slug: "houston-evaas-value-added-teacher",
  title: "Houston EVAAS — Value-Added Teacher Evaluation on Trial",
  year: "2011–2017",
  domains-list: ("K-12 education", "teacher evaluation", "algorithmic accountability"),
  modes-code: "G",
  impact: "Houston ISD used the proprietary SAS EVAAS value-added model to attribute student test-score growth to individual teachers and made termination decisions on the scores during the 2011–15 school years; SAS held the model as a trade secret, so teachers could not inspect, replicate, or contest their scores; in May 2017 the federal district court in Hous. Fed'n of Teachers v. Hous. Indep. Sch. Dist., 251 F. Supp. 3d 1168 (S.D. Tex.), denied summary judgment on the procedural due process claim alone — granting it on all others — holding teachers had a protectable property interest that unverifiable scores could deprive them of without due process; HISD settled in October 2017, agreeing not to use unverifiable value-added scores as a basis for termination and paying $237,000 in fees",
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "2.1",
  lens-anchor: "D4/PT4",
  leo-anchor: "LEO-4",
  summary: [
    From 2011 the Houston Independent School District used the
    SAS Education Value-Added Assessment System (EVAAS), a
    proprietary statistical model, to attribute student
    test-score growth to individual teachers, and made
    termination decisions on the resulting scores. SAS held the
    model as a trade secret, so teachers could not inspect,
    replicate, or contest the number that ended their careers.
    In _Houston Federation of Teachers v. Houston ISD_, the
    federal district court denied summary judgment in May 2017,
    holding that teachers had a protectable property interest
    and that unverifiable scores could violate Fourteenth
    Amendment procedural due process — a "black box" evaluation
    denies any meaningful opportunity to contest. HISD settled
    in October 2017, agreeing to stop using unverifiable
    value-added scores for termination and paying \$237,000 in
    fees. The research record — year-to-year score instability,
    the ASA 2014 and AERA 2015 statements, and documented
    subgroup-composition bias — makes this the casebook's
    cleanest adjudicated gap-attribution failure.
  ],
  sections: (
    // -- Background --
    [
      Beginning in 2011, the Houston Independent School
      District tied high-stakes teacher-appraisal decisions —
      including bonuses and terminations — to the SAS Education
      Value-Added Assessment System (EVAAS), a proprietary
      value-added model (VAM) that estimates an individual
      teacher's contribution to student growth on standardized
      tests. The operational theory was direct: student
      test-score growth, statistically adjusted, isolates the
      teacher's effect, and the isolated effect is
      decision-grade evidence for employment action. The
      statistical profession disagreed on both counts. The
      American Statistical Association's 2014 statement
      cautioned that VAMs measure correlation rather than
      causation, are sensitive to model and data choices, and
      that most VAM studies find teachers account for about 1%
      to 14% of the variability in test scores — with the
      majority of improvement opportunities in system-level
      conditions. The AERA's 2015 statement enumerated eight
      technical requirements for valid VAM use and cautioned
      against giving VAM dispositive weight in high-stakes
      evaluation. HISD's deployment preceded both statements
      and continued after them.#cn()
    ],
    // -- What Happened --
    [
      Teachers rated ineffective by EVAAS could be, and were,
      exited on the strength of the score, but no teacher could
      verify it. SAS classified the model's source code and
      implementation as a trade secret and refused to release
      them to the district or its employees; the score arrived
      as a number without a derivation. The independent
      research record gave teachers concrete reasons to want
      one. Amrein-Beardsley and Collins's 2012 study reconstructed the records of four teachers whose contracts were not renewed in 2011 and found that for three of the four, whether the score showed added or detracted value from one year to the next was roughly the flip of a coin — and teachers across the district reported that their principals were skewing observational ratings to match the EVAAS number. A score that is unstable
      year-to-year, generated by a model no one outside the
      vendor can examine, was the sole or decisive input to
      termination decisions.#cn()
    ],
    // -- The Litigation --
    [
      The Houston Federation of Teachers and seven teachers
      sued in 2014. In May 2017, the federal district court
      (S.D. Tex., Magistrate Judge Stephen Wm. Smith) denied
      HISD summary judgment on the procedural due process
      claim, holding that teachers had a constitutionally
      protectable property interest in continued employment and
      that the EVAAS scores' unverifiability could deny them
      due process: "HISD teachers have no meaningful way to
      ensure correct calculation of their EVAAS scores, and as
      a result are unfairly subject to mistaken deprivation of
      constitutionally protected property interests in their
      jobs." The opinion noted that the score "might be
      erroneously calculated for any number of reasons, ranging
      from data entry mistakes to glitches in the computer code
      itself," and that algorithms are human creations, subject
      to error like any other human endeavor. In October 2017
      HISD settled: the district agreed not to use unverifiable
      value-added scores as a basis for termination so long as
      they remain unverifiable, created a joint instructional
      consultation panel on the appraisal process, and paid
      \$237,000 in legal fees.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability gap sits at the attribution step. Student
      test-score growth is a system outcome — shaped by
      curriculum, student assignment patterns, school effects,
      peer composition, and prior schooling — and EVAAS
      attributed it to an individual operator, the teacher,
      through a statistical coupling that was never validated
      for the decision it was driving. The ASA's 1%-to-14%
      figure is the quantitative form of the gap: the model
      assigned to the individual a residual dominated by the
      system. The evidence then failed the decision-grade test
      so completely that a federal court said so — not that the
      model was inaccurate, which no one could establish
      either way, but that a score no affected party can
      inspect, replicate, or contest cannot support a
      consequential deprivation. The failure is adjudicated
      gap misattribution: the institution located a
      system-level shortfall in the individual because the
      individual was the addressable unit, and defended the
      attribution with secrecy rather than validation.#cn()
    ],
    // -- Aftermath & Equity Record --
    [
      The bias record is documented, not asserted, and its hedges do real work. Amrein-Beardsley and Geiger's
      2020 analysis of more than 1,700 HISD teachers' EVAAS
      results found that teachers in schools serving larger
      populations of English-language learners,
      free-or-reduced-lunch students, and special-education
      students received systematically lower value-added
      scores — a school-composition correlation, which is
      evidence of bias against teachers serving those
      populations but not a teacher-level causal decomposition.
      Concerns about teachers of highly mobile student
      populations appear in the Houston survey research and
      practitioner record but are less precisely quantified in
      the published literature. The settlement did not
      invalidate value-added modeling; it established that a
      proprietary, unverifiable score cannot be the basis for
      termination, and the due-process holding has since
      anchored the legal literature on algorithmic
      accountability in public employment. Houston reads, in
      retrospect, as the leading edge of a broader retreat: after
      the federal Every Student Succeeds Act (2015) removed the
      test-based-evaluation mandate that had driven adoption,
      high-stakes value-added teacher evaluation was rolled back
      across most of the roughly forty states that had embraced it
      — the national policy following the direction the ASA's 2014
      warning had pointed. Pair with Case 51
      (Atlanta Public Schools) for the adjacent
      measurement-architecture failure and Case 50 (Wisconsin
      DEWS) for the education-prediction equity thread.#cn()
    ],
  ),
  beats: (
    "HISD tied teacher terminations to proprietary SAS EVAAS value-added scores from 2011",
    "Trade-secret model: teachers could not inspect, replicate, or contest their scores",
    "Research record: year-to-year score instability; ASA 2014 and AERA 2015 cautions",
    "May 2017: 251 F. Supp. 3d 1168 — unverifiable scores could violate procedural due process",
    "October 2017 settlement: no termination on unverifiable scores; $237,000 in fees",
  ),
  approaches: (
    during: (
      [Validate the attribution before the deployment: a model that assigns a system outcome (student growth) to an individual operator (the teacher) must be validated for the specific consequential decision it will drive, not just for aggregate statistical fit — and the ASA's system-dominated variance decomposition is the null hypothesis the validation must beat.],
      [Treat contestability as a design requirement for any consequential score: if the affected party cannot inspect, replicate, or meaningfully contest the number, the evidence is not decision-grade regardless of the model's internal quality, and a trade-secret claim does not waive the requirement.],
      [Take the professional bodies' statements as binding inputs: the ASA 2014 and AERA 2015 statements enumerated the technical conditions for VAM use in high-stakes evaluation, and a deployment that cannot meet them should not carry dispositive weight in employment action.],
    ),
    after: (
      [Use the adjudicated record as the teaching text: the court's holding — that unverifiable algorithmic scores deny a meaningful opportunity to contest — is the clearest available statement of the decision-grade-evidence standard applied to an operating deployment.],
      [Audit the equity record at the school-composition level and preserve its hedges: the documented finding is that teachers serving larger ELL, free-or-reduced-lunch, and special-education populations scored systematically lower, and the finding travels as a composition correlation, not a causal decomposition.],
      [Carry the settlement's structural remedy forward: the joint instructional consultation panel — affected-party representation inside the appraisal-design process — is the governance form that the original deployment lacked.],
    ),
  ),
  references: (
    [_Hous. Fed'n of Teachers v. Hous. Indep. Sch. Dist._, 251 F. Supp. 3d 1168 (S.D. Tex. 2017) — memorandum opinion denying summary judgment on the procedural due process claim.],
    [Amrein-Beardsley, A., & Collins, C. (2012), "The SAS Education Value-Added Assessment System (SAS® EVAAS®) in the Houston Independent School District (HISD): Intended and Unintended Consequences," _Education Policy Analysis Archives_ 20(12), doi:10.14507/epaa.v20n12.2012.],
    [American Statistical Association (2014), _ASA Statement on Using Value-Added Models for Educational Assessment_, April 8, 2014.],
    [American Educational Research Association Council (2015), "AERA Statement on Use of Value-Added Models (VAM) for the Evaluation of Educators and Educator Preparation Programs," _Educational Researcher_ 44(8):448–452, doi:10.3102/0013189X15618385.],
    [Amrein-Beardsley, A., & Geiger, T. (2020), "Methodological Concerns About the Education Value-Added Assessment System (EVAAS): Validity, Reliability, and Bias," _SAGE Open_ 10(2), doi:10.1177/2158244020922224.],
    [_Education Week_ (October 2017), "Houston District Settles Lawsuit With Teachers' Union Over Value-Added Scores"; Houston Public Media (October 10, 2017), "Federal Lawsuit Settled Between Houston's Teacher Union and HISD" — settlement terms and the \$237,000 fee figure.],
  ),
  quote: [When a public agency adopts a policy of making high stakes employment decisions based on secret algorithms incompatible with minimum due process, the proper remedy is to overturn the policy.],
  quote-source: "Hous. Fed'n of Teachers v. Hous. Indep. Sch. Dist., 251 F. Supp. 3d 1168 (S.D. Tex. 2017)",
  le-insight: [
    Houston EVAAS is the casebook's cleanest adjudicated
    gap-attribution failure: a system outcome — student growth,
    shaped by curriculum, assignment patterns, and school
    effects — was attributed to an individual operator through
    a coupling never validated for the termination decisions it
    drove, and the evidence failed the decision-grade test so
    completely that a federal court said so. The fairness
    finding — lower scores for teachers serving larger ELL,
    free-or-reduced-lunch, and special-education populations —
    is documented, not asserted, and travels as a
    school-composition correlation.
  ],
  lens-approach: [
    Houston EVAAS is the unvalidated-attribution-under-secrecy
    case (induced 2.1; LENS D4/PT4; LEO-4). LENS uses it in
    Domain 4 (Test and Evaluation) as the anchor for the
    decision-grade-evidence standard: the score driving the
    consequential decision was unverifiable by design, unstable
    year-to-year, and assigned to the individual a variance
    residual the ASA's own statement located overwhelmingly in
    the system. The court's due-process holding gives the
    standard its adjudicated form — evidence no affected party
    can inspect, replicate, or contest cannot support a
    consequential deprivation. Pair with Case 51 (Atlanta
    Public Schools) for the measurement-architecture thread
    and Case 50 (Wisconsin DEWS) for the education-prediction
    equity thread.
  ],
  literature-items: (
    [Paige, M. A., & Amrein-Beardsley, A. (2020), "'Houston, We Have a Lawsuit': A Cautionary Tale for the Implementation of Value-Added Models for High-Stakes Employment Decisions," _Educational Researcher_ — the legal-and-methodological retrospective],
    [ASA (2014), _Statement on Using Value-Added Models for Educational Assessment_],
    [AERA Council (2015), _Educational Researcher_ 44(8):448–452 — VAM statement],
  ),
  reflection-list: (
    [Identify a metric in your domain that attributes a system-shaped outcome to an individual operator for a consequential decision. What validation evidence exists for the attribution step specifically — not for the model's aggregate fit — and what fraction of the outcome's variance does the individual plausibly control?],
    [Specify the contestability requirement for a consequential score in your setting: what would an affected party need — data, code, derivation, an appeal surface — to meaningfully verify or contest the number, and does any trade-secret or proprietary claim currently block it?],
    [The Houston court found the due-process violation without resolving whether EVAAS was accurate, because no one could establish that either way. Pick a proprietary evaluation system in your domain and ask: if its accuracy can be neither confirmed nor refuted by the people it judges, what decisions is it currently supporting, and what is the institution's documented answer for why that is acceptable?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 10"),
)

// ---- Case 61 — sold-a-story-science-of-reading ----
#case(
  number: 61,
  slug: "sold-a-story-science-of-reading",
  title: "Sold a Story — The Science of Reading and the Decades-Long Research-Practice Gap",
  year: "1997–2023",
  domains-list: ("K-12 education", "literacy instruction", "research-practice gap"),
  modes-code: "KT",
  impact: "National Reading Panel (2000) and decades of peer-reviewed cognitive science established systematic phonics as essential to early reading instruction; classrooms across the United States instead deployed balanced-literacy approaches built on three-cueing, institutionalized in popular curricula (Fountas & Pinnell, Calkins Units of Study, Reading Recovery); Emily Hanford's APM Reports investigations — \"Hard Words\" (2018) and \"Sold a Story\" (October 2022) — traced the divergence to teacher preparation and curriculum publishing; by late 2024 roughly 40 states plus DC had passed evidence-based reading laws, Columbia Teachers College dissolved the Reading and Writing Project (September 2023), and New York City mandated replacement curricula (May 2023); student-outcome effects of the legislative wave are still emerging",
  kind: "failure",
  scale: "big",
  evidence-source: "journalism",
  evidence-flag: "journalism-tier",
  induced-anchor: "6.4",
  lens-anchor: "D2/PT2",
  leo-anchor: "LEO-2",
  summary: [
    The peer-reviewed evidence base on early reading — decades
    of cognitive science consolidated by the congressionally
    mandated National Reading Panel report in 2000, and restated
    for a practitioner audience by Castles, Rastle, and Nation
    in 2018 — established systematic, explicit phonics
    instruction as an essential component of teaching children
    to read. Across the same decades, a large share of American
    classrooms deployed balanced-literacy approaches built on
    three-cueing (meaning, structure, visual — MSV), which
    directs early readers toward pictures, context, and syntax
    to identify words, institutionalized in the era's most
    widely adopted curricula and interventions: Fountas &
    Pinnell, Lucy Calkins's Units of Study, and Reading
    Recovery. Emily Hanford's APM Reports investigations —
    "Hard Words" (2018) and the podcast series "Sold a Story"
    (launched October 20, 2022) — assembled the reconstruction
    of how the evidence failed to couple to the operator layer:
    teacher-preparation programs that did not teach the
    research, curricula that institutionalized contradicted
    methods, and an institution that had forgotten that the
    reading wars had been substantially settled before. The
    reporting was followed by a wave of state legislation —
    roughly 40 states plus the District of Columbia with
    evidence-based reading laws or policies by late 2024 — and
    by curriculum withdrawals and revisions. The evidence-tier
    flag is binding: the NRP findings are peer-reviewed, but the
    causal narrative of why practice diverged is journalistic
    synthesis, and the student-outcome effects of the
    legislative wave are still emerging.
  ],
  sections: (
    [
      The evidence base predates the failure by decades. Jeanne
      Chall's 1967 synthesis had already concluded that
      code-emphasis instruction outperformed meaning-emphasis
      approaches for beginning readers, and the accumulating
      cognitive science of the 1980s and 1990s converged on the
      same architecture: skilled reading runs through
      letter-sound decoding, and beginners need systematic,
      explicit instruction in the code. The National Reading
      Panel, convened by Congress and reporting in 2000,
      reviewed the experimental literature and found systematic
      phonics instruction significantly more effective than
      unsystematic or no-phonics alternatives for early readers.
      Castles, Rastle, and Nation's 2018 review — titled,
      pointedly, "Ending the Reading Wars" — restated the
      consensus for a practitioner and policymaker audience.
      The scientific question of how children learn to read
      words was, by the field's own account, not open during
      the years the divergent practice scaled.#cn()
    ],
    [
      What scaled in classrooms instead was balanced literacy
      built on three-cueing: the instructional theory that
      early readers identify words by coordinating meaning,
      structure, and visual cues — pictures, context, syntax,
      first letters — rather than by decoding letter by letter.
      The approach descended from Marie Clay's Reading Recovery
      and Ken Goodman's "psycholinguistic guessing game," and
      it was institutionalized in the most commercially
      successful curricula of the era: Fountas & Pinnell's
      leveled-literacy systems and Lucy Calkins's Units of
      Study, the latter used before the pandemic by roughly
      half of New York City elementary schools that reported a
      curriculum. Hanford's reporting — "Hard Words" in 2018,
      then the "Sold a Story" podcast series launched October
      20, 2022 — documented the cueing practice in classrooms,
      traced its lineage, and put to its publishers and authors
      the question the evidence base had already answered. The
      series' reconstruction is journalistic synthesis, and the
      case carries it as such; but the classroom practice it
      documented was not in serious dispute.#cn()
    ],
    [
      The analytical spine of the case is the uncoupled
      operator layer. The National Reading Panel report was a
      federal consensus document; it did not, by itself, change
      what teacher-preparation programs taught. Hanford's
      reporting, and the National Council on Teacher Quality's
      program reviews alongside it, found that large numbers of
      preparation programs did not teach the settled science —
      graduating teachers who had never encountered the
      evidence their profession had commissioned. The curricula
      then institutionalized the contradicted method at the
      point of use, so that a teacher's daily materials argued
      against the research even where the teacher had met it.
      This is implementation science's core question — does the
      practice hold when it moves into real settings? —
      inverted: the practice never moved at all. And it is a
      knowledge-loss failure as much as a training-gap failure:
      the reading wars had been substantially settled before,
      in 1967 and again in 2000, and the institution forgot its
      own evidence each time the settlement failed to reach the
      operator pipeline.#cn()
    ],
    [
      The reporting was followed by institutional movement at a
      pace the evidence alone had not produced in two decades.
      By Education Week's tracking, roughly 40 states plus the
      District of Columbia had passed laws or adopted policies
      on evidence-based reading instruction by late 2024 —
      addressing curricula, teacher preparation, coaching, and
      intervention — with about 15 states acting in 2024 alone.
      New York City announced in May 2023 that its elementary
      schools would be required to adopt one of three approved
      reading curricula, with the chancellor stating publicly
      that the balanced-literacy approach "has not worked."
      Columbia Teachers College announced in September 2023
      that it would dissolve the Teachers College Reading and
      Writing Project, the consultancy Calkins founded and
      directed. Calkins had removed cueing from the 2022
      revision of Units of Study and continued her work through
      a successor organization; Heinemann and Fountas & Pinnell
      disputed that their materials constituted three-cueing
      while adding decodable texts to subsequent editions. None
      of the authors or publishers conceded the reporting's
      central account.#cn()
    ],
    [
      The hedges the case carries are not decoration. The evidence-tier flag is binding: the NRP findings and the
      reading science are peer-reviewed, but the causal
      narrative of why practice diverged — the publishing
      economics, the teacher-preparation gaps, the role of
      specific authors — is journalistic synthesis, attributed
      to the reporting rather than to an adjudicated or
      systematic record. The measured student-outcome effects
      of the legislative wave are still emerging: Mississippi's
      NAEP fourth-grade reading gains after its 2013
      Literacy-Based Promotion Act are suggestive and widely
      cited, but the attribution is contested — the law bundled
      curriculum, coaching, retention, and screening, and the
      contribution of each is not isolated. Whether the 40-state
      wave produces population-scale reading gains is an open
      empirical question, and the case must be taught with that
      question open. What the case establishes without hedge is
      the structural finding: an evidence base can be settled,
      federally consolidated, and publicly available for
      decades while the operator layer — teacher preparation
      and daily curriculum — carries the contradicted practice
      at national scale.
    ],
  ),
  beats: (
    "National Reading Panel (2000) consolidated decades of peer-reviewed cognitive science: systematic phonics essential to early reading; Chall (1967) and Castles, Rastle & Nation (2018) bracket the same consensus",
    "Classrooms deployed balanced literacy built on three-cueing (MSV) instead, institutionalized in Fountas & Pinnell, Calkins Units of Study, and Reading Recovery",
    "Hanford's APM Reports investigations — \"Hard Words\" (2018), \"Sold a Story\" (October 2022) — traced the divergence to teacher preparation and curriculum publishing; causal narrative is journalistic synthesis",
    "Aftermath: ~40 states + DC with evidence-based reading laws by late 2024; NYC curriculum mandate (May 2023); Teachers College dissolved TCRWP (September 2023); Calkins removed cueing in 2022 revision",
    "Student-outcome effects of the legislative wave still emerging; Mississippi NAEP gains suggestive, attribution contested — hedges binding",
  ),
  approaches: (
    during: (
      [Treat the operator pipeline as part of the deployment surface; an evidence consensus that does not reach teacher preparation and daily curriculum has not been deployed, and the coupling — not the consensus — is the deliverable to verify.],
      [Audit the installed base against the evidence base on a cycle; the reading wars had been substantially settled twice before the divergent practice scaled, and the institution had no mechanism that compared what its classrooms ran against what its research had concluded.],
      [Instrument the point of use, not the policy layer; the contradicted method survived in curricula and classroom routines long after the consensus documents shipped, and only observation at the operator layer — what the materials actually direct teachers to do — surfaced the gap.],
    ),
    after: (
      [Carry the evidence-tier discipline into teaching; the peer-reviewed reading science and the journalistic causal narrative are different confidence classes, and the case's value depends on students learning to hold both without collapsing either.],
      [Track the legislative wave as an open experiment; roughly 40 states changed law faster than the evidence changed practice in twenty years, and the population-scale outcome data now accumulating is the test of whether mandate-led coupling works.],
      [Use the case as the anchor for research-practice coupling in any domain with an operator pipeline; the structural finding — settled evidence, uncoupled preparation layer, institutionalized contradicted practice — generalizes beyond literacy.],
    ),
  ),
  references: (
    [Hanford, E. (2022 – 2024), "Sold a Story: How Teaching Kids to Read Went So Wrong," _APM Reports_, podcast series launched October 20, 2022.],
    [Hanford, E. (2018), "Hard Words: Why Aren't Our Kids Being Taught to Read?" _APM Reports_, September 10, 2018.],
    [National Reading Panel (2000), _Teaching Children to Read: An Evidence-Based Assessment of the Scientific Research Literature on Reading and Its Implications for Reading Instruction_, National Institute of Child Health and Human Development, NIH Pub. No. 00-4769.],
    [Castles, A., Rastle, K., & Nation, K. (2018), "Ending the Reading Wars: Reading Acquisition From Novice to Expert," _Psychological Science in the Public Interest_ 19(1):5 – 51.],
    [Schwartz, S. (updated through 2024), "Which States Have Passed 'Science of Reading' Laws? What's in Them?" _Education Week_ — legislation tracker; ~40 states plus DC by late 2024.],
    [Seidenberg, M. (2017), _Language at the Speed of Sight: How We Read, Why So Many Can't, and What Can Be Done About It_, Basic Books.],
  ),
  quote: [The scientific question of how children learn to read words was, by the field's own account, settled while the divergent practice scaled; the evidence base failed to reach teacher preparation and daily curriculum for decades, and the causal narrative of why is journalistic synthesis — source confidence flagged, future validation ongoing.],
  quote-source: "Editors' synthesis of Hanford (APM Reports, 2018, 2022), the National Reading Panel report (2000), and Castles, Rastle & Nation (2018).",
  le-insight: [
    Sold a Story is the clearest case of an evidence base
    that never moved into deployment: decades of peer-reviewed
    reading science, federally consolidated in 2000, coexisted
    at national scale with classroom practice built on the
    contradicted method, because the operator layer — teacher
    preparation and curriculum — was never coupled to the
    evidence. The knowledge-loss reading travels with the
    training-gap reading: the settlement had been reached
    before and forgotten, and it took journalism, not the
    field's own feedback channels, to surface the gap.
  ],
  lens-approach: [
    Sold a Story is the research-practice-coupling case at
    national scale (induced 6.4; LENS D2/PT2; LEO-2). LENS uses
    it in Domain 2 (Iterative Development) for the discipline
    of treating evidence-to-deployment coupling as the
    deliverable — implementation science's core question
    inverted, because the practice never moved at all — and
    for the operator-pipeline-as-deployment-surface framing.
    Pair with Case 50 (Wisconsin DEWS) and Case 51 (Atlanta
    Public Schools) for the education-at-scale evidence
    thread. The evidence-tier flag is binding: the reading
    science is peer-reviewed, the causal narrative is
    journalistic synthesis, and the outcome effects of the
    legislative wave are still emerging.
  ],
  literature-items: (
    [Hanford (2018, 2022), APM Reports — "Hard Words" and "Sold a Story," the journalistic reconstruction],
    [National Reading Panel (2000) — the federal consensus review of the experimental literature],
    [Castles, Rastle & Nation (2018), PSPI — "Ending the Reading Wars," the field's restatement for practitioners],
  ),
  reflection-list: (
    [Identify an evidence consensus in your domain that has been settled for a decade or more. Map the operator pipeline — the preparation programs, the daily materials, the point-of-use routines — and ask at which layer the consensus stops. What would the Hanford-style audit of your domain's classrooms find?],
    [The reading wars were substantially settled in 1967 and again in 2000, and the settlement was lost each time. Specify the institutional memory mechanism your domain would need for a settled question to stay settled at the operator layer — and name who currently owns it, if anyone.],
    [The corrective wave arrived through journalism and legislation rather than through the field's own channels, and its student-outcome effects are still emerging. What is the disciplined position between "the mandate fixed it" and "nothing is known" — and what evidence, on what timeline, would move you off it?],
  ),
  courses: ("LEN 4", "LEN 6", "LEN 8"),
)

// VERIFY: "Hard Words" precise publication date — September 2018 confirmed in general reporting; exact day (Sept 10, 2018) not independently re-confirmed this session.
// VERIFY: "roughly half of NYC elementary schools" using Units of Study pre-pandemic — Chalkbeat (2023) reports "roughly half of city elementary schools that responded to a curriculum survey"; the survey-respondent qualifier is preserved in section 2 ("that reported a curriculum") but the underlying survey coverage rate was not checked.
// VERIFY: state count — Education Week tracker reported 40 states + DC by November 2024 (38 states + DC by mid/late 2023; 42 + DC by March 2026); "roughly 40 states plus DC by late 2024" used throughout. Confirm against the tracker's revision current at publication.
// VERIFY: NRP phonics finding characterized as "significantly more effective than unsystematic or no-phonics alternatives" — standard summary of the NRP alphabetics subgroup meta-analysis (d ≈ 0.41); exact effect size deliberately omitted from prose, re-check wording against the report summary if quoted further.

// ---- Case 62 — gates-intensive-partnerships-met ----
#case(
  number: 62,
  slug: "gates-intensive-partnerships-met",
  title: "Gates Intensive Partnerships — Measurement Without a Coupled Lever",
  year: "2009–2018",
  domains-list: ("K-12 education", "teacher effectiveness reform", "program evaluation"),
  modes-code: "GK",
  impact: "~$575M Intensive Partnerships for Effective Teaching initiative (Gates Foundation ~$212M, 37% of the total; the remainder site and federal funds) across Hillsborough County FL, Memphis/Shelby County TN, Pittsburgh PA, and four California charter management organizations, 2009 – 2016; RAND/AIR six-year evaluation (Stecher et al. 2018, RR-2242) found the initiative did not achieve its goals for student achievement or graduation and produced no evidence of improved outcomes for low-income minority students relative to comparison sites; Hillsborough drew down reserves and dismantled its system in 2015",
  kind: "failure",
  scale: "big",
  evidence-source: "program-report",
  induced-anchor: "1.4",
  lens-anchor: "D1/PT1",
  leo-anchor: "LEO-1",
  summary: [
    The Bill & Melinda Gates Foundation's Intensive Partnerships
    for Effective Teaching initiative (2009 – 2016) spent
    approximately \$575 million — roughly \$212 million from the foundation, 37 percent of the total, the remainder site and federal funds —
    across three districts (Hillsborough County FL,
    Memphis/Shelby County TN, Pittsburgh PA) and four California
    charter management organizations to redesign teacher
    evaluation, feedback, and personnel decisions around
    multi-measure effectiveness ratings: value-added scores,
    structured classroom observations, and student surveys,
    informed by the foundation's parallel Measures of Effective
    Teaching (MET) project (2009 – 2013). The sites built the
    evaluation architecture. RAND and AIR's six-year evaluation
    — Stecher et al., _Improving Teaching Effectiveness: Final
    Report_ (2018, RR-2242) — found the initiative did not
    achieve its goals for student achievement or graduation, and
    found no evidence of improvement in low-income minority
    students' outcomes or access to effective teaching relative
    to comparison sites. Hillsborough, the flagship implementation, saw its main reserve fall from \$298 million in 2012 to \$152 million in 2015, absorbed costs well beyond the foundation's contribution, and dismantled the system in 2015. The
    measurement layer was real; the levers it was meant to drive
    — retention, placement, development — did not move the
    outcome, and the districts could not carry the system the
    theory of change required. The RAND evaluation itself is the
    exemplar of decision-grade evidence in the case; the
    intervention is the failure.
  ],
  sections: (
    [
      In 2009 the Gates Foundation launched the Intensive
      Partnerships for Effective Teaching, selecting three large
      districts — Hillsborough County Public Schools in Florida,
      Memphis City Schools in Tennessee (merged into Shelby
      County Schools in 2013), and Pittsburgh Public Schools —
      and four California charter management organizations
      (Alliance College-Ready, Aspire, Green Dot, and Partnerships to Uplift Communities). Each site agreed to redesign
      teacher evaluation around a multi-measure effectiveness
      rating combining growth in student achievement, structured
      classroom-observation rubrics, and student surveys, and
      then to couple the rating to the personnel system:
      recruitment, hiring, placement, tenure, dismissal,
      individualized professional development, career pathways,
      and performance-linked compensation. The theory of change
      was explicit — better measurement of teaching effectiveness
      would drive personnel and development decisions that would
      increase students' access to effective teaching, and that
      access would improve achievement and graduation,
      particularly for low-income minority students. Total
      spending across the sites reached approximately
      \$575 million, of which the foundation contributed roughly
      \$212 million; the remainder was primarily site funds.#cn()
    ],
    [
      The measurement layer was built with unusual rigor. The
      foundation's parallel Measures of Effective Teaching (MET)
      project (2009 – 2013) studied roughly three thousand
      teachers across six districts to validate the multi-measure
      composite, culminating in Kane, McCaffrey, Miller, and
      Staiger's January 2013 final report, _Have We Identified
      Effective Teachers?_, which used random assignment of
      approximately 800 teachers in grades four through eight to
      test whether composite effectiveness measures predicted
      student achievement under reassignment. The reported
      answer was broadly yes — the composite of value-added,
      observations, and student surveys carried predictive
      signal — with a decisive caveat the project itself
      documented: substantial noncompliance with the random
      assignment weakened the experimental protocol, and critics
      noted the validation spoke to prediction within the studied
      settings, not to what a district's personnel system would
      do with the score. The Intensive Partnerships proceeded on
      the measurement evidence. What the MET project did not and
      could not establish was the second half of the theory of
      change: that a district could operate the rating at scale,
      couple it to retention, placement, and development
      decisions, and sustain the machinery long enough for the
      coupling to move student outcomes.#cn()
    ],
    [
      RAND and AIR's six-year evaluation — Stecher et al.,
      _Improving Teaching Effectiveness: Final Report: The
      Intensive Partnerships for Effective Teaching Through
      2015 – 2016_ (2018, RR-2242) — is the evidence
      on the deployment. The evaluation found that the sites did
      implement the measurement architecture: new multi-measure
      evaluation systems were built and operated, and the
      effectiveness ratings were generally regarded as an
      improvement over the prior binary evaluations. But by 2014 – 2015, student achievement, dropout rates, and low-income minority students' access to effective teaching were not dramatically better than at similar sites that did not participate. The evaluation's site-level
      implementation record explains the decoupling: the
      personnel levers the ratings were meant to drive moved
      weakly or not at all — dismissal and non-renewal touched
      few teachers, placement incentives did not shift effective
      teachers toward high-need schools at meaningful scale,
      individualized professional development linked to the
      ratings was the least-implemented component, and political
      and labor resistance narrowed the coupling further over
      time. The evaluation itself — pre-specified outcomes,
      comparison-site design, six years of implementation
      tracking, published in full at 500-plus pages — is the
      model of decision-grade evidence the initiative's own
      theory of change was never subjected to in advance.#cn()
    ],
    [
      Hillsborough County was the flagship implementation and is
      the sustainability record. The district's Empowering
      Effective Teachers program, launched in 2009 with a
      foundation pledge of \$100 million, built a corps of more
      than 260 peer evaluators and mentors and a
      performance-linked pay system. Tampa Bay Times reporting
      (Sokol, 2015) documented the fiscal arc: the district ultimately spent more than \$180 million, of the pledged \$100 million the foundation paid about \$80 million, and the district's main reserve fell from \$298 million in 2012 to \$152 million in 2015, the years spanning the new pay system. In
      October 2015 superintendent Jeff Eakins announced the
      dismantling of the Gates-funded system, and the district
      wound down the peer-evaluator corps and the evaluation
      machinery it could no longer afford. The sustainment
      requirement — what the district would have to carry after
      the grant, at what recurring cost, against what revenue —
      was never engineered as a first-class requirement of the
      design, and when the foundation's share ended and costs
      ran past projections, the system's political and fiscal
      support collapsed together.#cn()
    ],
    [
      The hedges the case carries are not decoration. The RAND
      evaluation is comparison-based, not randomized at the site
      level: it cannot rule out small effects, and implementation
      varied enough across sites that no single component is
      isolated as the point of failure. The MET validation
      evidenced the measurement, not the coupling, and its own
      random-assignment protocol was weakened by noncompliance.
      Hillsborough's dollar figures are drawn from contemporary
      journalism and district statements, not an audited public
      accounting. What the record does establish is structural:
      a rigorous, well-funded reform built a genuinely strong
      measurement layer and failed at the coupling between
      measurement and organizational capability — attribution
      (what the effectiveness rating actually measures and what
      decisions it can bear) and sustainability (what the
      district can carry) were both underengineered relative to
      the measurement itself. The case pairs with Case 51
      (Atlanta Public Schools) for the inverse failure —
      measurement corrupted rather than uncoupled — and with
      Case 50 (Wisconsin DEWS) for the same
      prediction-without-evidenced-intervention structure in a
      student-facing system.
    ],
  ),
  beats: (
    "Gates Foundation Intensive Partnerships for Effective Teaching, 2009 – 2016: ~$575M total (~$212M foundation, 37% of spending; remainder site and federal funds) across Hillsborough County FL, Memphis/Shelby County TN, Pittsburgh PA, and four California CMOs",
    "Theory of change: multi-measure effectiveness ratings (VAM + observations + student surveys, informed by MET project 2009 – 2013) drive personnel levers — retention, placement, development, compensation — that improve achievement and graduation",
    "RAND/AIR six-year evaluation (Stecher et al. 2018, RR-2242): sites built the evaluation systems, but the initiative did not achieve its goals for student achievement or graduation; no evidence of improvement for low-income minority students relative to comparison",
    "Hillsborough flagship: >$180M spent, ~$80M of $100M pledge paid, main reserve $298M (2012) to $152M (2015); system dismantled in 2015 — sustainment never engineered as a requirement",
    "Measurement layer strong, coupling absent; the intervention is the failure, the RAND evaluation is the decision-grade-evidence exemplar; pair with Case 51 (Atlanta) and Case 50 (Wisconsin DEWS)",
  ),
  approaches: (
    during: (
      [Engineer the full theory of change as a requirements chain, not a measurement project; every link — rating to personnel decision, personnel decision to access to effective teaching, access to outcome — is a stated requirement with its own evidence plan, and a strong first link does not discharge the rest.],
      [Treat sustainment as a first-class design requirement; specify what the district must carry after the grant, at what recurring cost, against what revenue and what political tolerance, before the architecture is built — Hillsborough's collapse was fiscal and political before it was technical.],
      [Pre-commit the evaluation design and the decision rule; the RAND/AIR comparison-site evaluation with pre-specified student outcomes is the form the initiative's own go/no-go and mid-course decisions required, and it arrived as a retrospective rather than a control.],
    ),
    after: (
      [Publish the null in full; the 500-plus-page RAND final report, commissioned by the funder whose initiative it evaluates, is the standing model of an institution buying decision-grade evidence against itself and releasing it — carry that discipline forward as the norm for funded reforms.],
      [Attribute the failure to the coupling, not the measurement; the post-initiative lesson is not that multi-measure teacher evaluation is worthless but that measurement uncoupled from movable organizational levers cannot produce the outcome, and reforms that inherit the instruments must re-engineer the levers.],
      [Recover the sustainment accounting; reconstruct what each site actually carried — recurring cost, staffing, political capital — so the next reform's requirements include the load the last one could not bear.],
    ),
  ),
  references: (
    [Stecher, B. M., Holtzman, D. J., Garet, M. S., Hamilton, L. S., et al. (2018), _Improving Teaching Effectiveness: Final Report: The Intensive Partnerships for Effective Teaching Through 2015–2016_, RAND Corporation, RR-2242-BMGF.],
    [Kane, T. J., McCaffrey, D. F., Miller, T., & Staiger, D. O. (2013), _Have We Identified Effective Teachers? Validating Measures of Effective Teaching Using Random Assignment_, MET Project research paper, Bill & Melinda Gates Foundation, January 2013.],
    [Sokol, M. (2015), "Sticker shock: How Hillsborough County's Gates grant became a budget buster," _Tampa Bay Times_, October 2015 — with companion reporting, "Hillsborough schools to dismantle Gates-funded system that cost millions to develop."],
    // VERIFY: interim-report year (2016) and author list
    [Stecher, B. M., et al. (2016), _Improving Teaching Effectiveness: Implementation: The Intensive Partnerships for Effective Teaching Through 2013–2014_, RAND Corporation, RR-1295.],
    [Will, M. (2018), "'An Expensive Experiment': Gates Teacher-Effectiveness Program Shows No Gains for Students," _Education Week_, June 21, 2018.],
  ),
  quote: [The sites implemented new multi-measure teacher-evaluation systems, but the initiative did not achieve its goals for student achievement or graduation, and low-income minority students' outcomes and access to effective teaching showed no evidence of improvement relative to comparison sites; Hillsborough drew down reserves and dismantled its system in 2015.],
  quote-source: "Editors' synthesis of the RAND/AIR final evaluation (Stecher et al., 2018, RR-2242) and Tampa Bay Times reporting on the Hillsborough implementation (Sokol, 2015).",
  le-insight: [
    The Intensive Partnerships are the reference case for a
    reform that engineered its measurement and did not engineer
    its coupling. A validated multi-measure effectiveness rating
    was built and deployed at scale, and the levers it was meant
    to drive — retention, placement, development — did not move
    the outcome, while the sustainment load was never specified
    as a requirement the district could be verified against.
    The intervention is the failure; the RAND evaluation that
    established it is the exemplar of decision-grade evidence.
  ],
  lens-approach: [
    The Intensive Partnerships case is the
    requirements-as-a-sustainment-deliverable anchor at
    philanthropic-reform scale (induced 1.4; LENS D1/PT1;
    LEO-1). LENS uses it in Domain 1 (Systems Analysis) for the
    discipline of engineering the full theory-of-change chain —
    measurement, coupling, capacity, sustainment — as explicit
    requirements rather than letting a strong measurement layer
    stand in for the system. Pair with Case 51 (Atlanta Public
    Schools) for measurement corrupted rather than uncoupled,
    and Case 50 (Wisconsin DEWS) for
    prediction-without-evidenced-intervention. The RAND/AIR
    final report is taught alongside the failure as the model
    of the evaluation the design phase never had.
  ],
  literature-items: (
    [Stecher et al. (2018), RAND RR-2242 — six-year final evaluation of the Intensive Partnerships],
    [Kane et al. (2013), MET Project — random-assignment validation of multi-measure effectiveness ratings],
    [Sokol (2015), Tampa Bay Times — the Hillsborough fiscal and dismantling record],
  ),
  reflection-list: (
    [Take a reform or system in your domain whose measurement layer is strong and write out the full theory-of-change chain from measurement to outcome. Which links are engineered requirements with evidence plans, and which are assumptions a strong first link is being allowed to stand in for?],
    [Specify the sustainment requirement for a granted or pilot-funded capability you know: what must the institution carry after the external funds end, at what recurring cost, against what revenue and political tolerance? What would a Hillsborough-style drawdown look like in your setting, and when would you detect it?],
    [The funder commissioned and published the evaluation that established its own initiative's failure. What is the standing mechanism in your organization for buying decision-grade evidence against your own program — and what is the pre-committed decision rule if the finding is null?],
  ),
  courses: ("LEN 4", "LEN 5", "LEN 8"),
)

// ---- Case 63 — lausd-ipad-common-core-technology ----
#case(
  number: 63,
  slug: "lausd-ipad-common-core-technology",
  title: "LAUSD iPad Program — The Common Core Technology Project",
  year: "2013–2015",
  domains-list: ("K-12 education", "ed-tech procurement", "device rollout"),
  modes-code: "DHG",
  impact: "Los Angeles Unified's plan to put an iPad loaded with Pearson Common Core curriculum in every student's hands — publicly discussed at roughly $1.3 billion (approximately $500 million for devices and curriculum plus approximately $800 million for network infrastructure, drawn from school-construction bonds) — collapsed within two years: students bypassed device security within about a week at initial schools, the district's own evaluator observed the Pearson curriculum in use in one of 245 classrooms, the Apple contract was halted in August 2014, Superintendent John Deasy resigned in October 2014, the FBI seized twenty boxes of documents in December 2014, the SEC examined the bond-funding disclosures, and the district recovered a settlement of approximately $6.4 million in 2015",
  kind: "failure",
  scale: "big",
  evidence-source: "journalism",
  evidence-flag: "journalism-tier",
  induced-anchor: "5.1",
  lens-anchor: "D5/PT6",
  leo-anchor: "LEO-5",
  summary: [
    In June 2013 the Los Angeles Unified School District board
    approved the first phase of the Common Core Technology
    Project: an iPad, pre-loaded with Pearson's Common Core
    curriculum, for every student in the nation's
    second-largest district, publicly discussed at a full-build
    scale of roughly \$1.3 billion — approximately \$500 million
    for devices and curriculum and approximately \$800 million
    for the network infrastructure to support them, funded
    substantially from long-term school-construction bonds. The
    fall 2013 rollout at 47 initial schools outran every layer
    the deployment depended on: teachers were not prepared, the
    Pearson curriculum was incomplete, students at Roosevelt
    High and other campuses bypassed the device security
    filters within about a week, keyboards had not been
    budgeted, and home-use liability was unresolved. The
    procurement governance then unraveled in public: emails
    published by KPCC in August 2014 showed close contact
    between Superintendent John Deasy, his deputy, and Apple
    and Pearson executives predating the competitive bid; the
    district halted the Apple contract days later; Deasy
    resigned in October 2014; the FBI seized twenty boxes of
    documents in December 2014 at a federal grand jury's
    behest; and the SEC examined whether the bond funding was
    properly disclosed to investors. The district recovered a
    settlement of approximately \$6.4 million in 2015,
    ultimately borne by Pearson. The evidence base is largely
    journalism — KPCC, the _Los Angeles Times_, _Education
    Week_ — plus the district's own commissioned evaluation by
    the American Institutes for Research, so the evidence-tier
    flag is rendered under the title; future validation will
    continue.
  ],
  sections: (
    [
      The Common Core Technology Project was the signature
      initiative of Los Angeles Unified Superintendent John
      Deasy: a one-to-one tablet program intended to put an
      iPad, pre-loaded with Pearson's digital Common Core
      curriculum, in the hands of every student and teacher in
      a district of more than 600,000 students. The board
      approved the initial Apple contract in June 2013, and the
      project's full build-out was publicly discussed at
      roughly \$1.3 billion — approximately \$500 million for
      devices and curriculum and approximately \$800 million
      set aside for upgrading school networks — funded
      substantially from voter-approved school-construction
      bonds, an instrument whose multi-decade repayment horizon
      critics noted would long outlive the devices it bought.
      The stated theory was equity and readiness at once: every
      student would have the device the new Common Core online
      assessments assumed, and the curriculum would arrive with
      it.#cn()
    ],
    [
      The fall 2013 rollout at 47 initial schools outran the
      operator layer the deployment's theory required. Within
      about a week of receiving the tablets, students at Roosevelt High, Westchester High, and the Valley Academy of Arts and Sciences deleted their device profiles and bypassed the security filters — 185 devices compromised across the three campuses, by the district's own evaluator's count — and the district suspended
      home use of the devices while it worked out what it had
      deployed. Keyboards, which the Common Core online
      assessments would require, had not been budgeted in the
      original purchase; home-use liability for a
      district-owned device in a student's backpack was
      unresolved; and teacher preparation lagged the hardware.
      The district's own commissioned evaluator, the American
      Institutes for Research, observed 245 classrooms across nineteen schools — fifteen CCTP and four comparison — in May 2014 and reported that the Pearson
      curriculum — the pedagogical core of the purchase — was
      in use in just one of them; school staff reported that
      the content promised during initial training was
      incomplete or unavailable during the school year.#cn()
    ],
    [
      The governance layer failed on a separate and compounding
      track. In August 2014, KPCC published internal emails,
      obtained by public-records request, showing that Deasy
      and his deputy had been in close contact with Apple and
      Pearson executives about the project well before the
      competitive bid opened, and that the bid requirements
      tracked curriculum specifications Pearson had suggested
      in those private exchanges. Three days after publication,
      the district announced it was halting the Apple contract
      and reopening the procurement. Deasy resigned in October
      2014. In December 2014, at the behest of a federal grand
      jury, FBI agents removed twenty boxes of documents from
      district offices; the SEC separately examined whether the
      district's use of construction-bond proceeds for tablets
      was properly disclosed to bondholders. The district
      sought a refund from Apple and Pearson and in 2015
      reached a settlement of approximately \$6.4 million,
      ultimately borne by Pearson as the curriculum
      subcontractor. The federal investigation was later
      reported closed without charges.#cn()
    ],
    [
      The evidence-tier flag rendered under the case title is
      decisive. The public record on the CCTP is
      substantially journalism — KPCC's email investigation,
      sustained _Los Angeles Times_ coverage, and _Education
      Week_'s multi-year reporting and retrospectives — joined
      by the district's own commissioned AIR evaluation and its
      board-committee oversight reports. No court adjudicated
      the procurement question; the federal inquiry closed
      without charges, so the pre-bid-contact finding rests on
      the published emails and the district's own responsive
      conduct rather than on an adjudicated record. The dollar
      figures are publicly reported approximations — "roughly
      \$1.3 billion" is the scale the district and press
      discussed, not an audited final cost, and the settlement
      figure is reported at approximately \$6.4 million. The
      structural pattern is consistent across all sources; the
      specific magnitudes carry the hedges. Future validation
      will continue.#cn()
    ],
    [
      What the case teaches is capability designed out at
      \$1-billion scale. The deployment's implicit theory was
      that device provision equals learning capability: buy the
      tablet, license the curriculum, and the classroom
      capability follows. Every layer that theory silently
      assumed — trained teachers, complete curriculum, working
      security, keyboards for the assessments the program
      existed to serve, a home-use policy — was unbuilt at
      rollout, and the district discovered each absence in
      production, at 47 schools simultaneously, rather than in
      an instrumented pilot honest about readiness. The
      governance layer was unbuilt in parallel: a procurement
      whose specifications tracked a vendor's private
      suggestions could not survive disclosure, and when it
      surfaced, the program lost its superintendent, its
      contract, and its public legitimacy in under three
      months. The two failures are one failure. A deployment
      that skips the iteration cycle on the human and
      curricular layers is the same deployment that skips the
      contestability of its own procurement: both substitute
      the founding vision for the evidence architecture the
      vision required.#cn()
    ],
  ),
  beats: (
    "June 2013: LAUSD board approves the Apple/Pearson iPad program; full build-out publicly discussed at roughly $1.3B (~$500M devices and curriculum + ~$800M network infrastructure) funded substantially from school-construction bonds",
    "Fall 2013: rollout at 47 initial schools; devices of 185 students compromised at three high schools within about a week; home use suspended; keyboards unbudgeted; home-use liability unresolved",
    "District's own evaluator (AIR) observes 245 classrooms in spring 2014: Pearson curriculum in use in one; staff report promised content incomplete or unavailable",
    "August 2014: KPCC publishes pre-bid emails between Deasy, his deputy, and Apple/Pearson executives; district halts the Apple contract three days later; Deasy resigns October 2014",
    "December 2014: FBI seizes 20 boxes of documents for a federal grand jury; SEC examines bond-funding disclosures; district recovers ~$6.4M settlement in 2015, borne by Pearson; federal probe later reported closed without charges",
  ),
  approaches: (
    during: (
      [Pilot at capability scope, not device scope: an instrumented pilot honest about readiness would have surfaced the security bypass, the incomplete curriculum, the missing keyboards, and the teacher-preparation gap at one school's cost instead of forty-seven — the pilot's job is to falsify the device-provision-equals-capability theory before the bond money moves.],
      [Treat procurement contestability as a deliverable of the program, not an obstacle to it; a specification that tracks one vendor's private suggestions is a governance breach whether or not it is ever adjudicated, and the disclosure record — not the intent — is what the deployment's legitimacy will be judged on.],
      [Couple the financing instrument to the asset's life: multi-decade construction bonds spent on three-to-four-year devices is a mismatch the district's own investors, regulators, and public will eventually price, and the SEC's disclosure inquiry is the form that pricing takes.],
    ),
    after: (
      [When the evidence base is journalism plus the institution's own commissioned evaluation, flag it under the title and carry the standing "future validation ongoing" language into print; the structural pattern survives the flag, the dollar magnitudes do not.],
      [Preserve the district's own evaluation as the decisive internal-evidence stream: the AIR finding that the purchased curriculum was in use in one of 245 observed classrooms is the deployment's own instrument reporting the gap between the theory and the classroom.],
      [Teach the two failure tracks — the unbuilt operator layer and the unbuilt governance layer — as one failure with one root: the substitution of founding vision for evidence architecture, at the human layer and at the procurement layer simultaneously.],
    ),
  ),
  references: (
    [Gilbertson, A. (2014), "LA schools cancel iPad contracts after KPCC publishes internal emails," KPCC 89.3 (Southern California Public Radio), August 25, 2014 — the public-records email investigation and the contract halt; see also KPCC's "LAUSD iPads: Timeline of a troubled program."],
    // VERIFY: exact report title and issue date of the AIR interim (2014) and final (2015) CCTP evaluation reports before publication.
    [American Institutes for Research (2014), interim evaluation of the LAUSD Common Core Technology Project, Phase 1 — 245 classroom observations across CCTP schools; Pearson curriculum observed in use in one.],
    [Herold, B. (2014), "Hard Lessons Learned in Ambitious L.A. iPad Initiative," _Education Week_, September 2014 — retrospective on the implementation failures; see also Herold (2014), "FBI Investigation Leaves L.A. iPad Initiative in Further Disarray," _Education Week_, December 2014.],
    // VERIFY: select and confirm exact article titles and dates for the specific pieces cited.
    [Blume, H., _Los Angeles Times_ coverage of the CCTP (2013–2015) — the rollout, the security bypass, the contract suspension, the Deasy resignation, and the FBI document seizure.],
    [_Education Week_ Market Brief (2017), "Feds Drop Investigation Into Los Angeles District Over \$1 Billion iPad Purchase," February 2017 — the reported closure of the federal inquiry without charges.],
  ),
  quote: [The Pearson curriculum, touted as central to the effort to prepare students for the new Common Core standards, was in use in just one of the 245 classrooms the district's own evaluators observed.],
  quote-source: "Editors' synthesis of the American Institutes for Research Phase 1 evaluation finding, as reported by Education Week (September 2014).",
  le-insight: [
    The LAUSD Common Core Technology Project is the
    \$1-billion-scale case for technology deployed without
    capability coupling: the deployment assumed device
    provision equals learning capability, and every layer that
    assumption depended on — teacher preparation, curriculum
    completeness, device security, keyboards, home-use policy —
    was unbuilt at rollout, while the procurement's governance
    layer was unbuilt in parallel. The district's own evaluator
    found the purchased curriculum in use in one of 245
    observed classrooms; the published pre-bid emails cost the
    program its superintendent, its contract, and its
    legitimacy. Evidence base is journalism-tier plus the
    district's own commissioned evaluation; the flag is
    rendered under the title.
  ],
  lens-approach: [
    LAUSD CCTP is the ed-tech procurement-governance failure
    case at district scale (induced 5.1; LENS D5/PT6; LEO-5).
    LENS uses it in Domain 5 (Navigating Sociotechnical
    Constraints) for the stakeholder-trust-as-precondition
    anchor — a procurement that cannot survive disclosure
    forfeits the deployment's legitimacy regardless of the
    technology's merits — and as a Design-mode teaching case
    for the device-provision-equals-capability fallacy at the
    human-interface layer. The evidence-tier flag is binding
    until the AIR reports and the LA Times citations are
    re-confirmed against primary sources; the structural
    pattern survives the flag, the dollar magnitudes do not.
  ],
  literature-items: (
    [Gilbertson (2014), KPCC — the pre-bid email investigation],
    [American Institutes for Research (2014), CCTP Phase 1 evaluation — one of 245 classrooms],
    [Herold (2014), _Education Week_ — "Hard Lessons Learned in Ambitious L.A. iPad Initiative"],
  ),
  reflection-list: (
    [The CCTP's implicit theory was that device provision equals learning capability. Identify a deployment in your domain whose budget line is the artifact and whose unbudgeted lines are the operator layer — training, workflow, policy, support. What would an instrumented pilot honest about readiness have to measure to falsify the provision-equals-capability theory before full-scale rollout?],
    [The procurement failed on disclosure, not adjudication: the federal inquiry closed without charges, but the published pre-bid emails ended the contract, the superintendent's tenure, and the program's legitimacy anyway. What is the disclosure test you would apply to a procurement you are running — and what specification, if published tomorrow, would your program not survive?],
    [The case carries journalism-tier evidence plus the institution's own commissioned evaluation. When the deployment's own instrument (the AIR observation of one classroom in 245) agrees with the external journalism, what does that convergence license you to conclude — and which of the case's specific magnitudes still cannot bear weight?],
  ),
  courses: ("LEN 1", "LEN 5", "LEN 8"),
)

// ---- Case 64 — newark-prize-zuckerberg-gift ----
#case(
  number: 64,
  slug: "newark-prize-zuckerberg-gift",
  title: "Newark Public Schools and the $100M Zuckerberg Gift — The Prize",
  year: "2010–2016",
  domains-list: ("K-12 education", "urban school reform", "philanthropy"),
  modes-code: "G",
  impact: "Mark Zuckerberg's $100 million matching gift to Newark Public Schools, announced on The Oprah Winfrey Show in September 2010 alongside Mayor Cory Booker and Governor Chris Christie, funded a five-year top-down transformation — roughly $20 million to consultants (per Russakoff's reporting, at rates as high as $1,000 a day), about $50 million to a new performance-pay teacher contract, charter expansion, and the One Newark universal-enrollment reorganization under state-appointed superintendent Cami Anderson; community backlash forced Anderson's 2015 exit, and the Chin et al. Harvard analysis found initial achievement-growth declines followed by partial recovery, with 62% of the eventual English gains attributable to shifting enrollment",
  kind: "failure",
  scale: "big",
  evidence-source: "journalism",
  evidence-flag: "journalism-tier",
  induced-anchor: "5.1",
  lens-anchor: "D5/PT6",
  leo-anchor: "LEO-5",
  summary: [
    In September 2010, Facebook founder Mark Zuckerberg announced
    a \$100 million matching gift to transform the Newark, New
    Jersey public schools within five years — announced on _The
    Oprah Winfrey Show_ alongside Mayor Cory Booker and Governor
    Chris Christie, before most Newark parents, teachers, and
    principals had been told a reform was coming. The district
    had been under state control since 1995, so the levers of the
    reform ran through Trenton, not Newark: outside consultants
    (more than \$20 million of the gift and match, at going rates
    Russakoff reports as high as \$1,000 a day), a new teacher
    contract with performance pay (about \$50 million, including
    \$31 million in back pay), charter expansion, and the One
    Newark universal-enrollment reorganization under state-
    appointed superintendent Cami Anderson. The operators — the
    teachers and principals who would have to carry the reform —
    and the community whose consent it required learned of plans
    after they were made. Sustained backlash followed; Anderson
    left in 2015; the state voted to return local control in 2017.
    Dale Russakoff's book-length account, _The Prize_ (2015), is
    the primary record, and the later Chin, Kane et al. Harvard
    analysis found achievement growth declined initially before
    partially recovering — mixed, contested outcomes. The
    evidence-tier flag is binding: the case rests on book-length
    journalism plus later quantitative study, and it carries the
    journalism-tier framing with the standing language — future
    validation ongoing.
  ],
  sections: (
    [
      Newark Public Schools had been under New Jersey state
      control since 1995, when a judge found "failure on a very
      large scale" in the district's governance. That takeover
      is the structural precondition of the case: in 2010 the
      district answered to the governor, not to Newark's elected
      officials or its parents. Mayor Cory Booker and Governor
      Chris Christie devised a plan to remake the district and
      recruited Mark Zuckerberg, who announced a \$100 million
      gift — conditioned on a dollar-for-dollar match from other
      donors — on _The Oprah Winfrey Show_ on September 24, 2010,
      with a Newark press conference the following day. The
      five-year transformation horizon was set at the
      announcement. Russakoff's reporting records the detail the
      case turns on: the community had not been told, and Newark
      parents and teachers learned of the reform of their own
      schools from a national television broadcast.#cn()
    ],
    [
      The money moved top-down, through channels the operators
      did not control. More than \$20 million of the gift and
      matching funds went to consulting firms — public relations,
      human resources, communications, data analysis, teacher
      evaluation — with individual consultants billing at going
      rates Russakoff reports as high as \$1,000 a day; the
      figures are hers, from _The Prize_ and the 2014 _New
      Yorker_ excerpt "Schooled," not from an independent audit.
      About \$50 million went to the November 2012 teacher
      contract, the reform's signature labor achievement, of
      which \$31 million was back pay owed under the expired
      contract; the merit bonuses that were the contract's
      stated theory of change were far smaller than the funders
      had envisioned. Charter expansion drew further matching
      money. Christie appointed Cami Anderson superintendent in
      2011, and the reform's design work ran through her office
      and the consultants — not through Newark's principals,
      teachers, or families.#cn()
    ],
    [
      One Newark, announced in December 2013, was the reform's
      culminating reorganization: a universal-enrollment system
      spanning district and charter schools, school closures,
      renewals, and mass staff reassignments, implemented for
      the 2014 – 15 school year. The rollout compressed a
      district-wide restructuring into a single year on the
      five-year clock, and the coupling failures surfaced
      immediately — a week before the first day of school, some
      children had not been assigned to any school. The
      community response was sustained and organized: student
      sit-ins and street marches, the teachers' union, Essex
      County officials, and mayoral candidate (then mayor) Ras
      Baraka, who ran substantially on opposition to One Newark
      and Anderson's superintendency. Anderson, who had stopped
      attending public school-board meetings amid the protests,
      left the post by July 2015, replaced by Christopher Cerf.
      The state board voted to return local control to Newark in
      September 2017, effective February 2018, ending the
      22-year takeover.#cn()
    ],
    [
      The outcome record is mixed and contested, and the case
      carries it that way. Chin, Kane, Kozakowski, Schueler, and
      Staiger analyzed Newark achievement growth from 2008 – 09
      through 2015 – 16 against similar students and schools
      elsewhere in New Jersey. Achievement growth declined in
      the reform's early years — the authors note the
      disruption of the reforms themselves as a plausible
      mechanism — before rebounding; by the fifth year the
      analysis found statistically significant gains in English
      language arts growth and no significant change in math.
      The hedge is binding: 62% of the eventual English
      improvement was attributable to shifting enrollment
      between schools — students moving to higher-growth
      schools, including charters — rather than to improvement
      within existing schools. Whether that constitutes the
      transformation purchased is exactly what remains
      contested, and the analysis postdates the reform window;
      nothing in the five-year record available to the funders
      showed the recovery.#cn()
    ],
    [
      The analytical spine is governance failure: reform
      velocity funded from outside outran the capability and
      trust of the system that had to carry the reform. The
      five-year clock, set at the announcement, functioned as a
      design constraint that guaranteed top-down shortcuts —
      consultants over capacity-building, a negotiated contract
      over teacher ownership, a single-year district
      reorganization over staged change — because coupling to
      operators and community takes longer than five years and
      the clock did not permit it. The evidence-tier flag is
      binding. Russakoff's book-length account is the primary
      record; the consultant-spend and rate figures are her
      reporting; the quantitative outcome evidence arrived
      later and is itself hedged. The case pairs with the Gates
      Intensive Partnerships case as philanthropy-scale reform
      whose theory of change never coupled to the organizational
      capacity of the system it was spending through — source
      confidence flagged; future validation ongoing.
    ],
  ),
  beats: (
    "Zuckerberg's $100 million matching gift announced on The Oprah Winfrey Show, September 24, 2010, with Booker and Christie; Newark parents and teachers learned of the reform from the broadcast",
    "More than $20 million of gift and match to consulting firms, at rates Russakoff reports as high as $1,000 a day; ~$50 million to the 2012 performance-pay teacher contract, including $31 million in back pay",
    "One Newark universal-enrollment reorganization (announced December 2013) implemented in one year under state-appointed superintendent Cami Anderson; some children unassigned to any school a week before opening day",
    "Sustained community backlash — student sit-ins, union and mayoral opposition — forced Anderson's exit by July 2015; state voted return to local control September 2017, effective February 2018",
    "Chin, Kane et al.: achievement growth declined initially then partially recovered; significant year-5 ELA gains, no math change, 62% of ELA improvement from shifting enrollment — mixed, contested; pair with Gates Intensive Partnerships",
  ),
  approaches: (
    during: (
      [Treat operator and community coupling as a precondition of reform design, not a communications problem after it; a plan the teachers, principals, and families first learn of from a television broadcast has already selected against the trust the implementation will require.],
      [Interrogate the funder's clock as a design constraint; a five-year transformation horizon set at the announcement forces top-down shortcuts — consultants over capacity, reorganization over staged change — and the honest alternative is to size the horizon to the system's absorption capacity or decline the terms.],
      [Route spending through the system's own capability where it exists; more than \$20 million to outside consultants builds no durable capacity in the district, and the spend pattern is itself a measurable early-warning indicator of a reform decoupled from its operators.],
    ),
    after: (
      [Carry the outcome hedges into print intact; the Chin et al. finding — initial declines, partial recovery, 62% of English gains from shifting enrollment — is the evidence record, and neither "the gift failed" nor "the gift worked" survives contact with it.],
      [Pair in syllabi with the Gates Intensive Partnerships case so the philanthropy-scale pattern is taught structurally: an outside theory of change, a fixed clock, and no coupling to the organizational capacity of the system being reformed.],
      [Use the return to local control as the governance datum; the reform's terminal state — Anderson's exit, the 2017 vote, the 2018 handback — is what stakeholder consent withheld at the start looks like when it is finally expressed through the governance channel.],
    ),
  ),
  references: (
    [Russakoff, D. (2015), _The Prize: Who's in Charge of America's Schools?_, Houghton Mifflin Harcourt — the book-length primary record of the gift and the reform.],
    [Russakoff, D. (2014), "Schooled: Cory Booker, Chris Christie, and Mark Zuckerberg had a plan to reform Newark's schools. They got an education," _The New Yorker_, May 19, 2014 — the excerpt carrying the consultant-spend reporting.],
    [Chin, M., Kane, T. J., Kozakowski, W., Schueler, B. E., & Staiger, D. O. (2019), "School District Reform in Newark: Within- and Between-School Changes in Achievement Growth," _ILR Review_ 72(2), doi:10.1177/0019793918774318 (also NBER Working Paper 23922, 2017).],
      [Pérez-Peña, R. (2010), "Facebook Founder to Donate \$100 Million to Help Remake Newark's Public Schools," _The New York Times_, September 22, 2010 — contemporaneous announcement coverage.],
    // VERIFY: NJ Spotlight byline for the local-control handback story
    [NJ Spotlight (2018), "After 22 Years, Newark Enters New Era of Local Governance," February 1, 2018 — the return-to-local-control record.],
  ),
  quote: [Everybody's getting paid, but Raheem still can't read.],
  quote-source: "Vivian Cox Fraser, president of the Urban League of Essex County, quoted in Russakoff, The Prize (2015).",
  le-insight: [
    Newark is the reference case for reform velocity funded
    from outside outrunning the capability and trust of the
    system meant to carry it. The \$100 million and its match
    bought consultants, a contract, and a reorganization — but
    the operators and the community learned of the plans after
    they were made, and the five-year clock set at the
    announcement guaranteed the top-down shortcuts that the
    backlash, Anderson's exit, and the return to local control
    then priced. The mixed later outcome evidence does not
    rescue the implementation theory; nothing in the five-year
    window showed it.
  ],
  lens-approach: [
    Newark is the stakeholder-consent-as-precondition case at
    philanthropy scale (induced 5.1; LENS D5/PT6; LEO-5). LENS
    uses it in Domain 5 (Navigating Sociotechnical Constraints)
    for the governance-architecture anchor: a reform whose
    funding, design authority, and clock all sat outside the
    system being reformed, and whose coupling failures — plans
    made before operators were told, a one-year district
    reorganization, unassigned children a week before opening
    day — were governance failures before they were
    implementation failures. Pair with the Gates Intensive
    Partnerships case for the philanthropy-scale theory-of-
    change parallel. The evidence-tier flag is binding:
    book-length journalism is the primary record, and the
    consultant-spend figures are Russakoff's.
  ],
  literature-items: (
    [Russakoff (2015), _The Prize_ — book-length primary record],
    [Russakoff (2014), "Schooled," The New Yorker — consultant-spend reporting],
    [Chin et al. (2019), ILR Review — achievement-growth analysis, hedged],
  ),
  reflection-list: (
    [Identify a change effort in your domain whose funding, design authority, and timeline all sit outside the organization expected to carry it. What is the mechanism by which the operators' knowledge enters the design before the plan is fixed — and if the answer is a communications rollout after the fact, what does Newark predict?],
    [The five-year clock was set at the announcement, before any assessment of the district's absorption capacity. Specify how you would size a transformation horizon to the system rather than to the funder — and what you would say, in the room, when the funder's number is shorter than yours.],
    [The Chin et al. analysis found partial recovery after the reform window closed, with most English gains attributable to shifting enrollment. What would decision-grade evidence of "transformation" have looked like if it had been specified in 2010 — and who in the Newark arrangement had the standing to demand that specification?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)
