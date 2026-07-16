// ============================================================
// Part II — Education, Training & the Learning Workforce · What Works — and the Frontier (Chapter 4)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part II — Education, Training & the Learning Workforce",
  number: "4",
  title: "Education, Training & the Learning Workforce — What Works — and the Frontier",
  subtitle: "When instruction, analytics, and workforce design run the full evidence loop.",
  epigraph: [The effect survived because somebody kept measuring after the launch.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Case 65 — training-transfer-the-gap-between ----
#case(
  number: 65,
  slug: "training-transfer-the-gap-between",
  title: "Training Transfer — The Gap Between Learning and Doing",
  year: "2010",
  domains-list: ("corporate L&D", "training transfer", "organizational behavior"),
  modes-code: "KN",
  impact: "A meta-analysis of 89 empirical studies finds training transfer is positively related to cognitive ability, conscientiousness, motivation — and decisively to a supportive work environment; the literature carries explicit hedges about inconsistent measurement and significant variability",
  kind: "frontier",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT4",
  clo-anchor: "CLO-2, CLO-4",
  summary: [
    Blume, Ford, Baldwin, and Huang (_Journal of Management_ 2010)
    synthesized 89 empirical studies on training transfer — the
    extent to which what is learned in training produces meaningful
    change in on-the-job performance. The headline finding is that
    transfer is positively related to four categories of variable:
    cognitive ability, conscientiousness, motivation, and the work
    environment. Of these, the work environment — particularly
    supervisor and peer support — is among the strongest predictors,
    and the most decisive at the *system* layer rather than the
    individual layer. The authors are explicit, and the load-bearing
    hedge survives into the case: the literature is characterized
    by "inconsistent measurement of transfer and significant
    variability in findings," and downstream practitioner summaries
    note that organizations frequently see limited return because
    learning fails to transfer to the workplace. The case is the
    paired peer-reviewed half of the corporate-L&D pair with
    Kirkpatrick (Case 79): together they close the gap the v1
    corpus had open at the workforce-L&D layer, and they motivate
    the LENS framing that the human is the biggest variable at the
    interface — here, the return-to-work interface.
  ],
  sections: (
    [
      Training transfer is the structural question corporate L&D
      sits inside: does what learners did in training produce
      observable change on the job, and what predicts whether it
      does? The Kirkpatrick chain of evidence (Case 79) frames the
      question; the Blume et al. meta-analysis is the strongest
      single peer-reviewed answer the field has consolidated.#cn()
    ],
    [
      Blume, Ford, Baldwin, and Huang synthesized 89 empirical
      studies, with several thousand learners in aggregate, and
      decomposed transfer predictors into four categories:
      cognitive ability, conscientiousness, motivation, and the
      work environment (particularly supervisor and peer support).
      All four categories were positively related to transfer; of
      them, the work environment was among the strongest
      predictors, and was the only one that is decisively a
      *system* variable rather than a learner variable.#cn()
    ],
    [
      The load-bearing hedge survives. The authors are explicit
      that the literature is "characterized by inconsistent
      measurement of transfer and significant variability in
      findings." Downstream practitioner summaries note that
      organizations frequently see limited training return because
      learning fails to transfer to the workplace — not because
      the training did not work in the classroom but because the
      return-to-work environment did not support application. The
      meta-analysis is the strongest current synthesis, and it
      also names what the field has not yet measured well.#cn()
    ],
    [
      The teaching point at the LENS-framing layer is precise. The
      capability deliverable is not the training event; it is the
      transfer. And the decisive variable at the transfer layer is
      the work environment — supervisor support, peer support,
      the opportunity to practice on actual tasks, the absence of
      countervailing pressures that punish trying the new
      behavior. The human is the biggest variable at the
      interface, and the interface is the return-to-work
      boundary. Training that ignores this boundary is training
      that delivers Level 2 evidence (Kirkpatrick, Case 79) and
      does not deliver Level 3 capability.#cn()
    ],
    [
      In pair with Kirkpatrick, the case closes the corporate-L&D
      gap the v1 corpus had open and is a worked example of the
      revised "decision-grade evidence" framing in
      the v2 research backbone: the strongest synthesis the field has
      is a meta-analysis with explicit hedges about
      measurement inconsistency. The practitioner must decide on
      what to build — training design, supervisor support,
      practice opportunity — knowing the evidence is the strongest
      available but not closed. The CLO *Judgment under
      inadequate evidence* is exactly the capability this
      meta-analysis pattern asks practitioners to bring.
    ],
  ),
  beats: (
    "Blume et al. meta-analysis of 89 studies on training transfer — extent to which training produces on-job behavior change",
    "Transfer positively related to cognitive ability, conscientiousness, motivation, and work environment",
    "Work environment (supervisor + peer support) among strongest predictors and the decisive system-layer variable",
    "Load-bearing hedge: 'inconsistent measurement of transfer and significant variability in findings' — preserved in case",
    "Pair with Kirkpatrick (Case 79) — together they close the corporate-L&D gap and motivate the return-to-work interface",
  ),
  approaches: (
    during: (
      [Design the training intervention with the work environment as a design variable — supervisor briefing, peer-support structures, practice opportunity — not only the classroom content.],
      [Specify the on-job behavior the training is supposed to enable and the conditions under which it will be observed; the meta-analysis identifies environment as decisive, so the environment must be instrumented.],
      [Carry the meta-analytic hedge into the deployment documentation: the literature is the strongest current synthesis, and it explicitly notes inconsistent measurement and significant variability.],
    ),
    after: (
      [Track the work-environment variables — supervisor support, peer-support structures, practice opportunity — separately from the training event, and report transfer outcomes conditional on environment.],
      [Use the meta-analytic finding to argue for the work-environment investment in the program design, not to declare the question settled; future replications and better-measured studies will move the magnitudes.],
      [When transfer is low, attribute the gap with the meta-analysis in hand: was the trainee under-prepared, under-motivated, or returning to an environment that did not support application? The remediation depends on the attribution.],
    ),
  ),
  references: (
    [Blume, Ford, Baldwin, & Huang (2010), "Transfer of Training: A Meta-Analytic Review," _Journal of Management_ 36(4):1065–1105, doi:10.1177/0149206309352880.],
    [Baldwin & Ford (1988), "Transfer of Training: A Review and Directions for Future Research," _Personnel Psychology_ 41(1):63–105 — the foundational synthesis the 2010 meta-analysis updates.],
    [Burke & Hutchins (2007), "Training Transfer: An Integrative Literature Review," _Human Resource Development Review_ 6(3):263–296 — the integrative-review companion synthesis.],
    [Kirkpatrick & Kirkpatrick (2006), _Evaluating Training Programs_ — the framework the meta-analysis informs (paired Case 79).],
  ),
  quote: [The training event is not the capability deliverable. The transfer is. And the decisive variable at transfer is the work environment.],
  quote-source: "Editors' synthesis of Blume et al. (2010).",
  le-insight: [
    Blume et al. is the strongest current peer-reviewed
    synthesis on training transfer: cognitive ability,
    conscientiousness, motivation, and decisively the work
    environment predict whether training produces on-job
    behavior change. The literature carries explicit
    load-bearing hedges about inconsistent measurement and
    significant variability; the case is included with the
    hedges intact.
  ],
  lens-approach: [
    Blume is the corporate-L&D transfer case (induced 2.3;
    LENS D2/PT4). LENS uses it in Domain 2 (Iterative
    Development) for the design-iteration
    sub-competency (the work environment is the design
    variable) and in Domain 4 (Test and Evaluation) for the
    CLO *Judgment under inadequate evidence* — the
    meta-analysis is the strongest synthesis the field has,
    and it explicitly names what it cannot settle. Direct
    pair with Case 79 (Kirkpatrick); together they close
    the corporate-L&D gap the v1 corpus had open.
  ],
  literature-items: (
    [Blume et al. (2010), _Journal of Management_],
    [Baldwin & Ford (1988), _Personnel Psychology_],
    [Burke & Hutchins (2007), _Human Resource Development Review_],
  ),
  reflection-list: (
    [Identify a training program in your organization that produced strong Level 2 evidence (learning) but unclear Level 3 evidence (behavior change). What does the meta-analysis predict the decisive variable was, and how would you re-design the program with the work environment as a first-class design variable?],
    [Specify the work-environment instrumentation you would put in place for a new training deployment — supervisor briefing artifacts, peer-support structures, on-job practice opportunity — so transfer can be measured conditional on environment, not just on training fidelity.],
    [The meta-analysis is the strongest current synthesis and carries explicit hedges about measurement inconsistency. What is the minimum additional evidence you would require before treating any specific magnitude from this literature as settled in your decision-making?],
  ),
  courses: ("LEN 2", "LEN 4", "LEN 7"),
)

// ---- Case 66 — growth-mindset-national-experiment ----
#case(
  number: 66,
  slug: "growth-mindset-national-experiment",
  title: "Growth-Mindset National Experiment — Heterogeneous Effects",
  year: "2019",
  domains-list: ("K-12 education", "scalable interventions", "equity"),
  modes-code: "DNK",
  impact: "A nationally representative RCT of US 9th-graders found a less-than-1-hour online growth-mindset intervention improved grades among lower-achieving students and increased advanced-math enrollment, but the effect was conditional on peer norms — the intervention changed grades only where peer norms aligned with the intervention's message",
  kind: "frontier",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.3",
  lens-anchor: "D2/PT5",
  clo-anchor: "CLO-2, CLO-5",
  summary: [
    Growth-mindset interventions — short, scalable psychological
    interventions that teach students that intellectual ability is
    malleable rather than fixed — accumulated a substantial
    laboratory and small-school evidence base across the 2000s
    and 2010s. The open question, framed in the broader scalable-
    interventions literature, was whether the effects survived at
    population scale and what the structural moderators were.
    Yeager et al. (_Nature_, 2019) ran the test that became the
    field's reference point. A nationally representative RCT of
    US 9th-graders received a less-than-1-hour online growth-
    mindset intervention; the trial documented improved grades
    among lower-achieving students and increased advanced-math
    enrollment relative to control. The headline finding for the
    case is the conditional: the effect was conditional on peer
    norms. The intervention changed grades only where peer norms
    aligned with the intervention's message, and the study is
    notable for treating treatment-effect heterogeneity as the
    finding rather than as a nuisance. The intervention is not
    universally effective; naming where it does and does not work
    is the contribution. The "conditional on peer norms" language
    survives verbatim into the case. Pair with Case 86 (Gándara)
    at the scalable-equity-intervention layer.
  ],
  sections: (
    [
      Growth-mindset interventions teach students that intellectual
      ability is malleable — improvable through effort, strategy,
      and help-seeking — rather than fixed. The pedagogical claim,
      developed across two decades of research (Dweck and
      colleagues), is that students who hold the malleable view
      respond more constructively to academic challenge: they
      treat difficulty as informative rather than as a signal of
      fixed ability, and they persist on problems that the
      fixed-view student would interpret as evidence to stop. The
      laboratory and small-school evidence base accumulated
      substantially across the 2000s and 2010s; the open
      question, by the late 2010s, was whether the effects
      survived at population scale and what the structural
      moderators were.#cn()
    ],
    [
      Yeager et al. (_Nature_, 2019) ran the trial that became
      the field's reference point. The design was a nationally
      representative RCT of US 9th-graders — drawn from a sample
      stratified to reflect the US ninth-grade population — with
      the intervention delivered as a less-than-1-hour online
      module. Outcomes included grades, course-taking, and
      contextual measures of the classroom and peer environment.
      The trial pre-registered the moderator analysis the case
      now anchors on: the effect of the intervention was
      hypothesized in advance to depend on the peer-norm
      environment the student returned to after the module.#cn()
    ],
    [
      The headline outcome was a positive finding with structure.
      The growth-mindset intervention improved grades among
      lower-achieving students and increased advanced-math
      enrollment, relative to the active-control condition. The
      structural finding — the one the case is built around — is
      the conditional: the effect was conditional on peer norms.
      The intervention changed grades only where peer norms
      aligned with the intervention's message — where the peers
      treated the malleable view as legitimate and the
      help-seeking behavior the intervention encouraged as
      socially acceptable. In peer environments where the fixed
      view was the local norm, the intervention's effect on
      grades was substantially smaller or absent.#cn()
    ],
    [
      What makes the case methodologically important is the
      authors' explicit treatment of treatment-effect
      heterogeneity as the finding rather than as a nuisance to
      be averaged away. The trial's structural answer is that the
      intervention is not universally effective, and naming where
      it does and does not work is the scientific contribution.
      The "conditional on peer norms" language survives verbatim
      into the case because it is the load-bearing hedge: a
      headline-only reading ("growth mindset works at population
      scale") misses the substance, and an opposite-headline
      reading ("growth mindset doesn't work") misses it equally.
      The contribution is the conditional, and the design — a
      pre-registered moderator analysis with a nationally
      representative sample — is what makes the conditional
      defensible.#cn()
    ],
    [
      Drafted alongside Case 86 (Gándara) at the
      scalable-equity-intervention layer, the case carries the
      design-predictions-to-trigger-support pattern (induced 8.3,
      LENS D2/PT5). The intervention targets the students who
      benefit (lower-achieving students in peer environments
      where the norm permits the change), rather than applying a
      blanket treatment that the average effect would credit and
      the heterogeneity would conceal. The
      equity-relevant design commitment is to surface the
      heterogeneity as part of the deliverable, not to launder it
      through an average-effect headline. The case is the
      methodologically clean model of how a population-scale RCT
      can earn the heterogeneity-as-finding stance, and the
      "conditional on peer norms" qualification is what makes the
      result useful for the next adaptation.
    ],
  ),
  beats: (
    "Growth-mindset interventions — short scalable psychological interventions; substantial laboratory and small-school evidence base by the late 2010s",
    "Yeager et al. _Nature_ 2019 — nationally representative RCT of US 9th-graders; less-than-1-hour online module; pre-registered moderator analysis",
    "Headline outcome: improved grades among lower-achieving students; increased advanced-math enrollment relative to active control",
    "Conditional preserved verbatim: 'effect was conditional on peer norms' — intervention changed grades only where peer norms aligned with the intervention's message",
    "Methodological importance: treatment-effect heterogeneity as the finding, not as a nuisance; pair with Case 86 (Gándara) at the scalable-equity-intervention layer",
  ),
  approaches: (
    during: (
      [Pre-register the moderator analysis at the design stage; the heterogeneity-as-finding stance depends on the moderator being a planned analysis rather than a post-hoc inspection.],
      [Sample so that the moderator can be estimated — a nationally representative sample of US 9th-graders, in this case — so the heterogeneity is observed across the population the headline claim would otherwise speak to.],
      [Treat the intervention as scalable on the headline finding and conditional on the moderator at the same time; designing predictions to trigger support means targeting the support to those who benefit, in the environments where the support can land.],
    ),
    after: (
      [Carry the conditional language ("effect was conditional on peer norms") verbatim into every downstream communication; a headline-only reading and an opposite-headline reading both miss the substance.],
      [Treat the treatment-effect heterogeneity as program documentation, not as a nuisance to be laundered through an average effect; the equity-relevant design commitment is to surface the heterogeneity, not to conceal it.],
      [Build the next adaptation against the moderator: where would the intervention work, what peer-norm context would it land in, and what is the institutional path to creating that context where it does not yet exist?],
    ),
  ),
  references: (
    [Yeager, D. S., Hanselman, P., Walton, G. M., Murray, J. S., Crosnoe, R., Muller, C., Tipton, E., Schneider, B., Hulleman, C. S., Hinojosa, C. P., Paunesku, D., Romero, C., Flint, K., Roberts, A., Trott, J., Iachan, R., Buontempo, J., Yang, S. M., Carvalho, C. M., Hahn, P. R., Gopalan, M., Mhatre, P., Ferguson, R., Duckworth, A. L., \& Dweck, C. S. (2019). A national experiment reveals where a growth mindset improves achievement. _Nature_, 573(7774):364–369. doi:10.1038/s41586-019-1466-y — the case's primary trial.],
    [National Study of Learning Mindsets, ICPSR 37353 — the trial dataset.],
    [Dweck, C. S. (2006). _Mindset: The New Psychology of Success_. Random House — the broader theoretical framework the intervention rests on.],
    [Sisk, V. F., Burgoyne, A. P., Sun, J., Butler, J. L., \& Macnamara, B. N. (2018). To what extent and under which circumstances are growth mindsets important to academic achievement? Two meta-analyses. _Psychological Science_, 29(4):549–571 — the prior moderator-analysis literature the Yeager trial extends.],
  ),
  quote: [The effect was conditional on peer norms.],
  quote-source: "Yeager et al., Nature 2019.",
  le-insight: [
    The growth-mindset national experiment is the
    methodologically clean model of how a population-scale
    RCT can earn the heterogeneity-as-finding stance. The
    intervention improved grades among lower-achieving
    students and increased advanced-math enrollment — and the
    effect was conditional on peer norms. The qualifying
    language is the load-bearing hedge; headline-only
    readings in either direction miss the substance.
  ],
  lens-approach: [
    Yeager et al. 2019 is the designing-predictions-to-trigger-
    support case (induced 8.3; LENS D2/PT5) — Domain 2 for
    pre-registered moderator analysis; Domain 5 for the
    equity-relevant commitment to target support to those who
    benefit. Pair with Case 86 (Gándara).
  ],
  literature-items: (
    [Yeager et al. (2019), _Nature_],
    [Sisk et al. (2018), _Psychological Science_],
    [Dweck (2006), _Mindset_],
  ),
  reflection-list: (
    [Identify a scalable intervention in your domain whose published evidence runs at the average-effect level. What pre-registered moderator analysis — and what sampling design — would let you treat treatment-effect heterogeneity as the finding rather than as a nuisance?],
    [The Yeager finding is "effect was conditional on peer norms." What is the analog conditional in your context — the structural moderator the intervention's effect depends on — and how would you instrument the moderator at scale?],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 8"),
)

// ---- Case 67 — cognitive-tutor-carnegie-learning ----
#case(
  number: 67,
  slug: "cognitive-tutor-carnegie-learning",
  title: "Cognitive Tutor / Carnegie Learning",
  year: "1990s – present",
  domains-list: ("education",),
  modes-code: "T",
  impact: "Randomized controlled trials showed learning gains; RAND RCT found a significant Algebra I gain in year two (~0.2 SD, high school; no year-one effect); adopted across 3,000+ schools",
  diagram: dgm.dgm-cogtutor,
  kind: "intervention",
  summary: [
    Carnegie Learning's Cognitive Tutor, built from John Anderson's ACT-R
    cognitive architecture at Carnegie Mellon, is the most rigorously
    evaluated intelligent tutoring system in education. It uses Bayesian
    knowledge tracing to model each student's mastery and adapts
    instruction accordingly, and a RAND Corporation randomized trial found
    a statistically significant positive effect on Algebra I achievement — about
    0.21 SD for high school students in the second year of use, with no
    significant effect in year one and a middle-school estimate that did not
    reach significance.
    The system is a learning-engineering success in the discipline's own
    terms — learning science to engineered software to randomized-trial
    evidence to deployment across 3,000-plus schools. Its limitations are
    instructive: it works best in well-defined domains like algebra and
    less well in ill-structured ones, making it the canonical evidence that
    the pipeline delivers for problems that fit it — leaving open whether
    the same discipline can deliver where problems do not.
  ],
  sections: (
    // -- Background --
    [
      For decades, intelligent tutoring systems promised individualized
      instruction at scale, but few were grounded in a validated theory of
      how people learn or rigorously tested for effect. The opportunity was
      to build a tutor from a real cognitive model and prove its impact
      with the methods of experimental science. The field's recurring
      weakness was that promising systems rested on intuition about learning
      rather than a validated theory, and were rarely subjected to the kind
      of controlled trial that could separate genuine effect from novelty.#cn()
    ],
    // -- The Intervention --
    [
      Carnegie Learning's Cognitive Tutor, developed from John Anderson's
      ACT-R cognitive architecture at Carnegie Mellon, models the specific
      skills underlying a subject and tracks each student's mastery using
      Bayesian knowledge tracing. It adapts problem selection to the
      individual learner and provides step-level feedback, embodying a full
      learning-science theory in software. Grounding the tutor in ACT-R
      rather than designer intuition is what made the system testable: a
      theory that decomposes a subject into specific skills can be turned
      into a measurement of mastery and an instrument that responds to it.#cn()
    ],
    // -- How It Worked --
    [
      The tutor's effectiveness rests on the chain from theory to
      instrument: a decomposable skill model, a measurement method
      (knowledge tracing) that estimates mastery from student actions, and
      an instrumentable interface that adapts in response. Instruction is
      targeted where the model detects weakness, so practice concentrates
      on skills not yet mastered rather than on a fixed sequence. Each link
      in that chain has to hold for the next to work — the skill model makes
      mastery measurable, the measurement makes adaptation possible, and the
      adaptation is what concentrates practice where it pays off.#cn()
    ],
    // -- The Evidence --
    [
      The RAND Corporation's multi-site evaluation found statistically
      significant positive effects on Algebra I achievement, and the
      program scaled to more than 3,000 schools. The case demonstrates the
      learning-engineering process working end to end: learning science, to
      engineered software, to randomized-controlled-trial evidence, to
      scaled implementation. A multi-site randomized evaluation is the
      strong form of the claim — it shows the effect survived contact with
      many real classrooms rather than a single favorable setting, which is
      what the field's earlier, untested systems had lacked.#cn()
    ],
    // -- What Transferred --
    [
      The limitations are as instructive as the success. Cognitive Tutor
      performs best in well-defined domains like algebra and less well in
      ill-structured ones, making it the canonical evidence that the
      learning-engineering pipeline works for problems that fit the
      pipeline. The frontier question — whether the same discipline can
      deliver in operational, ill-structured domains where capability
      matters most — remains open. The dependence on a decomposable skill
      model is the boundary condition: where a subject cannot be cleanly
      broken into trackable skills, the very chain that made algebra
      tractable has nothing to attach to.#cn()
    ],
  ),
  beats: (
    "Earlier tutoring systems rested on intuition about learning rather than validated theory or controlled trials",
    "Carnegie Learning built Cognitive Tutor from Anderson's ACT-R architecture with Bayesian knowledge tracing",
    "A decomposable skill model, mastery measurement, and an adaptive interface concentrate practice where weakness sits",
    "RAND's multi-site RCT found a significant Algebra I gain in year two for high schoolers (~0.2 SD), with no first-year effect; scaled to 3,000-plus schools",
    "Pipeline works for tractable, decomposable problems; ill-structured operational domains remain the open frontier",
  ),
  references: (
    [Anderson, J., Corbett, A., Koedinger, K. & Pelletier, R. (1995), "Cognitive Tutors: Lessons Learned," _Journal of the Learning Sciences_ — the ACT-R basis and design.],
    [Koedinger, K. & Corbett, A. (2006), _Cambridge Handbook of the Learning Sciences_ — knowledge tracing and adaptive instruction.],
    [RAND Corporation Algebra I evaluation — the statistically significant achievement effects.],
    [Carnegie Learning program documentation — scale to 3,000-plus schools.],
    [Aleven, V. et al. (2016), example-tracing tutors — the limits in ill-structured domains.],
  ),
  quote: [Cognitive Tutors demonstrate the LE process working: theory → engineering → evidence → scale.],
  quote-source: "Editors' synthesis of Anderson et al. (1995) and Koedinger & Corbett (2006)",
  le-insight: [
    Cognitive Tutor is the canonical evidence that the learning-
    engineering process exists, works, and produces measurable
    benefits at scale — when the problem is tractable. It is also the
    canonical case for what tractability looks like: well-defined
    domain, decomposable skill model, instrumentable interface,
    rigorous evaluation. The frontier for the discipline is whether the
    same pipeline can deliver in the operational, ill-structured
    domains where capability matters most.
  ],
  lens-approach: [
    LENS uses Cognitive Tutor in LEN 1 as the foundational LE-process
    exemplar, in LEN 4 as the canonical case for Bayesian knowledge
    tracing as a measurement instrument, and in LEN 9 as a technical
    case for model-based adaptive instruction.
  ],
  literature-items: (
    [Anderson et al. (1995), _Journal of the Learning Sciences_],
    [Koedinger & Corbett (2006), Cambridge Handbook of the Learning Sciences],
    [Aleven et al. (2016), example-tracing tutors],
  ),
  reflection-list: (
    [Cognitive Tutor works best in well-defined domains. Identify a problem in your domain that is currently ill-structured. What would have to be true to make the LE pipeline applicable?],
    [The case is the strongest evidence the LE process works. What is the equivalent piece of evidence required to demonstrate the same pipeline in a non-cognitive domain — for example, surgical skill, or operational watchstanding?],
    [Cognitive Tutor's chain runs from a decomposable skill model through measurement to adaptation. Take a capability in your domain and attempt the decomposition — where it resists being broken into trackable skills, what does that tell you about whether the pipeline can apply?],
  ),
  approaches: (
    during: (
      [Ground the intervention in a validated theory that decomposes the subject into specific skills, rather than building on designer intuition about how people learn.],
      [Build the full chain — a skill model, a measurement method that estimates mastery from learner actions, and an interface that adapts in response — so each link supports the next.],
      [Target instruction where the model detects weakness, concentrating practice on unmastered skills rather than marching through a fixed sequence.],
    ),
    after: (
      [Prove the effect with a multi-site randomized evaluation, so the gain is shown to survive many real settings rather than one favorable classroom.],
      [Scale only where the problem fits the pipeline — well-defined, decomposable domains — and treat the decomposability of a skill model as the boundary condition for applicability.],
      [Keep the frontier question explicit when extending the method, testing whether the same theory-to-instrument chain can be built in less-structured domains before assuming it transfers.],
    ),
  ),
  courses: ("LEN 1", "LEN 4", "LEN 9"),
  scale: "big",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT5",
  clo-anchor: "CLO-2",
)

// ---- Case 68 — circuit-a-scalable-equity-centered ----
#case(
  number: 68,
  slug: "circuit-a-scalable-equity-centered",
  title: "CIRCUIT — A Scalable, Equity-Centered Research Workforce Model",
  year: "2017 – 2023 (six cycles)",
  domains-list: ("workforce development", "STEM training", "equity"),
  modes-code: "TK",
  impact: "An eight-pillar cohort model that in 2022 supported over 100 undergraduate, graduate, and ROTC students from 'trailblazing' backgrounds (first-generation, low-income, limited prior research access); peer-reviewed program description with longitudinal student outcomes across six cycles",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "1.2",
  lens-anchor: "D2/PT4",
  clo-anchor: "CLO-2, CLO-4",
  coi: "Authorship: an editor of this volume is the senior author of the underlying study. Included on the published peer-reviewed evidence (ASEE 2023); editorial framing keeps critical distance from the program's self-presentation, and the open question about external/comparative evaluation is preserved in the text.",
  summary: [
    CIRCUIT is a research workforce-development program at Johns
    Hopkins APL built on eight explicit pillars — holistic
    recruiting, mission-driven research, targeted technical training,
    leadership development, high-resolution assessment, diverse
    mentorship, university partnerships, and career empowerment.
    Cervantes, Floryanzia, Sharp, Gray-Roncal, and Johnson
    ("Empowering Trailblazers toward Scalable, Systematized,
    Research-Based Workforce Development," ASEE Annual Conference
    2023) presents the model and reports longitudinal student
    outcomes gathered over six program cycles. In 2022 the program
    supported over 100 undergraduate, graduate, and ROTC students,
    positioning CIRCUIT as a replicable model for STEM recruitment
    and retention of underrepresented students. The strongest
    honest framing — preserved in the case — is that this is a
    self-authored multi-cycle program evaluation at a single
    program; an external comparative evaluation would strengthen
    the causal claim, and the case says so rather than overstate.
    The COI render under the title (editor is the senior author)
    is binding. The case is the paired peer-reviewed companion to
    CIRCUIT proofreading (Case 78) — that case is about deploying
    capability against automation failure; this case is about
    building the capability in the first place at the edge of the
    trainees' prior preparation.
  ],
  sections: (
    [
      The recurring story in STEM workforce-development at the
      undergraduate level is that the pipeline narrows at every
      stage, and that the narrowing falls disproportionately on
      students whose prior preparation has not included the kind
      of access — to research labs, to mentorship networks, to
      technical-skills training that meet a research project's
      immediate needs — that converts undergraduate interest into
      research capability. CIRCUIT was built to engineer that
      conversion at the edge of trainees' prior preparation,
      across a cohort drawn from "trailblazing" backgrounds:
      first-generation college students, low-income students, and
      students with limited prior research access.#cn()
    ],
    [
      The program model is the case's first contribution. Eight
      pillars are named and operationalized: holistic recruiting
      that does not screen on credentials a trailblazer's
      background would not have generated; mission-driven research
      that lets trainees see why the technical skill they are
      acquiring matters; targeted technical training built around
      the project's immediate needs; leadership development;
      high-resolution assessment (the assessment is the high-
      resolution version, not a summative pass/fail);
      diverse mentorship; university partnerships that route the
      cohort across institutions; and career empowerment that
      sustains the capability beyond the program. The model is
      published as a model in the ASEE paper — a peer-reviewed
      full paper with DOI, not an institutional press release.#cn()
    ],
    [
      The longitudinal outcome evidence is the case's second
      contribution. The ASEE paper reports outcomes gathered over
      the six program cycles from 2017 through 2023 — cohort sizes
      growing year over year, with over 100 students supported in
      2022. The program presents itself as a replicable model,
      with the documentation, assessment instruments, and pillar-
      level operationalization that a replicating institution
      would need.#cn()
    ],
    [
      The honest framing preserved in the case is the one the
      editorial discipline demands. This is a self-authored
      multi-cycle program evaluation at a single program. The
      ASEE paper clears the peer-review bar that the build list
      02 requires; the model and the operational evidence are
      auditable. What an external comparative evaluation — by a
      researcher unaffiliated with the program — would add is the
      causal-claim half of the evidence: did CIRCUIT produce
      these outcomes, or did the cohort selection produce them?
      The case names the open question rather than answering it.#cn()
    ],
    [
      In pair with Case 78 (CIRCUIT proofreading + MICrONS), the
      case completes the CIRCUIT picture: building the capability
      (this case, peer-reviewed) and deploying it against
      automation failure (Case 78, frontier with evidence-tier
      flag). The pair also exercises the corpus's COI discipline
      — both cases carry editor-related COI, both are rendered
      with the standing gold-bordered "Disclosure" block under
      the title, and both are anchored to the strongest
      peer-reviewed evidence available with the institutional
      and program-evaluation gap honestly named. The book's
      credibility on these cases rests on plain disclosure, not
      on hiding the affiliation.
    ],
  ),
  beats: (
    "Eight-pillar program model published in peer-reviewed ASEE 2023 paper; longitudinal outcomes over six program cycles",
    "2022 program supported >100 undergraduate, graduate, and ROTC students from 'trailblazing' backgrounds",
    "Model is operationalized: holistic recruiting, targeted training, high-resolution assessment, diverse mentorship, partnerships",
    "Honest framing preserved: self-authored multi-cycle program evaluation at a single program; external comparative would strengthen causal claim",
    "Pair with Case 78 — building capability (this case) vs. deploying it against automation failure (proofreading); both carry COI render",
  ),
  approaches: (
    during: (
      [Operationalize the program pillars at the same level of detail an external replicator would need; the deliverable is not the program brand, it is the replicable model.],
      [Build holistic recruiting to actively de-weight credentials a trailblazer background would not have generated; the design choice converts the equity commitment from rhetoric into engineered enrollment.],
      [Pair high-resolution assessment with the targeted training so feedback can move at the cadence the work demands, not the semester boundary.],
    ),
    after: (
      [Commission external comparative evaluation alongside the self-evaluation; the causal-claim half of the evidence is what the program cannot produce on its own, and the case is honest about the gap.],
      [Publish the model documentation, instruments, and pillar operationalization openly so the model can be replicated and evaluated by other institutions on independent cohorts.],
      [Render the COI disclosure under the title — the standing language — and preserve the editorial critical distance from the program's own self-presentation in any drafting.],
    ),
  ),
  references: (
    [Cervantes, Floryanzia, Sharp, Gray-Roncal, & Johnson (2023), "Empowering Trailblazers toward Scalable, Systematized, Research-Based Workforce Development," _ASEE Annual Conference_, doi:10.18260/1-2--43271.],
    [CIRCUIT program documentation (JHU Hub, 2017 – present) — institutional program description.],
    [National Academies / NSF research on undergraduate research experience effects on STEM persistence (broader literature against which the case sits).],
    [Paired case (78) — CIRCUIT proofreading + MICrONS — the deployed-capability companion.],
  ),
  quote: [The deliverable is the replicable model, not the program brand. The pillars are operationalized for independent evaluation.],
  quote-source: "Editors' synthesis of Cervantes et al. (2023).",
  le-insight: [
    CIRCUIT is a peer-reviewed eight-pillar workforce-development
    program for STEM trainees from trailblazing backgrounds, with
    longitudinal outcomes over six program cycles. The strongest
    honest framing is self-authored multi-cycle program
    evaluation; an external comparative would add the causal
    half. COI under the title — editor is senior author — is
    binding.
  ],
  lens-approach: [
    CIRCUIT workforce model is the equity-engineered
    workforce-development case (induced 1.2; LENS D2/PT4; with
    8.3 alternate). LENS uses it in Domain 2 (Iterative
    Development) for the operationalized pillar model and the
    multi-cycle iteration evidence; in Domain 4 (Test and
    Evaluation) for the high-resolution assessment; and in
    Domain 5 (Navigating Sociotechnical Constraints) for the
    holistic-recruiting design choice that converts equity from
    rhetoric to enrolled cohort. Pair with Case 78 (CIRCUIT
    proofreading) — building capability vs. deploying it against
    automation failure. COI render is binding.
  ],
  literature-items: (
    [Cervantes et al. (2023), _ASEE Annual Conference_, doi:10.18260/1-2--43271],
    [CIRCUIT program documentation],
    [National Academies research on undergraduate research experience],
  ),
  reflection-list: (
    [Identify a STEM workforce-development program in your domain. Which of CIRCUIT's eight pillars are operationalized at the level of detail an external replicator would need, and which are at the level of brand? Where would replication actually be testable?],
    [Specify the external comparative evaluation you would commission alongside your own program evaluation. What independent cohort, what instrument, on what cadence — and who is unaffiliated enough to evaluate?],
    [The COI render under this case's title is the standing language for editor-author cases. Identify a case in your domain where the program's evaluation is conducted by people with a stake in the program. What is the disclosure architecture that keeps the evaluation honest without hiding the affiliation?],
  ),
  courses: ("LEN 1", "LEN 2", "LEN 5"),
)

// ---- Case 69 — duolingo-half-life-regression-spaced ----
#case(
  number: 69,
  slug: "duolingo-half-life-regression-spaced",
  title: "Duolingo Half-Life Regression — Spaced Repetition at Consumer Scale",
  year: "2016",
  domains-list: ("education at scale", "machine learning", "memory and skill"),
  modes-code: "TD",
  impact: "Settles & Meeder (ACL 2016) introduced Half-Life Regression (HLR), a trainable spaced-repetition model that learns per-item forgetting rates from large-scale learner data; HLR was deployed in Duolingo's production review-scheduling system and the published evaluation reports improvements over heuristic schedulers (Leitner, Pimsleur) on Duolingo's own predictive metric and on a daily (next-day) retention metric",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT4",
  clo-anchor: "CLO-2, CLO-4",
  summary: [
    Settles and Meeder (Association for Computational Linguistics,
    2016) introduced Half-Life Regression (HLR), a trainable
    statistical model for spaced repetition in language learning.
    HLR combines the psychological theory of memory half-life
    (Ebbinghaus's forgetting curve and its descendants) with a
    learned regression that estimates each item's per-learner
    half-life from observed practice history and item features.
    The model was deployed in Duolingo's production review-
    scheduling system; the published evaluation compares HLR
    against heuristic schedulers (Leitner spacing, Pimsleur
    intervals) on Duolingo's predictive recall metric and on a
    daily (next-day) learner-retention metric, and reports
    improvements on both. The case is one of the few published
    instances of a spaced-repetition algorithm being deployed and
    evaluated against meaningful behavioral outcomes at consumer
    scale (Duolingo had tens of millions of active learners at the
    time of the study). The hedges that survive into the case
    verbatim: the evaluation is a single-vendor study, the
    "learning" outcome is measured by Duolingo's predictive metric
    and next-day retention rather than independent language-proficiency
    assessment, and the generalization to other content domains
    rests on the structural argument rather than a multi-vendor
    evidence base.
  ],
  sections: (
    [
      The psychological theory of memory has carried, since
      Ebbinghaus's 1885 forgetting-curve work, the finding that
      review timed near the point of forgetting produces stronger
      long-term retention than either massed practice or
      uniform-interval review. The applied descendants — Leitner
      boxes (1972), Pimsleur graduated-interval recall (1967),
      SuperMemo's SM-2 algorithm (1985, and successors) — are all
      attempts to operationalize the theory as a schedule. Each
      uses heuristics: items advance through fixed intervals on
      success and reset on failure. The heuristics work at the
      population level; they are coarse at the per-learner, per-
      item level where the actual half-life varies.#cn()
    ],
    [
      Settles and Meeder's contribution was to treat the half-
      life as a quantity that can be learned from data. Half-
      Life Regression (HLR) models the probability that a learner
      recalls an item at a given delay as an exponential decay
      whose half-life is a regression on item features (language,
      part of speech, difficulty proxies) and per-learner
      practice history. The model is fit on aggregated Duolingo
      practice data — roughly 13 million learning traces — and
      produces per-item half-life estimates that drive the
      scheduling: review when the estimated recall probability
      falls to a target threshold.#cn()
    ],
    [
      The published evaluation compares HLR against several
      baselines on two outcomes. The first is Duolingo's
      predictive metric — how well the scheduler's model of
      recall matches observed recall on held-out practice data.
      The second is a downstream behavioral outcome: daily
      (next-day) learner retention, which Duolingo treats as a proxy for
      engagement-driven learning continuation. HLR improves on
      both axes over Leitner, Pimsleur, and a simpler logistic
      baseline. The paper deploys HLR into the live
      review-scheduling system; the evaluation includes the
      production-deployment outcomes, not just offline
      validation.#cn()
    ],
    [
      The case sits in the corpus because it is one of the few
      published, peer-reviewed deployments of a spaced-
      repetition algorithm at consumer scale with reported
      behavioral outcomes. Duolingo's scale at the time of
      publication — tens of millions of active learners — meant
      the study had statistical resolution that the
      academic spaced-repetition literature rarely achieves.
      The contribution to LENS is the worked example of
      iterative design in the Domain 2 sense: a learning-
      engineering model deployed against a measurable
      behavioral outcome, with the outcome instrumented in the
      production system rather than inferred from offline
      validation.#cn()
    ],
    [
      The hedges have to survive verbatim. This is a single-
      vendor study published by Duolingo researchers about a
      Duolingo product; independent replication at comparable
      scale is not in the literature. The behavioral outcome
      is Duolingo's daily next-day retention, which is a sensible
      proxy for engagement but is not a language-proficiency
      assessment — the case does not say HLR makes learners
      more proficient than Leitner does; it says HLR does
      better on the predictive metric and the return rate.
      Generalization to other content domains (clinical
      knowledge, technical skill, vocabulary outside
      language-learning) rests on the structural argument
      that per-item half-life estimation should outperform
      heuristic scheduling, not on a multi-domain
      replication base. The case teaches the trainable-
      scheduling form, with the qualification that the
      strongest available evidence for the form is
      single-vendor.
    ],
  ),
  beats: (
    "Spaced-repetition theory from Ebbinghaus (1885); operational heuristics from Leitner (1972), Pimsleur (1967), SuperMemo (1985)",
    "Settles & Meeder (ACL 2016) — Half-Life Regression learns per-item half-life from practice data using item features and history",
    "Deployed in Duolingo's production review scheduler; trained on roughly 13 million learning traces",
    "Reported improvements on Duolingo's predictive metric and on daily (next-day) retention vs. Leitner / Pimsleur / logistic baselines",
    "Hedges preserved: single-vendor study; next-day retention is engagement proxy not proficiency assessment; cross-domain generalization is structural argument not replication",
  ),
  approaches: (
    during: (
      [Treat the scheduling parameter (item half-life) as a quantity to learn from data rather than to fix by heuristic. The cost of learning it is the data infrastructure the production system already has; the heuristic was a substitute for missing data, not a principled choice.],
      [Instrument the production system to record the practice events that the model needs (item, learner, delay, outcome) so the model can be fit and re-fit on observed behavior at consumer scale.],
      [Choose the deployment outcome metric carefully. Duolingo's choice — predictive recall + next-day retention — is defensible for an engagement-driven product; whether it is the right metric for a proficiency-driven application is a different decision.],
    ),
    after: (
      [Carry the single-vendor hedge into communication about the case. HLR is the strongest available evidence for trainable scheduling at consumer scale; it is not multi-vendor evidence and it is not a language-proficiency study.],
      [Distinguish the structural argument (per-item half-life estimation should outperform heuristic scheduling) from the domain transfer claim (HLR specifically generalizes to other learning content), which the published evidence does not yet support.],
      [Pair the case with spaced-education clinical RCTs (Case 17) when those are drafted, so the corpus has both a consumer-scale single-vendor deployment and a clinical-domain replication base for the same underlying mechanism.],
    ),
  ),
  references: (
    [Settles, B., & Meeder, B. (2016), "A Trainable Spaced Repetition Model for Language Learning," _Proceedings of the 54th Annual Meeting of the Association for Computational Linguistics_, pp. 1848–1858, doi:10.18653/v1/P16-1174.],
    [Ebbinghaus, H. (1885), _Über das Gedächtnis_ — the empirical forgetting-curve foundation HLR formalizes.],
    [Pimsleur, P. (1967), "A memory schedule," _Modern Language Journal_ 51(2):73–75 — graduated-interval recall heuristic.],
    [Leitner, S. (1972), _So lernt man lernen_ — Leitner-box spacing heuristic.],
  ),
  quote: [HLR does better on the predictive metric and on next-day (daily) retention. The case does not say it makes learners more proficient than Leitner does.],
  quote-source: "Editors' synthesis of Settles & Meeder (2016).",
  le-insight: [
    Half-Life Regression is one of the few peer-reviewed
    spaced-repetition deployments at consumer scale with
    reported behavioral outcomes. The structural argument —
    learn the half-life rather than fix it by heuristic — is
    strong; the evidence is single-vendor, the outcome is an
    engagement proxy not a proficiency assessment, and the
    cross-domain generalization rests on the structural argument
    rather than replication.
  ],
  lens-approach: [
    Duolingo HLR is the trainable-scheduling consumer-scale
    case (induced 2.3; LENS D2/PT4). LENS uses it in Domain 2
    (Iterative Development) for the production-deployment
    evaluation form, and in Domain 4 (Test and Evaluation) for
    the engagement-proxy-vs-proficiency-assessment distinction.
    Pair with the spaced-education clinical RCTs (Case 17) for
    the cross-domain replication base, and with the
    machine-teaming AI-delegation typology where the
    delegation is to a scheduler optimizing on a proxy
    metric.
  ],
  literature-items: (
    [Settles & Meeder (2016), ACL Proceedings],
    [Ebbinghaus (1885), Über das Gedächtnis],
    [Pimsleur (1967), Modern Language Journal],
  ),
  reflection-list: (
    [Identify a scheduling, dosing, or pacing parameter in your domain that is currently set by heuristic. What data does your production system already record that would let the parameter be learned per-unit rather than fixed?],
    [Specify the outcome metric you would use for evaluating a learned scheduler. Duolingo chose engagement proxy + predictive recall; a proficiency-driven application would choose differently, and the choice is part of the evaluation design.],
    [The single-vendor hedge is structural to the case. What would a multi-vendor replication base look like in your domain, and what minimum independent evidence would you require before treating a single-vendor production result as the basis for a curriculum-wide claim?],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 8"),
)

// ---- Case 70 — high-impact-learning-system-engineering ----
#case(
  number: 70,
  slug: "high-impact-learning-system-engineering",
  title: "High-Impact Learning System — Engineering the Environment, Not Just the Event",
  year: "2001 – present",
  domains-list: ("corporate L&D", "performance consulting", "learning transfer"),
  modes-code: "KN",
  impact: "Brinkerhoff & Apking's HILS reframes corporate L&D as a system spanning pre-training (line-manager alignment, work-context preparation), the event itself, and post-training (supervisor support, on-the-job practice) — translating Blume's meta-analytic finding that the work environment dominates transfer into a deployable program model",
  kind: "intervention",
  scale: "small",
  evidence-source: "practitioner",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "2.4",
  lens-anchor: "D2/PT4",
  clo-anchor: "CLO-2, CLO-4",
  summary: [
    The High-Impact Learning System (HILS), introduced by
    Brinkerhoff and Apking in 2001, reframes L&D as a system
    spanning pre-training, the event itself, and post-training.
    The design principle is that the training event alone
    explains a small fraction of transfer variance — Blume's
    2010 meta-analysis (Case 65) identifies the work
    environment as the decisive variable — and so the program
    has to engineer the environment alongside the event. HILS
    deployments include pre-training line-manager alignment
    and work-context preparation; the event itself; and
    post-training supervisor support and on-the-job practice
    opportunities. Corporate deployments report transfer rates
    rising from the 10–20% baseline cited in the L&D literature
    to substantially higher figures, but the per-firm numbers
    live in vendor whitepapers and conference talks rather than
    peer-reviewed audits. The case is the deployed-program
    counterpart to Case 83 (SCM as evaluation instrument): SCM
    measures whether the program worked at the tails; HILS
    designs the program so that the conditions for transfer
    are engineered. Evidence-tier flag is practice-synthesis:
    the model is documented in practitioner publications and
    in Watershed and L-TEN summaries, the corporate effect
    sizes are self-reported, and future validation will
    continue.
  ],
  sections: (
    [
      Blume et al.'s 2010 meta-analysis (Case 65) names the
      work environment — supervisor support, peer support,
      practice opportunity — as the decisive transfer variable
      at the system layer rather than the learner layer. The
      L&D practitioner question that follows is what to
      *deploy* in response to the finding: if the training
      event is not the capability deliverable, what is the
      surrounding architecture that has to be built so the
      transfer actually happens?#cn()
    ],
    [
      Brinkerhoff and Apking's *High Impact Learning* (2001) is
      one of the answers in practitioner circulation. HILS
      reframes the L&D pipeline around three phases. *Before
      the event*: line-manager alignment, work-context
      preparation, learner readiness. *The event itself*:
      content delivery designed against the on-job task it is
      intended to enable. *After the event*: supervisor
      support, peer-support structures, deliberately
      engineered practice opportunities on the actual job
      tasks. The training event is one component, not the
      whole program.#cn()
    ],
    [
      The corporate adoption story — across firms identified
      in Brinkerhoff materials and in Watershed LRS and L-TEN
      summaries — reports transfer rates rising from the
      10–20% baseline cited in the L&D literature to
      substantially higher figures. The per-firm numbers live
      in vendor whitepapers and conference talks, not in
      peer-reviewed evaluations. The pattern is consistent
      across the practitioner sources; the magnitudes are
      self-reported and have not been independently audited.#cn()
    ],
    [
      HILS is the deployed-program counterpart to Case 83
      (SCM as evaluation instrument). Where SCM measures
      whether the program worked at the tails of the outcome
      distribution, HILS designs the program so that the
      surrounding conditions for transfer are engineered. The
      pair is the operational answer to the Kirkpatrick
      chain-of-evidence problem (Case 79): design the
      environment so transfer can happen, and measure the
      tails to confirm it did. Neither component on its own
      crosses the Level-2 / Level-3 seam — together they
      structure the cross.#cn()
    ],
    [
      The LENS teaching point is the framework-level claim
      that capability lives at the operator-system interface,
      not in the individual. HILS is a documented practice
      pattern that names the environment-as-intervention
      move; it makes Blume's meta-analytic finding (Case 65)
      operational. The evidence-tier flag is
      practice-synthesis — the model and the deployment
      pattern are durable in practitioner literature, the
      per-firm effect magnitudes are self-reported, future
      validation will continue. The CLO *Judgment under
      inadequate evidence* is exactly the capability HILS
      asks the practitioner to bring: act on the strongest
      synthesis the field has produced while naming what is
      and is not independently audited.#cn()
    ],
  ),
  beats: (
    "Blume meta-analysis (Case 65) names work environment as decisive transfer variable; HILS is the deployed-program answer",
    "Three phases: pre-training (line-manager alignment, work-context prep); the event; post-training (supervisor support, peer support, practice opportunity)",
    "Corporate deployments report transfer rising from 10–20% baseline to substantially higher figures; per-firm numbers self-reported in practitioner channels",
    "Deployed-program counterpart to Case 83 (SCM as evaluation); together they structure the Level-2/Level-3 seam crossing (Case 79)",
    "Practice-synthesis tier: model documented in Brinkerhoff & Apking, Watershed, L-TEN; effect sizes self-reported; future validation ongoing",
  ),
  approaches: (
    during: (
      [Plan the pre-training phase as a first-class design deliverable: line-manager briefings, work-context preparation, learner readiness assessment, instrumented before the event runs.],
      [Design the post-training phase before delivery: supervisor support artifacts, peer-support structures, scheduled on-job practice opportunities on the specific tasks the training targets.],
      [Treat the training event as one component of a three-phase architecture, not as the whole program — Blume's finding (Case 65) is the load-bearing reason the architecture has to span the boundary.],
    ),
    after: (
      [Pair with Case 83 (SCM) to measure whether the deployed program worked at the tails — HILS designs the environment, SCM samples the outcomes; together they structure the chain-of-evidence cross (Case 79).],
      [Carry the practice-synthesis flag honestly: the model is documented and durable, the per-firm effect sizes are self-reported, and any specific magnitude cited from vendor whitepapers should be flagged as such in program documentation.],
      [Use the CLO *Judgment under inadequate evidence*: the synthesis is the strongest the field has, and the practitioner has to decide whether to deploy HILS at organizational scale on practitioner-tier evidence while naming the validation that remains open.],
    ),
  ),
  references: (
    [Brinkerhoff, R. O., & Apking, A. M. (2001), _High Impact Learning: Strategies for Leveraging Performance and Business Results from Training Investments_, Basic Books.],
    [Watershed LRS practitioner summaries of HILS deployment patterns.],
    [L-TEN (Life Sciences Trainers and Educators Network) practitioner summaries of HILS in life-sciences L&D.],
    [Blume et al. (2010), _Journal of Management_ 36(4):1065–1105 — the meta-analytic finding HILS operationalizes (paired Case 65).],
    [Brinkerhoff (2005), _Advances in Developing Human Resources_ 7(1):86–101 — SCM as the paired evaluation instrument (Case 83).],
  ),
  quote: [If the work environment is the decisive transfer variable, the work environment has to be a design variable. HILS makes it one.],
  quote-source: "Editors' synthesis of Brinkerhoff & Apking (2001) and the Blume meta-analytic finding.",
  le-insight: [
    HILS is the deployed-program operationalization of
    Blume's environment-as-decisive finding (Case 65) and
    the design-side counterpart of SCM (Case 83). Evidence
    is practice-synthesis: the model is durable in
    practitioner literature, per-firm effect sizes are
    self-reported, future validation continues. The CLO *Judgment under inadequate evidence* is the capability
    the case asks for.
  ],
  lens-approach: [
    HILS is the L&D environment-as-design-variable case
    (induced 2.4; LENS D2/PT4). LENS uses it in Domain 2
    (Iterative Development / Learning Engineering Design)
    for the amended sub-competency that narrates the design
    iteration explicitly across pre / event / post phases,
    and exercises the CLO *Judgment under inadequate
    evidence* because the practitioner must decide on
    practice-synthesis-tier evidence. Pairs with Case 83
    (SCM) and Cases 79 / 112 as the corporate-L&D cluster.
  ],
  literature-items: (
    [Brinkerhoff & Apking (2001), _High Impact Learning_],
    [Watershed LRS and L-TEN practitioner summaries],
    [Blume (Case 65) and Brinkerhoff SCM (Case 83) as paired references],
  ),
  reflection-list: (
    [Identify a training deployment in your context that currently invests heavily in the event and lightly in the surrounding environment. What pre-training and post-training artifacts would you build to convert the deployment from a single-component program into a three-phase HILS-style architecture?],
    [Specify the line-manager and supervisor briefing materials, the peer-support structures, and the on-job practice opportunities you would design — and identify who in your organization would be accountable for each. The accountability map is part of the design.],
    [The HILS corporate effect sizes are self-reported. What independent evidence — third-party audit, peer-reviewed evaluation, cross-firm comparison — would you require before treating any specific magnitude as decision-grade, and how would you act on practitioner-tier evidence in the meantime?],
  ),
  courses: ("LEN 2", "LEN 4", "LEN 7"),
)

// ---- Case 71 — reflective-practice-on-a-work-based ----
#case(
  number: 71,
  slug: "reflective-practice-on-a-work-based",
  title: "Reflective Practice on a Work-Based Software Engineering Program — Longitudinal Capability Development",
  year: "2025 (preprint)",
  domains-list: ("software engineering education", "work-based learning", "reflective practice"),
  modes-code: "KN",
  impact: "A 2025 longitudinal preprint study of reflective-practice development across a multi-year work-based software-engineering program — one of the few published instruments aimed at measuring the development of reflective capability rather than only its presence; preprint-tier flag is load-bearing",
  kind: "frontier",
  scale: "small",
  evidence-source: "dissertation",
  evidence-flag: "preprint-tier",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT4",
  clo-anchor: "CLO-2, CLO-4",
  summary: [
    A 2025 arXiv preprint ("The Development of Reflective Practice
    on a Work-Based Software Engineering Program: A Longitudinal
    Study," arXiv:2504.20956) reports a longitudinal study of how
    reflective-practice capability itself develops across a
    multi-year work-based software-engineering program. The signal
    the v2 corpus needs from this case is precise: it is one of
    the few published instruments aimed at measuring the
    development of reflective capability over time, not merely
    its presence at a single point. That is the LENS-revised
    CLO-2's evaluation problem in miniature — if the program
    asks the learner to narrate and defend the design iteration
    in first person, the program also has to be able to
    evidence that the capability to do so is developing. The
    preprint-tier flag is load-bearing: not yet peer-reviewed at
    the time of this drafting, and the case carries the standing
    "future validation ongoing" language into print. It is the v2
    corpus's reference instance of an instrument built to measure
    the *development* of reflective capability over time, not only
    its presence at a single point — the prior art the editor-
    commissioned first-person Practice Flywheel accounts will sit
    alongside.
  ],
  sections: (
    [
      The amended CLO-2 in v2 asks the learner to narrate and
      defend the design iteration in first person. The
      evaluation problem this creates is real: most existing
      reflective-practice instruments measure whether a learner
      is reflecting at a given moment, not whether the
      capability to reflect well is developing across a program.
      A multi-year work-based software-engineering program is
      a useful site for this question because the work itself
      provides successive design iterations the learner can
      reflect on.#cn()
    ],
    [
      The 2025 preprint reports a longitudinal study of
      reflective-practice development across such a program.
      The methodological move worth naming is the focus on
      development rather than snapshot: the instrument is
      designed to detect change in the depth and structure of
      reflection over time, and the study reports the trajectory
      across a cohort. That is the LENS-revised evaluation
      problem in miniature — and one of the few published
      instances of an instrument built for the purpose.#cn()
    ],
    [
      The teaching point is the construct boundary. Measuring
      the *presence* of reflection is well-trodden ground
      (rubrics, codings, reflective-essay scoring schemes).
      Measuring the *development* of reflective capability is
      a different construct: the comparison is intra-learner
      across time, the instrument has to be sensitive to depth
      change rather than presence change, and the study design
      has to handle the cohort-level variability that arises
      when learners enter the program with different reflective
      baselines.#cn()
    ],
    [
      Why the case sits in the v2 supplemental tier rather than
      in the verified primary list: it is a preprint. The arXiv
      version has not been through peer review at the time of
      this drafting, and the case is included with the
      preprint-tier flag rendered under the title and the
      standing "future validation ongoing" language preserved.
      The signal the corpus extracts is structural — the
      instrument-design move and the construct distinction —
      rather than the specific magnitudes the preprint reports.#cn()
    ],
    [
      What the case supplies the editor-commissioned first-person
      Practice Flywheel accounts (CIRCUIT, ERKS-class) is the
      evaluation pathway: evidence that reflective-practice
      capability can be measured as it develops, not only observed
      once. That is the prior art a Flywheel account's evaluation
      design can build on. Future validation ongoing — both
      peer-review pipeline and replication across other work-based
      engineering programs.
    ],
  ),
  beats: (
    "2025 arXiv preprint: longitudinal study of reflective-practice development on multi-year work-based SE program",
    "Instrument designed to measure development of reflective capability over time, not only presence at a snapshot",
    "Construct boundary: intra-learner depth-change measurement vs. cross-learner presence measurement",
    "Preprint-tier flag load-bearing — not yet peer-reviewed at time of drafting; structural signal extracted, not specific magnitudes",
    "Prior art for the editor-commissioned first-person Practice Flywheel accounts: shows the evaluation pathway, not only the genre",
  ),
  approaches: (
    during: (
      [When designing a program-level evaluation of reflective-practice capability, distinguish the development construct from the presence construct at the instrument-design stage; the preprint is the worked example of why the distinction matters.],
      [Specify the temporal cadence of the instrument — when in the program reflections are collected, against what successive iterations of design work — so the development trajectory can be evidenced rather than inferred.],
      [Carry the preprint-tier flag through any pedagogical decision the case informs; the structural contribution is the construct distinction, and the specific magnitudes await peer review.],
    ),
    after: (
      [Track intra-learner depth change in reflective output across the program as the primary measurement target; cross-learner presence comparisons are a secondary construct and should be reported as such.],
      [Use the preprint as the prior-art reference for any first-person Flywheel evaluation pathway you propose for CIRCUIT, an ERKS-class effort, or a LENS-graduate program; the construct distinction is portable even where the specific instrument is not.],
      [When the preprint's peer-reviewed version appears, update the tier flag and re-evaluate the magnitudes; the case is included on the structural contribution, not on the preprint's specific figures.],
    ),
  ),
  references: (
    ["The Development of Reflective Practice on a Work-Based Software Engineering Program: A Longitudinal Study," arXiv:2504.20956 (2025) — preprint.],
    [D. Schön, _The Reflective Practitioner_ (1983) — the foundational account of reflection-in-action the genre rests on.],
    [Boud, Keogh & Walker (eds.), _Reflection: Turning Experience into Learning_ (1985) — reflection as a learning process, and the measurement problem it raises.],
    [the proposed revisions — the amended CLO-2 (first-person narration of design iteration) the case evaluates.],
  ),
  quote: [The construct is the development of reflective capability, not its presence. The instrument has to be sensitive to depth change.],
  quote-source: "Editors' paraphrase of the arXiv preprint's construct distinction.",
  le-insight: [
    The 2025 preprint is one of the few published instruments
    aimed at measuring the development of reflective capability
    across a multi-year work-based program, not only its
    presence at a snapshot. Preprint-tier flag load-bearing —
    not yet peer-reviewed at time of drafting; the case is
    included on the structural contribution (construct
    distinction, instrument-design move) rather than specific
    magnitudes. Future validation ongoing.
  ],
  lens-approach: [
    The longitudinal SE-program reflective-practice study is
    the evaluation-pathway case for first-person practice
    accounts (induced 2.3; LENS D2/PT4). LENS uses it in
    Domain 2 (Iterative Development) for the amended CLO-2
    and in Domain 4 (Test and Evaluation) for the CLO *Judgment under inadequate evidence* — the preprint
    supplies the construct distinction (development vs.
    presence) without supplying peer-reviewed magnitudes.
  ],
  literature-items: (
    [arXiv:2504.20956 (2025) — longitudinal SE-program study],
    [Schön (1983); Boud, Keogh & Walker (1985) — reflective-practice canon],
    [— amended CLO-2 framing],
  ),
  reflection-list: (
    [Identify a multi-year program in your context where reflective-practice capability is supposed to develop. What instrument would you build to measure development (intra-learner depth change over time) rather than presence (snapshot)? At what temporal cadence?],
    [The case is a preprint not yet peer-reviewed. What is the minimum additional evidence — peer-review pipeline outcome, replication across other work-based programs, comparison with snapshot-based instruments — you would require before treating any specific magnitude from this work as settled in your program design?],
    [Specify the prior art you would assemble around a first-person Flywheel evaluation pathway for an engineering-practice account; which construct distinctions (development vs. presence) would you carry forward, and which would you supplement with locally produced evidence?],
  ),
  courses: ("LEN 2", "LEN 7", "LEN 8"),
)

// ---- Case 72 — assistments-national-replication-and ----
#case(
  number: 72,
  slug: "assistments-national-replication-and",
  title: "ASSISTments — National Replication and Long-Term Follow-Through",
  year: "2014 – present",
  domains-list: ("K-12 mathematics", "homework support", "formative assessment"),
  modes-code: "TKD",
  impact: "Cluster RCT across 43 schools and 2,850 students (Maine): 7th-graders assigned to ASSISTments outperformed controls on end-of-year math; largest gains for lower-performing students; minority students benefited more from the intervention; effect persisted into 8th-grade outcomes in 2020 follow-up",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT4",
  clo-anchor: "CLO-2, CLO-4",
  summary: [
    The Roschelle, Feng, Murphy, and Mason cluster RCT (AERA
    Open 2016), conducted across 43 schools and 2,850 students in Maine,
    found that 7th-graders assigned to ASSISTments outperformed
    controls on end-of-year mathematics, with the largest gains
    for lower-performing students and a heterogeneous-effect
    finding that minority students benefited more from the
    intervention. Murphy et al. (2020) reported that the
    7th-grade effect persisted into 8th-grade outcomes. A
    subsequent Arnold Ventures-funded extension tested a
    lower-cost virtual-training adaptation in predominantly
    rural areas, with longitudinal follow-through extended
    through end of 8th grade. The case is one of the few
    EdTech tools in the corpus with replicated multi-state RCT
    evidence at meaningful effect sizes and with deliberate
    attention to the heterogeneity that matters most for
    equity outcomes. Pair with Case 17 (spaced education
    RCTs) for the replication-discipline thread. Open questions
    the authors carry: whether the virtual-training adaptation
    matches the in-person-training arm; whether the effect
    persists post-grade-8.
  ],
  sections: (
    [
      ASSISTments is structurally different from the intelligent
      tutoring systems that dominate the K-12 EdTech evidence
      base. It augments homework rather than replacing
      curriculum; it does not require the institutional commitment
      to a new instructional system that Cognitive Tutor and its
      peers require; and the research team behind it (Heffernan
      and collaborators) has deliberately designed the platform
      around an evidence-generation loop with classroom teachers.
      The cluster RCT Roschelle et al. published in 2016 is the
      first national-scale evaluation of the platform, and it
      was designed to support claims a single-site trial could
      not support.#cn()
    ],
    [
      The trial cluster-randomized 43 schools in Maine
      and assigned 2,850 7th-grade students to either an
      ASSISTments condition or a business-as-usual homework
      condition. The outcome instrument was end-of-year
      mathematics achievement. The headline finding is positive:
      ASSISTments-assigned students outperformed controls. The
      effect is meaningful in size, and the cluster randomization
      supports an inference at the school level rather than only
      at the student level. The teacher-side change required for
      the intervention was deliberately minimized — the platform
      is built around teacher-assigned homework problems, with
      the formative-assessment and feedback loops automated — so
      the trial estimates an effect achievable under realistic
      adoption conditions.#cn()
    ],
    [
      The heterogeneity finding is what makes the case
      equity-relevant. Effect-size estimates were largest for
      lower-performing students, and minority students benefited
      more from the intervention than the average effect would
      suggest. The pattern is the one Case 55 (Engler /
      enrollment algorithms) names as the inversion target:
      prediction and adaptive feedback used to trigger support
      rather than to gatekeep aid. The heterogeneity finding is
      not an artifact of subgroup analysis chosen post hoc; it
      is the pre-specified equity-relevant outcome the trial
      was designed to estimate, and it is the load-bearing
      result for the case's pedagogical placement.#cn()
    ],
    [
      Murphy et al. (2020) extended the evaluation into a
      longitudinal follow-through. The 7th-grade effect persisted
      into 8th-grade outcomes — a persistence finding that the
      EdTech evidence base does not consistently report, and
      that converts the case from a single-year effect-size
      study into a multi-year follow-through case. A subsequent
      Arnold Ventures-funded extension tested a lower-cost
      virtual-training adaptation in predominantly rural areas
      with longitudinal follow-through extended through end of
      8th grade. The replication structure — trial,
      replication, longitudinal follow-through, adaptation
      tested under different deployment conditions — is the
      closed-loop evidence architecture the corpus's EdTech
      cases mostly aspire to and rarely report.#cn()
    ],
    [
      The honest open questions the case carries are the ones
      the research team itself names. Whether the lower-cost
      virtual-training adaptation matches the in-person-training
      arm's effect size is still under analysis. Whether the
      effect persists past grade 8 is the longer-horizon
      question that the corpus's evaluation-horizon discipline
      (Case 84) directly applies to. Pair the case with Case
      127 (Cognitive Tutor at-scale evaluation) for the
      evaluation-horizon thread, with Case 17 (spaced education
      RCTs) for the replication-discipline thread, and with
      Case 55 (Engler enrollment algorithms) for the
      prediction-triggers-support inversion — the equity-
      relevant heterogeneity finding here is the structural
      complement to Engler's gatekeeping critique.
    ],
  ),
  beats: (
    "Roschelle et al. 2016 cluster RCT: 43 schools, 2,850 students (Maine); ASSISTments-assigned 7th-graders outperformed controls",
    "Heterogeneity: largest gains for lower-performing students; minority students benefited more — pre-specified equity-relevant outcome",
    "Murphy et al. 2020: 7th-grade effect persisted into 8th-grade outcomes (longitudinal follow-through)",
    "Arnold Ventures extension: lower-cost virtual-training adaptation in rural areas, longitudinal through end of 8th grade",
    "Pair with Case 84 (Cognitive Tutor horizon), Case 17 (spaced ed RCTs), Case 55 (Engler — equity-relevant inversion of gatekeeping)",
  ),
  approaches: (
    during: (
      [Pre-specify the equity-relevant heterogeneity outcomes the trial will estimate; the case's load-bearing finding is pre-specified, not post-hoc, and the pre-specification is the methodological discipline that makes the finding credible.],
      [Design the teacher-side change to the minimum required for the intervention to operate; the case's external-validity strength depends on its having estimated an effect achievable under realistic adoption conditions.],
      [Build the longitudinal follow-through into the trial's data infrastructure from the start; the 7th-to-8th-grade persistence finding required data structures that single-year trials do not necessarily provide.],
    ),
    after: (
      [Publish the heterogeneity result with the aggregate result; the case's equity-relevant pedagogical value depends on the heterogeneity finding being on the same page as the average effect.],
      [Track the adaptation arm — the lower-cost virtual-training condition — as a separate replication; the closed-loop evidence architecture the case demonstrates includes adaptation-under-different-conditions as a distinct evidence layer.],
      [Carry the case in syllabi alongside Case 84 so the evaluation-horizon discipline and the heterogeneity-pre-specification discipline are taught together; the two methodological lessons are independent and both load-bearing for EdTech-evaluation design.],
    ),
  ),
  references: (
    [Roschelle, J., Feng, M., Murphy, R. F., & Mason, C. A. (2016), "Online Mathematics Homework Increases Student Achievement," _AERA Open_ 2(4):1–12, doi:10.1177/2332858416673968.],
    [Murphy, R. et al. (2020), follow-up evaluation extending the 7th-grade effect into 8th-grade outcomes.],
    [Heffernan, N. T., & Heffernan, C. L. (2014), "The ASSISTments ecosystem," _International Journal of AI in Education_ 24:470–497 — platform design and research-loop description.],
    [Arnold Ventures RCT documentation of the virtual-training-adaptation arm — longitudinal follow-through through end of 8th grade.],
  ),
  quote: [The heterogeneity finding is pre-specified, not post hoc. The largest gains are for lower-performing students; minority students benefit more. The case's equity-relevant result is the load-bearing one.],
  quote-source: "Editors' synthesis of Roschelle et al. (2016) and Murphy et al. (2020).",
  le-insight: [
    ASSISTments is the case in the corpus with the cleanest
    closed-loop evidence architecture for EdTech: cluster RCT,
    longitudinal follow-through into the next grade, adaptation
    arm under different deployment conditions, and a pre-specified
    equity-relevant heterogeneity finding. The case grounds the
    closed-loop evaluation anchor in EdTech the same way Case 40
    grounds it in team-science training.
  ],
  lens-approach: [
    ASSISTments is the closed-loop EdTech evaluation case
    (induced 2.3; LENS D2/PT4). LENS uses it in Domain 2
    (Iterative Development) for the teacher-side minimum-change
    design discipline and in Domain 4 (Test and Evaluation) for
    the heterogeneity-pre-specification and longitudinal-
    follow-through structure. Pair with Case 84 (Cognitive
    Tutor at-scale evaluation horizon), Case 17 (spaced
    education RCTs), and Case 55 (Engler enrollment algorithms
    inversion — prediction-triggers-support).
  ],
  literature-items: (
    [Roschelle et al. (2016), _AERA Open_ — ASSISTments cluster RCT],
    [Murphy et al. (2020) — longitudinal follow-through],
    [Heffernan & Heffernan (2014), _IJAIED_ — platform and research loop],
  ),
  reflection-list: (
    [Identify an EdTech intervention in your domain whose equity-relevant heterogeneity outcome was not pre-specified in the trial design. What pre-specification would the next replication require, and what is the data infrastructure that would support it?],
    [Specify the longitudinal-follow-through design you would build into the next at-scale EdTech evaluation. What grade-to-grade or year-to-year outcome would you track, and what data infrastructure does the tracking require?],
  ),
  courses: ("LEN 2", "LEN 3", "LEN 7"),
)

// ---- Case 73 — doer-effect-at-scale-replication-ai ----
#case(
  number: 73,
  slug: "doer-effect-at-scale-replication-ai",
  title: "The Doer Effect at Scale — Replication, AI-Generated Questions, Non-WEIRD Extension",
  year: "2016 – 2025",
  domains-list: ("learning analytics", "online learning", "mobile/distance learning"),
  modes-code: "TKD",
  impact: "Van Campenhout et al. (LAK 2023) replicated the doer-effect causal claim across seven courses with 15.2 million data points; L@S 2025 replication held with AI-generated practice questions; LAK 2025 non-WEIRD radio/phone extension found weaker effect for learners with higher prior educational attainment — the load-bearing heterogeneity finding",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT4",
  clo-anchor: "CLO-2, CLO-4",
  summary: [
    The original "doer effect" causal claim — Koedinger and
    colleagues at LAK 2016 — held that students who interact
    with embedded practice activities learn more than students
    who only read, even after controlling for prior achievement
    and engagement, and that the effect appears causal. Van
    Campenhout et al.'s LAK 2023 paper replicated the claim
    across seven courses with 15.2 million data points; the
    L\@S 2025 follow-up reported the effect held with AI-
    generated practice questions; the Butler et al. LAK 2025
    non-WEIRD extension tested the effect for learners
    receiving lecture content via community radio and practice
    via basic mobile phones, and reported that the doer-effect
    relationship was weaker for learners with higher prior
    educational attainment — the load-bearing heterogeneity
    finding the corpus most needs. The case sits with Case 69
    (Duolingo half-life) and Case 17 (spaced education RCTs)
    as the replication-arc thread. The closed loop is closed
    not by a single trial but by replication; the effect
    generalizes but not uniformly, and the heterogeneity is
    itself the teachable result.
  ],
  sections: (
    [
      The doer-effect causal claim is one of the cleanest
      published claims in the online-learning literature.
      Koedinger and colleagues, at LAK 2016, drew on student-
      level data from large online courses and isolated the
      effect of doing — interacting with embedded practice
      activities — from the effect of reading, controlling for
      prior achievement and engagement. The conclusion: doing
      causally improves learning more than reading does, by an
      effect size that has stood up across the field's
      subsequent replications. The case Van Campenhout et al.
      open at LAK 2023 is what happens when the claim is
      treated not as a single result but as a replication
      target — what does the doer effect look like at scale,
      across courses, content domains, and delivery modalities?#cn()
    ],
    [
      The LAK 2023 replication is the broadest, by data volume.
      Van Campenhout et al. assembled data from seven courses
      and 15.2 million practice and reading interactions, and
      reported the doer-effect relationship held in the
      direction and approximate magnitude the original claim
      established. The 2025 L\@S follow-up addressed a question
      that did not exist when the original claim was published:
      what happens to the doer effect when the practice
      questions are AI-generated rather than human-authored?
      The L\@S 2025 replication reported the effect held with
      auto-generated content — a meaningful generalization given
      the rising deployment of LLM-generated practice across
      educational platforms.#cn()
    ],
    [
      The 2025 LAK non-WEIRD extension by Butler and
      collaborators is the case's load-bearing methodological
      contribution. The extension tested the effect for learners
      receiving lecture content via community radio and practice
      via basic mobile phones — a delivery substrate
      structurally different from the platform-mediated online
      courses the original claim and the LAK 2023 replication
      operated on. The doer-effect relationship was weaker for
      learners with higher prior educational attainment. The
      heterogeneity is not noise the analysis should adjust
      away; it is the result. The original causal claim
      generalizes across delivery modalities, but the effect
      size is conditioned on prior attainment in a way the
      WEIRD-population evidence base did not surface.#cn()
    ],
    [
      The case is closed-loop in a sense the corpus most often
      aspires to. The loop is closed not by a single trial but
      by replication: the original claim, the seven-course
      large-N replication, the AI-generated-content replication,
      and the non-WEIRD-modality extension are four converging
      pieces of evidence. The closed loop is also honest about
      what it closes and what it does not. Long-term retention
      across multi-year intervals is not yet in the replication
      record; transfer beyond the included content domains is
      not yet in the replication record; the non-WEIRD-modality
      heterogeneity is documented but not yet decomposed into
      the components — content familiarity, modality affordances,
      attention conditions — that would let designers act on it.
      The case carries those open questions rather than
      collapsing them.#cn()
    ],
    [
      The case anchors with Case 69 (Duolingo half-life) and
      Case 17 (spaced education RCTs) as the replication-arc
      thread. All three demonstrate the closed-loop discipline
      at field scale: a design principle established as a single
      result, replicated across contexts, and surfaced as
      conditional on population and modality. The CLO on
      judgment under inadequate evidence is operative in a
      productive sense: the original claim was adequate evidence
      for the WEIRD-platform-online-course context, and the
      non-WEIRD-modality evidence the LAK 2025 extension adds
      is what extends the principle's actionable scope. The
      case completes the replication-arc thread the corpus
      needs to teach design-principle generalization honestly.
    ],
  ),
  beats: (
    "Original doer-effect claim (Koedinger et al. LAK 2016): doing improves learning more than reading; appears causal",
    "Van Campenhout et al. LAK 2023: seven-course replication with 15.2M data points — effect holds in direction and magnitude",
    "L@S 2025 replication: AI-generated practice questions — effect still holds; meaningful given LLM-generated content rising",
    "Butler et al. LAK 2025 non-WEIRD: radio-lecture + mobile-phone practice — effect weaker for higher-prior-attainment learners (heterogeneity is the result)",
    "Closed loop via replication, not single trial; pair with Case 69 (Duolingo half-life) and Case 17 (spaced ed RCTs)",
  ),
  approaches: (
    during: (
      [Treat the design principle as the replication target, not the original trial; the doer-effect case's structure is built on four converging pieces of evidence rather than on the original claim alone.],
      [Pre-specify the cross-context replication conditions before launching the replication: course scope, content domain, delivery modality, and population characteristics are all conditions the original effect was estimated under and that the replication should vary.],
      [Test design-principle generalization at the modality boundary before claiming generalization across modalities; the LAK 2025 non-WEIRD extension is the methodological model for that boundary test.],
    ),
    after: (
      [Publish the heterogeneity as the result, not the adjusted-away noise; the non-WEIRD prior-attainment finding is what extends the principle's actionable scope and is the load-bearing pedagogical content of the case.],
      [Build the long-term-retention and cross-content-transfer studies the replication arc names as the next open questions; the closed loop the case completes is honest about what it does and does not close.],
      [Carry the case in syllabi alongside Cases 69 and 17 so the replication-arc thread is taught as a thread, not as three independent examples; the closed-loop discipline at field scale is more visible across the three cases than within any one.],
    ),
  ),
  references: (
    [Van Campenhout, R., Jerome, B., Dittel, J. S., & Johnson, B. G. (2023), "The Doer Effect at Scale: Investigating Correlation and Causation Across Seven Courses," _LAK23_, doi:10.1145/3576050.3576103.],
    [Van Campenhout et al. (2025), "Scaling the Doer Effect: A Replication Analysis Using AI-Generated Questions," _L\@S '25_, doi:10.1145/3698205.3729545.],
    [Butler, D. et al. (2025), "Does the Doer Effect Generalize To Non-WEIRD Populations? Toward Analytics in Radio and Phone-Based Learning," _LAK '25_, doi:10.1145/3706468.3706505 (also arXiv 2412.20923).],
    [Koedinger, K. R. et al. (2016), original doer-effect causal-claim paper at LAK 2016 — the replication target the present case builds on.],
  ),
  quote: [The doer effect generalizes across delivery modalities, but the effect size is conditioned on prior attainment in a way the WEIRD-population evidence base did not surface. The heterogeneity is the result.],
  quote-source: "Editors' synthesis of Van Campenhout et al. (2023, 2025) and Butler et al. (2025).",
  le-insight: [
    The doer-effect replication arc is the closed-loop-via-
    replication case in the corpus. Original claim, seven-course
    large-N replication, AI-generated-content replication, non-
    WEIRD-modality extension — four converging pieces of evidence
    with the prior-attainment heterogeneity finding as the load-
    bearing result. The case completes the replication-arc thread
    alongside Cases 69 and 17.
  ],
  lens-approach: [
    Doer-effect replication arc is the closed-loop-by-
    replication case (induced 2.3; LENS D2/PT4). LENS uses it
    in Domain 2 (Iterative Development) for the replication-
    arc discipline and in Domain 4 (Test and Evaluation) for
    the cross-population generalization-with-heterogeneity
    structure. Pair with Case 69 (Duolingo half-life) and
    Case 17 (spaced education RCTs) — the replication-arc
    thread teaches the closed-loop discipline at field scale.
  ],
  literature-items: (
    [Van Campenhout et al. (2023), _LAK_ — seven-course replication],
    [Butler et al. (2025), _LAK_ — non-WEIRD radio/phone extension],
    [Koedinger et al. (2016), _LAK_ — original doer-effect claim],
  ),
  reflection-list: (
    [Identify a design principle in your domain that has been replicated within WEIRD platform conditions but not across delivery modalities. What is the modality-boundary test you would design, and what would the analog of the radio-lecture-plus-mobile-phone substrate look like in your domain?],
    [Specify the pre-specified heterogeneity outcomes you would build into the next replication of a design principle in your domain. What population characteristic do you expect would condition the effect size, and what would constitute disconfirming evidence?],
  ),
  courses: ("LEN 2", "LEN 3", "LEN 7"),
)

// ---- Case 74 — zhang-scardamalia-knowledge-building ----
#case(
  number: 74,
  slug: "zhang-scardamalia-knowledge-building",
  title: "Zhang/Scardamalia — Knowledge Building Across Three Cohorts",
  year: "2009",
  domains-list: ("K-12 science", "collaborative learning", "design-based research"),
  modes-code: "TKD",
  impact: "Three-year design study in a single Grade 4 classroom (Institute of Child Study, Toronto) using Knowledge Forum across an optics curriculum; documented progression from fixed small-group to opportunistic collaboration across cohorts, with associated gains in the depth and distribution of scientific explanations across the class community",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.2",
  lens-anchor: "D2/PT4",
  clo-anchor: "CLO-2, CLO-4",
  summary: [
    Zhang, Scardamalia, Reeve, and Messina's 2009 _Journal of the
    Learning Sciences_ paper reports a three-year design study in
    a single Grade 4 classroom at the Institute of Child Study in
    Toronto, working through an optics curriculum supported by the
    Knowledge Forum platform. Across three successive cohorts, the
    classroom's collaborative structure progressed from a fixed
    small-group organization to an opportunistic one in which
    students convened around emerging questions and dispersed when
    those questions were addressed. Outcomes on the depth and
    distribution of scientific explanations across the class
    community improved in step with the structural progression.
    The hedges that travel with the case from the source are
    binding: single teacher, single school, design study not
    causal in the trial sense; transferability to non-ICS contexts
    and to teachers without knowledge-building expertise is open.
    The case is the classroom-scale longitudinal counterpart in
    the small-tier evidence base; the LE Lens uses it as the JLS-
    anchored small-tier complement to v1 Case 67.
  ],
  sections: (
    [
      Knowledge Building is the pedagogical program Marlene
      Scardamalia and Carl Bereiter developed across the 1980s
      and 1990s, organized around the idea that classrooms can
      operate as knowledge-creating communities rather than as
      receivers of established content. The Knowledge Forum
      platform is the supporting infrastructure: a shared
      database in which students post conjectures, build on one
      another's notes, mark rise-above syntheses, and trace the
      evolution of community ideas. The 2009 _Journal of the
      Learning Sciences_ paper is the systematic three-year
      study of how the collaborative structure inside a single
      Grade 4 classroom developed across cohorts as the teacher
      and students worked the program through.#cn()
    ],
    [
      The setting is deliberately constrained. A single Grade 4
      classroom at the Institute of Child Study in Toronto, a
      laboratory school with a Knowledge Building tradition; a
      single teacher across the three years; an optics curriculum
      delivered to three successive cohorts; Knowledge Forum as
      the supporting platform. The design study's interventions
      across cohorts were not randomized treatment arms but
      iterated redesigns of how collaboration was organized in
      the classroom — what kind of grouping the students worked
      in, how questions were surfaced and addressed, how the
      classroom community decided what counted as a productive
      direction. The design-based research method treats this
      iterative redesign as the unit of inquiry.#cn()
    ],
    [
      The structural progression Zhang and colleagues document is
      from fixed small-group collaboration to opportunistic
      collaboration. In the first cohort, students worked in
      stable small groups that took on assigned subtopics within
      optics. By the third cohort, the classroom had moved to an
      opportunistic structure: students convened around emerging
      questions as those questions surfaced from the community's
      shared work in Knowledge Forum, and dispersed when the
      questions had been addressed. The depth of scientific
      explanations in the community's shared notes improved in
      step with the structural change, and the distribution of
      explanatory contribution across students became less
      concentrated — more students were authoring substantive
      contributions, and the substantive contributions were
      reaching further into the underlying physics.#cn()
    ],
    [
      The hedges that travel with the case from the source are
      binding and load-bearing. The study covers a single
      teacher, a single school, and a single curriculum domain;
      the design-based research method does not produce a
      causal estimate in the trial sense, and the authors are
      explicit that what they report is a developmental account
      of how the classroom's collaborative practice changed
      across cohorts, not a controlled comparison. Transferability
      to non-ICS contexts is open. Transferability to teachers
      without Knowledge Building expertise is open. The case is
      not the evidence that the Knowledge Building program
      works at scale across heterogeneous classrooms; it is the
      evidence that in a specific well-supported setting, a
      classroom's collaborative structure can be iteratively
      redesigned across cohorts in a direction that improves
      the depth and distribution of scientific explanation.#cn()
    ],
    [
      The case sits as the classroom-scale longitudinal
      counterpart in the small-tier evidence base. Pair with
      Case 40 (Colorado CTSA team science) for the
      collaboration-measurement thread at a different scale and
      domain; with Case 77 (Hybrid Human-AI Tutoring) for the
      small-tier deployment-success counterpart; with Case 81
      and Case 85 (OU Analyse) for the distance-higher-education
      governance frame at a different population. The LE Lens
      uses the case as the JLS-anchored small-tier complement to
      v1 Case 67 (Cognitive Tutor's single-site arc); the two
      cases together teach that the longitudinal classroom
      record is the substrate that learning-engineering
      iterations operate on, and that the iteration unit is the
      cohort, not the lesson.
    ],
  ),
  beats: (
    "Single Grade 4 classroom at Institute of Child Study, Toronto; one teacher across three years; optics curriculum; Knowledge Forum platform",
    "Design-based research across three successive cohorts; iterated redesign of how collaboration was organized as the unit of inquiry",
    "Progression: fixed small-group collaboration → opportunistic collaboration around emerging questions; cohort is the iteration unit",
    "Outcomes: improved depth and improved distribution of scientific explanations across the class community as the structure progressed",
    "Hedges binding: single teacher, single school, design study not causal; transferability to non-ICS contexts and non-KB-expert teachers is open",
  ),
  approaches: (
    during: (
      [Treat the cohort as the iteration unit when the classroom collaborative structure is the design target; the case demonstrates that a year is the right horizon for a meaningful redesign cycle and a multi-year horizon is required to surface the progression.],
      [Design the infrastructure — Knowledge Forum's shared note database — to make the community's evolving ideas inspectable; the redesign across cohorts depended on the teacher and students having a record of how prior cohorts' ideas had moved.],
      [Track depth and distribution of contribution as paired outcome measures; reporting depth alone hides the equity-relevant distribution change, and reporting distribution alone hides the substantive-progress signal.],
    ),
    after: (
      [Carry the binding hedges into print without softening; the case's value to the corpus rests on its specificity, and the transferability questions are open and disclosable as open.],
      [Pair with Case 40 (collaboration measurement at team-science scale) so the collaboration-as-design-target thread is taught at both the classroom and team scales.],
      [Use the case as the JLS-anchored small-tier complement to v1 Case 67 (Cognitive Tutor's single-site arc); the cohort-as-iteration-unit lesson is the bridge between the classroom-design literature and the at-scale evaluation literature.],
    ),
  ),
  references: (
    [Zhang, J., Scardamalia, M., Reeve, R., & Messina, R. (2009), "Designs for Collective Cognitive Responsibility in Knowledge-Building Communities," _Journal of the Learning Sciences_ 18(1):7–44, doi:10.1080/10508400802581676.],
    [Scardamalia, M., & Bereiter, C. (2006), "Knowledge Building: Theory, pedagogy, and technology," in K. Sawyer (ed.), _Cambridge Handbook of the Learning Sciences_ — programmatic backdrop.],
    [Bereiter, C., & Scardamalia, M. (2014), "Knowledge Building and Knowledge Creation: One Concept, Two Hills to Climb," in S. C. Tan, H. J. So, & J. Yeo (eds.), _Knowledge Creation in Education_ — extension into the post-2009 program.],
    [Design-based research methodology references — Cobb, Confrey, diSessa, Lehrer, & Schauble (2003), "Design Experiments in Educational Research," _Educational Researcher_ 32(1):9–13 — the methodological frame the 2009 study operates inside.],
  ),
  quote: [The cohort is the iteration unit. The collaborative structure of a single Grade 4 classroom moved from fixed small-group to opportunistic across three years, and the depth and distribution of scientific explanation moved with it.],
  quote-source: "Editors' synthesis of Zhang, Scardamalia, Reeve, & Messina (2009).",
  le-insight: [
    Zhang and colleagues' three-year design study is the
    classroom-scale longitudinal record of how a collaborative
    structure can be iteratively redesigned across cohorts in a
    direction that improves the depth and distribution of
    scientific explanation. The hedges are binding — single
    teacher, single school, design study not causal — and the
    case's pedagogical value depends on the hedges being
    preserved. The cohort is the iteration unit.
  ],
  lens-approach: [
    Zhang/Scardamalia is the cohort-as-iteration-unit case at
    classroom scale (induced 2.2; LENS D2/PT4; CLO-2 and CLO-4).
    LENS uses it in Domain 2 (Iterative Development) for the
    multi-cohort design-based-research discipline and in Domain 4
    (Test and Evaluation) for the depth-and-distribution paired
    outcome measure. Pair with Case 40 (Colorado CTSA team
    science collaboration measurement), Case 77 (Hybrid Human-AI
    Tutoring small-tier deployment), and Cases 81 and 85 (OU
    Analyse — distance higher-education governance at a different
    scale). The LE Lens uses it as the small-tier complement to
    v1 Case 67 (Cognitive Tutor single-site arc).
  ],
  literature-items: (
    [Zhang et al. (2009), _JLS_ — Knowledge Building three-cohort design study],
    [Scardamalia & Bereiter (2006) — Knowledge Building programmatic backdrop],
    [Cobb et al. (2003), _Educational Researcher_ — design-based research method],
  ),
  reflection-list: (
    [Identify a classroom or team in your domain whose collaborative structure has not been redesigned across cohorts. What would a cohort-as-iteration-unit redesign cycle look like, and what shared-infrastructure artifact would make the prior cohort's evolution inspectable for the next?],
    [Specify the paired outcome measures you would track when collaborative structure is the design target. Depth and distribution travel together in the Zhang case; what is the analogous pair in your setting, and what would reporting one without the other obscure?],
    [The case's transferability hedges are open — non-ICS contexts, non-Knowledge-Building-expert teachers. Pick a feature of the ICS setting that the case depends on, and ask: what would have to be true in your setting for the redesign discipline to travel, and what wouldn't?],
  ),
  courses: ("LEN 2", "LEN 3", "LEN 7"),
)

// ---- Case 75 — chen-rural-china-ai-devices ----
#case(
  number: 75,
  slug: "chen-rural-china-ai-devices",
  title: "Chen et al. — Rural China AI Devices and the Equity-Direction Finding",
  year: "2025",
  domains-list: ("K-12 education", "AI-supported instruction", "educational equity"),
  modes-code: "TKD",
  impact: "Quasi-experimental study across 12 schools (4 urban, 8 rural) and 268 teachers, September to November 2024; rural experimental classes gained 17.93% on mathematics and 13.46% on history, while urban experimental classes gained 10.96% on mathematics and 9.55% on history — the rural gain exceeded the urban gain across both subjects",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.3",
  lens-anchor: "D2/PT4",
  clo-anchor: "CLO-4",
  summary: [
    Chen, Wu, Chen, and Zhou's 2025 paper in _Frontiers in
    Psychology_ reports a three-month quasi-experimental study of
    AI-supported instructional devices across 12 schools — 4 urban
    and 8 rural — in China, involving 268 teachers from September
    to November 2024. The headline result is the equity-direction
    finding: rural experimental classes gained 17.93% on
    mathematics and 13.46% on history, while urban experimental
    classes gained 10.96% on mathematics and 9.55% on history.
    The rural gain exceeded the urban gain across both subjects.
    The honest hedges that travel with the case from the source
    are load-bearing and preserved in the prose: the horizon is
    three months; the study covers 12 schools; assignment is
    non-randomized; the authors acknowledge self-report and
    observation biases in the measurement instruments. All four
    authors are at Chinese institutions — Hangzhou City
    University, Lingnan University, and Huazhong University of
    Science and Technology — and the case stands as the
    first-author-from-deployment-country evidence the corpus's
    non-WEIRD thread most needs.
  ],
  sections: (
    [
      The corpus's non-WEIRD deployment record is structurally
      thin. The published learning-engineering evidence base is
      built largely on WEIRD-population studies — Western,
      educated, industrialized, rich, democratic — and the
      deployments that operate at meaningful scale outside that
      population are rarely written up in peer-reviewed journals
      by authors based in the deployment country. Chen and
      colleagues' 2025 _Frontiers in Psychology_ paper is one of
      the strongest documented exceptions: a deployment of AI-
      supported instructional devices across rural and urban
      Chinese schools, evaluated quantitatively, reported by a
      four-author team based at Chinese institutions, and
      published in a peer-reviewed journal with the load-bearing
      methodological hedges named.#cn()
    ],
    [
      The deployment covers 12 schools — 4 urban and 8 rural —
      and 268 teachers across the September to November 2024
      window. The intervention is AI-supported instructional
      devices integrated into mathematics and history classroom
      instruction. The comparison structure is between
      experimental and control classes within each school setting
      across both subjects. The headline outcome the paper reports
      is the equity-direction finding: rural experimental classes
      gained 17.93% on mathematics and 13.46% on history, while
      urban experimental classes gained 10.96% on mathematics and
      9.55% on history. The rural-over-urban gain pattern is the
      result the case teaches; the equity direction is unusual in
      the published EdTech literature, where deployments more
      often surface as widening the gap between higher- and
      lower-resourced settings rather than narrowing it.#cn()
    ],
    [
      The honest hedges the case carries are load-bearing and
      explicit in the source. The horizon is three months — a
      September to November 2024 window — and the case's pattern
      is conditioned on that horizon, not on a school-year or
      multi-year follow-through. The sample is 12 schools, which
      is right for the within-subject within-school comparison
      structure the study runs but is not right for prevalence
      claims about Chinese rural schooling at population scale.
      Assignment to experimental and control classes is non-
      randomized; the authors are explicit that they cannot rule
      out teacher- or school-level selection effects driving the
      heterogeneity. Self-report and observation biases in the
      measurement instruments are acknowledged by the authors.
      All four hedges travel into the prose without softening;
      the case is published in a peer-reviewed mid-tier journal,
      and the evidence-tier flag rendering is intentionally not
      set — the hedges are carried in the case's own argument
      rather than in the title-bar render.#cn()
    ],
    [
      The case's structural placement in the corpus is the
      equity-direction-finding case at the non-WEIRD deployment
      seam. Pair with Case 86 (Gándara / community-college
      predictive equity in _AERA Open_) for the equity-direction
      thread at the higher-education scale; with Case 88
      (LiveHint AI bias across foundation models) for the bias-
      surfacing thread in AI-supported instruction; with Case 73
      (Doer Effect non-WEIRD radio-and-phone extension) for the
      non-WEIRD methodological discipline at the heterogeneity-
      finding axis. The first-author-from-deployment-country
      structure of Chen et al. is itself the methodological
      contribution the corpus's non-WEIRD thread needs: the
      strongest reading of a deployment is the one written by
      authors with access to the deployment context and
      published in the journal architecture the field can read.#cn()
    ],
    [
      The pedagogical seam the case opens is the equity-direction
      reading of an AI-supported instructional intervention. The
      conventional reading — that deployments widen the gap
      between higher- and lower-resourced settings — is not what
      Chen and colleagues report on the three-month horizon they
      studied. The rural gain exceeded the urban gain across
      both subjects, and the result is the load-bearing teaching
      point the case anchors. The case does not claim that the
      pattern generalizes past three months; it does not claim
      that the pattern holds outside the 12 schools the study
      covers; it does not claim causal identification past the
      bounds the non-randomized assignment supports. What it
      reports is the equity-direction finding in the deployment
      window the study describes, and the case uses that finding
      to anchor the CLO on fairness beyond omission — the
      finding is the rare published example where an AI
      deployment in education narrowed rather than widened a
      between-setting gap on its evaluation horizon, and the
      methodological structure of the study supports treating
      the result as the case's load-bearing observation rather
      than as a discounted outlier.
    ],
  ),
  beats: (
    "Chen, Wu, Chen, Zhou (2025) Frontiers in Psychology; 12 schools (4 urban, 8 rural), 268 teachers, Sep–Nov 2024",
    "Rural experimental classes +17.93% math, +13.46% history; urban experimental classes +10.96% math, +9.55% history",
    "Equity-direction finding: rural gain exceeds urban gain across both subjects — the load-bearing teaching point",
    "Load-bearing hedges in prose: 3-month horizon, 12 schools, non-randomized assignment, self-report and observation bias acknowledged",
    "First-author-from-deployment-country structure; pair with Cases 86 (Gándara), 187 (LiveHint bias), 186 (Doer Effect non-WEIRD)",
  ),
  approaches: (
    during: (
      [Pre-specify the equity-direction outcome as the load-bearing reading; the case demonstrates that a deployment study can credibly report a rural-over-urban gain on a defined horizon when the methodological hedges are named.],
      [Carry the four binding hedges — horizon, sample, assignment structure, measurement bias — in the deployment write-up itself; the case's value to the corpus depends on the hedges being internal to the argument rather than buried in a limitations footnote.],
      [Treat first-author-from-deployment-country authorship as a methodological feature; the non-WEIRD evidence base is structurally improved by deployments written up by teams with access to the deployment context.],
    ),
    after: (
      [Commission the longer-horizon and larger-sample replication the three-month 12-school study cannot perform; the equity-direction finding's persistence past three months and across more schools is the validation question the case names.],
      [Pair the case in syllabi with Case 86 (Gándara community-college equity) and Case 73 (Doer Effect non-WEIRD extension) so the equity-direction reading is taught across deployment scales and population settings.],
      [Use the case to anchor the CLO on fairness beyond omission with a rare published equity-direction finding; the corpus needs equity-narrowing results as visible as equity-widening ones, and the methodological discipline that lets the result be reported credibly is the curricular target.],
    ),
  ),
  references: (
    [Chen, R., Wu, Y., Chen, Z., & Zhou, P. (2025), "Advancing educational equity in rural China: the impact of AI devices on teaching quality and learning outcomes for sustainable development," _Frontiers in Psychology_ 16:1588047, doi:10.3389/fpsyg.2025.1588047.],
    [Paired Case 86 (Gándara et al., _AERA Open_) — community-college predictive equity at the higher-education scale.],
    [Paired Case 88 (LiveHint AI bias across foundation models, AIED 2025) — bias-surfacing in AI-supported instruction.],
    [Paired Case 73 (Doer Effect non-WEIRD LAK 2025 radio-and-phone extension) — non-WEIRD methodological discipline at the heterogeneity-finding axis.],
  ),
  quote: [Rural experimental classes gained 17.93 percent on mathematics and 13.46 percent on history; urban experimental classes gained 10.96 percent on mathematics and 9.55 percent on history. The rural gain exceeded the urban gain across both subjects — and the load-bearing hedges are three-month horizon, twelve schools, non-randomized assignment, self-report and observation bias acknowledged by the authors.],
  quote-source: "Editors' synthesis of Chen, Wu, Chen, & Zhou (2025).",
  le-insight: [
    Chen and colleagues' 12-school three-month deployment of AI-
    supported instructional devices across rural and urban
    Chinese classrooms reported an equity-direction finding —
    rural gain exceeded urban gain across both mathematics and
    history. The load-bearing hedges are explicit and carried in
    the prose: three-month horizon, twelve schools, non-randomized
    assignment, self-report and observation bias acknowledged by
    the authors. The case anchors the CLO on fairness beyond
    omission with a rare published equity-narrowing result.
  ],
  lens-approach: [
    Chen et al. is the equity-direction-finding case at the
    non-WEIRD deployment seam (induced 8.3; LENS D2/PT4; CLO-4
    and fairness beyond omission). LENS uses it in Domain 2
    (Iterative Development) for the deployment-on-a-defined-
    horizon discipline and in Domain 5 (Navigating Sociotechnical
    Constraints) for the equity-direction reading that anchors
    the fairness-beyond-omission CLO. Pair with Case 86
    (Gándara community-college predictive equity), Case 88
    (LiveHint AI bias across foundation models), and Case 73
    (Doer Effect non-WEIRD radio-and-phone extension). The
    case's pedagogical value depends on the four binding
    hedges traveling with the result into print.
  ],
  literature-items: (
    [Chen et al. (2025), _Frontiers in Psychology_ — rural China AI devices],
    [Paired Cases 86 (Gándara) and 186 (Doer Effect non-WEIRD)],
    [Paired Case 88 (LiveHint AI bias)],
  ),
  reflection-list: (
    [Identify a deployment in your domain whose equity-direction finding — narrowing or widening a between-setting gap — has not been pre-specified as a primary outcome. What would the pre-specification require, and what data infrastructure would support it?],
    [Specify the four load-bearing hedges you would carry in the prose of a non-WEIRD deployment write-up — horizon, sample, assignment structure, measurement bias. Which of the four is hardest to name credibly in your domain, and what would naming it cost?],
    [The case's structural feature is first-author-from-deployment-country authorship. Pick a deployment in your domain that has been written up primarily by external authors, and ask: what would change in the methodological reading if the write-up were led by authors with access to the deployment context?],
  ),
  courses: ("LEN 3", "LEN 7", "LEN 8"),
)

// ---- Case 76 — multimodal-learning-analytics-in-the ----
#case(
  number: 76,
  slug: "multimodal-learning-analytics-in-the",
  title: "Multimodal Learning Analytics In-the-Wild — A First-Person Lessons-Learned Account",
  year: "2023",
  domains-list: ("multimodal learning analytics", "classroom deployment", "design-based research"),
  modes-code: "TKN",
  impact: "First-person practitioner reflection on multiple in-the-wild multimodal learning analytics (MMLA) deployments — eye-tracking, audio capture, spatial positioning in classroom contexts; documents what worked, what failed, what the team would have done differently",
  kind: "frontier",
  scale: "small",
  evidence-source: "practitioner",
  evidence-flag: "preprint-tier",
  induced-anchor: "2.2",
  lens-anchor: "D2/PT4",
  clo-anchor: "CLO-2, CLO-4",
  summary: [
    Martinez-Maldonado et al.'s 2023 arXiv paper, "Lessons
    Learnt from a Multimodal Learning Analytics Deployment
    In-the-Wild," is structured as a first-person practitioner
    reflection on lessons from multiple in-the-wild MMLA
    deployments — eye-tracking, audio capture, spatial
    positioning in classroom contexts. The paper documents
    what worked, what failed, and what the team would have
    done differently. The case is offered not as a deployment-
    results case (the deployment outcomes live in adjacent
    peer-reviewed papers) but as a published-first-person
    Practice Flywheel exemplar — the genre the front-matter
    "unpacking is the method" reframing calls for. The case
    pairs structurally with the reflective-practice cases
    elsewhere in the v2 supplemental tier and grounds the
    practitioner-reflection-as-evidence-tier discipline at the
    LE-specific layer. Preprint-tier evidence-flag is binding
    on the framing — the arXiv version is preprint, with
    sections published in adjacent peer-reviewed work, and the
    standing "future validation ongoing" language applies to
    both the peer-review pipeline for this version and the
    broader question of whether the genre takes hold across the
    LE community.
  ],
  sections: (
    [
      Multimodal learning analytics is the strand of the
      learning-analytics field where the data substrate moves
      beyond click-stream and assessment-response logs to
      include eye-tracking, audio capture, video, and spatial
      positioning. The lab-deployment record for MMLA is
      substantial; the in-the-wild classroom-deployment record
      is structurally different and structurally sparse. What
      happens when the sensor stack moves from the controlled
      lab environment into the classroom — where lighting
      varies, students move, audio overlaps, and the consent
      architecture has to accommodate the school's operational
      norms — is a question the published deployment-results
      papers can answer only partially.#cn()
    ],
    [
      Martinez-Maldonado et al.'s 2023 arXiv paper is structured
      as a first-person practitioner reflection on lessons from
      multiple in-the-wild MMLA deployments. The paper's content
      is what the deployment-results papers do not contain: what
      worked, what failed, what the team would have done
      differently. The structure is reflective rather than
      hypothesis-testing — the team narrates the deployments,
      identifies the recurring patterns, and surfaces the
      operational knowledge that does not fit into a methods
      section of a results paper. The honest framing the paper
      preserves is that the reflective genre is the right
      vehicle for the kind of operational knowledge the case
      contains, and that the peer-review structures of the LE
      field have not consistently supported the genre.#cn()
    ],
    [
      The case is offered in the corpus not as a deployment-
      results case but as a published-first-person Practice
      Flywheel exemplar. The genre the editor's memo (B1)
      anticipates — first-person practitioner accounts of
      deployment iterations, intended to be paired with the
      front-matter "unpacking is the method" reframing — has
      structural analogs in adjacent fields (Lutz on reflective
      journaling, CBE-LSE on reflective-practice primers, SE
      work-based reflective-practice longitudinals) but has
      historically been under-published in LE. The
      Martinez-Maldonado paper is the LE-specific instance of
      the genre at deployment scale; the case carries it on
      that basis.#cn()
    ],
    [
      The structural anchor the case grounds is the sustaining-
      tacit-capability-across-generations anchor. Practitioner
      knowledge — what to do when the eye-tracker calibration
      drifts mid-session, how to design the consent
      architecture for an audio capture in a classroom of
      twenty-five students, what the spatial-positioning sensor
      placement looks like when the classroom layout shifts —
      walks out the door if it is not narrated. The paper's
      first-person genre is the narration vehicle, and the case
      grounds the curriculum's response to the question of how
      operational knowledge accumulates and propagates across
      practitioner cohorts. The pair with the CIRCUIT cases
      (119, 120) is the workforce-and-capability layer; the
      pair with Case 77 (hybrid human-AI tutoring) is the
      design-iteration layer.#cn()
    ],
    [
      The preprint-tier evidence-flag is binding on the
      framing. The arXiv version is preprint; sections have
      been published in adjacent peer-reviewed work, but the
      consolidated lessons-learned synthesis the case carries
      sits at the preprint tier. The standing "future validation
      ongoing" language applies along two dimensions. The peer-
      review pipeline for this specific consolidated synthesis
      is one dimension. The broader question — whether the
      first-person practitioner-reflection genre takes hold in
      the LE community at sufficient scale to function as the
      Practice Flywheel exemplar the framework names — is the
      other dimension. The case is included not despite the
      preprint-tier framing but with it; the framing is part of
      what the case teaches.
    ],
  ),
  beats: (
    "Martinez-Maldonado et al. 2023 arXiv: first-person practitioner reflection on multiple MMLA in-the-wild deployments",
    "Content: what worked, what failed, what the team would have done differently — operational knowledge not in results papers",
    "Offered as published-first-person Practice Flywheel exemplar, not as deployment-results case; pair with front-matter 'unpacking is the method'",
    "Grounds sustaining-tacit-capability anchor — practitioner knowledge walks out the door if not narrated",
    "Preprint-tier flag binding: arXiv consolidated synthesis; future validation ongoing on peer-review and on genre adoption across LE",
  ),
  approaches: (
    during: (
      [Narrate the deployment in first person while it is still operating; the operational knowledge the case names is contemporaneous, and the post-hoc reconstruction loses the texture the first-person genre preserves.],
      [Treat the reflective paper as a deliverable on par with the results paper; the case demonstrates that the operational knowledge has the same evidentiary status as the methods-section content of a results paper, and the publication structure should support it.],
      [Build the consent and ethics architecture around the in-the-wild deployment substrate from the start; the lessons-learned content includes consent-architecture failures that the lab-deployment record does not surface.],
    ),
    after: (
      [Move the consolidated synthesis through the peer-review pipeline; the preprint-tier evidence-flag is binding now, and converting the synthesis to peer-reviewed publication is the validation step the standing language anticipates.],
      [Carry the Practice Flywheel exemplar designation into the curriculum's first-person-account commissioning structure; the case is the LE-specific anchor for the genre the editor's memo (B1) calls for, and the curriculum is the vehicle that institutionalizes the genre.],
      [Pair the case with the front-matter "unpacking is the method" reframing so the genre's role in the casebook's pedagogical architecture is visible; the case is offered as an exemplar of the genre, and the genre is offered as the curriculum's response to the sustaining-tacit-capability question.],
    ),
  ),
  references: (
    [Martinez-Maldonado, R. et al. (2023), "Lessons Learnt from a Multimodal Learning Analytics Deployment In-the-Wild," arXiv:2303.09099 — preprint, sections published in adjacent LAK and IEEE TLT outlets.],
    [Worsley, M., & Blikstein, P. (2018), "A multimodal multisensor framework for examining how students engage in design," _Journal of Learning Analytics_ — broader MMLA literature backdrop.],
    [Schon, D. (1983), _The Reflective Practitioner_ — the genre's theoretical underpinning, referenced across the reflective-practice case tier.],
    [Editors' memo (B1) — Practice Flywheel commissioning structure that the case is offered as a published-first-person exemplar within.],
  ),
  quote: [Practitioner knowledge walks out the door if it is not narrated. The first-person reflective genre is the narration vehicle, and the field has not consistently supported it.],
  quote-source: "Editors' synthesis of Martinez-Maldonado et al. (2023).",
  le-insight: [
    Martinez-Maldonado et al. is the LE-specific published-
    first-person Practice Flywheel exemplar at MMLA in-the-wild
    deployment scale. The case is offered not as a deployment-
    results case but as a genre exemplar — the reflective-
    practice account at the field's preprint tier. Preprint-tier
    flag binding; future validation ongoing on peer-review
    pipeline and on whether the genre takes hold across the LE
    community.
  ],
  lens-approach: [
    MMLA in-the-wild is the sustaining-tacit-capability case in
    the LE-conferences tier (induced 6.3; LENS D2/PT4). LENS
    uses it in Domain 2 (Iterative Development) for the
    reflective-narration-of-design-iteration discipline and in
    Domain 4 (Test and Evaluation) for the evidence-tier
    discipline binding the preprint-tier framing to the genre's
    pedagogical role. Pair with Cases 78 and 68 (CIRCUIT
    workforce-and-capability layer) and Case 77 (hybrid human-
    AI tutoring design-iteration layer). Preprint-tier flag
    binding under the title.
  ],
  literature-items: (
    [Martinez-Maldonado et al. (2023), arXiv:2303.09099 — MMLA lessons-learned],
    [Worsley & Blikstein (2018), _JLA_ — MMLA framework],
    [Schon (1983), _The Reflective Practitioner_],
  ),
  reflection-list: (
    [Identify a deployment in your domain whose operational knowledge — what worked, what failed, what the team would have done differently — has not been narrated outside the team. What would the first-person reflective account look like, and what publication venue would carry it?],
    [Specify the consent and ethics architecture you would build into an in-the-wild deployment in your domain that the lab-deployment record would not have surfaced. The case's lessons-learned content includes consent-architecture failures; what would the deployment-substrate-specific architecture look like?],
    [The case is offered as a published-first-person Practice Flywheel exemplar. Identify a practitioner in your domain whose operational knowledge you would commission a first-person account from. What would the commissioning structure look like, and what would the account contain that the published-results papers do not?],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 7"),
)

// ---- Case 77 — hybrid-human-ai-tutoring-augmentation ----
#case(
  number: 77,
  slug: "hybrid-human-ai-tutoring-augmentation",
  title: "Hybrid Human-AI Tutoring — Augmentation, Not Delegation",
  year: "2024",
  domains-list: ("tutoring", "hybrid human-AI systems", "K-12 education"),
  modes-code: "TKD",
  impact: "Three quasi-experimental studies of hybrid human-AI tutoring deployments reported improvements in student learning relative to comparison conditions; the AI is positioned as augmentation, not delegation; the human tutor retains authorization to override and re-direct",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "6.4",
  lens-anchor: "D3/PT6",
  clo-anchor: "CLO-2, CLO-3",
  summary: [
    Thomas et al.'s LAK 2024 best paper, "Improving Student
    Learning with Hybrid Human-AI Tutoring: A Three-Study
    Quasi-Experimental Investigation," reports three quasi-
    experimental studies of hybrid deployments where AI
    augmentation is added to human tutoring rather than used to
    replace it. The headline finding is that learning outcomes
    improved relative to comparison conditions in each of the
    three studies. The contribution the case carries for the
    LENS framework is the design positioning: the AI is
    augmentation, the human tutor retains the authorization to
    override and re-direct, and the measured outcome is student
    learning rather than AI-system fidelity. The case is the
    small-tier intervention-side counterpart to Case 20 (TREWS,
    the clinician-AI teaming case that worked) translated into
    education. Pair also with Cases 78 and 68 (CIRCUIT human-
    AI workforce) and Case 5 (Epic Sepsis, the delegation
    case that did not work). Open questions: longitudinal
    persistence; transfer to lower-resource tutoring contexts
    where human-tutor availability is the binding constraint.
  ],
  sections: (
    [
      The deployment record for AI in tutoring has been pulled
      in two directions. The fully-automated tutoring track —
      from Cognitive Tutor through LLM-based tutoring (Case 88)
      — has tested whether AI alone can replace or substantially
      reduce the human-tutor role. The augmentation track has
      tested whether AI can extend the reach and effectiveness
      of human tutors, with the AI positioned as a tool the
      tutor uses rather than as a substitute for the tutor.
      Thomas et al.'s LAK 2024 paper is the strongest published
      evaluation of the augmentation track to date, and it
      reports three quasi-experimental studies that converge on
      a positive finding.#cn()
    ],
    [
      The three studies test variants of the augmentation
      pattern in K-12 tutoring deployments. The AI supports the
      human tutor with information surfacing, problem
      recommendation, and student-progress visibility; the human
      tutor retains the conversational and pedagogical lead.
      Outcome measures are student learning relative to
      comparison conditions — control conditions that vary by
      study but consistently anchor against either tutor-only
      or AI-only baselines. Across the three studies, the
      hybrid condition produced measurable improvements in
      student learning. The replication structure across the
      three studies — same authorship team, varying institutional
      context, converging direction of effect — is the
      methodological backbone of the case.#cn()
    ],
    [
      The design positioning the case carries for the LENS
      framework is the augmentation-not-delegation frame. The
      AI is positioned as augmentation, the human tutor retains
      the authorization to override and re-direct, and the
      measured outcome is student learning, not AI-system
      fidelity. This is the design pattern that worked in
      clinical-decision-support at Case 20 (TREWS) and that
      did not work at Case 5 (Epic Sepsis) — where TREWS
      preserved clinician authorization and built the explanation
      structure that supported it, the Epic Sepsis deployment
      pattern collapsed clinician judgment into alert
      compliance. Hybrid human-AI tutoring is the educational
      analog of the TREWS pattern, and the LAK 2024 paper is
      the evidence base that grounds the analog.#cn()
    ],
    [
      The case anchors with the CIRCUIT pair (Cases 78 and
      68) at the workforce-augmentation layer. CIRCUIT
      proofreading positions human capability as the recovery
      mechanism for automation failure at petabyte scale; the
      CIRCUIT workforce model builds the capability in the
      first place; hybrid human-AI tutoring positions AI as
      augmentation of an already-capable human tutor. The three
      cases together teach the augmentation-and-correction
      pattern across three deployment substrates — connectomics
      proofreading, neuroscience-workforce development, and
      tutoring — and they ground the curriculum's machine-
      teaming and delegation-with-revocation anchors at each
      substrate.#cn()
    ],
    [
      The open questions the case carries are the ones the
      authors name. Longitudinal effect persistence is not yet
      in the evidence base — the three quasi-experimental
      studies report end-of-intervention outcomes, not
      multi-year follow-through. Whether the design transfers
      to lower-resource tutoring contexts, where human-tutor
      availability is the binding constraint and the
      augmentation-of-a-tutor frame may not apply, is the
      open generalization question. The quasi-experimental
      design is honest about its causal-inference limits —
      randomization is not at the level a cluster RCT would
      provide — and the case carries the qualification. Future
      validation ongoing on persistence, transfer, and the
      tutor-scarce-context generalization.
    ],
  ),
  beats: (
    "Thomas et al. LAK 2024 best paper: three quasi-experimental studies of hybrid human-AI tutoring",
    "Headline: learning outcomes improved relative to comparison conditions in each of the three studies",
    "Design positioning: AI as augmentation, human tutor retains override authorization, measured outcome is student learning",
    "Educational analog of Case 20 (TREWS clinician-AI teaming); contrast with Case 5 (Epic Sepsis delegation collapse)",
    "Open: longitudinal persistence; transfer to lower-resource tutoring where human-tutor availability is the binding constraint",
  ),
  approaches: (
    during: (
      [Position the AI as augmentation explicitly in the design documentation, not implicitly in the deployment pattern; the augmentation-vs-delegation distinction is the load-bearing design choice and should be the named design choice.],
      [Preserve human-tutor authorization to override and re-direct as a system-design requirement, not as a discretionary affordance; the comparison with Case 5 (Epic Sepsis) is that override authorization collapses when the system pattern does not actively preserve it.],
      [Measure the student-learning outcome, not the AI-system-fidelity outcome; the case's pedagogical framing depends on the outcome instrument being the educationally relevant one, not the AI-development-internal one.],
    ),
    after: (
      [Commission longitudinal follow-through that extends the evidence base past the end-of-intervention horizon; the open persistence question is testable against the same deployment with additional data infrastructure.],
      [Test the augmentation design in tutor-scarce contexts; the open generalization question is whether the pattern transfers to settings where the binding constraint is human-tutor availability rather than human-tutor effectiveness.],
      [Pair the case with Case 20 (TREWS) in the curriculum so the augmentation-and-override pattern is taught across clinical and educational substrates; the two cases together ground the delegation-with-revocation CLO with two converging instances.],
    ),
  ),
  references: (
    [Thomas, D. R. et al. (2024), "Improving Student Learning with Hybrid Human-AI Tutoring: A Three-Study Quasi-Experimental Investigation," _LAK '24_, doi:10.1145/3636555.3636896.],
    [Case 20 (TREWS) reference set — Henry et al. (2022), _Nature Medicine_ — clinician-AI teaming analog.],
    [Case 5 (Epic Sepsis) reference set — Wong et al. (2021), _JAMA Internal Medicine_ — delegation-collapse analog.],
    [Koedinger, K. R. et al. — Cognitive Tutor literature as the fully-automated track the augmentation track contrasts with.],
  ),
  quote: [The AI is positioned as augmentation, not delegation. The human tutor retains the authorization to override and re-direct. The measured outcome is student learning, not AI-system fidelity.],
  quote-source: "Editors' synthesis of Thomas et al. (2024).",
  le-insight: [
    Hybrid human-AI tutoring is the educational analog of the
    TREWS clinician-AI teaming pattern. AI is positioned as
    augmentation; human tutor retains override authorization;
    student-learning outcome is the measure. Three quasi-
    experimental studies converge on positive learning effects.
    The case pairs with Cases 20 / 101 / 118 / 119 in the
    human-AI teaming thread and grounds the delegation-with-
    revocation CLO at the educational deployment.
  ],
  lens-approach: [
    Hybrid human-AI tutoring is the augmentation-not-delegation
    case in education (induced 6.4; LENS D3/PT6). LENS uses it
    in Domain 3 (Human-System Collaboration) for the
    augmentation pattern and the override-authorization frame,
    and in Domain 2 (Iterative Development) for the three-study
    converging-design replication. Pair with Cases 20 (TREWS)
    and 102 (Epic Sepsis) at the clinical analog, and with
    Cases 78 and 68 (CIRCUIT) at the workforce-augmentation
    analog.
  ],
  literature-items: (
    [Thomas et al. (2024), _LAK_ — hybrid human-AI tutoring three-study],
    [Henry et al. (2022), _Nature Medicine_ — TREWS analog],
    [Wong et al. (2021), _JAMA Internal Medicine_ — Epic Sepsis contrast],
  ),
  reflection-list: (
    [Identify an AI deployment in your domain where the design choice between augmentation and delegation has been implicit rather than explicit. What would change in the system design if the choice were named explicitly, and what comparison condition would you build to test the difference?],
    [Specify the override-authorization preservation mechanism in your domain's analog deployment. Is the human operator's authority to override and re-direct a system-design requirement, a discretionary affordance, or an implicit assumption? Which of the three is honest about what the system currently supports?],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 7"),
)

// ---- Case 78 — circuit-microns-the-human-correction ----
#case(
  number: 78,
  slug: "circuit-microns-the-human-correction",
  title: "CIRCUIT / MICrONS — The Human Correction Layer at Petabyte Scale",
  year: "2017 – present",
  domains-list: ("neuroscience/connectomics", "human-AI teaming", "workforce training"),
  modes-code: "HKN",
  impact: "Under IARPA's MICrONS program, automated electron-microscopy segmentation produces brain maps too large and too error-prone to deploy without human correction; CIRCUIT trains undergraduate cohorts as the proofreading workforce that is the recovery mechanism for automation failure at petabyte scale",
  kind: "frontier",
  scale: "small",
  evidence-source: "program-report",
  evidence-flag: "internal-pm",
  induced-anchor: "3.4",
  lens-anchor: "D3/PT6",
  clo-anchor: "CLO-4, CLO-3",
  coi: "Contribution: an editor has research adjacency to connectomics programs here, and the case originates at an editor's institution (Johns Hopkins / APL). The method is anchored to peer-reviewed work; program training-outcome evidence is institutional documentation, not independent evaluation — the gap rendered as the evidence-tier flag above.",
  summary: [
    Under IARPA's Machine Intelligence from Cortical Networks (MICrONS)
    program, automated electron-microscopy segmentation produces
    petabyte-scale brain maps that are too large and too error-prone
    to be deployed without human verification. APL's CIRCUIT program
    trains cohorts of undergraduates to proofread and correct these
    maps; APL's BossDB stores and serves the petabyte-scale data. The
    learning-engineering content the case carries is the
    human-in-the-loop correction layer: where automation fails at the
    petabyte boundary, a trained human capability is the recovery
    mechanism that makes the data scientifically usable. The honest
    evidentiary state — preserved as the evidence-tier flag rendered
    under the title — is that the connectomics method and
    infrastructure are documented in the peer-reviewed literature,
    but CIRCUIT's program training outcomes (did the cohorts reliably
    produce proofreading capability, at what error rates, with what
    retention, with what transfer to other tasks) sit in institutional
    documentation rather than peer-reviewed program evaluation. The
    case is included as a frontier — the structural pattern is the
    increasingly central question of how to design a human correction
    layer for generative and automated systems at scale, and future
    validation will continue as the program-evaluation literature
    builds out. The COI render under the title is binding: home
    institution, research adjacency, evidence-tier flag, all visible
    at the point of reading.
  ],
  sections: (
    [
      Connectomics — the reconstruction of detailed wiring diagrams
      of brain tissue from electron-microscopy imaging — is the
      modern incarnation of a problem with the same structural shape
      as the early radiology-AI cases (Case 35): automation produces
      a primary output at scale that no human team could produce
      manually, and the output is too important and too error-prone
      to be deployed without verification. The MICrONS program,
      funded by IARPA, set out to produce reconstructions of cortical
      microcircuits at the volume scale required to make
      computational neuroscience comparisons possible.#cn()
    ],
    [
      The automation produces petabytes of data. Automated
      segmentation labels each voxel with the neuron it belongs to,
      but at petabyte scale the per-voxel error rate, however low,
      compounds into a reconstruction that contains many incorrect
      neuron boundaries — exactly the boundaries the downstream
      science depends on. The structural form is familiar: the model
      is good enough to make the project tractable, and not good
      enough to deploy without a verification layer. The verification
      layer in this case is human: trained proofreaders work through
      the segmentation and correct it, neuron by neuron, with tools
      designed for the task.#cn()
    ],
    [
      The CIRCUIT program at APL trained cohorts of undergraduates
      to be that proofreading workforce. The program is documented
      across institutional news, program description, and the
      MICrONS program literature; CIRCUIT trainees and APL
      infrastructure (BossDB) together produced the human and
      computational substrate of the verification layer. The
      learning-engineering content is the human capability as the
      recovery mechanism for automation failure at the petabyte
      boundary: where the model fails, the trained human is the
      design decision that makes the system's output usable.#cn()
    ],
    [
      The honest evidentiary state is what the evidence-tier flag
      under the title encodes. The connectomics method, the
      automated-segmentation literature, and the BossDB
      infrastructure are documented in peer-reviewed connectomics
      publications. CIRCUIT's program *training outcomes* — did
      the cohorts reliably produce proofreading capability at the
      error rates and retention required, did the trainees
      transfer to other tasks, what is the program's measured
      effect on the downstream science — are documented in
      institutional news and program description rather than in
      peer-reviewed program evaluation. The case is teachable on
      the structural pattern; the operating outcomes are at the
      institutional-program-management tier and should be read at
      that tier. The COI under the title — research adjacency,
      home institution — makes the institutional-tier evidence
      claim auditable.#cn()
    ],
    [
      The frontier note the case carries is the most forward-looking
      idea from the pass-4 sweep. The human correction layer for
      generative and automated systems at scale is going to be a
      defining capability across an expanding number of domains —
      automated transcription, AI-generated code, model-extracted
      structured data, document segmentation, scientific imaging
      reconstruction. CIRCUIT is one instance of the pattern in
      neuroscience; the structural question — how to design,
      staff, train, and govern a human correction layer for the
      gap between what models produce and what is operationally
      usable — recurs and is not well-named in the existing
      curriculum. The frontier flag on this case is the case-grounded
      basis for proposing a sub-competency in this area, pairing
      with the broader v2 AI-delegation typology and the Domain 5
      *Delegation with revocation* CLO.#cn()
    ],
  ),
  beats: (
    "Automated EM segmentation at petabyte scale produces brain maps too large and too error-prone to deploy without verification",
    "CIRCUIT trains undergraduate cohorts as the proofreading workforce; APL's BossDB infrastructure stores and serves the data",
    "Human capability as the recovery mechanism for automation failure at the petabyte boundary — the design decision that makes the output usable",
    "Evidence-tier flag: connectomics method is peer-reviewed; CIRCUIT training-outcome evidence is institutional/program documentation",
    "Frontier sub-competency candidate: design of the human correction layer for generative/automated systems at scale",
  ),
  approaches: (
    during: (
      [Treat the human correction layer as a designed capability deliverable, not an emergent workforce: define the error rate to achieve, the verification protocol, the trainee qualification, and the tooling.],
      [Identify in advance which errors the automation will make at scale and design the correction tooling around those error classes — automation failure is structured, and the correction layer should be too.],
      [Carry the evidence-tier honesty: peer-reviewed sourcing for the method and infrastructure, institutional-program documentation for the program training outcomes, with the gap visible in the case rather than smoothed.],
    ),
    after: (
      [Commission peer-reviewed program-evaluation work on the training-outcome side so the institutional record can converge toward independent evidence over time, while the program is operating.],
      [Track the human correction layer across automation upgrades: as the model improves, what changes about the kind of correction the trainees do, the error classes, the qualification requirements?],
      [Carry the frontier note into the curriculum conversation: the design of the human correction layer for generative and automated systems at scale is a sub-competency the existing framework does not yet name, and CIRCUIT is one of several emerging instances.],
    ),
  ),
  references: (
    [MICrONS program literature (IARPA) — connectomics method and automated segmentation evidence base.],
    [APL BossDB documentation — petabyte-scale connectomics data infrastructure.],
    [CIRCUIT program documentation (JHU Hub, 2017 – present) — institutional/program description; the training-outcome evidence is at this tier and the evidence-tier flag is binding.],
    [Cervantes et al. (2023), ASEE Annual Conference — the paired peer-reviewed CIRCUIT case (Case 68).],
    [Wachter & Brynjolfsson (2023), _JAMA_ — generative AI verification framing, applicable across domains.],
  ),
  quote: [The recovery mechanism for automation failure is a designed human capability, not an emergent workforce.],
  quote-source: "Editors' synthesis of the CIRCUIT / MICrONS program record.",
  le-insight: [
    CIRCUIT / MICrONS is the frontier instance of designing the
    human correction layer for automated systems at scale. The
    connectomics method is peer-reviewed; the program training
    outcomes are institutional documentation, and the gap is
    rendered as the evidence-tier flag under the title. The
    forward-looking question the case names — how to design the
    human correction layer for generative and automated systems
    at scale — recurs across domains and is not well-named in
    the existing curriculum.
  ],
  lens-approach: [
    CIRCUIT proofreading is the human-correction-layer
    frontier case (induced 3.4; LENS D3/PT6) — Domain 3 for
    *Delegation with revocation*; Domain 4 for the evidence-
    tier split. Pair with Case 68 and Cases 20, 5, 189,
    3. COI binds.
  ],
  literature-items: (
    [MICrONS program literature — connectomics method base],
    [BossDB infrastructure documentation],
    [CIRCUIT program documentation — institutional tier],
  ),
  reflection-list: (
    [Identify a domain in your work where automation produces a primary output at a scale that exceeds manual review. What is the human correction layer's design — error classes targeted, verification protocol, trainee qualification, tooling — and which of these decisions are designed vs. emergent?],
    [Specify the peer-reviewed vs. institutional-evidence split for a human-correction-layer program you would propose. The connectomics method can be cited from the literature; the program training outcomes will not be. What evidence tier is honest for each layer?],
    [The case's frontier note — designing the human correction layer for generative/automated systems at scale — is a sub-competency the existing curriculum does not yet name. What instance from your domain (automated transcription, AI code, structured-data extraction, document segmentation) would be a paired case to anchor this sub-competency against?],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 7"),
)

// ---- Case 79 — kirkpatrick-chain-of-evidence-where ----
#case(
  number: 79,
  slug: "kirkpatrick-chain-of-evidence-where",
  title: "The Kirkpatrick Chain of Evidence — Where Corporate L&D Stops",
  year: "1959 – present",
  domains-list: ("corporate L&D", "training evaluation", "workforce development"),
  modes-code: "KN",
  impact: "Across a US corporate-training market sized in the >\$125B/year range, the dominant evaluation framework structurally collapses: most teams stop at Levels 1–2 (reaction + learning) and never measure Level 3 (behavior change) or Level 4 (business results) — measuring the variable that flatters the program",
  kind: "frontier",
  scale: "big",
  evidence-source: "practitioner",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "2.1",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4",
  summary: [
    Donald Kirkpatrick's four-level model — Reaction, Learning,
    Behavior, Results — has been the dominant corporate-training
    evaluation framework for sixty years, increasingly described as a
    "chain of evidence" from satisfaction through workplace behavior
    change to business outcomes. The documented systemic pattern is
    that most organizations stop at Levels 1 and 2. Level 3 (behavior
    change on the job) and Level 4 (business results) require data
    that the training organization typically cannot access:
    longitudinal performance traces, business-unit outcome metrics,
    line-manager observation. Satisfaction scores do not predict
    on-job performance, and knowledge retention does not guarantee
    workplace application. The case is the corporate-scale instance
    of the enthusiasm-evidence gap and a direct illustration of the
    revised "decision-grade evidence" framing in
    the v2 research backbone: the evidence most L&D decisions ride on is
    structurally sub-decision-grade. The evidence base is
    practice-synthesis: Devlin Peck, D2L, Valamis, and related
    evaluation-practice guides documenting the stop-at-L2 pattern,
    plus the Blume meta-analysis (Case 65) for the transfer half of
    the chain. The evidence-tier flag is rendered under the title;
    future validation will continue as the corporate-L&D evaluation
    literature consolidates.
  ],
  sections: (
    [
      In 1959 Donald Kirkpatrick proposed four levels at which a
      training program could be evaluated: Reaction (did learners
      like it), Learning (did they acquire the content), Behavior
      (did they apply it on the job), and Results (did business
      outcomes improve). The four levels became the dominant
      corporate-training evaluation framework and were later
      described as a "chain of evidence" — each level meant to
      provide the evidence for the next.#cn()
    ],
    [
      The documented systemic pattern in corporate L&D evaluation
      practice is that most organizations stop at Levels 1 and 2.
      Practice-literature synthesis across major evaluation-guidance
      sources (Devlin Peck, D2L, Valamis, and corporate L&D
      benchmarking studies) reports that Levels 3 and 4 are
      attempted by a minority of programs and reported reliably by
      fewer. The structural reason is that Level 3 (behavior change)
      requires longitudinal observation that the training
      organization cannot conduct, and Level 4 (results) requires
      business outcome data that often sits outside L&D's reach.#cn()
    ],
    [
      The consequence is a field that spends heavily on training —
      US organizations reported >\$125B/year on workplace training,
      per the ASTD figure cited in Blume et al. (Case 65) — while
      measuring mostly the variable that flatters the program.
      Satisfaction scores do not predict on-job performance;
      knowledge retention measured immediately after training does
      not guarantee workplace application. The chain of evidence is
      cited as the framework; in practice the chain is broken at
      the link between Level 2 and Level 3, and the decisions made
      on the available data are not decisions about whether
      training is producing capability change.#cn()
    ],
    [
      The evidence-tier flag rendered under the case title is
      load-bearing. The case is documented through
      evaluation-practice guides synthesizing the stop-at-L2
      pattern across many organizations rather than through a
      single peer-reviewed study of the phenomenon. The pattern is
      consistent across the sources and is the practitioner
      consensus, but the magnitudes vary by sector and the
      sectoral breakdown is in flux as the field consolidates its
      evaluation evidence. Future validation will continue as the
      empirical synthesis improves; the case is included with the
      flag because the pattern itself is teachable and the
      practitioner consensus is durable.#cn()
    ],
    [
      What the case teaches in pair with Blume (Case 65) is the
      structural form of the enthusiasm-evidence gap at corporate
      scale, and it is the case-grounded basis for the revised
      "decision-grade evidence" framing proposed in
      the v2 research backbone. The capability deliverable is an
      evaluation architecture that crosses the Level 2 / Level 3
      seam — by partnering with line management for behavior
      observation, by instrumenting the workplace tasks the
      training targets, and by reporting honestly what evidence is
      and is not available — rather than declaring the chain
      satisfied at the Level the training organization can
      control. Until that crossing happens, most corporate L&D
      decisions are made on structurally sub-decision-grade
      evidence, and the CLO *Judgment under inadequate
      evidence* is exactly the capability the practitioner needs.#cn()
    ],
  ),
  beats: (
    "Kirkpatrick four levels (Reaction / Learning / Behavior / Results) — dominant framework for sixty years; framed as 'chain of evidence'",
    "Practice-literature synthesis: most organizations stop at Levels 1–2; Levels 3 and 4 require data the training org typically can't access",
    "US corporate-training market sized >\$125B/year per ASTD; measurement concentrated on variable that flatters the program",
    "Evidence-tier flag: practice-synthesis, not single peer-reviewed study; pattern is consistent, magnitudes still consolidating",
    "Capability deliverable is an evaluation architecture that crosses the Level-2/Level-3 seam; pair with Blume (Case 65) for transfer",
  ),
  approaches: (
    during: (
      [Design the evaluation across the Level-2/Level-3 seam before the training is delivered: partner with line management for behavior observation, identify the workplace tasks the training targets, and instrument them.],
      [Specify in advance the on-job behavior and business outcome that would count as evidence the training worked, with a reporting cadence long enough for transfer effects to surface.],
      [Treat the practice-synthesis evidence base honestly: name the pattern, flag the tier, and do not present a stop-at-L2 outcome as if it were a Level-3 or Level-4 finding.],
    ),
    after: (
      [When Level 3 and Level 4 data are not available, say so plainly in the evaluation report rather than substituting Level 2 metrics; the CLO *Judgment under inadequate evidence* is what the practitioner needs to do well here.],
      [Track the work environment as a separate variable — Blume's meta-analysis (Case 65) names it as decisive — and report the training outcome conditional on environment, not as a property of the training alone.],
      [Use the structural pattern to argue for the evaluation architecture investment, not to abandon evaluation. The gap is a capability gap, not an argument against measurement.],
    ),
  ),
  references: (
    [Kirkpatrick (1959–1960), original four-level evaluation series in _Journal of the ASTD_; updated as Kirkpatrick & Kirkpatrick, _Evaluating Training Programs_ (3rd ed., 2006).],
    [Devlin Peck, "Kirkpatrick Model: A Guide to the Four Levels of Training Evaluation" — synthesis of the stop-at-L2 pattern in corporate practice.],
    [D2L, "Kirkpatrick's 4 Levels of Training Evaluation," practitioner guide documenting the same pattern.],
    [Valamis, "Kirkpatrick Model" practitioner guide on evaluation-practice gaps.],
    [Blume, Ford, Baldwin, & Huang (2010), "Transfer of Training: A Meta-Analytic Review," _Journal of Management_ 36(4):1065–1105 — the paired peer-reviewed case (113).],
  ),
  quote: [The chain of evidence is cited as a framework. In practice it breaks at the link between Level 2 and Level 3, and the decisions made on the available data are not decisions about capability.],
  quote-source: "Editors' synthesis of the Kirkpatrick model and corporate L&D evaluation practice.",
  le-insight: [
    The Kirkpatrick stop-at-L2 pattern is the corporate-scale
    instance of the enthusiasm-evidence gap and the direct
    illustration of the revised "decision-grade evidence"
    point: the evidence most L&D decisions ride on is
    structurally sub-decision-grade. Evidence base is
    practice-synthesis tier; the pattern is consistent across
    sources, the magnitudes still consolidating; future
    validation will continue.
  ],
  lens-approach: [
    Kirkpatrick is the corporate-L&D evaluation case
    (induced 2.1; LENS D4/PT5). LENS uses it in Domain 4
    (Test and Evaluation) for the CLO *Judgment under
    inadequate evidence* — the practitioner must decide well
    on structurally sub-decision-grade evidence — and in
    Domain 5 (Navigating Sociotechnical Constraints) for the
    Level-2/Level-3 seam that the training organization
    cannot cross alone. Direct pair with Case 65 (Blume
    transfer meta-analysis) for the workplace-environment
    half of the chain.
  ],
  literature-items: (
    [Kirkpatrick & Kirkpatrick (2006), _Evaluating Training Programs_],
    [Devlin Peck, D2L, Valamis practitioner guides — stop-at-L2 synthesis],
    [Blume et al. (2010), _Journal of Management_ — the paired peer-reviewed case],
  ),
  reflection-list: (
    [Identify a recent corporate training program in your organization. At which Kirkpatrick level did evaluation stop? What would the Level 3 and Level 4 measurement have required, and who would have had to provide the data?],
    [Specify the evaluation architecture you would build to cross the Level-2/Level-3 seam: which on-job behavior, which business outcome, on what cadence, in partnership with which line-management role.],
    [The case is practice-synthesis tier. What is the minimum peer-reviewed or program-evaluation evidence you would require before relying on the stop-at-L2 pattern to justify an evaluation-architecture investment in your context?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 80 — georgia-state-university-predictive ----
#case(
  number: 80,
  slug: "georgia-state-university-predictive",
  title: "Georgia State University Predictive Analytics",
  year: "2012 – present",
  domains-list: ("education",),
  modes-code: "TK",
  impact: "Six-year graduation rate 32% → 54%; equity gaps in graduation eliminated; 2,000+ more graduates per year",
  diagram: dgm.dgm-gsu,
  kind: "intervention",
  summary: [
    Georgia State University built a predictive-analytics advising system
    that tracks some 800 risk factors per student and triggers proactive
    outreach when early warning signs appear. Crucially, it was designed
    with equity as a primary constraint — the explicit goal was to
    eliminate, not reproduce, graduation gaps — and the alerts prompt human
    advisors rather than making automated decisions. The six-year
    graduation rate rose from 32% to 54%; Black and Pell-eligible students
    now graduate at the same rate as their peers, and GSU produces roughly
    2,000 more graduates a year. The difference from the algorithmic-bias
    cases (35–37) is design: GSU built equity in from the start, used
    predictions to trigger more human support rather than gatekeeping, and
    tracked outcomes by demographic group as a primary metric.
  ],
  sections: (
    // -- Background --
    [
      Georgia State was a regional commuter university where only about a
      third of students finished in six years, with large gaps by race and
      income. Like many institutions it had predictive data but such
      systems, where they existed elsewhere, were typically used for triage
      or gatekeeping — risking the reproduction of existing inequities
      rather than their repair. A model that flags at-risk students can just
      as easily steer them away as toward help; the same prediction serves
      opposite ends depending on what the institution decides to do with it.#cn()
    ],
    // -- The Intervention --
    [
      Beginning in 2012, GSU deployed a predictive-analytics advising
      system that monitors roughly 800 behavioral and academic risk factors
      per student daily and fires an alert to an advisor when warning signs
      — a missed assignment, a poor grade in a gateway course — appear. The
      system was built with equity as a primary design constraint, with the
      explicit aim of closing graduation gaps. Daily monitoring meant the
      alert fired while there was still time to act — a slipping student was
      caught at the missed assignment rather than at the failed semester,
      when intervention could still change the outcome.#cn()
    ],
    // -- How It Worked --
    [
      The load-bearing design choice was the human-loop architecture:
      alerts trigger proactive advising — a phone call, a meeting, a
      financial-aid check — rather than automated decisions. Predictions
      are used to deliver more support to at-risk students, not to gatekeep
      them out. Human judgment stays in the loop, and the model functions
      as decision support rather than decision-maker. Routing every alert
      through an advisor rather than an automated action is what kept the
      prediction in service of the student: the model identified who needed
      attention, and a person decided what that attention should be.#cn()
    ],
    // -- The Evidence --
    [
      GSU's six-year graduation rate rose from 32% to 54%, and the
      institution now produces some 2,000 additional graduates a year. The
      graduation rate for Black students rose to match the overall rate,
      and Pell-eligible students graduate at the same rate as non-Pell
      students — the equity gap was eliminated rather than merely narrowed.
      Eliminating the gap rather than narrowing it is the decisive result:
      the overall rate rose while the disparities by race and income closed,
      so the gain did not come at the expense of the students the system was
      most at risk of leaving behind.#cn()
    ],
    // -- What Transferred --
    [
      GSU is the positive counterpart to the algorithmic-harm failures
      earlier in this part and in Part VII (the A-Level algorithm, Case 49;
      Robodebt, Case 191; educational predictive bias, Case 46). The same technical
      capability — a predictive model — produced an equity gain rather than
      an equity harm because of how it was framed and governed. The case is
      the strongest evidence that construct definition and human-loop
      architecture, not the model itself, determine whether prediction
      helps or harms. Holding the technology constant and varying only the
      design constraint and governance is what isolates the lesson: the same
      predictive capability that harmed in those cases helped here, so the
      framing and the human loop, not the model, are where intent lives.#cn()
    ],
  ),
  beats: (
    "GSU graduated only a third of students in six years, with large race and income gaps",
    "GSU deployed daily monitoring of 800 risk factors with equity as a primary design constraint",
    "Alerts route through advisors as decision support, delivering proactive outreach rather than gatekeeping",
    "Graduation rose 32 to 54 percent and the equity gap was eliminated rather than narrowed",
    "Construct definition and human-loop architecture, not the model itself, determine whether prediction helps",
  ),
  references: (
    [Renick, T. & Strom, A. (2020) on GSU's advising transformation — the system design and outcomes.],
    [Georgia State University institutional research and Strategic Plan reports — graduation-rate and equity data.],
    [_New York Times_, "How Colleges Know You're Not Finishing" (2018) — the 800-factor advising model.],
    [EDUCAUSE Review on GSU predictive advising — the human-loop architecture.],
    [Complete College America, Game Changers documentation — dissemination of the model.],
  ),
  quote: [Predictions trigger support, not gatekeeping.],
  quote-source: "Editors' synthesis of the GSU advising model, drawn from Renick & Strom (2020) and New York Times coverage (2018)",
  le-insight: [
    GSU is the positive counterpart to A-Level (35), Robodebt (36), and
    educational algorithmic bias (37). The same technical capability —
    a predictive model — was deployed under a different design
    constraint and produced an equity outcome rather than an equity
    harm. The case is the strongest available evidence that the
    *construct definition* and the *human-loop architecture* determine
    whether a predictive model produces good or harm, not the model
    itself.
  ],
  lens-approach: [
    LENS treats GSU as the canonical positive case for predictive
    analytics in education. LEN 4 examines the measurement architecture
    that made equity a primary outcome. LEN 7 examines the governance
    structure that kept the system as decision support rather than
    automated decision. LEN 1 uses it as a problem-framing exemplar.
  ],
  literature-items: (
    [Renick & Strom (2020) on GSU's advising transformation],
    [Mayer-Schönberger & Cukier, _Learning with Big Data_ (2014)],
    [Bowen, Chingos & McPherson, _Crossing the Finish Line_ (2009)],
  ),
  reflection-list: (
    [What is the difference between GSU's predictive analytics and the algorithmic-bias failure cases in Parts II and VII (e.g., Cases 46, 49, 187, 191)? Be specific about what makes the GSU implementation work.],
    [Design the equity-as-primary-constraint version of a predictive system in your domain. What would you measure first?],
    [GSU used predictions to deliver more support rather than to gatekeep, with an advisor between the alert and the action. Identify a predictive system in your domain and specify the human-loop architecture that would keep it serving the people it flags rather than screening them out.],
  ),
  approaches: (
    during: (
      [Set equity as a primary design constraint from the start — the explicit aim of closing gaps — rather than discovering disparities after deployment.],
      [Build a human-loop architecture so alerts trigger proactive support routed through an advisor, with the model as decision support and a person deciding the action.],
      [Tune the monitoring to fire early — at the missed assignment, not the failed semester — so the intervention reaches the student while it can still change the outcome.],
    ),
    after: (
      [Track outcomes by demographic group as a primary metric, so the system is judged on whether it closes gaps rather than merely raises the average.],
      [Confirm the overall gain does not come at the expense of the most at-risk students — eliminating the gap, not just narrowing it, is the test that the design held.],
      [Keep human judgment in the loop as the system scales, so prediction continues to deliver more support rather than drifting into automated gatekeeping.],
    ),
  ),
  courses: ("LEN 1", "LEN 4", "LEN 7"),
  scale: "big",
  induced-anchor: "8.3",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4",
)

// ---- Case 81 — open-university-ethical-use-of-student ----
#case(
  number: 81,
  slug: "open-university-ethical-use-of-student",
  title: "Open University 'Ethical Use of Student Data' and OU Analyse",
  year: "2014 – 2025",
  domains-list: ("higher education (UK)", "learning analytics", "data governance"),
  modes-code: "GKN",
  impact: "The first institutional 'Ethical Use of Student Data' policy in higher education (2014); an eight-principle consent architecture co-designed with students that unblocked predictive analytics on hundreds of thousands of learners and supported documented intervention work",
  kind: "intervention",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "5.1",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4, CLO-5",
  summary: [
    Predictive learning analytics at the Open University faced a real
    governance objection: large-scale processing of student data for
    intervention, with pre-GDPR scrutiny and credible surveillance
    concerns. The OU's response in 2014 was to author the first
    institutional "Ethical Use of Student Data for Learning Analytics"
    policy in higher education — eight principles built through wide
    stakeholder consultation including students, framing students as
    participants rather than data subjects. The consent-and-
    transparency architecture was the enabling engineering, not a
    compliance afterthought; the deployment followed because trust was
    established first. OU Analyse — a weekly machine-learning at-risk
    prediction system — operated on top of that architecture, and the
    Analytics4Action framework (Rienties et al., _JIME_ 2016) paired
    predictions with tutor judgment and documented interventions on
    modules of 3,000+ students. A 2019 evaluation (Herodotou et al.,
    _BJET_) across 559 teachers and 14,000+ students examined how
    degree of system usage related to outcomes. The honest open question, raised by the OU's own
    researchers, is whether predictive analytics genuinely serves
    students versus surveils them — a tension that remains contested,
    and the policy has since been superseded by a broader Data Ethics
    Policy. Governance as a living artifact, not a solved problem.
  ],
  sections: (
    [
      The Open University runs higher education at distance scale —
      cohorts of tens of thousands across a single module, with no
      classroom signal that a student is falling behind. Predictive
      learning analytics on the engagement and assessment trace can,
      in principle, surface that signal in time for a tutor to act.
      The governance objection in the early 2010s was not abstract:
      the data volumes were large, the scrutiny pre-GDPR but
      tightening, and the surveillance concern — that institutional
      analytics treat students as objects rather than partners — was
      credible enough that several universities had paused similar
      programs.#cn()
    ],
    [
      The OU's intervention in 2014 was to author the "Ethical Use of
      Student Data for Learning Analytics" policy, the first such
      policy in higher education. The development process was the
      teaching point as much as the document was: wide stakeholder
      consultation including the Students Union, eight principles
      that framed students as participants in the analytics rather
      than its subjects, and a published artifact the institution
      could be held to. The policy was the *enabling engineering*
      for analytics deployment, not a compliance overlay applied to
      a deployment that was happening anyway.#cn()
    ],
    [
      OU Analyse — a weekly machine-learning at-risk prediction system —
      operated on top of that architecture. The Analytics4Action
      framework (Herodotou et al., _JIME_ 2016) paired the prediction
      with tutor judgment rather than treating the model output as a
      decision: tutors reviewed flagged students, made the
      intervention call, and documented what action they took. The
      framework was evaluated on modules of more than 3,000 students.
      A 2019 evaluation (Herodotou et al., _BJET_) across 559 teachers
      and 14,000+ students examined how degree of teacher engagement
      with the system
      related to outcomes; the pattern was that engagement, not the
      raw prediction, was what tracked with intervention success.#cn()
    ],
    [
      The honest open question, raised by the OU's own researchers,
      is whether predictive learning analytics genuinely serves
      students versus surveils them. The OU's policy did not foreclose
      that question; it made the deployment legible enough to argue
      about, and it superseded the 2014 policy with a broader Data
      Ethics Policy as practice and the scrutiny regime evolved.
      Governance as a living artifact is the case. The capability
      deliverable is not a final answer to the surveillance
      question — there isn't one — but a consent-and-transparency
      architecture that lets the institution decide and the students
      participate in the deciding.#cn()
    ],
    [
      What OU teaches in the pair (Cases 81 + 80) is the
      governance-objection diagnostic: when the objection is about
      trust and accountability — as it was at the OU — good
      design can dissolve it, and the deployment can proceed under
      a credibly co-authored consent architecture. The pair's
      contrast case is the Dutch SyRI (Case 189), where the
      governance objection was correct: the system was both
      rights-violating and operationally ineffective, and the
      District Court of The Hague stopped it on Article 8 ECHR
      grounds. The diagnostic capability is to tell those two
      situations apart before deployment, not after.
    ],
  ),
  beats: (
    "Predictive learning analytics at distance-scale; the governance objection is credible, not abstract",
    "OU authors first higher-education 'Ethical Use of Student Data' policy in 2014 — eight principles, co-designed with students",
    "OU Analyse operates on top of the consent architecture; Analytics4Action pairs predictions with tutor judgment",
    "2019 evaluation (Herodotou et al., BJET): 559 teachers, 14,000+ students; teacher engagement, not raw prediction, is what tracks with success",
    "Governance objection was about trust — dissolvable by design; pair with SyRI where the objection was correct",
  ),
  approaches: (
    during: (
      [Build the consent-and-transparency architecture as enabling engineering, not as compliance afterthought; the document is the artifact the deployment can be held to.],
      [Co-author the policy with the people the analytics will be applied to — students or operators — including their voice in the principles before the system is built.],
      [Pair predictions with human judgment by design: the prediction surfaces a candidate; the tutor or operator makes the decision and documents what they did.],
    ),
    after: (
      [Evaluate the system on engagement and intervention quality, not adoption alone; engagement is what tracks with student outcome at the OU.],
      [Treat the governance policy as a living artifact: when the scrutiny regime or practice evolves, supersede the policy openly rather than letting it fall into disuse.],
      [Keep the open question — does this genuinely serve students or surveil them? — visible in the institutional record; the legitimacy of the program depends on the question staying askable.],
    ),
  ),
  references: (
    [Slade & Prinsloo (2013), "Learning Analytics: Ethical Issues and Dilemmas," _American Behavioral Scientist_ 57(10):1510–1529, doi:10.1177/0002764213479366.],
    [Open University (2014), "Ethical Use of Student Data for Learning Analytics" — first institutional policy of its kind in higher education.],
    [Rienties, Boroowa, Cross, Kubiak, Mayles, & Murphy (2016), "Analytics4Action Evaluation Framework: A Review of Evidence-Based Learning Analytics Interventions at the Open University UK," _Journal of Interactive Media in Education_ 2016(1):2, doi:10.5334/jime.394.],
    [Herodotou, Hlosta, Boroowa, Rienties, Zdrahal, & Mangafa (2019), "Empowering online teachers through predictive learning analytics," _British Journal of Educational Technology_ 50(6):3064–3079, doi:10.1111/bjet.12853 — OU Analyse evaluation across 559 teachers (189 with OUA access) and 14,000+ students in 15 undergraduate courses; average-use teachers benefited students most.],
  ),
  quote: [The consent architecture is the enabling engineering. The deployment is what follows once trust is established.],
  quote-source: "Editors' synthesis of the OU 2014 policy and Slade & Prinsloo (2013).",
  le-insight: [
    The Open University case is the cleanest instance in the
    sweep of a governance objection dissolved by design. The
    2014 ethical-use policy was the enabling engineering; OU
    Analyse and Analytics4Action operated on top of it; the
    2019 evaluation showed teacher engagement tracked with
    intervention success. The open question — serve vs.
    surveil — remains contested, and the policy is a living
    artifact, not a solved problem.
  ],
  lens-approach: [
    OU is the positive Domain 4 / Problem Type 5 stakeholder
    governance case (induced 5.1; LENS D4/PT5). LENS uses it
    in Domain 5 (Navigating Sociotechnical Constraints) for
    the governance-objection diagnostic — the
    dissolvable-objection side — and in Domain 4 (Test and
    Evaluation) for the engagement-tracked-outcome evidence.
    Direct pair with Case 189 (Dutch SyRI), where the
    governance objection was correct and design could not
    have dissolved it. Adjacent to Case 5 (Epic Sepsis
    Model) as the inverse pattern: OU built consent before
    deployment; Epic deployed without validation, and the
    objection that should have been raised wasn't.
  ],
  literature-items: (
    [Slade & Prinsloo (2013), _American Behavioral Scientist_],
    [Herodotou et al. (2017), _JIME_ — Analytics4Action],
    [Open University 2014 ethical-use policy],
  ),
  reflection-list: (
    [Identify a deployment in your domain that faced a governance objection about trust and accountability. Was the objection dissolved by design — a consent or transparency architecture co-authored with the affected parties — or was it managed as compliance overlay? What did the difference cost?],
    [Specify the engagement metric you would track, separately from adoption, to know whether your deployment is producing intervention quality. At the OU it was teacher engagement; what is the analog in your context?],
    [The OU's open question — does predictive analytics genuinely serve students or surveil them — remains contested, and the policy has been superseded. What is the institutional discipline that keeps the question visible and the policy a living artifact rather than a one-time document?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 82 — mmala-a-maturity-model-for-responsible ----
#case(
  number: 82,
  slug: "mmala-a-maturity-model-for-responsible",
  title: "MMALA — A Maturity Model for Responsible Learning-Analytics Adoption (Brazil)",
  year: "2024",
  domains-list: ("higher education (Brazil)", "learning analytics", "institutional governance"),
  modes-code: "KN",
  impact: "MMALA is a maturity model spanning infrastructure, human resources, ethics, and pedagogy; expert evaluation rated it comprehensive and suitable; three-institution validation exercise in Brazilian universities found it could outline essential practices and support self-assessment for scaling — instrument for responsible adoption, downstream learning outcome open",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "5.4",
  lens-anchor: "D4/PT4",
  clo-anchor: "CLO-4, CLO-5",
  summary: [
    Freitas, Mello, Gasevic, Costa, and Andrade (_Journal of
    Learning Analytics_, 2024) developed and validated MMALA — a
    Maturity Model for Adopting Learning Analytics — designed to
    let an institution self-assess its readiness across the four
    dimensions responsible adoption actually depends on:
    infrastructure (technical capability), human resources
    (analytical and pedagogical staffing), ethics (governance and
    consent architecture), and pedagogy (integration with learning
    design). Experts evaluated the model as comprehensive and
    suitable; a three-institution validation exercise at Brazilian
    universities found that MMALA could outline essential practices
    and support self-assessment for scaling learning analytics
    responsibly. The case is one of the corpus's clearest worked
    examples of governance-as-instrument: a structured artifact an
    institution can use to convert the abstract goal "we should
    adopt learning analytics responsibly" into specific
    assessments of where its current capability sits and what it
    has to build next. The honest limit preserved verbatim: the
    instrument is validated by expert opinion and a
    three-institution exercise, not by longitudinal outcomes of
    institutions that used it to adopt LA — it is an instrument
    for responsible adoption, with the downstream effect on
    student learning still to be measured. The case pairs with the
    OU policy (Case 81) and the LALA CANVAS (Case 91) as the
    institutional-instrument layer of the non-US LA governance
    set.
  ],
  sections: (
    [
      Institutional adoption of learning analytics typically
      collapses into one of two patterns: a top-down deployment
      that meets resistance because the institution is not yet
      ready (governance is thin, staff are not analytically
      trained, the pedagogical integration was not designed), or a
      stalled aspiration where leadership wants responsible
      adoption but does not have a structured way to know what
      "ready" means. MMALA was built to address the second
      pattern: to give an institution a structured self-assessment
      instrument across the dimensions readiness actually has, so
      the adoption decision becomes specific rather than
      aspirational.#cn()
    ],
    [
      The instrument is dimensional. Infrastructure asks whether
      the technical capability — data pipelines, secure storage,
      analytical platforms — is in place at the level the planned
      adoption requires. Human resources asks whether the
      institution has the analytical and pedagogical staffing the
      tools will need. Ethics asks whether the governance and
      consent architecture has been built. Pedagogy asks whether
      the analytics integrate with the institution's learning
      design, or whether they would be bolted on as a separate
      track. Each dimension is resolved into maturity levels so
      the self-assessment yields a structured picture of which
      dimensions are ready and which are not, rather than a
      single overall readiness score.#cn()
    ],
    [
      The Freitas et al. validation has two halves. The first is
      expert evaluation: subject-matter experts in learning
      analytics, institutional research, and educational
      technology evaluated the instrument as comprehensive
      (covering the dimensions adoption actually depends on) and
      suitable (resolved at the right level for institutional
      self-assessment). The second is a three-institution
      validation exercise at Brazilian universities, which found
      that MMALA could outline essential practices and support
      self-assessment for scaling. The instrument was usable in
      practice and produced actionable structure for the
      institutions that piloted it.#cn()
    ],
    [
      The honest limit survives verbatim. MMALA is validated by
      expert opinion and a three-institution exercise, not by
      longitudinal outcomes of institutions that used it to adopt
      LA. The instrument's claim is to be a suitable structure
      for responsible adoption — what the published evidence
      supports — and the downstream effect on student learning is
      the next study, not this one. The case is teachable on the
      instrument and the validation method; it is honest that the
      causal chain from "institution adopted via MMALA" to
      "students learned more" is not yet closed by evidence.#cn()
    ],
    [
      In the non-US LA governance set — OU (Case 81, policy and
      operating system), LALA (Case 91, participatory adoption
      framework), African data privacy (Case 89, cross-regime
      seam), Norway (Case 92, national commission), and MMALA
      (this case, institutional maturity model) — the cases
      together teach the level structure of governance for the
      same underlying capability. MMALA's specific contribution
      is the institutional-instrument layer: when a single
      institution is the unit of adoption and the governance
      artifact has to be usable by the institution itself, the
      maturity model is the form. The pentad demonstrates that
      governance is producible at multiple levels for the same
      capability, and the choice of level is itself a
      governance decision.
    ],
  ),
  beats: (
    "MMALA (Freitas et al. 2024, JLA): maturity model for adopting LA across infrastructure, human resources, ethics, pedagogy",
    "Each dimension resolved into maturity levels — structured self-assessment, not a single overall readiness score",
    "Validation: expert evaluation (comprehensive, suitable) + three-institution exercise at Brazilian universities (usable, actionable)",
    "Honest limit: expert opinion + three-institution validation; not yet longitudinal outcomes of institutions that used MMALA to adopt LA",
    "Institutional-instrument layer of the non-US LA governance set — pair with OU, LALA, Norway, African data privacy",
  ),
  approaches: (
    during: (
      [Resolve readiness into the dimensions adoption actually depends on — infrastructure, human resources, ethics, pedagogy — rather than a single overall score; the per-dimension structure is what makes the instrument actionable.],
      [Build maturity levels within each dimension so the self-assessment yields a structured next-step picture rather than a binary ready / not-ready.],
      [Validate the instrument in two layers: expert evaluation for comprehensiveness and suitability, and institutional pilot for usability — both are necessary, and the case carries both.],
    ),
    after: (
      [Report the evidence at its tier: expert opinion and three-institution validation establish the instrument; longitudinal outcome evidence on institutions that used it is the next study, and the case names the gap rather than glossing it.],
      [Commission follow-up studies on the institutions that pilot MMALA to convert the instrument-validation evidence into adoption-outcome evidence over time.],
      [Carry the level-of-governance lesson into the broader v2 governance set: institutional-instrument, multi-country participatory, national commission, and judicial review are different governance modes for the same capability; MMALA is the institutional-instrument instance.],
    ),
  ),
  references: (
    [Freitas, Mello, Gasevic, Costa, & Andrade (2024), "MMALA: Developing and Evaluating a Maturity Model for Adopting Learning Analytics," _Journal of Learning Analytics_ 11(1):67–86.],
    [Open University Ethical Use of Student Data policy (2014) — institutional-policy companion (Case 81).],
    [Hilliger et al. (2020), _Internet and Higher Education_ — LALA participatory adoption companion (Case 91).],
    [Norwegian Expert Commission on Learning Analytics, final NOU (2023) — national-scale companion (Case 92).],
  ),
  quote: [The instrument converts "we should adopt responsibly" into a structured per-dimension self-assessment. The instrument is validated; the downstream learning outcome is the next study.],
  quote-source: "Editors' synthesis of Freitas et al. (2024).",
  le-insight: [
    MMALA is the institutional-instrument instance of governance
    for learning-analytics adoption: a structured maturity model
    across infrastructure, human resources, ethics, and
    pedagogy. The validation evidence — expert evaluation and
    three-institution pilot — is what the case claims; the
    downstream effect on student learning is the next study, and
    the case is honest about that gap.
  ],
  lens-approach: [
    MMALA is the institutional-maturity-model case
    (induced 5.4; LENS D4/PT4). LENS uses it in Domain 4 (Test
    and Evaluation) for the structured self-assessment
    instrument and the two-layer validation discipline; in
    Domain 5 (Navigating Sociotechnical Constraints) for the
    governance-as-instrument framing; and on the CLO *Judgment under inadequate evidence* for the
    instrument-validation-vs-outcome-validation tier
    distinction. Pair with Cases 81, 91, 89, 92 as the
    non-US LA governance pentad; MMALA is the
    institutional-instrument layer.
  ],
  literature-items: (
    [Freitas et al. (2024), _Journal of Learning Analytics_],
    [Open University Ethical Use of Student Data policy (2014)],
    [Hilliger et al. (2020), _Internet and Higher Education_],
  ),
  reflection-list: (
    [Identify a capability your institution is considering adopting where readiness is currently discussed as a single overall question. What are the dimensions readiness actually has, and what maturity levels within each dimension would yield a structured next-step picture rather than a binary judgment?],
    [Specify the two-layer validation you would build for the instrument: expert evaluation for comprehensiveness and suitability, and institutional pilot for usability. Where would each layer be at risk of being skipped, and what would that skip cost the instrument's credibility?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 83 — brinkerhoff-success-case-method-tails ----
#case(
  number: 83,
  slug: "brinkerhoff-success-case-method-tails",
  title: "Brinkerhoff Success Case Method — Tails as the Evaluation Instrument",
  year: "2005 – present",
  domains-list: ("corporate L&D", "training evaluation", "workforce development"),
  modes-code: "KN",
  impact: "When ROI-style evaluation of corporate training is intractable, Brinkerhoff's Success Case Method samples the tails of the outcome distribution — the highest- and lowest-impact participants — and reconstructs the system conditions that made the program work for some and fail for others; deployed at Cargill, Ford, Merck, World Bank, ICRC",
  kind: "intervention",
  scale: "small",
  evidence-source: "practitioner",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "2.1",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4, CLO-2",
  summary: [
    The Success Case Method (SCM), introduced by Robert Brinkerhoff
    in 2005, deliberately samples the tails of a training program's
    outcome distribution. Instead of attempting to derive an
    average effect that flatters most programs and gives L&D
    nothing actionable, SCM identifies the highest- and
    lowest-impact participants, studies them in detail, and
    reconstructs the system conditions that made the program work
    for some and fail for others. The method's argument — and
    the one that places it inside the LENS framework — is that
    extreme cases reveal whether the program ever produces
    meaningful work-performance change and what the surrounding
    system has to provide for transfer to happen. The method is
    peer-reviewed in *Advances in Developing Human Resources*;
    the corporate deployments at Cargill, Ford, Merck, World
    Bank, and the International Committee of the Red Cross are
    documented in practitioner channels — case-study writeups,
    conference talks, vendor whitepapers — rather than in
    peer-reviewed evaluation literature. SCM is the operational
    answer to the chain-of-evidence problem named in Case 79
    (Kirkpatrick): the practitioner instrument that crosses the
    Level-2 / Level-3 seam by sampling where the evidence is
    most informative. Evidence-tier flag is practice-synthesis;
    future validation will continue as more firms publish their
    SCM outcome data.
  ],
  sections: (
    [
      Corporate L&D evaluation faces a structural problem the
      Kirkpatrick chain-of-evidence pattern names (Case 79):
      Level 3 (behavior change on the job) and Level 4 (business
      results) require longitudinal data the training organization
      typically cannot access. Average-effect statistics across
      whole programs flatter most programs, because the
      distribution of training outcomes is heavily skewed — a
      minority of participants produce most of the
      work-performance change, and the average buries that
      signal under the participants for whom the program
      produced nothing.#cn()
    ],
    [
      Robert Brinkerhoff's 2005 *Advances in Developing Human
      Resources* paper proposes a different sampling logic: do
      not estimate the average; identify the participants in the
      tails of the outcome distribution and study them in detail.
      The Success Case Method identifies the highest-impact
      participants (where did the program work, and what
      conditions made the work-performance change possible), the
      lowest-impact participants (where did the program fail,
      and what conditions were missing), and reconstructs the
      system around each.#cn()
    ],
    [
      The method's argument is that the tails carry the
      decision-grade information. A program that produces
      meaningful work-performance change for any participants
      proves it *can* work; the conditions that distinguish the
      success cases from the failure cases name what the
      surrounding system has to provide for transfer. The
      argument is the practical complement of the Blume
      meta-analytic finding (Case 65) that work environment is
      the decisive transfer variable: SCM operationalizes the
      finding by sampling where the variable's effects are most
      visible.#cn()
    ],
    [
      The Brinkerhoff Evaluation Institute lists deployments at
      Cargill, Ford, Merck, the World Bank, and the
      International Committee of the Red Cross. These
      deployments are documented in case-study writeups,
      conference talks, and vendor whitepapers, not in
      peer-reviewed program evaluations. The evidence-tier flag
      is therefore practice-synthesis: the method itself is
      peer-reviewed, but the per-firm impact data on which the
      corporate adoption story rests live in practitioner
      channels. The honest framing in print is that the
      methodological pattern is teachable and durable, but the
      per-firm effect sizes are not independently audited.#cn()
    ],
    [
      The LENS teaching point pairs SCM with the chain-of-evidence
      problem from Case 79 and the meta-analytic transfer finding
      from Case 65. SCM is the operational instrument that
      crosses the Level-2 / Level-3 seam by sampling where the
      evidence is most informative — and it exercises the CLO *Judgment under inadequate evidence* directly, because the
      method asks practitioners to act on detailed case
      reconstructions rather than wait for population-scale
      causal estimates that corporate L&D often cannot produce.
      Future validation will continue as more firms publish
      their SCM outcome data.
    ],
  ),
  beats: (
    "Corporate L&D evaluation problem: Levels 3 and 4 require data the training org cannot access; average effects flatter most programs (Case 79)",
    "SCM: sample the highest- and lowest-impact participants; study in detail; reconstruct the system conditions around each",
    "Tails carry decision-grade information — success cases prove the program *can* work; failure cases name what the surrounding system has to provide for transfer",
    "Deployed at Cargill, Ford, Merck, World Bank, ICRC; method peer-reviewed; per-firm impact data live in practitioner channels",
    "Operational complement to Blume's environment-as-decisive-variable finding (Case 65); exercises NEW CLO Judgment under inadequate evidence",
  ),
  approaches: (
    during: (
      [Before the program is delivered, plan the SCM sampling: define the outcome metric (specific work-performance change), identify how the success and failure cases will be surfaced (manager nominations, performance data, structured interviews), and pre-commit to the sampling logic.],
      [Structure the success-case and failure-case interviews around the system conditions Blume's meta-analysis (Case 65) names as decisive — supervisor support, peer support, practice opportunity, environment — so the reconstruction is theory-grounded, not anecdote-grounded.],
      [Report the tails honestly: the success cases are existence proofs the program *can* work; the failure cases are evidence of what the surrounding system did not provide. Neither is a population effect size.],
    ),
    after: (
      [Translate the tail evidence into a redesign of the surrounding system — supervisor briefings, peer-support structures, on-job practice opportunity — rather than into a redesign of the training event alone. Pair with Case 70 (HILS).],
      [Use the CLO *Judgment under inadequate evidence*: act on the case-reconstruction evidence the method produces while being explicit that it is not a population causal estimate; document the uncertainty.],
      [Carry the practice-synthesis flag honestly in any program documentation citing SCM corporate deployments — the method is peer-reviewed, but the per-firm effect sizes are not.],
    ),
  ),
  references: (
    [Brinkerhoff, R. O. (2005), "The Success Case Method: A Strategic Evaluation Approach to Increasing the Value and Effect of Training," _Advances in Developing Human Resources_ 7(1):86–101, doi:10.1177/1523422304272172.],
    [Brinkerhoff Evaluation Institute deployment list — Cargill, Ford, Merck, World Bank, International Committee of the Red Cross — practitioner channel.],
    [Kirkpatrick & Kirkpatrick (2006), _Evaluating Training Programs_ — the chain-of-evidence framework SCM operationalizes (paired Case 79).],
    [Blume, Ford, Baldwin, & Huang (2010), _Journal of Management_ 36(4):1065–1105 — the meta-analytic environment-as-decisive finding SCM samples around (paired Case 65).],
  ),
  quote: [The tails carry the decision-grade information. The average flatters the program.],
  quote-source: "Editors' synthesis of Brinkerhoff (2005) and the corporate SCM deployments.",
  le-insight: [
    SCM is the practitioner instrument that operationalizes
    Blume's environment-as-decisive finding (Case 65) by
    sampling the tails of the outcome distribution. The
    method is peer-reviewed; the per-firm impact data at
    Cargill, Ford, Merck, World Bank, ICRC live in
    practitioner channels. Evidence-tier flag is
    practice-synthesis; future validation will continue as
    more firms publish.
  ],
  lens-approach: [
    SCM is the corporate-L&D tail-sampling case (induced 2.1;
    LENS D4/PT5). LENS uses it in Domain 4 (Test and
    Evaluation) for the CLO *Judgment under inadequate
    evidence* — the method asks practitioners to act on
    case-reconstruction evidence rather than population
    estimates — and in Domain 2 (Iterative Development) by
    way of the evaluation-feedback loop SCM enables. Pairs
    with Case 70 (HILS) for the redesign of the surrounding
    work environment.
  ],
  literature-items: (
    [Brinkerhoff (2005), _Advances in Developing Human Resources_],
    [Brinkerhoff Evaluation Institute deployment writeups],
    [Kirkpatrick (Case 79) and Blume (Case 65) as paired references],
  ),
  reflection-list: (
    [Identify a recent training program in your organization. Define how you would identify the highest- and lowest-impact participants and what structured interview you would conduct with each to reconstruct the system conditions around them.],
    [Map the SCM tails to the Blume meta-analytic variables (Case 65): supervisor support, peer support, practice opportunity, environment. What pattern would the tails have to show for you to redesign the surrounding system rather than the training event itself?],
    [The corporate SCM deployments at Cargill, Ford, Merck, World Bank, ICRC are documented in practitioner channels. What additional evidence — independent program audit, peer-reviewed evaluation, cross-firm comparison — would you require before treating any specific per-firm effect size as decision-grade?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 84 — cognitive-tutor-algebra-i-at-scale-year ----
#case(
  number: 84,
  slug: "cognitive-tutor-algebra-i-at-scale-year",
  title: "Cognitive Tutor Algebra I at Scale — Year-One Null, Year-Two Positive",
  year: "2007 – 2014",
  domains-list: ("K-12 mathematics", "intelligent tutoring", "education policy"),
  modes-code: "TKD",
  impact: "Cluster-randomized 147 high schools across seven states; year-one posttest scores showed no significant difference between Cognitive Tutor and control conditions; year-two posttest scores showed CTAI schools significantly outperforming controls; a one-year evaluation would have published the wrong answer",
  kind: "intervention",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.3",
  lens-anchor: "D4/PT4",
  clo-anchor: "CLO-2, CLO-4",
  summary: [
    Pane, Griffin, McCaffrey, and Karam's 2014 paper in
    _Educational Evaluation and Policy Analysis_ reports the
    central at-scale evaluation of Cognitive Tutor Algebra I
    (CTAI), the canonical learning-sciences-to-classroom
    translation. The RAND team cluster-randomized 147 high
    schools across seven states to continue their current
    Algebra I curriculum or to adopt CTAI for two years. Year-one
    posttest scores: no significant difference between
    conditions. Year-two posttest scores: CTAI schools
    significantly outperformed control schools. The honest
    reading the authors press is that a one-year evaluation
    would have published a null result and the two-year
    evaluation surfaced a real effect — and both findings were
    in the same trial. The case is the deeper-evidence-of
    update on v1 Case 67 (Cognitive Tutor), translating that
    case from a system-description case into a methodological-
    discipline case about evaluation horizons. The timeline of
    the evaluation is itself a falsifiable design choice; the
    case grounds the CLO on judgment under inadequate evidence
    where the inadequacy is the evaluation horizon, not the
    sample size.
  ],
  sections: (
    [
      Cognitive Tutor is the case the learning-sciences-to-
      classroom translation thread cannot avoid teaching at v1
      Case 67. The system instantiates a model of student
      cognition, drives a problem-by-problem adaptive
      curriculum, and is the canonical published instance of an
      intelligent tutoring system in K-12 mathematics. The
      question the v1 case left open — and the question the
      Pane et al. 2014 paper answers — is what happens when the
      system is deployed at scale, in the classroom and
      curricular conditions that classroom adoption actually
      generates, rather than in the developer-supported
      conditions of an early efficacy trial.#cn()
    ],
    [
      The RAND team built the evaluation to support that
      question. 147 high schools across seven states were
      cluster-randomized to either continue their current
      Algebra I curriculum or to adopt CTAI for two years. The
      sample was deliberately wide — multiple states, multiple
      district contexts, classroom adoption with the support
      structures the publisher could realistically supply. The
      outcome instrument was an Algebra I posttest applied at
      end of school year. The design supports an effect-size
      estimate at end of year one and a separate estimate at
      end of year two, with the same students in the same
      treatment condition for both years.#cn()
    ],
    [
      The year-one result was a null. Posttest scores in CTAI
      schools did not differ significantly from posttest scores
      in control schools, across the cluster-randomized sample.
      The year-two result was different. Posttest scores in
      CTAI schools were significantly higher than in control
      schools, with an effect size that an Algebra I curriculum
      evaluation would treat as meaningful. The two findings
      were generated by the same trial, run in the same
      schools, with the same instrument. The methodological
      discipline the case teaches turns on what the field would
      have learned if the evaluation had been designed to a
      one-year horizon: it would have published a null result
      against an intervention that the same trial, on its
      planned horizon, established as positive.#cn()
    ],
    [
      The authors press the honest reading without softening it.
      The timeline of the evaluation is itself a falsifiable
      design choice, not a methodological default. The reasons
      year one returned a null are recoverable from the trial
      record — teacher fluency with the system grew across the
      year, district-level scheduling and pacing adjusted across
      the year, student familiarity with the adaptive workflow
      stabilized across the year. None of these are noise; all
      are part of the deployment substrate the intervention
      depends on, and all required the second year to
      stabilize. The two-year horizon was the right horizon
      because the intervention's effect is conditioned on a
      deployment-substrate stabilization that takes more than
      one year.#cn()
    ],
    [
      The case is the deeper-evidence-of update on v1 Case 67.
      v1 Case 67 carries Cognitive Tutor as the system
      description; this case carries the at-scale evaluation
      and the timeline-of-evidence lesson. The CLO on judgment
      under inadequate evidence is directly motivated: the
      one-year evaluation would have been inadequate evidence,
      and a field that publishes the one-year null without
      noting the planned second-year horizon publishes a wrong
      answer on the available data. Pair with Case 72
      (ASSISTments) for the multi-year follow-through paired
      case, and with Case 5 (Epic Sepsis) for the
      evaluation-horizon discipline in clinical AI. The closed
      loop the case completes is the two-year-horizon-was-the-
      right-horizon record that lets a field design the next
      at-scale evaluation honestly.
    ],
  ),
  beats: (
    "147 high schools, seven states, cluster-randomized to CTAI or current curriculum for two years",
    "Year-one posttest: no significant difference; year-two posttest: CTAI significantly outperforms control",
    "A one-year evaluation would have published a null on the same intervention; both findings in the same trial",
    "Timeline of evaluation is itself a falsifiable design choice; year-two horizon required for deployment-substrate stabilization",
    "Deeper-evidence-of v1 Case 67; pair with Case 72 (ASSISTments) and Case 5 (Epic Sepsis horizon discipline)",
  ),
  approaches: (
    during: (
      [Plan the evaluation horizon as a design decision, not a budget default; the case demonstrates that the horizon choice is causally consequential and that a shorter horizon can produce a wrong-direction finding.],
      [Document the deployment-substrate stabilization that the intervention depends on: teacher fluency, scheduling adjustment, student familiarity with the workflow are all year-over-year stabilization mechanisms the trial should track.],
      [Design the trial so the year-one and year-two estimates are both interpretable; the case's pedagogical value depends on having both estimates from the same trial, not on having only the longer-horizon estimate.],
    ),
    after: (
      [Publish the year-by-year result pattern, not the aggregate effect; the case's teaching power depends on the year-one null being on the same page as the year-two positive.],
      [Carry the timeline-of-evidence lesson into the curriculum's evaluation-design teaching; the case grounds the CLO on judgment under inadequate evidence with a rare worked example where the inadequacy is the horizon, not the sample size.],
      [Pair the case with Case 72 (ASSISTments multi-year follow-through) so the field-level discipline is taught with two converging examples; the methodological lesson is more useful as a pattern than as a single instance.],
    ),
  ),
  references: (
    [Pane, J. F., Griffin, B. A., McCaffrey, D. F., & Karam, R. (2014), "Effectiveness of Cognitive Tutor Algebra I at Scale," _Educational Evaluation and Policy Analysis_ 36(2):127–144, doi:10.3102/0162373713507480.],
    [RAND Working Paper WR-1050 — addendum to the Pane et al. evaluation.],
    [Koedinger, K. R., Anderson, J. R., Hadley, W. H., & Mark, M. A. (1997), "Intelligent tutoring goes to school in the big city," _IJAIED_ — the v1 Case 67 system description Cognitive Tutor builds from.],
    [What Works Clearinghouse — Cognitive Tutor evidence-base summary applying federal-grade evidence standards to the Pane et al. trial.],
  ),
  quote: [A one-year evaluation would have published a null. The two-year evaluation surfaced a real effect. Both findings were in the same trial.],
  quote-source: "Editors' synthesis of Pane et al. (2014).",
  le-insight: [
    Pane et al. is the at-scale evaluation case for Cognitive
    Tutor and the worked example of evaluation horizon as a
    falsifiable design choice. Year one: null. Year two:
    significantly positive. The case is the deeper-evidence-of
    update on v1 Case 67 and the curriculum's primary anchor for
    the CLO on judgment under inadequate evidence where the
    inadequacy is the horizon, not the sample size.
  ],
  lens-approach: [
    Pane / CTAI at scale is the closed-loop evaluation-horizon
    case (induced 2.3; LENS D4/PT4). LENS uses it in Domain 4
    (Test and Evaluation) for the horizon-as-design-choice
    discipline and in Domain 2 (Iterative Development) for the
    deployment-substrate-stabilization frame — teacher fluency,
    scheduling, workflow familiarity are designable parts of
    the intervention substrate, not noise. Pair with Case 72
    (ASSISTments follow-through), v1 Case 67 (Cognitive Tutor
    system), and Case 5 (Epic Sepsis horizon discipline).
  ],
  literature-items: (
    [Pane et al. (2014), _EEPA_ — Cognitive Tutor at scale],
    [Koedinger et al. (1997), _IJAIED_ — v1 Case 67 system base],
    [What Works Clearinghouse evidence summary],
  ),
  reflection-list: (
    [Identify an intervention in your domain whose effect depends on a deployment-substrate stabilization that takes more than a year (teacher fluency, workflow familiarity, scheduling alignment). What evaluation horizon is honest for that intervention, and what would the year-one estimate, taken alone, falsely conclude?],
    [Specify the year-by-year result pattern your next evaluation will report. The case's pedagogical value depends on having both the year-one and year-two estimates from the same trial; what reporting structure would you commit to that supports the pattern view, not only the aggregate?],
  ),
  courses: ("LEN 2", "LEN 3", "LEN 7"),
)

// ---- Case 85 — ou-analyse-predictive-learning ----
#case(
  number: 85,
  slug: "ou-analyse-predictive-learning",
  title: "OU Analyse — Predictive Learning Analytics and Teacher Use at Scale",
  year: "2019 – 2023",
  domains-list: ("higher education", "learning analytics", "distance learning"),
  modes-code: "TKD",
  impact: "Across 9 courses and 559 teachers (189 with OU Analyse access), teachers' engagement with predictive learning analytics was associated with measurable improvements in student performance for >14,000 students; three-year post-implementation follow-up extends the evidence into sustained adoption and perceptions",
  kind: "intervention",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "5.2",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4, CLO-3",
  summary: [
    Herodotou et al.'s 2019 _British Journal of Educational
    Technology_ paper reports the evaluation of OU Analyse, the
    Open University UK's predictive-learning-analytics dashboard
    for online tutors, across 9 courses and 559 teachers (189 of
    whom had access to OU Analyse) with more than 14,000 students.
    Teachers' engagement with the predictive learning analytics
    was associated with measurable improvements in student
    performance. The LAK 2023 three-year-post-implementation
    follow-up extends the picture into questions of sustained
    adoption — how teachers' use of the predictions stabilized,
    what fraction continued to act on them, how perceptions
    evolved. The case is distinct from the OU consent-and-ethical-
    use frame Case 81 covers; this case carries the post-
    deployment teacher-use evaluation at multi-cohort scale.
    The authors' hedges are binding: causal attribution to OU
    Analyse use specifically — versus teacher selection effects
    — is bounded; the 2019 study uses propensity-style matching
    rather than RCT randomization. Future validation ongoing on
    multi-institution transfer as the system is licensed beyond
    the Open University.
  ],
  sections: (
    [
      Predictive learning analytics dashboards have been
      deployed across higher-education institutions for more
      than a decade. The deployment record is largely a
      collection of pilots and single-cohort studies, with
      Course Signals (the discontinued Purdue deployment) as
      the structural cautionary case. OU Analyse is structurally
      different: deployed across an entire distance-learning
      institution, used by hundreds of tutors across multiple
      cohorts and multiple courses, and evaluated at the scale
      the institutional deployment supports. The 2019 Herodotou
      et al. paper is the central peer-reviewed evaluation of
      the teacher-use side of the deployment.#cn()
    ],
    [
      The evaluation design covers 9 courses, 559 teachers, and
      more than 14,000 students. 189 of the 559 teachers had
      access to OU Analyse; the comparison structure is between
      these teachers and the OU Analyse-naive teachers in the
      same courses. The outcome is student performance on
      course assessments. Teachers' engagement with the
      predictive learning analytics — operationalized as
      dashboard-usage and acted-upon-prediction proxies — was
      associated with measurable improvements in student
      performance for the cohorts those teachers taught. The
      effect size is meaningful at the scale the institutional
      deployment supports.#cn()
    ],
    [
      The 2023 LAK three-year-post-implementation follow-up
      extends the picture into a question the single-cohort
      pilots cannot address: what happens to teacher use of the
      predictions across multiple cohorts and across years? The
      follow-up paper documents how teachers' use stabilized,
      what fraction continued to act on the predictions, and
      how perceptions evolved as the institutional norm around
      the dashboard solidified. Across the three years, the
      pattern surfaces as one of sustained adoption with
      stratification: a fraction of teachers used the
      predictions actively, a fraction used them as background
      reference, and a fraction did not engage. The
      delegation-with-revocation structure is operative: each
      teacher chose, in each cohort, whether to act on the
      prediction, and the choice itself is the load-bearing
      capability the dashboard supports.#cn()
    ],
    [
      The case is distinct from the OU consent-and-ethical-use
      frame Case 81 covers. Case 81 carries the governance
      story — the Policy on Ethical Use of Student Data, the
      institutional review of analytic deployments, the
      consent architecture. This case carries the post-
      deployment teacher-use evaluation at multi-cohort scale.
      The editor's decision (memo A6) anchors LENS primary,
      induced secondary, CLO carried; the two cases together
      teach the deployment across both governance and
      post-deployment-use frames without collapsing one into
      the other. The frame the present case adds to the corpus
      is the rare successful learning-engineering intervention
      with both deployment scale and longitudinal teacher-use
      evidence at the journal-graded evidence tier the corpus
      needs.#cn()
    ],
    [
      The authors' hedges are binding. The causal attribution to
      OU Analyse use specifically — as distinct from teacher
      selection effects — is bounded. The 2019 study uses
      propensity-style matching but does not randomize at the
      teacher level; the 2023 follow-up extends the evidence
      base on adoption and perception but does not close the
      teacher-selection question. Future validation ongoing on
      multi-institution transfer — OU Analyse has been licensed
      beyond the Open University, and the transfer outcomes are
      not yet in the peer-reviewed literature. Pair with Case
      115 (OU consent governance), Case 84 (Cognitive Tutor
      at-scale evaluation), and the Purdue Course Signals
      cautionary case from v1 — the OU Analyse evaluation is
      the methodologically more careful descendant of the
      Course Signals lineage.
    ],
  ),
  beats: (
    "OU Analyse: predictive-learning-analytics dashboard deployed across the Open University UK's distance-learning operation",
    "Herodotou et al. 2019 BJET: 9 courses, 559 teachers (189 with OUA access), >14,000 students; teacher engagement → measurable improvement",
    "Herodotou et al. 2023 LAK: three-year-post-implementation follow-up — stabilization, sustained adoption stratification, perception evolution",
    "Distinct from Case 81 (OU consent governance); this case is post-deployment teacher-use at multi-cohort scale",
    "Hedges binding: causal attribution bounded (propensity matching, not RCT randomization); multi-institution transfer evidence pending",
  ),
  approaches: (
    during: (
      [Treat teacher use of the prediction as the load-bearing capability the dashboard supports; the delegation-with-revocation structure — each teacher chooses, in each cohort, whether to act — is the design point, not an emergent behavior.],
      [Build the deployment at multi-cohort and multi-course scale from the start; the case's evidence-tier strength depends on the deployment having been institutional, not pilot, and the institutional deployment supports the longitudinal-follow-through evidence the case provides.],
      [Design the dashboard's prediction surface around the action the teacher would take — a flagged-student list with an intervention prompt, not a probability score the teacher has to interpret unaided.],
    ),
    after: (
      [Commission the next-tier evaluation that addresses the teacher-selection-effect question; an RCT at the teacher level, or an instrumental-variable design exploiting institutional dashboard-rollout variation, would close the residual causal-attribution gap.],
      [Publish the multi-institution-transfer evaluations as the system is licensed beyond the OU; the case's value as a generalizable instance depends on the transfer evidence the OU-internal evaluation cannot provide.],
      [Pair the case in the curriculum with Case 81 (OU consent governance) so the deployment is taught across both governance and post-deployment-use frames; the two cases together teach the institutional anchor without collapsing one frame into the other.],
    ),
  ),
  references: (
    [Herodotou, C., Hlosta, M., Boroowa, A., Rienties, B., Zdrahal, Z., & Mangafa, C. (2019), "Empowering online teachers through predictive learning analytics," _British Journal of Educational Technology_ 50(6):3064–3079, doi:10.1111/bjet.12853.],
    [Herodotou, C. et al. (2023), "Predictive Learning Analytics and University Teachers: Usage and perceptions three years post implementation," _LAK '23_, doi:10.1145/3576050.3576061.],
    [Herodotou et al. (2019), "A large-scale implementation of predictive learning analytics in higher education: the teachers' role and perspective," _Educational Technology Research and Development_, ERIC EJ1227972 — complementary teacher-perspective paper.],
    [Arnold, K. E., & Pistilli, M. D. (2012), "Course Signals at Purdue," _LAK '12_ — the structural precursor v1 carries as a cautionary case.],
  ),
  quote: [The delegation-with-revocation structure is operative: each teacher chose, in each cohort, whether to act on the prediction. The choice itself is the load-bearing capability the dashboard supports.],
  quote-source: "Editors' synthesis of Herodotou et al. (2019, 2023).",
  le-insight: [
    OU Analyse is the rare successful learning-engineering
    intervention with both deployment scale and longitudinal
    teacher-use evidence at journal tier. The 2019 BJET paper
    establishes the effect on student performance at the
    institutional deployment; the 2023 LAK follow-up extends
    the picture into three-year sustained adoption. The
    delegation-with-revocation structure is operative and
    teachable. Hedges binding on causal attribution and on
    multi-institution transfer.
  ],
  lens-approach: [
    OU Analyse teacher-use is the human-in-the-loop predictive-
    analytics case at institutional scale (induced 5.2; LENS
    D4/PT5). LENS uses it in Domain 4 (Test and Evaluation)
    for the multi-cohort longitudinal-follow-through design
    and in Domain 3 (Human-System Collaboration) for the
    delegation-with-revocation structure — the teacher chooses,
    each time, whether to act on the prediction. Pair with
    Case 81 (OU consent governance), Case 84 (Cognitive
    Tutor at-scale), and Case 72 (ASSISTments multi-year).
  ],
  literature-items: (
    [Herodotou et al. (2019), _BJET_ — OU Analyse teacher-use evaluation],
    [Herodotou et al. (2023), _LAK_ — three-year follow-up],
    [Arnold & Pistilli (2012), _LAK_ — Course Signals precursor],
  ),
  reflection-list: (
    [Identify a predictive-analytics dashboard in your domain whose operator-use stratification — active, background reference, non-engagement — has not been longitudinally tracked. What would the multi-cohort follow-up look like, and what data infrastructure would it require?],
    [Specify the design choice for the prediction surface in your domain: a flagged-list-with-intervention-prompt vs. a probability-score-the-operator-interprets-unaided. Which design is in place currently, and what would change if the design switched?],
    [The case's hedge on teacher selection effects is the open methodological question. What randomized or quasi-experimental design would close the residual attribution gap in your domain's analog deployment — and what institutional support would the design require?],
  ),
  courses: ("LEN 2", "LEN 3", "LEN 7"),
)

// ---- Case 86 — gandara-algorithmic-targeting-and ----
#case(
  number: 86,
  slug: "gandara-algorithmic-targeting-and",
  title: "Gándara — Detecting and Mitigating Algorithmic Bias in College Student-Success Prediction",
  year: "2024",
  domains-list: ("higher education", "algorithmic fairness", "policy analysis"),
  modes-code: "DKN",
  impact: "Gándara, Anahideh, Ison, and Picchiarini (AERA Open, 2024) audited predictive models of college student success and showed that models which look acceptable on overall accuracy are systematically less accurate for Black and Hispanic students and overestimate success for white and Asian students — small-tier frontier evidence that the choice of construct and the stratification used in evaluation, not only model-bias mitigation, determine whether an equity-oriented prediction is fair to the groups the equity commitment is meant to protect",
  kind: "frontier",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.2",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4, CLO-5",
  summary: [
    Predictive models of college student success — models that
    score students on predicted graduation, retention, or course
    completion to drive advising, outreach, and support decisions —
    have become a routine tool across community colleges and
    four-year institutions. Gándara, Anahideh, Ison, and
    Picchiarini, publishing in _AERA Open_ (2024), audited such
    models across racialized groups and found that a model which
    looks acceptable on overall accuracy is systematically less
    accurate for Black and Hispanic students — making more
    prediction errors for them — while overestimating success for
    white and Asian students. The apparent fairness of the system
    depends materially on upstream choices: the construct the model
    is built to predict (predicted graduation vs. predicted benefit
    vs. predicted need), the stratification used in evaluation
    (overall accuracy vs. accuracy by income, race/ethnicity,
    first-generation status), and the decision context the
    prediction is consumed in (whether end users are trained to
    contextualize a flagged prediction or treat it as a verdict).
    The paper's contribution is the frontier-shaped finding that
    fairness in equity-oriented prediction is a construct-definition
    and stratified-evaluation problem before it is a model-bias
    problem. The case pairs explicitly with the v2 race-construct
    trio (Cases 25 eGFR, 106 pulse oximetry, 107 Hoffman) and with
    the broader equity-construct competency C8.2: demographic
    stratification of validation and outcomes as a design
    commitment.
  ],
  sections: (
    [
      Predictive modeling of student success in higher education is
      now routine. Community-college and four-year institutions
      operate models that score students on predicted graduation
      likelihood, predicted retention, predicted
      benefit-from-intervention, or predicted financial need. The
      scores feed downstream decisions: which students get
      outreach emails, which get advising appointments, which get
      need-based aid or enrollment incentives. The structural
      capability question — whose interest does the model
      maximize, by what construct, and against what
      stratification — is the layer where the case operates.#cn()
    ],
    [
      Gándara, Anahideh, Ison, and Picchiarini, publishing in
      _AERA Open_, audited predictive models of college student
      success across racialized groups. The central finding is
      that models which look acceptable on overall accuracy are
      systematically less accurate for Black and Hispanic
      students — making more prediction errors for them — while
      overestimating success for white and Asian students. The
      methodological move is to show that the choice of construct
      the model is built to predict, and the way the model is
      evaluated, have substantial consequences for which students
      the model treats accurately. A model optimized and validated
      on aggregate accuracy is not interchangeable with one whose
      validation is stratified by racialized group; the
      institution's choice of construct and evaluation regime is a
      normative decision the model architecture cannot make on its
      own.#cn()
    ],
    [
      The second methodological move concerns evaluation
      stratification. Overall accuracy, the standard summary
      metric, can mask substantial disparity by income, race/
      ethnicity, and first-generation status — populations whose
      base rates and observed outcomes differ from the modal
      student the training data over-represents. The paper's
      stratified evaluation shows the canonical equity-construct
      finding: a model that looks fair under overall accuracy can
      be substantially less accurate, or substantially biased in
      its prediction direction, for the subgroups the equity
      commitment is supposed to protect. The induced framework's
      C8.2 sub-competency — demographic stratification of
      validation and outcomes as a design commitment — is the
      analytic anchor.#cn()
    ],
    [
      The third move concerns the decision context the prediction
      is consumed in and the mitigations available. A model is not
      deployed in isolation; its predictions are read by advisors
      and administrators who decide what to do with a flagged
      student. Gándara and colleagues stress training end users on
      the potential for algorithmic bias — so a prediction is
      contextualized for the individual student rather than treated
      as a verdict — and evaluate bias-mitigation techniques that
      reduce, but do not eliminate, the cross-group accuracy gap.
      The system's apparent fairness therefore depends not only on
      the model but on the evaluation regime and the decision
      practice the institution actually deploys.#cn()
    ],
    [
      What the case teaches at the LENS framing layer is the
      frontier-shaped finding: fairness in equity-oriented
      prediction is a construct-definition problem before it is a
      model-bias problem. The induced framework's C8.2 sub-
      competency and the equity-construct CLOs proposed
      find their case-grounded basis here.
      The case explicitly cross-references the v2 race-construct
      trio — eGFR (Case 25), pulse oximetry (Case 26), and
      Hoffman pain bias (Case 6) — at the construct-definition
      layer: in those cases the construct (race correction in
      eGFR, single-sensor calibration in pulse oximetry, the
      pain-perception assumption in Hoffman) was the design
      decision that produced the disparate outcome; in this case
      the construct (predicted enrollment vs. predicted need vs.
      predicted benefit) is the design decision the algorithmic-
      targeting system has to make explicitly.
    ],
  ),
  beats: (
    "Predictive student-success modeling is routine: models score students on predicted graduation / retention / benefit / need; scores feed downstream support and outreach decisions",
    "Gándara et al. (AERA Open, 2024): models less accurate for Black and Hispanic students; overestimate success for white and Asian students — overall accuracy masks the disparity",
    "Stratified evaluation by income, race/ethnicity, first-generation status reveals disparity that overall-accuracy summary metrics hide",
    "Decision context and mitigation matter: train end users to contextualize a flagged prediction; bias-mitigation reduces but does not eliminate the cross-group gap",
    "Cross-references v2 race-construct trio (Cases 25 eGFR, 106 pulse oximetry, 107 Hoffman) — construct definition is the upstream design decision in each",
  ),
  approaches: (
    during: (
      [Make the construct choice explicit at design time: predicted enrollment, predicted benefit, predicted need are different constructs with different policy implications, and the institution's normative position on which to optimize for has to be on the record.],
      [Build stratified evaluation by income, race/ethnicity, first-generation status, and other equity-relevant axes into the model's validation; the C8.2 sub-competency operationalized.],
      [Pair the targeting model with the specific intervention it will feed; the fairness properties of the system depend on the pairing, and evaluating the model in isolation underestimates the variation a deployed system actually exhibits.],
    ),
    after: (
      [Report which construct the model maximizes, on which stratifications it was evaluated, and which intervention it is paired with — three pieces of information any deployed targeting system should publish together.],
      [Treat the fairness conversation as a construct-definition conversation first, and as a model-bias conversation second; the latter is operationally important, the former determines what the model is fair *about*.],
      [Carry the race-construct trio (Cases 25, 26, 6) as the cross-domain pair in the curriculum: in each, the construct definition is the upstream design decision; the framework's C8.2 sub-competency and the equity-construct CLOs are anchored here.],
    ),
  ),
  references: (
    [Gándara, Anahideh, Ison, & Picchiarini (2024), "Inside the Black Box: Detecting and Mitigating Algorithmic Bias across Racialized Groups in College Student-Success Prediction," _AERA Open_ 10, doi:10.1177/23328584241258741 — primary case source on cross-group accuracy disparity, stratified evaluation, and bias mitigation in student-success prediction.],
    [Barocas, Hardt, & Narayanan, _Fairness and Machine Learning_ (fairmlbook.org) — methodological backdrop on construct definition and stratified evaluation.],
    [Friedler, Scheidegger, & Venkatasubramanian (2021), "The (im)possibility of fairness: different value systems require different mechanisms for fair decision making," _Communications of the ACM_ — the construct-definition argument at field level.],
    [v2 cross-referenced cases: 105 (eGFR race correction), 106 (pulse oximetry across skin tones), 107 (Hoffman pain bias) — the race-construct trio at the construct-definition layer.],
  ),
  quote: [Fairness in equity-oriented prediction is a construct-definition problem before it is a model-bias problem. Which student outcome the model is maximizing is the upstream decision.],
  quote-source: "Editors' synthesis of Gándara, Anahideh, Ison, & Picchiarini, _AERA Open_ (2024).",
  le-insight: [
    Gándara's student-success-prediction audit is the small-tier
    frontier instance of fairness-as-construct-definition. Which
    construct the model maximizes (predicted graduation vs.
    benefit vs. need), which stratification is used in
    validation, and the decision context the prediction is
    consumed in each determine the fairness properties of the
    deployed system; the audit found models systematically less
    accurate for Black and Hispanic students. Cross-references
    the v2 race-construct trio at the construct-definition layer.
  ],
  lens-approach: [
    Gándara student-success-prediction fairness is the
    equity-construct-definition case (induced 8.2; LENS
    D4/PT5) — Domain 4 for stratified evaluation; Domain 5 for
    the decision-context and mitigation question. Cross-reference
    Cases 25, 26, 6 — case-grounded basis for the equity-
    construct CLOs.
  ],
  literature-items: (
    [Gándara, Anahideh, Ison, & Picchiarini (2024), _AERA Open_],
    [Barocas, Hardt, & Narayanan, _Fairness and Machine Learning_],
    [Friedler, Scheidegger, & Venkatasubramanian (2021), _Communications of the ACM_],
  ),
  reflection-list: (
    [Identify a predictive-targeting model in your domain. Which construct does it maximize — observed outcome, predicted benefit, predicted need — and is the choice on the record as a normative institutional decision, or absorbed into the model's training objective without disclosure?],
    [Specify the stratifications you would build into the model's validation: which equity-relevant axes (income, race/ethnicity, first-generation, geography, disability) and what comparison structure (per-axis accuracy, per-axis calibration, per-axis intervention effectiveness)?],
    [The case cross-references the v2 race-construct trio (Cases 25, 26, 6). In each, the construct definition is the upstream design decision that produced the disparate outcome. Identify a construct decision in your domain that is currently absorbed into the design rather than on the record — and what would it take to make the choice explicit?],
  ),
  courses: ("LEN 3", "LEN 6", "LEN 9"),
)

// ---- Case 87 — yu-lee-kizilcec-protected-attributes-in ----
#case(
  number: 87,
  slug: "yu-lee-kizilcec-protected-attributes-in",
  title: "Yu / Lee / Kizilcec — Protected Attributes in Learning-Analytics Models",
  year: "2021 – 2024",
  domains-list: ("learning analytics", "algorithmic fairness", "ed-tech research"),
  modes-code: "DKN",
  impact: "Yu, Lee, and Kizilcec, publishing in the LAK/EDM literature, examined whether and how protected attributes (race/ethnicity, gender, socioeconomic status) should be included in learning-analytics predictive models, and showed that whether including or excluding the attribute produces fairer outcomes depends on the construct, the model class, the downstream intervention, and the population — small-tier frontier evidence that the include-or-exclude question is the wrong framing",
  kind: "frontier",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.4",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4, CLO-5",
  summary: [
    A long-running practical question in learning analytics is
    whether protected attributes — race/ethnicity, gender,
    socioeconomic status, first-generation status — should be
    included as features in predictive models. The intuitive
    "fairness through unawareness" answer is to exclude them. The
    technical-fairness literature has shown the unawareness answer
    is incomplete: omitted protected attributes are typically
    reconstructable from correlated features (zip code, course
    history, prior achievement), so excluding the attribute does
    not exclude its predictive footprint and can make discrimination
    harder to detect and audit. Yu, Lee, and Kizilcec, publishing
    in the LAK/EDM literature, examined the include-or-exclude
    question empirically across multiple learning-analytics
    prediction tasks. The headline finding is the frontier-shaped
    one: whether inclusion or exclusion produces fairer outcomes
    depends on the construct being predicted, the model class, the
    intervention the prediction feeds, and the population. The
    case is the small-tier frontier instance of "surfacing bias
    through governance, not just technique" (C8.4 in the induced
    framework). It cross-references the v2 race-construct trio
    (Cases 25 eGFR, 106 pulse oximetry, 107 Hoffman) at the
    model-fairness layer: in those cases the construct was the
    design decision; in this case the question is whether the
    attribute is allowed into the model that operationalizes the
    construct.
  ],
  sections: (
    [
      A practical question that recurs across learning-analytics
      deployments is whether protected attributes — race/ethnicity,
      gender, socioeconomic status, first-generation status, and
      similar — should be included as features in predictive
      models. The intuitive policy answer ("fairness through
      unawareness") is to exclude them: a model that does not see
      race cannot discriminate on race. The intuition is
      operationally appealing and statutorily aligned in some
      domains where regulators have read the omission requirement
      strictly.#cn()
    ],
    [
      The technical-fairness literature has shown the unawareness
      answer is incomplete. Protected attributes that are omitted
      from a model are typically reconstructable from correlated
      features the model does see — zip code, school assignment,
      prior achievement, course history, language at home, family
      income proxies. Omitting the attribute removes the label,
      not the predictive footprint, and can in some cases make
      discrimination harder to detect and audit precisely because
      the auditable record no longer carries the attribute that
      would let an evaluator stratify the model's output.#cn()
    ],
    [
      Yu, Lee, and Kizilcec, publishing in the LAK/EDM (Learning
      Analytics and Knowledge / Educational Data Mining)
      literature, examined the include-or-exclude question
      empirically across multiple learning-analytics prediction
      tasks — course completion, performance prediction, dropout
      risk — with multiple model classes (regression, tree-based,
      neural) and multiple downstream intervention contexts. The
      headline finding is the frontier-shaped one: whether
      including or excluding a protected attribute produces
      fairer outcomes depends on the construct being predicted,
      the model class, the intervention the prediction feeds, and
      the population. There is no general answer; the include-or-
      exclude question is the wrong framing.#cn()
    ],
    [
      The right framing the paper develops is governance and
      audit. The decision to include or exclude a protected
      attribute is one of several decisions a learning-analytics
      deployment makes that determine its fairness properties;
      the decision has to be made deliberately, recorded with
      reasoning, and paired with stratified evaluation and audit
      cadence that catches the consequences of the decision in
      operation. The case is the induced framework's C8.4
      instance at small scale: "surfacing bias through governance,
      not just technique." The technical-fairness machinery alone
      does not answer the question; the governance architecture
      around the model is the carrier of the answer in any
      specific deployment.#cn()
    ],
    [
      In pair with Case 86 (Gándara on community-college
      targeting) and with the v2 race-construct trio (Cases 25
      eGFR, 106 pulse oximetry, 107 Hoffman), the case completes
      the v2 equity-construct frontier picture. Case 86 names
      the construct-definition layer; this case names the
      protected-attribute-in-the-model layer; the race-construct
      trio names the construct-encoded-in-the-instrument layer
      (race correction in eGFR, sensor calibration in pulse
      oximetry, pain perception in Hoffman). Together, the five
      cases stage the equity-construct competency across the
      construct-definition / attribute-handling / instrument-
      construct axes — the case-grounded basis for the equity-construct sub-competencies proposed in
      the v2 research backbone.#cn()
    ],
  ),
  beats: (
    "Long-running learning-analytics question: include or exclude protected attributes (race/ethnicity, gender, SES) as features?",
    "Fairness-through-unawareness intuitive but incomplete: omitted attributes reconstructable from correlated features (zip code, prior achievement)",
    "Yu, Lee, Kizilcec (LAK/EDM): include-or-exclude effect depends on construct, model class, downstream intervention, population — no general answer",
    "Right framing is governance and audit: explicit decision recorded with reasoning, stratified evaluation, audit cadence that catches the consequences",
    "Cross-references Case 86 (Gándara), the v2 race-construct trio (105 eGFR, 106 pulse oximetry, 107 Hoffman) — five-case equity-construct frontier set",
  ),
  approaches: (
    during: (
      [Treat the include-or-exclude decision for each protected attribute as a deliberate design choice, recorded with reasoning, rather than absorbed into the data-engineering pipeline.],
      [Build stratified evaluation by the protected attribute regardless of whether the model itself uses it as a feature; auditing the model's output by attribute is independent of whether the attribute is an input.],
      [Pair the decision with the downstream intervention context; the include-or-exclude answer that produces fairer outcomes in one intervention context may produce less fair outcomes in another.],
    ),
    after: (
      [Publish the protected-attribute handling decisions for any deployed learning-analytics model — included, excluded, and with what reasoning — as part of the model's governance documentation.],
      [Operate stratified audit on a regular cadence; the include-or-exclude consequences in operation are what the audit catches, and audit absence makes the decision functionally invisible to the institution.],
      [Carry the five-case equity-construct set into the curriculum: Cases 25 (eGFR), 106 (pulse oximetry), 107 (Hoffman) on the instrument-construct layer; Case 86 (Gándara) on the construct-definition layer; this case on the protected-attribute-in-the-model layer. The set is the case-grounded basis for the equity-construct sub-competencies.],
    ),
  ),
  references: (
    [Yu, R., Lee, H., & Kizilcec, R. F. (2021), "Should College Dropout Prediction Models Include Protected Attributes?" in _Proceedings of the Eighth ACM Conference on Learning \@ Scale_ (L\@S '21), doi:10.1145/3430895.3460139 — primary paper on the include-or-exclude empirical analysis.],
    [Kizilcec & Lee, "Algorithmic Fairness in Education," in Holmes & Porayska-Pomsta (eds.), _Ethics in Artificial Intelligence in Education_ — broader synthesis of the fairness-in-learning-analytics frontier.],
    [Dwork, Hardt, Pitassi, Reingold, & Zemel (2012), "Fairness through awareness," _Proceedings of ITCS_ — foundational paper on the inadequacy of fairness-through-unawareness.],
    [Barocas, Hardt, & Narayanan, _Fairness and Machine Learning_ (fairmlbook.org) — technical-fairness backdrop.],
    [v2 cross-referenced cases: 138 (Gándara), 105 (eGFR), 106 (pulse oximetry), 107 (Hoffman) — equity-construct five-case set.],
  ),
  quote: [The include-or-exclude question is the wrong framing. The right framing is governance: a deliberate decision, recorded with reasoning, paired with stratified evaluation and audit cadence.],
  quote-source: "Editors' synthesis of Yu, Lee, & Kizilcec (LAK/EDM).",
  le-insight: [
    Yu, Lee, and Kizilcec's protected-attributes work is the
    frontier instance of surfacing bias through governance, not
    just technique. Whether including or excluding a protected
    attribute produces fairer outcomes depends on the construct,
    the model class, the intervention, and the population. The
    governance architecture around the model is the carrier of
    the answer in any specific deployment.
  ],
  lens-approach: [
    Yu/Lee/Kizilcec protected attributes is the model-fairness-
    governance case (induced 8.4; LENS D4/PT5) — Domain 4 for
    stratified-evaluation-by-attribute; Domain 5 for the
    decision-plus-reasoning-plus-audit architecture. Cross-
    reference Case 86 and the race-construct trio (105, 106,
    107).
  ],
  literature-items: (
    [Yu, Lee, & Kizilcec, LAK/EDM protected-attributes paper],
    [Kizilcec & Lee, "Algorithmic Fairness in Education"],
    [Dwork et al. (2012), "Fairness through awareness," _ITCS_],
  ),
  reflection-list: (
    [Identify a learning-analytics or analogous predictive model in your domain. Which protected attributes are inputs to the model, which are not, and is the include-or-exclude decision on the record with reasoning, or absorbed into the data-engineering pipeline?],
    [Specify the stratified-audit cadence you would operate for the model regardless of whether protected attributes are inputs; the audit catches the consequences of the include-or-exclude decision in operation, and its absence makes the decision functionally invisible.],
  ),
  courses: ("LEN 3", "LEN 6", "LEN 9"),
)

// ---- Case 88 — livehint-ai-evaluating-an-ai-tutor-for ----
#case(
  number: 88,
  slug: "livehint-ai-evaluating-an-ai-tutor-for",
  title: "LiveHint AI — Evaluating an AI Tutor for Bias Across Foundation Models",
  year: "2025",
  domains-list: ("AI in education", "intelligent tutoring", "algorithmic fairness"),
  modes-code: "TKN",
  impact: "Repeated probing of LiveHint AI (an LLM-based tutor under development at Carnegie Learning) with identity-marked student queries surfaced response differences in tone, detail, and pedagogical appropriateness across identities; choice of foundation model materially affected the level of differentiation",
  kind: "frontier",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.2",
  lens-anchor: "D4/PT6",
  clo-anchor: "CLO-4, CLO-3",
  summary: [
    The AIED 2025 paper "Evaluating an AI Tutor for Bias Across
    Different Foundation Models" tests LiveHint AI, an LLM-based
    tutor under development at Carnegie Learning, against a
    structured probing protocol. Realistic student queries are
    modified to include explicit or implicit statements of
    identity — nationality, dialect markers, demographic cues —
    and the tutor's responses are assessed for tone, detail, and
    pedagogical appropriateness. The choice of foundation model
    materially affects the level of differentiation in responses.
    The authors are explicit that this is not a deployment-bias
    audit (LiveHint is in development); it is a methods-
    development paper proposing how foundation-model-level
    fairness evaluation should be done before deployment. The
    case extends the race-construct trio (Cases 25, 26, 6,
    48) into the LLM-tutoring layer where the structurally new
    variable is the foundation model. Open questions: whether
    lab-style probing matches deployed-conversation patterns;
    whether vendor selection across foundation models becomes
    a routine fairness deliverable.
  ],
  sections: (
    [
      The deployment surface for LLM-based tutoring expanded
      faster than the fairness-evaluation literature for it.
      Most pre-deployment fairness work on educational AI was
      built for classifiers — proctoring systems, recommendation
      engines, automated essay scoring — where the output is a
      score or a flag and the fairness question can be
      formulated as a disparate-impact comparison across groups.
      LLM tutoring shifts the output to a conversational
      response, and the fairness question shifts with it: it is
      no longer whether two equivalently-prepared students
      receive equivalent flags, but whether they receive
      equivalent pedagogical engagement.#cn()
    ],
    [
      The AIED 2025 paper builds the evaluation method against
      that shifted target. LiveHint AI, an LLM-based tutor
      under development at Carnegie Learning, is the subject
      system. The probing protocol generates realistic student
      queries — calibrated to the kinds of mathematics questions
      a tutor would receive — and produces matched variants of
      each query that differ only in identity-marker content:
      explicit statements of nationality, dialect markers,
      demographic cues. The tutor's responses to the matched
      pairs are then assessed across three dimensions: tone (is
      the response respectful and appropriately framed for a
      tutoring context), detail (does the response give the
      same quality of pedagogical content), and pedagogical
      appropriateness (does the response engage the underlying
      mathematics question with the same instructional intent).#cn()
    ],
    [
      The headline finding is that the choice of foundation
      model materially affects the level of differentiation in
      responses. Different foundation models — the underlying
      LLMs the tutoring layer wraps — produce different patterns
      of identity-conditioned response variation. The variation
      is not uniform across foundation models, not uniform
      across the three response dimensions, and not uniform
      across identity-marker types. The vendor-selection
      decision — which foundation model the tutoring product
      is built on — is itself a fairness-relevant design
      choice, and the case names it as such. The structurally
      new variable in the case, by comparison with the race-
      construct trio in the corpus, is the foundation-model
      layer, which did not exist as a deployment-side decision
      when the proctoring-bias and pulse-oximetry cases were
      studied.#cn()
    ],
    [
      The authors' framing is explicit and binding on the case.
      LiveHint AI is in development, not deployment; this is a
      methods-development paper proposing how foundation-model-
      level fairness evaluation should be done before
      deployment. The case is not the deployment-bias-audit
      case the corpus carries at Cases 25 (Hoffman pain
      assessment), 106 (pulse oximetry), 107 (eGFR), and 156
      (Johnson school surveillance). It is the structurally
      new methods-development case at the layer above those
      deployments — the foundation-model layer — and it grounds
      the curriculum's demographic-stratification anchor at
      that layer.#cn()
    ],
    [
      The open questions the authors preserve are the case's
      load-bearing hedges. Whether the differentiation patterns
      documented in lab-style probing match what students
      encounter in deployed conversations — where session
      length, follow-up turns, and student adaptation affect
      the response trajectory — is a question the present study
      cannot answer. Whether vendor selection across foundation
      models becomes a routine fairness deliverable for the
      educational-AI procurement pipeline is a market-evolution
      question the present study can name but cannot resolve.
      The case pairs with the race-construct trio for the
      stratified-validation discipline and with Case 77
      (hybrid human-AI tutoring) for the deployment-side
      complement — the augmentation pattern Case 77 documents
      depends on the foundation-model-level evaluation Case 88
      is methodologically grounding.
    ],
  ),
  beats: (
    "LiveHint AI (Carnegie Learning) probed with identity-marked student queries across tone, detail, pedagogical appropriateness",
    "Choice of foundation model materially affects differentiation level; vendor-selection decision is itself fairness-relevant",
    "Methods-development paper (LiveHint in development), not deployment-bias audit; grounds demographic-stratification at foundation-model layer",
    "Structurally new variable beyond race-construct trio (Cases 25/105/106/155): the foundation-model layer above the deployed system",
    "Open: lab probing vs. deployed-conversation match; vendor selection as routine fairness deliverable; pair with Case 77",
  ),
  approaches: (
    during: (
      [Build the probing protocol to vary identity markers within matched query pairs; the methods-development contribution depends on the matched-pair design that isolates the identity-conditioned response variation.],
      [Treat the choice of foundation model as a fairness-relevant design decision, not as an upstream procurement decision; the case demonstrates that the foundation-model layer materially affects the tutoring-layer's identity-conditioned response patterns.],
      [Conduct the fairness evaluation before deployment, not after; the methods-development framing is that the evaluation should be a pre-deployment deliverable, parallel to the race-construct-trio cases at the deployment-audit layer.],
    ),
    after: (
      [Commission the deployed-conversation evaluation that the lab-style probing cannot perform; the open question on whether probing patterns match deployment patterns is testable against deployment logs as the system moves toward release.],
      [Publish the foundation-model-level fairness findings as part of the procurement record; the case argues that vendor selection across foundation models is a fairness deliverable, and the publication discipline is what would make that deliverable operational.],
      [Pair the case in the curriculum with the race-construct trio (Cases 25, 26, 6, 48) so the demographic-stratification anchor is taught across both the deployed-system layer and the foundation-model layer above it.],
    ),
  ),
  references: (
    [AIED 2025, "Evaluating an AI Tutor for Bias Across Different Foundation Models," Springer/ACM proceedings, doi:10.1007/978-3-031-98465-5_43; preprint at renzheyu.com/papers/AIED2025_Tutor.pdf.],
    [Bommasani, R. et al. (2021), "On the Opportunities and Risks of Foundation Models," Stanford CRFM — the foundation-model framing the case builds on.],
    [Race-construct trio reference set: Hoffman et al. (2016), Sjoding et al. (2020) pulse oximetry, Inker et al. (2021) eGFR-without-race — paired with Cases 25, 26, 6.],
    [Carnegie Learning LiveHint product documentation — the subject system; case framing is binding on LiveHint being in development, not deployment.],
  ),
  quote: [The choice of foundation model is itself a fairness-relevant design decision. The evaluation should be a pre-deployment deliverable, not a post-deployment audit.],
  quote-source: "Editors' synthesis of the AIED 2025 LiveHint AI bias evaluation.",
  le-insight: [
    LiveHint AI is the methods-development case at the foundation-
    model layer of LLM-tutoring fairness evaluation. The matched-
    pair identity-probing protocol surfaces tone, detail, and
    pedagogical-appropriateness differences across identities; the
    foundation-model choice materially affects the differentiation
    level. The case extends the race-construct trio into the LLM-
    tutoring layer with a structurally new variable — the
    foundation model — that did not exist at the deployment-audit
    layer.
  ],
  lens-approach: [
    LiveHint AI is the demographic-stratified validation case at
    the foundation-model layer (induced 8.2; LENS D4/PT6). LENS
    uses it in Domain 4 (Test and Evaluation) for the matched-
    pair probing methodology and in Domain 3 (Human-System Collaboration) for the foundation-model-selection-as-
    fairness-decision frame. Pair with the race-construct trio
    (Cases 25, 26, 6, 48) at the deployment-audit layer
    and with Case 77 (hybrid human-AI tutoring) as the
    augmentation-pattern complement.
  ],
  literature-items: (
    [AIED 2025 LiveHint AI bias evaluation],
    [Bommasani et al. (2021), Stanford CRFM — foundation-model framing],
    [Race-construct trio reference set — Hoffman / pulse-ox / eGFR],
  ),
  reflection-list: (
    [Identify an LLM-based system in your domain whose foundation-model choice was treated as an upstream procurement decision rather than as a fairness-relevant design decision. What would the matched-pair probing protocol look like for that system, and what response dimensions would you assess?],
    [Specify the pre-deployment fairness deliverable you would build into the procurement record for an LLM-based product in your domain. What would the published artifact contain — probe set, response-dimension assessment, foundation-model comparison — and what would the procurement decision turn on?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 7"),
)

// ---- Case 89 — data-privacy-and-learning-analytics-on ----
#case(
  number: 89,
  slug: "data-privacy-and-learning-analytics-on",
  title: "Data Privacy and Learning Analytics on the African Continent",
  year: "2022",
  domains-list: ("higher education (Africa)", "data privacy law", "learning analytics"),
  modes-code: "KGN",
  impact: "Mapped the legal and regulatory privacy landscape across African jurisdictions and surfaced the structural governance seam — African higher education frequently uses learning platforms and analytics hosted by external providers, creating cross-regime gaps where student data crosses jurisdictions with inconsistent protection — and recommended common cross-border data-sharing frameworks",
  kind: "frontier",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "5.3",
  lens-anchor: "D5/PT6",
  clo-anchor: "CLO-5, CLO-3",
  summary: [
    Prinsloo, Slade, and Khalil (_British Journal of Educational
    Technology_, 2022) mapped the legal and regulatory privacy
    landscape across African jurisdictions and found a growing trend
    toward comprehensive data-protection legislation, though few
    frameworks are yet enacted and cross-border data-transfer
    policies differ sharply between countries. The core governance
    seam the paper surfaces — and what makes the case a frontier
    rather than a settled instance — is what the v2 sweep names
    *extraterritorial platform governance*: African higher education
    frequently uses learning platforms, learning-management systems,
    and analytics services hosted by external (typically Global-North
    or Asian) providers, creating a structural gap where student data
    is generated under one regulatory regime, processed under
    another, and the institution's governance authority does not
    reach the operating regime. The paper recommends common
    cross-border data-sharing frameworks as the architectural
    response. The case is included as a frontier — it documents the
    governance architecture needed for responsible adoption rather
    than a completed success — and it is valuable because it
    surfaces a seam (extraterritorial hosting) the US-centric canon
    rarely confronts, and that is increasingly universal as
    institutions everywhere build on cloud and AI services they do
    not control.
  ],
  sections: (
    [
      The standard framing of learning-analytics governance assumes
      that the operating institution, the regulatory regime, and the
      hosting infrastructure are co-located — a US university under
      US law on US-hosted infrastructure, a UK university under UK
      law on UK or EU infrastructure. African higher education sits
      structurally outside this assumption. Most universities across
      the continent rely on learning-management systems, predictive
      analytics tools, and adjacent platforms hosted by providers
      based in the Global North or in Asia, and the regulatory
      regimes governing those providers are not the same as the
      regimes governing the institutions or the students.#cn()
    ],
    [
      Prinsloo, Slade, and Khalil's 2022 paper in the _British
      Journal of Educational Technology_ maps the legal and
      regulatory privacy landscape across African jurisdictions.
      The picture is one of a continent in motion: a growing trend
      toward comprehensive data-protection legislation following
      the model the EU established with GDPR, but with few
      frameworks yet enacted and substantial variation across
      countries in scope, enforcement capacity, and cross-border
      data-transfer policy. Some countries have comprehensive
      frameworks; some have sectoral protections; some have
      constitutional privacy provisions without operational
      data-protection legislation; and the patchwork makes the
      cross-border picture itself uneven.#cn()
    ],
    [
      The structural seam the paper surfaces is what makes the case
      teachable. When student data is generated under one
      jurisdiction's regulatory regime, processed under another's
      because the platform is hosted abroad, and the institution's
      governance authority does not reach the operating regime, the
      governance question becomes architectural rather than
      institutional. The authors recommend common cross-border
      data-sharing frameworks as the architectural response — the
      kind of inter-regime instrument that GDPR's adequacy decisions
      and successor cross-border-transfer mechanisms began to
      construct between the EU and other regimes, but that no
      comparable continent-wide African framework yet provides.
      The case names the gap and the architectural response; what
      it does not yet document is the build-out.#cn()
    ],
    [
      The honest evidentiary state is what the frontier tag carries.
      The paper is peer-reviewed and the mapping is grounded in
      legal documentation across jurisdictions; what the case does
      not establish — because the architecture is not yet built —
      is that any specific cross-border framework has been adopted
      and that the seam has been closed in practice. The case is
      teachable on the structural pattern: the governance question
      is the architectural one across regimes, not the policy one
      inside any single regime. The outcome is open in the sense
      that no continent-scale resolution yet exists. Future
      validation will continue as African data-protection law
      consolidates.#cn()
    ],
    [
      The frontier note the case carries names what the v2 sweep
      calls extraterritorial platform governance — capability
      deployed on platforms governed by a different regime than the
      one operating them. The pattern is not African-specific. It is
      increasingly universal as institutions everywhere build on
      cloud, AI, and platform services they do not control: a US
      university on a US cloud is the historical case; a US
      university running analytics through a model-hosted-elsewhere
      service, a Latin American university on a US cloud, an
      African university on a European platform — all share the
      structural seam, and the African case surfaces it most
      starkly because the regime asymmetry is largest there. The
      case is the case-grounded basis for proposing
      extraterritorial-platform-governance as a sub-competency the
      existing curriculum does not yet name.
    ],
  ),
  beats: (
    "African higher education frequently uses LA platforms hosted by external providers — cross-regime seam between operating, regulating, and hosting jurisdictions",
    "Prinsloo, Slade, & Khalil 2022 (BJET) map the African privacy landscape: growing trend, few frameworks enacted, cross-border policy uneven",
    "Recommendation: common cross-border data-sharing frameworks — the architectural response to the inter-regime seam",
    "Frontier — outcome open; the architecture is not yet built and no continent-scale resolution exists",
    "Names the extraterritorial-platform-governance pattern: increasingly universal as everyone builds on services they do not control",
  ),
  approaches: (
    during: (
      [Map the regime structure explicitly: which jurisdiction generates the data, which processes it on the platform, which the institution operates under, which the student lives under. The seam is at the joints, and the joints have to be drawn before the architecture can be designed.],
      [Choose the platform stack with the regime structure in view; a procurement decision is also a governance decision when the platform is in a different jurisdiction from the operating institution.],
      [Treat the architectural response as common cross-border frameworks rather than institution-by-institution contract negotiation; the inter-regime instrument is what scales.],
    ),
    after: (
      [Surface the extraterritorial-platform-governance pattern in any v2 case that involves cloud/AI infrastructure; the African case is the starkest instance, not the only one.],
      [Carry the outcome-open honesty: the architecture is not yet built, and the case names the gap rather than a completed success.],
      [Build the case-grounded basis for proposing extraterritorial-platform-governance as a sub-competency the existing curriculum does not yet name; pair with the OU and LALA cases at the governance-by-design layer.],
    ),
  ),
  references: (
    [Prinsloo, P., & Kaliisa, R. (2022), "Data privacy on the African continent: Opportunities, challenges and implications for learning analytics," _British Journal of Educational Technology_ 53(4):894–913, doi:10.1111/bjet.13226.],
    [African Union Convention on Cyber Security and Personal Data Protection (Malabo Convention, 2014) — continental policy backdrop, partial ratification.],
    [Slade & Prinsloo (2013), _American Behavioral Scientist_ — earlier framing on which the 2022 paper builds.],
    [Open University Ethical Use of Student Data policy (2014) — single-regime governance-by-design companion.],
  ),
  quote: [The governance question is architectural across regimes, not policy inside any single regime. The seam is at the joints, and the joints have to be drawn before the architecture can be designed.],
  quote-source: "Editors' synthesis of Prinsloo, Slade, & Khalil (2022).",
  le-insight: [
    The African data-privacy case names a governance seam the
    existing curriculum underweights: extraterritorial-platform
    governance, where the operating, regulating, and hosting
    regimes diverge. The case is a frontier — peer-reviewed
    mapping, architectural recommendation, no continent-scale
    resolution yet built. The pattern is increasingly universal,
    and the case-grounded basis is the case for naming a
    sub-competency the framework does not yet have.
  ],
  lens-approach: [
    African data privacy is the extraterritorial-platform
    governance case (induced 5.3; LENS D5/PT6) — Domain 5 for
    the cross-regime seam; Domain 3 for *Judgment under
    inadequate evidence* on a frontier where the architectural
    response is recommended but not built. Pair with Case 81
    and Case 91.
  ],
  literature-items: (
    [Prinsloo, Slade, & Khalil (2022), _BJET_, doi:10.1111/bjet.13226],
    [Malabo Convention (2014) — AU continental policy],
    [Slade & Prinsloo (2013), _American Behavioral Scientist_],
  ),
  reflection-list: (
    [Identify a platform or service your institution depends on whose operating regime is different from your own. Which jurisdiction generates the data, which processes it, which regulates the institution, which regulates the user — and where is the seam between regimes?],
    [Specify the architectural response your context needs: an institution-by-institution contractual approach, a sectoral framework, a cross-border data-sharing instrument. Which level resolves the seam, and which level cannot?],
    [The case names extraterritorial platform governance as an under-named sub-competency. What instance from your domain would anchor it — a cloud-hosted clinical analytics tool, a model-as-a-service inference layer, a learning-platform vendor in a different jurisdiction — and how is the curriculum response different from a single-regime governance case?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 9"),
)

// ---- Case 90 — algorithmic-college-admissions-vendors ----
#case(
  number: 90,
  slug: "algorithmic-college-admissions-vendors",
  title: "Algorithmic College Admissions — Vendors' Claims vs. Applicants' Perceptions",
  year: "2025",
  domains-list: ("higher education", "algorithmic decision-making", "human-computer interaction"),
  modes-code: "TKN",
  impact: "Eighteen semi-structured interviews with recent U.S. university applicants, using speculative-design probes, surfaced systematic distances between vendor marketing claims (efficiency, fairness, enhanced fit) and applicants' own perceptions (opacity, distrust, anticipated discrimination)",
  kind: "frontier",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.4",
  lens-anchor: "D5/PT6",
  clo-anchor: "CLO-5, CLO-3",
  coi: "Institutional overlap: John Katzman collaborates with an editor's institution (Johns Hopkins) but was not involved in this work. Pyle and Andalibi's study is independent of Katzman; the case sits on the applicant side of enrollment management.",
  summary: [
    Pyle and Andalibi (CSCW 2025) report an interview study with
    18 recent U.S. university applicants, using speculative-design
    probes to surface how applicants perceive algorithmic systems
    operating in college admissions and enrollment. The study's
    central contribution is naming the systematic distance between
    vendor marketing claims — efficiency, fairness, enhanced fit —
    and applicants' own perceptions of how the systems would
    treat them: opacity about the algorithm's existence, distrust
    of its objectives, and anticipated discrimination across
    protected characteristics. The case is the peer-reviewed
    consent-side companion to Case 55 (Engler / enrollment
    algorithms) and Case 57 (GAO OPM oversight gap). The
    authors' own hedge is explicit: 18 interviews is the right
    sample for the speculative-design method but not for
    prevalence claims, and "future validation ongoing" applies
    to whether the perception patterns generalize across
    applicant demographics and institution types.
  ],
  sections: (
    [
      The deployment surface for algorithmic systems in college
      admissions and enrollment has been studied largely from the
      institutional side — what vendors promise, what colleges
      buy, what optimization outcomes the institution reports.
      The applicants whose lives the deployment most directly
      affects have been the structurally absent voice in the
      deployment record. Pyle and Andalibi's CSCW 2025 paper is
      the systematic peer-reviewed correction at the consent-side
      seam: an interview study with 18 recent U.S. university
      applicants, using speculative-design probes calibrated to
      surface applicants' perceptions of algorithmic systems
      operating on their applications.#cn()
    ],
    [
      The speculative-design method is the right instrument for
      the question. Applicants in most cases do not know which
      specific algorithmic systems acted on their applications;
      the institutional side does not disclose the vendor stack
      or the optimization objective at the point of application.
      Speculative-design probes — scenario sketches that
      concretize plausible algorithmic interventions and ask
      applicants to react — let the study elicit perceptions
      that are not contingent on the applicant having direct
      knowledge of the deployed system. The 18-interview sample
      is calibrated to the method's depth rather than to
      prevalence-claim breadth, and the authors are explicit
      about that calibration as a methodological choice.#cn()
    ],
    [
      The findings name systematic distance between vendor
      marketing and applicant perception across three axes.
      Vendor marketing pitches efficiency — the system processes
      more applications faster — while applicants name opacity:
      they do not know which decisions are being made
      algorithmically and they cannot interrogate the system's
      logic. Vendor marketing pitches fairness — the system
      treats applicants consistently — while applicants name
      distrust of the objective the system is consistent with.
      Vendor marketing pitches enhanced fit — the system matches
      applicants to programs likely to serve them well — while
      applicants name anticipated discrimination across protected
      characteristics, drawing on the broader public record of
      algorithmic disparate-impact findings.#cn()
    ],
    [
      The case sits as the consent-side counterpart to Case 55
      (Engler / Brookings, the deployment-side mapping) and Case
      159 (GAO-22-104463, the regulator-side audit). Engler
      documents the deployed algorithmic optimization; the GAO
      audit documents the regulatory oversight gap; Pyle and
      Andalibi document what the affected applicants understand
      about the deployment. The three cases together name the
      structural seam: a deployed system about which the
      institutional side, the regulator, and the affected
      population each hold partial and non-overlapping
      information. The case also pairs with Cases 186 (Bartlett
      lending fairness) and 138 (Gándara community-college equity)
      as the applicant-perception strand of the equity-in-
      deployed-prediction thread.#cn()
    ],
    [
      The authors' hedges are binding on the case's framing.
      Eighteen semi-structured interviews is the right N for the
      speculative-design method, surfacing the dimensions of
      perception that matter, but it is not the right N for
      claims about prevalence — what fraction of applicants hold
      each perception, how the perceptions distribute across
      demographic groups, how they correlate with admissions
      outcomes. The case is the strongest peer-reviewed evidence
      currently available on the consent-side question; future
      validation ongoing on whether the perception patterns
      generalize across applicant demographics, institution
      types, and the rapidly evolving algorithmic-deployment
      landscape.
    ],
  ),
  beats: (
    "Pyle & Andalibi CSCW 2025: 18 semi-structured interviews with U.S. university applicants, speculative-design probes",
    "Systematic distance: vendor marketing (efficiency, fairness, fit) vs. applicant perceptions (opacity, distrust, anticipated discrimination)",
    "Consent-side companion to Case 55 (Engler deployment) and Case 57 (GAO regulator-side); applicants as structurally absent voice",
    "Authors' hedge: 18 interviews is right for speculative-design depth, not for prevalence claims; future validation ongoing",
    "Anchors the applicant-perception strand alongside Cases 186 (Bartlett) and 138 (Gándara) in the equity-in-prediction thread",
  ),
  approaches: (
    during: (
      [Include the affected-population voice in the deployment-decision record from the start; the systematic distance the study documents is partly the result of decision processes that did not include the affected voice.],
      [Use speculative-design probes when the affected population cannot be expected to know what is deployed; the method is the right instrument for the consent-side question and the institutional side can commission it.],
      [Treat the three perceived gaps — opacity, distrust, anticipated discrimination — as designable targets, not as misperceptions to correct; the perceptions are responses to the actual disclosure architecture.],
    ),
    after: (
      [Commission the prevalence study the speculative-design study cannot perform; the perception patterns the 18-interview study surfaces are testable at survey scale, and the deployment-side institutions are best positioned to commission the survey.],
      [Pair the consent-side study with the regulator-side audit (Case 57) and the deployment-side mapping (Case 55) in the curriculum; the three cases together name the partial-information structure of the deployment.],
      [Track the perception findings over time as the algorithmic-deployment landscape evolves; the case's value as a longitudinal baseline depends on the comparison studies that come next.],
    ),
  ),
  references: (
    [Pyle, C., & Andalibi, N. (2025), "Algorithmic College Admissions in the U.S.: Distances Between Vendors' Claims and Applicants' Perceptions," _Proceedings of the ACM on Human-Computer Interaction_ 9(7), CSCW369, doi:10.1145/3757550.],
    [Engler (2021), Brookings — paired deployment-side mapping (Case 55).],
    [GAO-22-104463 (2022) — paired regulator-side audit (Case 57).],
    [Dunne, A., & Raby, F. (2013), _Speculative Everything_ — methodological backdrop for speculative-design probes.],
  ),
  quote: [Vendors pitch efficiency, fairness, and fit. Applicants name opacity, distrust, and anticipated discrimination. The distance between the two is the case.],
  quote-source: "Editors' synthesis of Pyle & Andalibi (2025).",
  le-insight: [
    Pyle and Andalibi is the peer-reviewed consent-side case at
    the applicant end of the enrollment-management deployment.
    Eighteen interviews surface systematic distance between
    vendor marketing and applicant perception across three axes;
    the authors' methodological hedge is binding on prevalence
    claims. The case completes the partial-information triangle
    with Cases 55 (deployment-side) and 180 (regulator-side).
  ],
  lens-approach: [
    Pyle & Andalibi is the governance-rather-than-technique case
    at the consent boundary (induced 8.4; LENS D5/PT6). LENS uses
    it in Domain 5 (Navigating Sociotechnical Constraints) for
    the affected-voice inclusion lesson and in Domain 3 (Machine
    Teaming and Adaptation) for the disclosure-architecture
    design at the applicant interface. Pair with Cases 55
    (Engler deployment), 180 (GAO oversight), 103 (Bartlett),
    and 138 (Gándara). coi-light render under the title is
    binding for cluster placement.
  ],
  literature-items: (
    [Pyle & Andalibi (2025), CSCW — algorithmic admissions perceptions],
    [Dunne & Raby (2013), _Speculative Everything_],
    [Engler (2021) and GAO-22-104463 — paired deployment- and regulator-side cases],
  ),
  reflection-list: (
    [Identify a deployed prediction system in your domain whose affected population was not consulted in the deployment-decision record. What would a speculative-design study look like for surfacing the affected voice — and who is positioned to commission it?],
    [Specify the three perceived gaps — opacity, distrust, anticipated discrimination — for the system you identified. Which of the three is a disclosure-architecture target, which is an objective-choice target, and which is an audit-evidence target?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 8"),
)

// ---- Case 91 — lala-building-learning-analytics ----
#case(
  number: 91,
  slug: "lala-building-learning-analytics",
  title: "LALA — Building Learning-Analytics Governance Capacity Across Latin America",
  year: "2017 – 2020",
  domains-list: ("higher education (Latin America)", "learning analytics", "cross-national governance"),
  modes-code: "KN",
  impact: "An EU-funded multi-country project (Chile, Ecuador, Mexico) that explicitly rejected lifting Global-North learning-analytics tools wholesale; structured interviews with administrators and focus groups with students and teachers produced the LALA CANVAS participatory adoption framework, with stakeholders demanding ethical responsibility as a precondition for data-driven feedback",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "5.1",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-5, CLO-3",
  summary: [
    The LALA (Learning Analytics for Latin America) project, funded
    under EU grant 586120-EPP-1-2017-1-ES, ran from 2017 to 2020
    across Chilean, Ecuadorian, and Mexican universities. The project
    began from a deliberate refusal: not to lift US and European
    learning-analytics tools wholesale into Latin American
    institutional contexts, on the grounds that adoption fails when
    the tools do not integrate with local learning design and
    institutional decision-making. Through structured interviews with
    administrators and focus groups with students and teachers, the
    Hilliger et al. team (_Internet and Higher Education_, 2020)
    surfaced what stakeholders actually needed for adoption to be
    locally legitimate, and built the LALA CANVAS — a participatory
    adoption framework that puts ethical responsibility on the
    front-end of the adoption decision, not as a compliance
    afterthought. The honest limit preserved verbatim: this is
    adoption-readiness and capacity-building evidence, not yet
    long-run outcome evidence that the deployed systems improved
    student retention or learning. The contribution is the
    participatory governance method that made adoption locally
    legitimate — and the case is the non-US companion to OU Analyse
    (Case 81), where governance-by-design unblocked deployment in
    a different cross-cultural context.
  ],
  sections: (
    [
      Learning analytics as a field is heavily Global-North-shaped.
      The reference tools (predictive at-risk classifiers, dashboard
      analytics for instructors, early-warning systems) were
      developed at US and European universities with US and European
      governance assumptions about data, consent, and institutional
      decision-making. The LALA project began from the documented
      observation that lifting those tools wholesale into Latin
      American institutional contexts had failed before — adoption
      stalled, instructors did not use the dashboards, students did
      not trust the predictions — and that the failure was
      structural, not technical: the tools had not been integrated
      with the local learning design or the institutional
      decision-making process they were meant to inform.#cn()
    ],
    [
      The project ran across Chilean, Ecuadorian, and Mexican
      universities under an EU Erasmus+ grant from 2017 to 2020.
      The method's first commitment was participatory: structured
      interviews with administrators surfacing what their decisions
      actually needed evidence about; focus groups with teachers
      and students surfacing what they would accept, what they
      would resist, and what they wanted the analytics to do.
      Hilliger et al. (_Internet and Higher Education_, 2020) is
      the peer-reviewed mixed-methods report that documents the
      method and the findings. The headline result is that
      stakeholders consistently named ethical responsibility as a
      precondition for data-driven feedback rather than as a
      compliance burden — they wanted the analytics, conditional on
      the governance being right first.#cn()
    ],
    [
      The deliverable is the LALA CANVAS — a participatory adoption
      framework that walks an institution through the decisions
      that have to be made before a learning-analytics system is
      deployed: which questions the system is for, which
      stakeholders' consent is required, what disclosure is owed,
      what the operating governance will look like once the system
      runs. The framework's contribution is procedural: it converts
      the governance question from a yes/no gate at deployment time
      into a structured set of decisions taken openly during the
      adoption process. The participatory method made the framework
      locally legitimate across three regimes whose own data
      governance is differently mature.#cn()
    ],
    [
      The honest limit survives into the case. The published
      evidence is adoption-readiness and capacity-building
      evidence: the CANVAS was developed and validated through the
      participatory process, and the project produced trained local
      teams with the capacity to lead adoption in their own
      institutions. What the evidence does *not* yet establish is
      that the deployed systems improved long-run student
      retention or learning outcomes. The case is teachable on the
      governance method — the participatory route to local
      legitimacy — and the outcome evidence is the next study, not
      this one. Drafting that softens this hedge over-states the
      claim.#cn()
    ],
    [
      In pair with the Open University case (Case 81, the UK
      consent-by-design intervention), LALA shows that the
      governance-by-design pattern is transferable across regimes:
      OU built consent for a single-institution intervention under
      pre-GDPR UK scrutiny; LALA built participatory adoption for
      multi-country capacity-building under three different Latin
      American regulatory regimes. The pair plus SyRI (Case 189)
      teaches the non-US LA governance triple — design that
      unblocked deployment (OU), participatory governance that
      built adoption capacity (LALA), and rights-grounded halt
      (SyRI) — three honest results for the same structural
      question of when delegation to analytic infrastructure is
      legitimate.
    ],
  ),
  beats: (
    "LALA (EU Erasmus+, 2017–2020): explicit refusal to lift Global-North LA tools wholesale into Latin American institutions",
    "Structured interviews with administrators and focus groups with students and teachers across Chile, Ecuador, Mexico",
    "Hilliger et al. 2020 (Internet and Higher Education): stakeholders demand ethical responsibility as precondition, not afterthought",
    "Deliverable is the LALA CANVAS — participatory adoption framework converting governance from a deployment gate to a structured set of decisions",
    "Honest limit: adoption-readiness / capacity-building evidence, not yet long-run outcome evidence that deployed systems improved retention",
  ),
  approaches: (
    during: (
      [Begin from the documented failure mode — Global-North tools that did not transfer — so the adoption project is designed against the actual local barrier, not against an imagined universal one.],
      [Run the participatory method with administrators, teachers, and students separately; the decisions, the daily use, and the consent each sit with a different stakeholder.],
      [Convert the governance question from a yes/no deployment gate into a structured set of decisions surfaced during adoption; the CANVAS is the worked artifact of that conversion.],
    ),
    after: (
      [Report the evidence at its tier: adoption-readiness and capacity-building is what the published study establishes; long-run student-outcome evidence is the next study, and the case names that gap rather than glossing it.],
      [Commission longitudinal follow-up at the institutions that adopted via the CANVAS to convert capacity-building evidence into deployed-outcome evidence over time.],
      [Carry the cross-regime lesson into the broader v2 governance set: governance-by-design is transferable, but the local participatory process is the half that does not transfer; each regime has to do it for itself.],
    ),
  ),
  references: (
    [Hilliger, Ortiz-Rojas, Pesántez-Cabrera, Scheihing, Tsai, Muñoz-Merino, Broos, Whitelock-Wainwright, & Pérez-Sanagustín (2020), "Identifying needs for learning analytics adoption in Latin American universities: A mixed-methods approach," _The Internet and Higher Education_ 45:100726, doi:10.1016/j.iheduc.2020.100726.],
    [LALA project — EU Erasmus+ grant 586120-EPP-1-2017-1-ES (2017–2020) — program documentation and the LALA CANVAS artifact.],
    [Open University Ethical Use of Student Data policy (2014) and OU Analyse — UK companion governance-by-design case (Case 81).],
    [Slade & Prinsloo (2013), "Learning Analytics: Ethical Issues and Dilemmas," _American Behavioral Scientist_ 57(10):1510–1529 — the broader field-scale ethics framing.],
  ),
  quote: [Stakeholders did not want the analytics if the governance was wrong. They wanted both, in that order, with ethical responsibility as the precondition rather than the afterthought.],
  quote-source: "Editors' synthesis of Hilliger et al. (2020).",
  le-insight: [
    LALA converted learning-analytics adoption from a Global-North
    template-lift into a participatory process that built local
    legitimacy across three Latin American regimes. The CANVAS is
    the artifact; the participatory method is the deliverable.
    The honest limit — adoption-readiness evidence, not yet
    long-run outcome evidence — is what the case carries, and the
    outcome study is the next one.
  ],
  lens-approach: [
    LALA is the non-US participatory-governance case
    (induced 5.1; LENS D5/PT4) — Domain 5 for the cross-regime
    participatory method; Domain 3 on *Judgment under
    inadequate evidence* (adoption-readiness, not closed
    outcome proof). Pair with Case 81 (OU) and Case 189
    (SyRI).
  ],
  literature-items: (
    [Hilliger et al. (2020), _Internet and Higher Education_, doi:10.1016/j.iheduc.2020.100726],
    [LALA CANVAS — project artifact],
    [Slade & Prinsloo (2013), _American Behavioral Scientist_],
  ),
  reflection-list: (
    [Identify a tool or framework in your domain that has been lifted from one regime to another without local adaptation. What participatory method would surface what the destination stakeholders actually need, and what would convert the governance question into a structured set of decisions during adoption rather than a gate at deployment?],
    [Specify the evidence tier honestly for an adoption-readiness case in your context: capacity-building and process evidence is what you can publish now; long-run outcome evidence is the next study. Where in your communication is the tier most at risk of being smoothed away?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 92 — norways-national-expert-commission-on ----
#case(
  number: 92,
  slug: "norways-national-expert-commission-on",
  title: "Norway's National Expert Commission on Learning Analytics",
  year: "2022 – 2023",
  domains-list: ("education (Norway)", "national policy", "learning analytics"),
  modes-code: "GKN",
  impact: "Rather than let learning analytics diffuse unregulated or block it, Norway's Ministry of Education convened a national Expert Commission to investigate the pedagogical, ethical, legal, and privacy issues and establish a regulatory foundation before sector-wide deployment; interim report June 2022, final report 2023 (NOU), with central dilemmas explicitly framed",
  kind: "intervention",
  scale: "big",
  evidence-source: "program-report",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-5, CLO-3",
  summary: [
    Norway's Ministry of Education convened a national Expert
    Commission on Learning Analytics in 2022 — a national-government
    response to a capability deployment question at sector scale.
    Rather than let learning analytics diffuse unregulated across
    Norwegian education, or block it on precautionary grounds, the
    ministry chose to construct the governance architecture first.
    The commission delivered an interim report to the Minister in
    June 2022 and a final report in 2023 (the NOU,
    _Norges offentlige utredninger_, the canonical form of Norwegian
    public commission reports) identifying central dilemmas across
    the pedagogical, ethical, legal, and privacy dimensions. The
    case is governance-as-deliberate-artifact at national scale — a
    country treating change-control and disclosure as the
    precondition for adoption rather than the consequence of it. The
    honest limit preserved verbatim: the commission's
    recommendations were guidance to a ministry, and downstream
    sector outcomes — whether deployed Norwegian LA systems actually
    improved learning outcomes or preserved trust under operation —
    are not yet documented. This is process-level evidence (a
    national governance artifact exists, the dilemmas are named),
    not yet deployment-outcome evidence. The case pairs with the
    OU (Case 81) and SyRI (Case 189) cases as the national
    Nordic complement to the institutional-UK and judicial-Dutch
    governance modes.
  ],
  sections: (
    [
      Learning analytics at sector scale presents a national
      government with a structural choice. Let the technology diffuse
      across schools and universities under existing patchwork
      governance (Sweden's path through the 2010s), or block it on
      precautionary grounds until questions are settled (a path some
      jurisdictions have pursued for specific applications), or
      construct the governance architecture first and let deployment
      follow under it. Norway in 2022 chose the third path. The
      Ministry of Education convened a national Expert Commission
      on Learning Analytics to investigate the pedagogical, ethical,
      legal, and privacy issues across the whole education sector
      and to establish a regulatory foundation for what
      sector-scale deployment should look like.#cn()
    ],
    [
      The commission's mandate covered the full chain. Pedagogically,
      what kinds of learning-analytics-driven interventions are
      defensible at primary, secondary, and tertiary levels; what
      claims about outcome the evidence supports; what
      teacher-student relationship the analytics should and should
      not be allowed to alter. Ethically, what is owed to students
      whose data drives the analytics, what consent architecture is
      defensible across age groups, and what disclosure structure
      the analytics-driven decisions should carry. Legally, how the
      Norwegian data-protection regime under GDPR interacts with
      the educational context, and what additional sectoral
      instruments are needed. Privacy, where the line is between
      pedagogically useful data and surveillance overreach.#cn()
    ],
    [
      The commission delivered an interim report to the Minister of
      Education and Research in June 2022 and a final report in
      2023 in the canonical NOU form. The reports name central
      dilemmas the field has to live with rather than resolve once:
      the tension between predictive support and predictive
      gatekeeping; the tension between transparency to the student
      and the technical complexity of the models; the tension
      between cross-institutional benchmarking and student-data
      protection; the tension between national pedagogical
      consistency and institutional autonomy in how analytics are
      used. The reports' framing is that governance for
      learning analytics is the kind of artifact that has to be
      revisited as the technology and the evidence base change, not
      a one-time document.#cn()
    ],
    [
      The honest evidentiary state is process-level. The case
      establishes that a national government can produce a
      structured governance artifact, identify the dilemmas
      sector-scale deployment will face, and deliver the
      architecture as guidance to a ministry. The case does *not*
      yet establish that downstream Norwegian sector outcomes —
      improved learning, preserved trust, defensible interventions
      — have been delivered, because deployment under the new
      architecture is too recent for outcome evidence. This is a
      governance-process success, not yet a measured
      deployment-outcome success, and the case carries the
      qualification rather than collapsing it.#cn()
    ],
    [
      In pair with the Open University (Case 81, institutional
      governance-by-design, UK) and SyRI (Case 189, judicial
      rights-grounded halt, Netherlands), Norway's commission is
      the national-scale governance-architecture mode. The three
      cases together teach that learning-analytics governance can
      be produced at the institutional level (OU), constrained by
      the courts after the fact (SyRI), or constructed by national
      deliberation before sector deployment (Norway). The
      structural lesson is that governance is producible as a
      deliverable at whichever level matches the deployment scope,
      and the choice of level is itself a governance decision the
      case literature names.
    ],
  ),
  beats: (
    "Norway's Ministry of Education convenes national Expert Commission on Learning Analytics in 2022 — sector-scale governance-first response",
    "Mandate covers pedagogical, ethical, legal, and privacy dimensions across the whole education sector",
    "Interim report June 2022, final report 2023 (NOU) names central dilemmas: predictive support vs gatekeeping, transparency vs model complexity, benchmarking vs data protection",
    "Honest limit: process-level evidence (artifact exists, dilemmas named); downstream sector outcomes not yet documented — governance-process success, not yet deployment-outcome success",
    "Pair with OU (Case 81, institutional) and SyRI (Case 189, judicial); national-scale governance-architecture mode in the non-US LA triple",
  ),
  approaches: (
    during: (
      [Match the governance artifact to the deployment scope: institutional governance for a single university, national commission for sector-scale deployment, judicial review when neither operates. The choice of level is itself a governance decision.],
      [Convene the commission with the dimensional breadth the deployment actually has: pedagogical, ethical, legal, privacy — not only the dimension the most-visible objection sits on.],
      [Frame the artifact as living: governance for a moving technology has to be revisited as the technology and the evidence base change, and the artifact should say so.],
    ),
    after: (
      [Report the evidence at its tier: governance-process success is what the commission and NOU establish; deployment-outcome success is the next decade's work, and the case is honest about the gap.],
      [Carry the central dilemmas into the implementation conversation rather than treating them as resolved by publication of the NOU; the dilemmas are what implementation will live with.],
      [Use the case as the national-scale instance in the OU / LALA / SyRI / Norway non-US LA governance set; the joint teaching point is that governance is producible at whichever level matches the deployment scope.],
    ),
  ),
  references: (
    [Norwegian Expert Commission on Learning Analytics, interim report to the Minister of Education and Research (June 2022).],
    [Norwegian Expert Commission on Learning Analytics, final NOU report (2023), _Norges offentlige utredninger_.],
    [Misiejuk & Wasson (2023), "Learning analytics in Norway: A national perspective," _Journal of Learning Analytics_ — secondary academic synthesis of the commission and its dilemmas.],
    [Hilliger et al. (2020), _Internet and Higher Education_ — the LALA companion at multi-country participatory scale (Case 91).],
  ),
  quote: [The commission did not resolve learning-analytics governance for Norway. It named the dilemmas the sector will live with and produced the artifact deployment can be governed under.],
  quote-source: "Editors' synthesis of the Norwegian Expert Commission interim and final reports.",
  le-insight: [
    Norway's national Expert Commission is the
    governance-architecture-at-national-scale instance: a country
    constructing the regulatory and pedagogical foundation before
    sector-scale learning-analytics deployment, rather than after
    diffusion or via judicial halt. The artifact exists and the
    dilemmas are named; downstream sector outcomes are not yet
    documented. Process-level success; deployment-outcome
    evidence is the next decade's work.
  ],
  lens-approach: [
    Norway is the national-scale governance-architecture case
    (induced 5.4; LENS D5/PT4). LENS uses it in Domain 5
    (Navigating Sociotechnical Constraints) for the change-
    control-and-disclosure-as-artifact discipline and in
    Domain 4 (Test and Evaluation) for the CLO *Judgment
    under inadequate evidence* on the process-vs-outcome tier.
    Pair with Case 81 (OU, institutional), Case 189 (SyRI,
    judicial), Case 91 (LALA, multi-country participatory),
    and Case 89 (African data privacy, frontier) — the non-US
    LA governance pentad teaching the level-of-governance
    decision.
  ],
  literature-items: (
    [Norwegian Expert Commission interim report (2022) and final NOU (2023)],
    [Misiejuk & Wasson (2023), _JLA_ — secondary synthesis],
    [Hilliger et al. (2020), _Internet and Higher Education_],
  ),
  reflection-list: (
    [Identify a sector-scale capability deployment question in your domain. Is the right governance level institutional, sectoral, national, or judicial — and what determines the match between deployment scope and governance level?],
    [Specify the dimensional breadth your commission or governance artifact would have to cover. Norway's mandate was pedagogical, ethical, legal, and privacy. What is the analog in your context, and which dimension is most at risk of being narrowed away under stakeholder pressure?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 93 — singapore-skillsfuture-national ----
#case(
  number: 93,
  slug: "singapore-skillsfuture-national",
  title: "Singapore SkillsFuture — National Workforce Capability at Scale",
  year: "2015 – present",
  domains-list: ("workforce development", "national L&D policy", "Asia-Pacific"),
  modes-code: "GKD",
  impact: "Singapore's SkillsFuture pairs individual training credits with employer subsidies, a cross-sector skills framework, and a two-wave outcome survey (TRAQOM, at end-of-course and at six months) — a 2018 MTI study found a 5.8% real wage premium for WSQ-trained workers, with 87% of Work-Study Programme graduates employed full-time within six months",
  kind: "intervention",
  scale: "big",
  evidence-source: "program-report",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "2.4",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-2, CLO-5, CLO-3",
  summary: [
    Singapore's SkillsFuture Movement, launched in 2015, pairs
    individual training credits with employer subsidies, a
    cross-sector skills framework, and one of the most ambitious
    national L&D measurement instruments deployed at scale: the
    two-wave TRAQOM survey, administered at end-of-course and at
    six months post-training, paired with labor-market data.
    Self-reported figures from the 2024 Year-in-Review are
    strong: 98% of trainees report being able to perform better
    at work; 93% report the course played a pivotal role; 87% of
    Work-Study Programme graduates are employed full-time within
    six months; a 2018 MTI study found a 5.8% real wage premium
    for WSQ-trained workers. The honest reading the case carries
    into print: self-report dominates the headline numbers, and
    the program has not been subjected to a rigorous
    quasi-experimental external evaluation that would isolate
    the program's causal effect from underlying labor-market
    trends. SkillsFuture is the non-US national-scale L&D case
    the corpus needs for both the corporate / workforce L&D gap
    and the non-US/UK/EU gap. The evidence-tier flag is
    practice-synthesis: the program design and the TRAQOM
    instrument are documented in SSG annual reports and in ILO
    and Springer analyses, the headline outcomes are
    self-report, and future validation — particularly
    quasi-experimental causal evaluation — is ongoing.
  ],
  sections: (
    [
      SkillsFuture was launched in 2015 as a Singapore-wide
      workforce-capability program at the seam between
      individual upskilling, employer demand, and state
      coordination. The program design pairs individual
      training credits (SkillsFuture Credit), employer
      subsidies for workforce training, a cross-sector skills
      framework that defines competencies and progression paths
      across industries, and a Work-Study Programme that
      embeds learners in employer contexts during training.#cn()
    ],
    [
      The measurement instrument is unusually ambitious for a
      national L&D program. The Training Quality and Outcomes
      Measurement framework (TRAQOM) is a two-wave outcome
      survey administered at end-of-course and at six months
      post-training. It is paired with labor-market data so
      that self-reported outcomes can be cross-checked against
      employment and wage outcomes at population scale. The
      design crosses the Kirkpatrick Level-2 / Level-3 seam
      (Case 79) at policy level, not only program level.#cn()
    ],
    [
      The 2024 Year-in-Review reports headline figures: 98% of
      trainees report being able to perform better at work;
      93% report the course played a pivotal role; 87% of
      Work-Study Programme graduates are employed full-time
      within six months. A 2018 study by the Ministry of Trade
      and Industry found a 5.8% real wage premium for workers
      with a Workforce Skills Qualifications (WSQ)
      certification. The labor-market figures are the
      strongest available external corroboration of the
      self-report data.#cn()
    ],
    [
      The honest reading is the load-bearing teaching point.
      Self-report dominates the headline outcomes. The program
      has not been subjected to a rigorous quasi-experimental
      external evaluation that would isolate the program's
      causal effect from underlying labor-market trends — and
      Singapore's labor market has been strong across the
      program's deployment period. The TRAQOM design is one of
      the strongest national L&D instruments deployed, and
      what it cannot yet do is what no national L&D instrument
      yet does well: produce decision-grade causal evidence at
      population scale. Future validation is ongoing.#cn()
    ],
    [
      The LENS teaching point is that the program is a
      non-US national-scale case for the corporate / workforce
      L&D cluster (Cases 79, 65, 83, 70) and a non-US/UK/EU
      case for the geographic-coverage gap. The amended CLO on
      collaboration measurement is directly exercised: TRAQOM
      measures across employer-employee-state, not only
      across the training organization. Pair with Case 18
      (PEPFAR) for the global-health workforce-capability
      counterpart, and with Case 70 (HILS) for the
      design-side practitioner pattern that the SSG program
      operationalizes at policy scale. Evidence-tier flag is
      practice-synthesis; the design is documented, the
      causal magnitudes are open.#cn()
    ],
  ),
  beats: (
    "SkillsFuture launched 2015: individual training credits + employer subsidies + cross-sector skills framework + Work-Study Programme",
    "TRAQOM: two-wave outcome survey (end-of-course + six months) paired with labor-market data; ambitious national L&D instrument",
    "2024 Year-in-Review: 98% perform-better self-report; 93% pivotal role; 87% WSP graduates employed FT within 6 months; 2018 MTI 5.8% wage premium for WSQ-trained",
    "Honest reading: self-report dominates; no rigorous quasi-experimental causal evaluation; future validation ongoing",
    "Practice-synthesis tier; cross-listed Gap 2 (workforce L&D) + Gap 5 (non-US/UK/EU); pairs with Cases 70 (HILS) and 163 (PEPFAR)",
  ),
  approaches: (
    during: (
      [Design the measurement instrument across the training-and-employment seam, not within the training organization alone — TRAQOM's two-wave + labor-market cross-check is the architecture the LENS Domain 4 module should teach.],
      [Make the cross-sector skills framework a first-class artifact — without it the credits, the subsidies, and the Work-Study Programme do not cohere as a single workforce-capability deliverable.],
      [Treat the self-report dominance honestly: name what TRAQOM can and cannot establish at the design stage, so the program documentation does not have to retrofit the hedge.],
    ),
    after: (
      [Pair with Case 18 (PEPFAR) for the global-health workforce-capability counterpart at multi-country scale; together they teach what national- and program-scale L&D measurement at evidence-flagged tier looks like.],
      [Use the amended CLO on collaboration measurement: TRAQOM is a worked example of measurement across employer-employee-state, and the program documentation can teach the architecture in LENS Domain 5 (Sociotechnical Constraints).],
      [Carry the practice-synthesis flag honestly: the program design and the TRAQOM instrument are documented, the headline magnitudes are self-report, and future validation requires independent quasi-experimental causal evaluation.],
    ),
  ),
  references: (
    [SkillsFuture Singapore (SSG), Year-in-Review 2024 — program metrics and outcome reporting.],
    [Ministry of Education (MOE), Singapore, parliamentary replies on TRAQOM, 2020.],
    [International Labour Organization (ILO), "Investigating an Upskilling Programme in Singapore" — international comparative analysis.],
    ["Future-Skilling the Workforce: SkillsFuture Movement in Singapore," Springer, 2024 — peer-reviewed program analysis.],
    [Ministry of Trade and Industry (MTI), Singapore, 2018 — WSQ wage-premium study.],
  ),
  quote: [The instrument crosses the Level-2 / Level-3 seam at policy level. What it cannot yet do is what no national L&D instrument yet does well.],
  quote-source: "Editors' synthesis of the SkillsFuture Movement and the TRAQOM measurement framework.",
  le-insight: [
    SkillsFuture is the non-US national-scale L&D case the
    corpus needs. The TRAQOM instrument is among the most
    ambitious national L&D measurement architectures
    deployed; the headline outcomes are self-report dominant;
    no rigorous quasi-experimental external evaluation yet
    exists. Evidence-tier flag is practice-synthesis; future
    validation is ongoing.
  ],
  lens-approach: [
    SkillsFuture is the national workforce-capability case
    (induced 2.4; LENS D5/PT4). LENS uses it in Domain 5
    (Navigating Sociotechnical Constraints) for the amended
    CLO on collaboration measurement — TRAQOM measures
    across employer-employee-state — and in Domain 2 as the
    policy-scale operationalization of the HILS-style
    environment-and-event integration (Case 70). Pairs with
    Case 18 (PEPFAR) for the global-health
    workforce-capability counterpart.
  ],
  literature-items: (
    [SSG Year-in-Review 2024 and TRAQOM program documentation],
    [ILO and Springer (2024) program analyses],
    [MTI 2018 WSQ wage-premium study],
  ),
  reflection-list: (
    [Identify a workforce-capability program in your context that currently measures at the training-organization boundary. What would the analogue of TRAQOM — a two-wave outcome survey paired with employment-and-wage data at population scale — require of your measurement infrastructure?],
    [Specify the cross-sector skills framework that would coordinate individual credits, employer subsidies, and a Work-Study-style placement program in your context. Without the framework, do the components cohere as a single capability deliverable?],
    [SkillsFuture's headline magnitudes are self-report dominant. What independent quasi-experimental evidence — comparison-cohort design, regression discontinuity, instrumented variation — would you require before treating any specific outcome magnitude as decision-grade for a program-scale investment in your context?],
  ),
  courses: ("LEN 2", "LEN 4", "LEN 8"),
)

// ---- Case 94 — learning-analytics-on-the-african ----
#case(
  number: 94,
  slug: "learning-analytics-on-the-african",
  title: "Learning Analytics on the African Continent — A Scoping Review as the Present-State Map",
  year: "2022",
  domains-list: ("learning analytics", "higher education", "Africa"),
  modes-code: "KN",
  impact: "A 2022 scoping review found only 15 learning-analytics studies on the entire African continent, concentrated in Morocco, South Africa, Nigeria, and Ethiopia; the structural finding — limited LMS access, limited institutional resourcing, limited African-scholar visibility at SoLAR — is itself the evidence the field requires before construct-travel claims can be made",
  kind: "frontier",
  scale: "small",
  evidence-source: "peer-reviewed",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "8.4",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-4, CLO-5",
  summary: [
    Prinsloo and colleagues (2022) published a scoping review of
    learning-analytics research on the African continent for the
    _Journal of Learning Analytics_. The review found only 15
    studies meeting inclusion criteria, with publication output
    concentrated in Morocco, South Africa, Nigeria, and Ethiopia.
    The structural findings — limited LMS access in many African
    higher-education institutions, limited institutional
    resourcing for learning-analytics infrastructure, and limited
    African-scholar visibility at the Society for Learning
    Analytics Research (SoLAR) conferences — are the present-state
    map the field needs before importing US/UK/EU
    learning-analytics constructs into African contexts. The case
    is included as a frontier scoping case at the practice-
    synthesis tier: a review of an early-stage research base
    where the absence of dense primary studies is itself the
    finding. It pairs with the African data-privacy governance
    case earlier in the corpus to articulate the construct-travel
    problem in both research-base and governance terms. Future
    validation ongoing as the African learning-analytics
    literature matures.
  ],
  sections: (
    [
      Learning analytics as a field consolidated around 2011 with
      the formation of SoLAR and a research agenda anchored
      heavily in US, Australian, UK, and EU higher-education data
      infrastructures. The capability question for the African
      higher-education community is whether the analytic
      constructs travel — and who is positioned to validate them
      when they arrive. Prinsloo et al. set out to map what
      learning-analytics research had actually been published
      from African institutions at the time of writing.#cn()
    ],
    [
      The headline finding is sparse. The scoping review located
      only 15 learning-analytics studies on the African continent,
      with publication output concentrated in Morocco, South
      Africa, Nigeria, and Ethiopia. Adjacent South African
      higher-education studies — Lemmens and Henn (2015) and a
      2020 paper on the development of a contextualised
      learning-analytics framework — extend but do not change the
      magnitude of the gap. The corpus exists; it is small,
      geographically concentrated, and dwarfed by the parent
      field's publication output from US/UK/EU institutions.#cn()
    ],
    [
      The structural findings underneath the count are the
      load-bearing teaching. African higher-education
      institutions face limited LMS access at scale (many
      institutions still rely on heterogenous and intermittent
      digital infrastructure); limited institutional resourcing
      for the data-engineering, ethics-review, and analyst
      capacity that learning analytics presupposes; and limited
      African-scholar visibility at SoLAR and related venues. The
      construct-travel problem is not abstract — it is the
      mismatch between what the analytic frameworks assume about
      data availability and what the institutions can actually
      generate.#cn()
    ],
    [
      The case is positioned as frontier rather than failure or
      intervention because it does not document a deployed
      capability outcome. It documents the state of the evidence
      base, which is itself the relevant capability question for
      anyone considering whether to deploy a learning-analytics
      program in an African higher-education institution. The
      review surfaces the construct-validation work that has not
      yet been done; the absence of dense primary studies is the
      finding, and the implication is that any deployer must
      either undertake the validation work themselves or import
      constructs with the validation gap acknowledged.#cn()
    ],
    [
      The practice-synthesis-tier flag is load-bearing. A scoping
      review is the field's snapshot at a moment in time; the
      individual primary studies it draws on vary in rigor, and
      the review is the strongest single map of the present state
      but not the final account. Future validation ongoing as the
      literature matures, as institutional infrastructure
      improves, and as African scholars author more of the
      learning-analytics research that travels out of the
      continent rather than into it. The case carries the standing
      tier language into print.
    ],
  ),
  beats: (
    "Prinsloo et al. (2022) scoping review of learning analytics on African continent — 15 studies total",
    "Publication concentrated in Morocco, South Africa, Nigeria, Ethiopia; adjacent SA studies extend but do not change magnitude",
    "Structural barriers: limited LMS access, limited institutional resourcing, limited African-scholar visibility at SoLAR",
    "Construct-travel problem stated as research-base evidence; pairs with African data-privacy case for the governance side",
    "Frontier case; practice-synthesis-tier flag preserved; future validation ongoing as the literature matures",
  ),
  approaches: (
    during: (
      [When importing learning-analytics constructs into an African higher-education context, treat the scoping-review map as the precondition: do not assume the construct's validation literature applies and identify which validation work has to be repeated locally.],
      [Specify the institutional preconditions the analytic framework presupposes — LMS coverage, data-engineering capacity, ethics-review infrastructure — and audit them honestly against the deploying institution's actual conditions.],
      [Carry the practice-synthesis-tier flag through any decision document the scoping review supports; the review is the strongest current map but not the final account.],
    ),
    after: (
      [Treat each deployed learning-analytics program in an African institution as a contribution to the construct-validation literature, not only as a service intervention; publish the validation work where SoLAR and related venues can absorb it.],
      [Track institutional infrastructure conditions as a separate variable from analytic-construct performance; a construct that travels under one set of conditions may not travel under another.],
      [When the literature matures, retire the scoping review as the present-state map and replace it with denser primary-study evidence; the case is included because the present-state matters now, not because the present-state should persist.],
    ),
  ),
  references: (
    [Prinsloo, P., & Kaliisa, R. (2022), "Learning Analytics on the African Continent: An Emerging Research Focus and Practice," _Journal of Learning Analytics_; ResearchGate publication 361096718.],
    [Lemmens, J.-C., & Henn, M. (2015), South African Association for Institutional Research (SAAIR) proceedings — adjacent SA higher-education learning-analytics work.],
    [SciELO (2020), "Development of a contextualised learning-analytics framework for South African higher education."],
    [Cross-reference: the African data-privacy governance case earlier in the corpus, for the construct-travel problem stated in governance terms.],
  ),
  quote: [The absence of dense primary studies is itself the finding.],
  quote-source: "Editors' synthesis of Prinsloo et al. (2022).",
  le-insight: [
    The scoping review is the present-state map of
    learning-analytics research on the African continent: 15
    studies, geographically concentrated, with the structural
    barriers (LMS access, institutional resourcing,
    African-scholar SoLAR visibility) underneath the count.
    Practice-synthesis-tier — a snapshot of an early-stage
    literature; future validation ongoing as the field
    matures.
  ],
  lens-approach: [
    African learning-analytics scoping is the non-US
    frontier-evidence case (induced 8.4; LENS D5/PT4). LENS
    uses it in Domain 5 (Navigating Sociotechnical
    Constraints) for the construct-travel problem and in
    Domain 4 (Test and Evaluation) for the CLO *Judgment under inadequate evidence* — the deployer must
    decide on what to import and what to validate locally
    when the validation literature is thin. Pairs with the
    African data-privacy governance case for the
    construct-travel problem stated in governance terms.
  ],
  literature-items: (
    [Prinsloo et al. (2022), _Journal of Learning Analytics_],
    [Lemmens & Henn (2015), SAAIR proceedings],
    [SciELO (2020), contextualised learning-analytics framework, SA],
  ),
  reflection-list: (
    [Identify a learning-analytics construct your program imports from US/UK/EU literature. What does the validation literature for that construct assume about LMS coverage, data-engineering capacity, and ethics review? Audit those assumptions against your institution's actual conditions.],
    [The case rests on a scoping review of an early-stage literature. What would the minimum additional evidence — replication primary studies, multi-institution validation, longitudinal outcome data — look like before you would treat any specific African learning-analytics finding as settled?],
    [Specify the institutional preconditions you would identify and the validation work you would commit to before deploying an analytic framework in a low-resource higher-education setting; treat your deployment as a contribution to the literature, not only as a service intervention.],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 95 — pbis-implementation-fidelity ----
// VERIFY: exact author list and pagination for Horner et al. (2004) SET validation
//   (Horner, Todd, Lewis-Palmer, Irvin, Sugai, & Boland, JPBI 6(1), 3–12 — author
//   order confirmed against secondary sources only).
// VERIFY: full author list for the PBIS Maryland partnership paper (Bradshaw, Pas,
//   et al., 2012, Administration and Policy in Mental Health 39) — lead authors and
//   venue confirmed via PubMed 22246614; middle authors not independently re-checked.
// VERIFY: "more than 25,000 schools" is the Center on PBIS's own current figure
//   (pbis.org/about); some sources cite 27,000+. Statement attributed to the Center.
// VERIFY: statewide quasi-experimental scale-up study cited in section 4 — believed
//   to be Pas, Ryoo, Musci, & Bradshaw (2019), Journal of School Psychology 73,
//   41–55; confirmed via ScienceDirect landing page title only, not full text.
#case(
  number: 95,
  slug: "pbis-implementation-fidelity",
  title: "PBIS Implementation Fidelity — Why the Framework Travels Only with Its Measurement Loop",
  year: "1997–2024",
  domains-list: ("K-12 education", "school climate", "implementation fidelity"),
  modes-code: "TG",
  impact: "A multi-tiered behavior-support framework implemented in more than 25,000 US schools; group-randomized effectiveness trials in 37 Maryland elementary schools found significant reductions in suspensions and office discipline referrals and improvements in child behavior problems when the model was implemented with fidelity; the PBIS Maryland state-university-district partnership (since 1999) trained staff at over 1,000 schools around a standing fidelity-measurement and coaching loop",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT3",
  clo-anchor: "CLO-2",
  coi: "Institutional overlap: an editor shares an institution (Johns Hopkins School of Education) with leading PBIS researchers; no editor was personally involved. Framed as learning from that peer-reviewed literature.",
  summary: [
    Positive Behavioral Interventions and Supports (PBIS) is one
    of the most widely scaled evidence-based frameworks in US
    education — implemented, by the Center on PBIS's own count,
    in more than 25,000 schools. The evidence base is unusually
    strong for education at scale: Bradshaw, Mitchell, and Leaf's
    five-year group-randomized effectiveness trial in 37 Maryland
    elementary schools (2010) found that schools trained in
    school-wide PBIS reached high implementation fidelity and
    experienced significant reductions in suspensions and office
    discipline referrals, with companion trials reporting
    improvements in child behavior problems (Bradshaw, Waasdorp, &
    Leaf, _Pediatrics_ 2012) and reductions in bullying and peer
    rejection (Waasdorp et al. 2012). The central finding the
    implementation-science literature itself reports — and the
    reason the case is in this book — is that the effect does not
    live in the framework document. It lives at the interface
    between the intervention design and the school's
    implementation capability: fidelity measurement (the
    School-wide Evaluation Tool, the Tiered Fidelity Inventory),
    coaching infrastructure, district capacity, and sustained
    administrative support carry the effect, and schools that
    adopt the framework without that layer show attenuated or
    null results. The Maryland scale-up — PBIS Maryland, a
    state-university-district partnership running since 1999 —
    is the worked example of scaling *with* the fidelity loop
    attached. The hedges are the literature's own: fidelity
    varies widely, sustainability is fragile, and abandonment of
    effectively implemented practice is commonplace.
  ],
  sections: (
    [
      The recurring story in school-improvement research is that
      an intervention validated in trials arrives at a new school
      as a document — a framework, a binder, a training day — and
      produces nothing. PBIS is the instructive counter-example
      because its research community confronted that problem
      directly and instrumented it. The framework itself, built
      from applied behavior analysis and organized as a
      multi-tiered system of support (universal expectations and
      reinforcement at Tier 1, targeted group supports at Tier 2,
      individualized supports at Tier 3), was codified in the
      late 1990s under an OSEP technical-assistance center and
      has since scaled to more than 25,000 US schools. The
      question the field then spent two decades answering is the
      one this casebook cares about: why does the same framework
      work in some schools and not others?#cn()
    ],
    [
      The causal evidence comes principally from the Maryland
      group-randomized effectiveness trials. Bradshaw, Mitchell,
      and Leaf (2010) followed 37 Maryland elementary schools
      over five years; schools randomized to school-wide PBIS
      training implemented the model with high fidelity and
      showed significant reductions in student suspensions and
      office discipline referrals relative to comparison schools.
      Companion analyses from the same trial infrastructure
      reported significant improvements in teacher-rated child
      behavior problems across 12,344 children (Bradshaw,
      Waasdorp, & Leaf 2012) and reductions in bullying and peer
      rejection (Waasdorp, Bradshaw, & Leaf 2012). The
      load-bearing qualifier is in the trial design itself: the
      randomized schools did not merely receive the framework —
      they received structured training, on-site coaching, and
      annual fidelity assessment, and the published effects are
      effects of that package implemented with fidelity.#cn()
    ],
    [
      The fidelity instruments are the part of the story this
      book reads as capability measurement. The School-wide
      Evaluation Tool (SET; Horner et al. 2004) and its
      successor, the Tiered Fidelity Inventory (TFI; Algozzine
      et al. 2014, with technical-adequacy validation in
      McIntosh et al. 2017), turn "is the school actually doing
      PBIS?" into a scored, repeatable observation — expectations
      defined and taught, reinforcement systems operating,
      data-based decision cycles running, administrative
      leadership engaged. The instruments are not compliance
      paperwork; they are the closed loop that links the
      intervention to its evidence. Fidelity scores feed the
      coaching conversation, coaching moves the scores, and the
      outcome literature consistently reports that schools
      implementing below fidelity thresholds — typically those
      adopting the framework without the coaching and
      measurement layer — show attenuated or null effects
      relative to high-fidelity implementers.#cn()
    ],
    [
      The Maryland scale-up is the worked example of carrying
      that loop to state scale. PBIS Maryland, formed in 1999 as
      a partnership among the Maryland State Department of
      Education, Sheppard Pratt Health System, and Johns Hopkins
      University, with all 24 local school systems as partners,
      has trained staff at over 1,000 Maryland schools. The
      design decision that distinguishes it from
      framework-by-memo scale-ups is structural: each district
      provides local coaching capacity, the state provides
      training and annual fidelity measurement, and the
      university partners run the prevention research on the
      resulting data — including the randomized trials above and
      a subsequent statewide quasi-experimental study of the
      scale-up itself. The scale-up did not distribute a
      document; it replicated the implementation infrastructure
      that the trials had shown to carry the effect.#cn()
    ],
    [
      The honest framing is the one the literature itself
      supplies, and the case preserves it as learning rather
      than critique. Sustainability is the field's own named
      open problem: McIntosh and colleagues, analyzing fidelity
      data from roughly 3,000 schools, found that speed of
      initial fidelity attainment predicts sustained
      implementation, that middle and high schools are at
      elevated risk of low implementation, and that abandonment
      of effectively implemented practice is commonplace
      (McIntosh et al. 2013, 2016). Sugai and Horner's 2020
      synthesis frames sustaining and scaling as a distinct
      engineering problem from demonstrating efficacy. That the
      PBIS research community measured its own implementation
      variance, published its own null-attenuation conditions,
      and built the instruments that make the variance visible
      is precisely why the case sits in the intervention corpus:
      the field solved — in the open, with peer review — the
      coupling problem that most deployments in this book never
      instrumented at all.#cn()
    ],
  ),
  beats: (
    "Framework codified late 1990s under OSEP technical-assistance center; scaled to more than 25,000 US schools per the Center on PBIS",
    "Maryland group-randomized trials (37 elementary schools, 5 years): significant reductions in suspensions, office referrals, behavior problems, and bullying — when implemented with fidelity",
    "SET and TFI fidelity instruments turn implementation into a scored, repeatable observation; fidelity data drives the coaching loop that carries the effect",
    "PBIS Maryland (1999 – present): MSDE–Sheppard Pratt–Johns Hopkins partnership trained staff at over 1,000 schools by replicating the infrastructure, not distributing the document",
    "The field's own sustainability findings preserved: fidelity variance is wide, abandonment is commonplace, middle/high schools at elevated risk — the literature names its own limits",
  ),
  approaches: (
    during: (
      [Treat the fidelity instrument as part of the intervention, not as evaluation overhead; a framework shipped without its measurement loop is a different — and weaker — intervention than the one the trials validated.],
      [Build the coaching layer at the district, not just the school; the Maryland design routes coaching capacity through every partner district so a principal transition does not orphan the implementation.],
      [Score fidelity on a public, repeatable rubric (SET/TFI-style) and feed the scores into the coaching cadence, so the implementation conversation runs on observations rather than impressions.],
    ),
    after: (
      [When an evidence-based practice underperforms at a new site, attribute the gap with fidelity data before revising the practice; the PBIS literature shows most of the variance lives in implementation, not design.],
      [Plan for sustainability as its own engineering problem: instrument speed-to-fidelity, watch the elevated-risk tiers (middle and high schools, in this literature), and treat abandonment as a measurable failure mode rather than an anomaly.],
      [Publish the implementation variance, including the null and attenuated conditions; the PBIS field's credibility rests on having documented where its own framework does not work.],
    ),
  ),
  references: (
    [Bradshaw, Mitchell, & Leaf (2010), "Examining the Effects of Schoolwide Positive Behavioral Interventions and Supports on Student Outcomes: Results From a Randomized Controlled Effectiveness Trial in Elementary Schools," _Journal of Positive Behavior Interventions_, 12(3), 133 – 148.],
    [Bradshaw, Waasdorp, & Leaf (2012), "Effects of School-Wide Positive Behavioral Interventions and Supports on Child Behavior Problems," _Pediatrics_, 130(5), e1136 – e1145.],
    [Horner, Todd, Lewis-Palmer, Irvin, Sugai, & Boland (2004), "The School-Wide Evaluation Tool (SET): A Research Instrument for Assessing School-Wide Positive Behavior Support," _Journal of Positive Behavior Interventions_, 6(1), 3 – 12.],
    [McIntosh, Massar, Algozzine, George, Horner, Lewis, & Swain-Bradway (2017), "Technical Adequacy of the SWPBIS Tiered Fidelity Inventory," _Journal of Positive Behavior Interventions_, 19(1), 3 – 13.],
    [McIntosh, Mercer, Nese, Strickland-Cohen, & Hoselton (2016), "Predictors of Sustained Implementation of School-Wide Positive Behavioral Interventions and Supports," _Journal of Positive Behavior Interventions_, 18(4), 209 – 218.],
    [Bradshaw, Pas, et al. (2012), "A State-Wide Partnership to Promote Safe and Supportive Schools: The PBIS Maryland Initiative," _Administration and Policy in Mental Health_, 39(4), 225 – 237.],
  ),
  quote: [The framework document does not carry the effect. The fidelity loop — measurement, coaching, district capacity, sustained administrative support — is the intervention.],
  quote-source: "Editors' synthesis of the SWPBIS implementation literature.",
  le-insight: [
    PBIS is the rare education framework whose research community
    instrumented its own implementation variance: randomized
    trials showed real effects on suspensions, referrals, and
    behavior — conditional on fidelity — and the field built the
    measurement instruments (SET, TFI), the coaching
    infrastructure, and the sustainability literature that
    explain why the same framework works in one school and not
    another. The effect lives at the coupling between design and
    implementation capability, and the fidelity instruments are
    the capability measurement layer.
  ],
  lens-approach: [
    PBIS implementation fidelity is the coupling-and-fidelity
    intervention case (induced 2.3; LENS D2/PT3). LENS uses it
    in Domain 2 (Iterative Development) for the
    fidelity-measurement-to-coaching loop as the mechanism that
    carries an evidence-based design into practice; in Domain 4
    (Test and Evaluation) for the SET/TFI instruments as
    validated measures of implementation rather than outcome;
    and in Domain 5 (Navigating Sociotechnical Constraints) for
    the Maryland state-university-district partnership as the
    governance architecture that made a 1,000-school scale-up
    sustain its measurement discipline. The framing is learning
    from the implementation-science literature — the field
    documented its own attenuation conditions — and the COI
    render under the title is binding.
  ],
  literature-items: (
    [Bradshaw, Mitchell, & Leaf (2010), _Journal of Positive Behavior Interventions_, 12(3), 133 – 148],
    [McIntosh et al. (2017), TFI technical adequacy, _Journal of Positive Behavior Interventions_, 19(1), 3 – 13],
    [Sugai & Horner (2020), "Sustaining and Scaling Positive Behavioral Interventions and Supports," _Exceptional Children_, 86(2)],
  ),
  reflection-list: (
    [Pick an evidence-based practice in your domain that underperformed at a new site. What would its SET or TFI look like — the scored, repeatable observation that distinguishes "the practice failed" from "the practice was never implemented"? Who would administer it, and on what cadence?],
    [The Maryland scale-up replicated infrastructure — district coaching capacity, annual fidelity measurement, a university research partner — rather than distributing a framework document. Map your own scale-up plan against those three layers. Which one is missing, and what does the PBIS sustainability literature predict happens without it?],
    [McIntosh and colleagues found abandonment of effectively implemented practice is commonplace, and that speed of initial fidelity attainment predicts sustainability. What early-implementation signal plays that role in your setting, and is anyone measuring it?],
  ),
  courses: ("LEN 2", "LEN 4", "LEN 5"),
)
