// ============================================================
// Part I — Healthcare & Patient Safety · What Works — and the Frontier (Chapter 2)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part I — Healthcare & Patient Safety",
  number: "2",
  title: "Healthcare & Patient Safety — What Works — and the Frontier",
  subtitle: "When measurement, teamwork, and design close the loop on patient harm.",
  epigraph: [Every durable safety gain shipped with an owner and an instrument.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Case 11 — california-nurse-staffing-ratios ----
#case(
  number: 11,
  slug: "california-nurse-staffing-ratios",
  title: "California Nurse Staffing Ratios — Legislating a Capability Requirement",
  year: "2004 – 2010",
  domains-list: ("healthcare", "workforce policy", "patient safety"),
  modes-code: "GK",
  impact: "California's mandated minimum nurse-to-patient ratios reduced nurse workload by 1–2 patients per nurse and were modeled to imply 10–14% fewer surgical patient deaths in comparison states if matched — observational, cross-sectional, no California baseline",
  kind: "intervention",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "1.1",
  lens-anchor: "D1/PT3",
  leo-anchor: "LEO-1, LEO-4",
  summary: [
    California in 2004 became the first US state to mandate minimum
    nurse-to-patient ratios in acute-care hospitals — unit-level
    minimums written into law and enforced through inspection. The
    Aiken et al. (_Health Services Research_, 2010) study surveyed
    22,336 nurses across California, Pennsylvania, and New Jersey
    (the latter two with no mandate), and found California nurses
    cared for 1–2 fewer patients each. Modeling implied that if the
    two comparison states had matched California's medical-surgical
    ratios, New Jersey would have seen 13.9% and Pennsylvania 10.6%
    fewer surgical patient deaths. The study is observational and
    cross-sectional, and the authors are explicit that the *absence
    of California baseline measures* fueled a contested stakeholder
    debate over whether the ratios themselves caused the
    improvement. The case is the canonical recent instance of a
    capability requirement (adequate staffing) being converted from a
    stated aspiration into an engineered, enforced specification by
    law — and the canonical instance of the methodological hedge
    such a conversion carries.
  ],
  sections: (
    [
      Nurse staffing is the load-bearing variable in the
      capability-of-care literature: a substantial body of evidence
      links nurse workload to medical errors, mortality, and rescue
      from complications. The professional consensus on the
      direction of the effect has been durable since the late 1990s.
      What had been contested is whether a mandated minimum, written
      into law and enforced through inspection, would convert the
      stated requirement (adequate staffing) into an engineered one
      (a specific ratio actually present at the bedside).#cn()
    ],
    [
      California in 2004 became the first US state to do it. The
      law specifies unit-by-unit minimum nurse-to-patient ratios —
      1:5 in medical-surgical, 1:4 in step-down, 1:2 in ICU, and so
      on — enforceable through state inspection. The political
      process took five years from statutory enactment (1999) to
      regulatory implementation, with industry argument that the
      ratios would close hospitals and worsen access. The 2004
      implementation went ahead substantially as written.#cn()
    ],
    [
      Aiken et al. (_Health Services Research_, 2010) is the
      strongest published evaluation. The study surveyed 22,336
      nurses across California (mandated), Pennsylvania, and New
      Jersey (no mandate) on workload, work environment, and
      patient-outcome measures. The headline finding is that
      California nurses cared for 1–2 fewer patients each across
      comparable unit types. The modeled mortality implication —
      computed by applying the workload-mortality relationship
      from the broader Aiken et al. corpus to the workload
      difference — was that if Pennsylvania and New Jersey had
      matched California's medical-surgical ratios, surgical
      mortality would have been 10.6% and 13.9% lower
      respectively.#cn()
    ],
    [
      The hedge survives into the case verbatim. The Aiken et al.
      study is observational and cross-sectional, not a controlled
      experiment. There was no California baseline measurement to
      provide a pre/post within-state comparison. The modeled
      mortality estimates rest on the workload-mortality
      relationship from prior studies, and a contested stakeholder
      debate followed publication over whether the ratios themselves
      caused the observed improvement, or whether California
      hospitals differed in other ways the cross-section did not
      capture. The authors do not claim closure; they say the
      evidence is the strongest available and consistent with the
      broader literature.#cn()
    ],
    [
      What the case teaches is the form of converting a stated
      capability requirement into an engineered, enforced one by
      law, and the methodological hedge that conversion has to
      carry. The political path is part of the deliverable: five
      years from enactment to implementation, sustained industry
      opposition, contested evidence, and a study design constrained
      by the absence of a pre-implementation California baseline. In
      pair with SUBSAFE (Case 173), the case shows that engineered
      capability requirements at scale require both the
      requirements-discipline mechanism and an evidence architecture
      that survives the political process around the requirement.
    ],
  ),
  beats: (
    "California (2004) — first US state to mandate minimum unit-level nurse-to-patient ratios; written into law and enforced",
    "Aiken et al. 2010 surveyed 22,336 nurses across CA / PA / NJ; California nurses cared for 1–2 fewer patients each",
    "Modeled implication: PA and NJ would have 10.6% and 13.9% fewer surgical deaths at California's medical-surgical ratios",
    "Hedge preserved: observational cross-sectional; no California baseline; contested stakeholder debate on causation",
    "Pair with SUBSAFE (Case 173) — converting stated requirement to engineered requirement, with political-process cost",
  ),
  approaches: (
    during: (
      [When converting a stated capability requirement into an engineered specification by law, design the evidence architecture *before* implementation: pre-registered measurement, a baseline window, and a comparison strategy that survives the political process.],
      [Specify the unit-level requirement at the granularity the work actually has — for nurse staffing, by unit type and acuity — rather than at an aggregate level that lets the requirement be averaged away.],
      [Anticipate sustained industry argument as part of the implementation cost; a five-year path from enactment to implementation is the political price of the engineered requirement.],
    ),
    after: (
      [Report the workload effect (1–2 fewer patients per nurse) separately from the modeled mortality effect (10.6% and 13.9%); the workload finding is direct, the mortality estimate is modeled.],
      [Preserve the no-baseline hedge in any communication of the evidence; the strongest available evidence is not closed proof of causation.],
      [Treat the contested stakeholder debate as program documentation, not noise; the debate is part of why the case is teachable.],
    ),
  ),
  references: (
    [Aiken, Sloane, Cimiotti, Clarke, Flynn, Seago, Spetz, & Smith (2010), "Implications of the California Nurse Staffing Mandate for Other States," _Health Services Research_ 45(4):904–921, doi:10.1111/j.1475-6773.2010.01114.x.],
    [Aiken, Clarke, Sloane, Sochalski, & Silber (2002), "Hospital nurse staffing and patient mortality, nurse burnout, and job dissatisfaction," _JAMA_ 288(16):1987–1993 — the workload-mortality relationship the 2010 modeling rests on.],
    [California Department of Health Services (1999–2004), AB 394 regulatory implementation documentation.],
    [Spetz, Chapman, Herrera, Kaiser, Seago, & Dower (2009), "Assessing the impact of California's nurse staffing ratios on hospitals and patient care," California HealthCare Foundation — implementation-period analysis.],
  ),
  quote: [The headline finding is direct; the modeled mortality estimate is the strongest available evidence and not closed proof.],
  quote-source: "Editors' synthesis of Aiken et al. (2010).",
  le-insight: [
    California's nurse-ratio mandate is the canonical recent
    instance of converting a stated capability requirement
    (adequate staffing) into an engineered, enforced one by
    law. The workload effect is direct; the modeled mortality
    estimate is observational and cross-sectional with no
    California baseline. The hedge is the case.
  ],
  lens-approach: [
    Nurse ratios is the legislated-requirement case
    (induced 1.1; LENS D1/PT3). LENS uses it in Domain 1
    (Systems Analysis) for the conversion of stated
    requirement to engineered specification by law, and in
    Domain 4 (Test and Evaluation) for the subobjective *Judgment
    under inadequate evidence* (4.4) — the evaluation evidence is
    observational cross-sectional, the strongest available
    and not closed proof. Pair with Case 173 SUBSAFE at the
    requirements-as-deliverable layer.
  ],
  literature-items: (
    [Aiken et al. (2010), _Health Services Research_],
    [Aiken et al. (2002), _JAMA_],
    [Spetz et al. (2009), California HealthCare Foundation],
  ),
  reflection-list: (
    [Identify a capability requirement in your domain that is currently stated but not engineered. What would a legislated minimum look like at unit-level granularity, and what evidence architecture would you put in place *before* implementation to make the conversion auditable?],
    [Specify the political-process cost you would budget for: California's path was five years from enactment to implementation under sustained industry argument. What is the analog in your context, and is the engineered requirement worth that cost?],
    [The Aiken evidence is observational cross-sectional with no California baseline. What pre/post or controlled comparison would you build into the next state's implementation to give the next round of evaluation a stronger foundation?],
  ),
  courses: ("LEN 5", "LEN 7", "LEN 8"),
)

// ---- Case 12 — acgme-80-hour-resident-duty-hour-reform ----
#case(
  number: 12,
  slug: "acgme-80-hour-resident-duty-hour-reform",
  title: "ACGME 80-Hour Resident Duty-Hour Reform",
  year: "2003–2017",
  domains-list: ("healthcare",),
  modes-code: "TKN",
  impact: "ACGME capped U.S. resident physician work hours at 80/week to reduce fatigue-related errors; subsequent RCTs (FIRST, iCOMPARE) found flexible schedules non-inferior on patient outcomes, and the promised safety gain did not appear",
  diagram: dgm.dgm-timeline(
    (("2003 — 80-hr cap", "fatigue↓"), ("2011 — 16-hr intern cap", "—"), ("2016 — FIRST trial", "no difference"), ("2017 — duty-hour cap relaxed", "back to 80-hr only")),
    emphasis: 2,
    caption: "ACGME duty-hour reform — capping hours did not, on its own, engineer the capability",
  ),
  kind: "intervention",
  summary: [
    After the 1984 death of Libby Zion focused decades of concern on
    resident-physician fatigue, the ACGME capped resident work at 80 hours a
    week in 2003 and limited first-year shifts to 16 hours in 2011. The logic
    was intuitive: tired doctors err, so cut the hours. But hours were one
    input to a many-variable system; cutting them multiplied error-prone
    hand-offs and cost residents continuity and procedural repetitions. Two
    large randomized trials — FIRST (2016) and iCOMPARE (2019) — found
    flexible schedules non-inferior to the strict caps on patient outcomes,
    so the promised safety gain never appeared, and in 2017 the ACGME relaxed
    the intern cap. The case is the book's clearest example of a
    single-variable intervention into a capability system — and of evidence
    catching up with a well-meant policy.
  ],
  sections: (
    // -- Background --
    [
      After the 1984 death of Libby Zion — blamed on overworked,
      under-supervised residents — resident fatigue became a decades-long
      argument. New York's Bell Commission produced the first hours limits in
      1989, and pressure for a national standard built from there — the
      reform's intuition, that exhausted physicians make errors, was strong
      enough that the simplest lever, capping the hours, became the obvious
      answer long before anyone tested what the long shift was producing.#cn()
    ],
    // -- The Intervention --
    [
      In 2003 the Accreditation Council for Graduate Medical Education capped
      resident work at 80 hours a week; in 2011 it limited first-year
      residents to 16-hour shifts. The logic was clean and intuitive —
      fatigue causes error, so reduce the hours. It was, in capability terms,
      a single-variable intervention: change one input and expect the outcome
      to move — a model that holds only if the rest of the system stays
      fixed, which in a teaching hospital it never does, since the hours
      removed had to be absorbed somewhere else.#cn()
    ],
    // -- How It Worked --
    [
      But hours were one input to a system with many. Cutting them
      redistributed the work and multiplied patient hand-offs — themselves a
      documented site of error — while reducing residents' continuity and the
      procedural repetitions that build skill; many reported feeling less
      prepared, not better rested. The long shift had quietly been doing work
      no one accounted for — sustaining a patient's care through one set of
      hands and accumulating the repetitions that turn a trainee into a
      clinician — and nothing was put in its place when it was cut.#cn()
    ],
    // -- The Evidence --
    [
      Two large randomized trials tested the policy. FIRST (Bilimoria et al.,
      _NEJM_ 2016), in surgery, found flexible duty hours non-inferior to the
      strict caps on patient outcomes and no worse for resident
      well-being — putting a randomized result against an intuition that had
      driven policy for years.#cn() iCOMPARE (Silber et al., _NEJM_ 2019), in
      internal medicine, reached a parallel result in a second specialty,
      making the finding harder to dismiss as an artifact of surgery.#cn()
      Neither found the safety gain the cap had promised, and in 2017 the
      ACGME relaxed the 16-hour intern limit. The trials did not show fatigue
      is harmless — only that cutting one input, without rebuilding
      supervision and hand-offs, did not produce a safer system.#cn()
    ],
    // -- What Transferred --
    [
      Duty-hour reform is the book's clearest case of a single-variable
      intervention into a multi-variable system. Read it against the
      successes here — the Keystone ICU project, crew resource management, the
      surgical safety checklist — which worked because they engineered
      supervision, hand-offs, and measurement *together with* the behavioral
      change, redesigning the surrounding architecture rather than pulling a
      single lever and hoping the rest would hold.#cn() The lesson is not
      that fatigue does not matter; it is that capability is a property of the
      whole system, and a reform that moves one variable while leaving the
      others untouched will be judged, in the end, by what it actually
      produced rather than by the plausibility of its intuition.
    ],
  ),
  beats: (
    "Libby Zion's 1984 death made resident fatigue a decades-long argument; Bell Commission set early limits",
    "ACGME capped resident work at 80 hours weekly and limited first-year shifts to 16 hours",
    "Cutting hours multiplied hand-offs and cost continuity; trainees often felt less prepared, not rested",
    "FIRST and iCOMPARE found flexible schedules non-inferior; ACGME relaxed the intern cap in 2017",
    "Keystone, CRM, and the surgical checklist engineered supervision and hand-offs alongside the behavioral change",
  ),
  references: (
    [B. H. Lerner, _The Libby Zion Case and the Reform of Medical Education_ (2006); and the 1989 New York State (Bell Commission) duty-hour regulations — the origin of the reform.],
    [Accreditation Council for Graduate Medical Education, _Common Program Requirements_ (2003 and 2011 revisions) — the 80-hour weekly cap and the 16-hour first-year shift limit.],
    [D. A. Asch et al., "Resident Duty Hours and Medical Education Policy," _NEJM_ 370: 1671–1673 (2014); Institute of Medicine (Ulmer, Wolman & Johns, eds.), _Resident Duty Hours: Enhancing Sleep, Supervision, and Safety_ (2008) — hand-offs and continuity trade-offs.],
    [Bilimoria, Chung, Hedges et al., "National Cluster-Randomized Trial of Duty-Hour Flexibility in Surgical Training" (FIRST), _NEJM_ 374: 713–727 (2016). #link("https://doi.org/10.1056/NEJMoa1515724")[doi:10.1056/NEJMoa1515724].],
    [Silber, Bellini, Shea et al., "Patient Safety Outcomes under Flexible and Standard Resident Duty-Hour Rules" (iCOMPARE), _NEJM_ 380: 905–914 (2019). #link("https://doi.org/10.1056/NEJMoa1810641")[doi:10.1056/NEJMoa1810641].],
    [ACGME, _Common Program Requirements_ (2017 revision) — relaxation of the 16-hour first-year shift limit.],
    [P. Pronovost et al., Keystone ICU intervention, _NEJM_ 355: 2725–2732 (2006), #link("https://doi.org/10.1056/NEJMoa061115")[doi:10.1056/NEJMoa061115]; A. B. Haynes et al., surgical safety checklist, _NEJM_ 360: 491–499 (2009), #link("https://doi.org/10.1056/NEJMsa0810119")[doi:10.1056/NEJMsa0810119] — integrated interventions that engineered the surrounding architecture.],
  ),
  quote: [Flexible, less-restrictive duty hour policies for first-year residents were associated with non-inferior patient outcomes and no significant difference in residents' satisfaction with overall well-being and education quality.],
  quote-source: "Paraphrasing iCOMPARE Trial (Silber et al., NEJM 2019)",
  le-insight: [
    The clearest healthcare case in the dataset of a single-variable
    intervention into a multi-variable capability system. Pairs with
    Case 127 (fratricide) and Case 134 (V-22). The success cases —
    Keystone (14), CRM (12), Korean Air (23) — engineered
    supervisory, hand-off, and measurement architecture *together
    with* the behavioral change.
  ],
  lens-approach: [
    LENS uses duty-hour reform in LEN 5 as the foundational
    capability-system case (what was the long-hour regime
    *producing* that was lost when the input was capped?), in LEN 4
    to discuss measurement architecture (what FIRST and iCOMPARE
    measured, and what they did not), and in LEN 10 as a studio
    prompt for the integrated resident-training redesign that the
    reforms did not deliver.
  ],
  literature-items: (
    [Bilimoria et al. (2016), FIRST trial; Silber et al. (2019), iCOMPARE trial],
    [Lerner (2006), _The Libby Zion Case and the Reform of Medical Education_],
    [Ulmer, Wolman & Johns, eds. (2008), _Resident Duty Hours: Enhancing Sleep, Supervision, and Safety_, Institute of Medicine],
  ),
  reflection-list: (
    [What capability is the long-hours / heavy-workload regime in your domain currently producing — supervisory exposure, continuity, procedural reps, tacit-knowledge transfer — that a simple cap would lose?],
    [Design the integrated redesign — supervision, hand-off, measurement, exposure — that would substitute for the capability the input cap removes.],
    [The reform was intuitive enough to set national policy years before FIRST and iCOMPARE tested it. Design the randomized or quasi-experimental check you would build into a future single-variable reform so its promised gain is measured before it is mandated, not after.],
  ),
  approaches: (
    during: (
      [Map the full set of variables the targeted input is coupled to — continuity, supervision, hand-offs, procedural reps — before changing one of them.],
      [Design the substitute for whatever the changed input was producing (e.g., structured hand-offs and supervision) into the same reform, not as a follow-on.],
      [Build the measurement that will test the reform's promised gain into the rollout, so the policy is falsifiable against the operational record.],
    ),
    after: (
      [Audit the intervention against patient and trainee outcomes with a controlled comparison, as FIRST and iCOMPARE did, rather than trusting the intuition.],
      [Monitor the variables that absorbed the change (hand-off frequency, procedural exposure) for the harms a single-lever fix can displace.],
      [Sustain a willingness to revise the policy when evidence catches up, as the 2017 relaxation did, rather than defending the original lever.],
    ),
  ),
  courses: ("LEN 5", "LEN 4", "LEN 10", "LEN 8"),
  scale: "big",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT3",
  leo-anchor: "LEO-2",
)

// ---- Case 13 — implementation-science-in-healthcare ----
#case(
  number: 13,
  slug: "implementation-science-in-healthcare",
  title: "Implementation Science in Healthcare — The 17-Year Gap",
  year: "ongoing",
  domains-list: ("healthcare",),
  modes-code: "KGN",
  impact: "Average time from research finding to clinical practice: 17 years; only ~14% of research findings ever reach practice",
  diagram: dgm.dgm-17year,
  kind: "frontier",
  summary: [
    Implementation science has a canonical finding: it takes an average of
    about seventeen years for research evidence to reach clinical practice,
    and only roughly 14% of research findings ever make it at all.
    This is not a single incident but a systemic condition — effective
    interventions exist; the system to adopt, sustain, adapt, and measure
    them at scale does not. Frameworks like the Active Implementation
    Frameworks (Fixsen et al., 2005) and EPIS (Aarons et al., 2011) were
    built specifically to attack this gap, and LENS threads implementation
    science throughout its curriculum in direct response. The seventeen-year
    gap is the meta-case for the whole book: every success case is a closure
    of this gap in one domain, every failure case the gap left open. The
    discipline exists to make seventeen years shorter.
  ],
  sections: (
    // -- The Shift --
    [
      Medicine generates more validated knowledge than it can absorb.
      Implementation science arose to study a stubborn fact: knowing what
      works and having it practiced are different problems, separated by
      years.#cn() Treating the two as one problem is the error the field
      formed to correct: a validated finding is not yet a changed practice,
      and the distance between them is itself a phenomenon to be studied,
      measured, and engineered rather than waited out.
    ],
    // -- What Is Emerging --
    [
      The canonical figures are stark: it takes an average of about seventeen
      years for research evidence to be integrated into clinical practice,
      and only roughly 14% of research findings ever make it at
      all.#cn() Read together, the two figures describe a pipeline that is
      both slow and leaky: most of what is learned never reaches the bedside
      at all, and the fraction that does arrives long after the patients who
      first needed it, so the delay is compounded by sheer attrition.
    ],
    // -- The Capability Question --
    [
      This is not a single case but a systemic condition — the same
      structural problem the medical-error data (Case 8) describes from the
      outcome side. Effective interventions exist; the institutional system
      to adopt, sustain, adapt, and measure them at scale does not.#cn()
      Where the medical-error data counts the harm at the far end of the
      pipeline, the translation figures name the mechanism that produces it:
      the same missing adoption-and-measurement system shows up as a delay
      from one vantage and as a body count from the other.
    ],
    // -- Early Evidence --
    [
      Frameworks built to attack the gap — the Active Implementation
      Frameworks (Fixsen et al., 2005) and the EPIS framework (Aarons et al.,
      2011) — show that implementation can be engineered rather than left to
      chance, and they inform LENS's choice to thread implementation science
      through every course rather than isolate it in a module.#cn() Threading
      the discipline through every course rather than confining it to a single
      module is itself a claim these frameworks support: if implementation is
      an engineerable property of any intervention, it cannot be quarantined
      as a specialty and must inform how every design is taught.
    ],
    // -- Open Problems --
    [
      The seventeen-year gap is the meta-case for this book. Every success
      case in the chapters ahead is a closure of the gap in one domain; every
      failure case is the gap left open.#cn() The open problem is general and
      unglamorous: building, funding, and owning the adoption-and-measurement
      pathway that turns a proven intervention into routine practice — which
      is, in one sentence, what the LENS discipline exists to do. Because the
      problem is general rather than domain-specific, no single clinical
      result closes it; what closes it is the repeatable, owned, and funded
      pathway that any proven finding can be run through, again and again.
    ],
  ),
  beats: (
    "Implementation science arose because knowing what works and practicing it are different problems",
    "Translation averages seventeen years, and only about fourteen percent of findings ever reach practice",
    "Effective interventions exist; the system to adopt, sustain, adapt, and measure them does not",
    "Active Implementation Frameworks and EPIS show implementation can be engineered rather than left to chance",
    "Building, funding, and owning the adoption-and-measurement pathway is the general unsolved problem",
  ),
  references: (
    [E. A. Balas & S. A. Boren (2000), _Yearbook of Medical Informatics_ — the ~17-year / ~14% translation figures.],
    [Z. Morris, S. Wooding & J. Grant, "The answer is 17 years, what is the question," _J. Royal Society of Medicine_ (2011) (quoted).],
    [D. Fixsen et al., _Implementation Research: A Synthesis of the Literature_ (2005) — the Active Implementation Frameworks.],
    [G. Aarons et al. (2011), the EPIS framework; L. Damschroder et al. (2009), CFIR.],
    [Cf. medical error as systemic failure (Case 8); Goodell & Kolodner, _Learning Engineering Toolkit_ (2022).],
  ),
  quote: [The answer is 17 years. What is the question?],
  quote-source: "Morris, Wooding & Grant, J Royal Soc Med, 2011",
  le-insight: [
    The 17-year gap is the structural problem that LENS exists to
    address. It is the difference between knowing what works and having
    it deployed. Every case in this book is a sample from a
    distribution governed by that gap. The success cases shorten it;
    the failure cases let it run.
  ],
  lens-approach: [
    LENS uses this case in LEN 1 as the foundational problem statement
    of the discipline, in LEN 10 as a studio constraint (designs must
    consider implementation, not just efficacy), and in LEN 8 as the
    central knowledge-transfer challenge. The case is referenced at
    least once in every required course.
  ],
  literature-items: (
    [Fixsen et al. (2005)],
    [Aarons et al. (2011), EPIS],
    [Damschroder et al. (2009), CFIR],
  ),
  reflection-list: (
    [Pick an evidence-based intervention in your domain. Estimate the gap between when the evidence became conclusive and when the intervention reached majority of practice. What did the gap cost?],
    [Design the deliverable that would shorten that gap by half in your domain. Be specific about who funds it, who owns it, and what evidence demonstrates the reduction.],
    [The translation pipeline is both slow and leaky — most findings never reach practice, and those that do arrive late. For your domain, is the binding problem the delay or the attrition, and what would you measure to tell which one to attack first?],
  ),
  approaches: (
    during: (
      [Design every intervention with its adoption-and-measurement pathway attached, so implementation is engineered in rather than left to chance after the evidence is published.],
      [Use an implementation framework (Active Implementation, EPIS) from the outset to plan adoption, sustainment, and adaptation as deliverables of the project.],
      [Name an owner and a funding line for the pathway, since a proven finding with no one accountable for fielding it is exactly what the gap is made of.],
    ),
    after: (
      [Measure both reach and speed — what fraction of practice has adopted the intervention and how long it took — to see the slow-and-leaky pipeline rather than assume publication equals uptake.],
      [Sustain and adapt fielded interventions, treating drift back to old practice as a measurable failure mode, not a one-time rollout that holds itself.],
      [Track the gap as a standing metric across the institution, so closing it in one domain becomes a repeatable pathway rather than a one-off success.],
    ),
  ),
  courses: ("LEN 1", "LEN 10", "LEN 8", "LEN 6",),
  scale: "big",
  induced-anchor: "1.4",
  lens-anchor: "D2/PT4",
  leo-anchor: "LEO-2",
)

// ---- Case 14 — barsuk-sbml-simulation-based-mastery ----
#case(
  number: 14,
  slug: "barsuk-sbml-simulation-based-mastery",
  title: "Barsuk SBML — Simulation-Based Mastery Learning Dissemination from Northwestern to the VA",
  year: "2009 – 2020s",
  domains-list: ("medical education", "patient safety", "workforce dissemination"),
  modes-code: "TK",
  impact: "Barsuk et al. (Northwestern/Feinberg) demonstrated that simulation-based mastery learning for central venous catheter (CVC) insertion reduced catheter-related bloodstream infection rates and procedural complications, with cost-effectiveness shown in a single-hospital evaluation; the program was subsequently disseminated nationally to Department of Veterans Affairs medical centers",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "6.4",
  lens-anchor: "D2/PT4",
  leo-anchor: "LEO-2, LEO-4",
  summary: [
    Central venous catheter (CVC) insertion is a high-volume,
    high-consequence procedure whose complications — pneumothorax,
    arterial puncture, catheter-related bloodstream infection (CRBSI)
    — are well-characterized and partly attributable to procedural
    skill at the bedside. Barsuk and colleagues at Northwestern/
    Feinberg published a series of studies through the late 2000s
    and 2010s establishing simulation-based mastery learning (SBML)
    — practice on a simulator to a defined performance standard,
    not to a clock — as an effective approach for trainee CVC
    insertion. The single-center evidence reported reduced CRBSI
    rates, reduced procedural complications, and favorable cost-
    effectiveness. The program was subsequently disseminated to
    Department of Veterans Affairs medical centers as a national
    rollout — the deliberate cross-institutional transfer that
    distinguishes the case from a successful single-site
    intervention. The case is the canonical small-tier instance of
    cross-domain adaptation of a proven intervention (C6.4), and
    pairs with the multidisciplinary-translation trio (Cases 40
    team science, 122 IPE, 123 implementation-science training) as
    cross-domain workforce evidence. The honest hedge: the
    dissemination outcome literature is thinner than the original
    single-center evidence; the case is teachable on the SBML
    method and the documented dissemination effort, with
    measurement at the multi-site level a live evidence frontier.
  ],
  sections: (
    [
      Central venous catheter insertion is a procedure trainees in
      medicine, surgery, and critical care perform routinely; the
      complication profile — pneumothorax, arterial puncture,
      catheter-related bloodstream infection — is well-characterized
      and attributable in part to procedural skill at the bedside.
      The historical training model relied on graduated exposure on
      live patients, with supervision but without a defined
      performance standard before unsupervised practice. The Barsuk
      group at Northwestern's Feinberg School of Medicine, working
      across critical care and medical education, set out to
      replace exposure-based training with simulation-based mastery
      learning.#cn()
    ],
    [
      Simulation-based mastery learning is the specific structural
      form: trainees practice the procedure on a simulator to a
      defined performance standard, not to a clock. Practice
      continues until the trainee demonstrates competence; the
      standard, not the calendar, governs progression. Barsuk et
      al. (_Archives of Internal Medicine_, 2009; _Critical Care
      Medicine_, _Journal of Hospital Medicine_, and a series of
      subsequent papers) reported that the SBML cohort, compared
      with historical and concurrent non-SBML cohorts at the same
      hospital, performed CVC insertions with fewer needle passes,
      fewer arterial punctures, and lower CRBSI rates on the
      patients they subsequently catheterized.#cn()
    ],
    [
      The single-center economic evidence was the second pillar.
      Cohen et al. (_Simulation in Healthcare_, 2010) reported that
      the SBML program was cost-saving at the single hospital,
      driven principally by the reduction in CRBSI cases — each
      bloodstream infection averted is expensive enough that even
      a modest reduction recovers the simulation-training
      investment. The combination of the procedural-outcome
      evidence and the cost-effectiveness evidence made the
      program transferable beyond the original site.#cn()
    ],
    [
      The dissemination step is what distinguishes the case from a
      successful single-site intervention. The SBML CVC program
      was subsequently disseminated to Department of Veterans
      Affairs medical centers as a national rollout, supported by
      the VA's investment in simulation infrastructure and clinical
      training architecture. The deliberate cross-institutional
      transfer — from an academic medical center to a federated
      health system — is the structural feature the C6.4
      cross-domain-adaptation competency exists to name. The
      dissemination outcome literature is thinner than the
      single-center evidence; multi-site CRBSI tracking is harder
      to attribute, and the published evidence at the national-VA
      scale is at the program-report and small-evaluation tier
      rather than the controlled-comparison tier the single-center
      papers established.#cn()
    ],
    [
      In pair with the multidisciplinary-translation trio (Cases
      178 team science, 122 IPE, 123 implementation-science
      training), the Barsuk SBML case completes the workforce-
      evidence picture: an intervention with strong single-center
      controlled-comparison evidence (this case) sits alongside a
      structured team-science training program with validated
      measurement (121), the field-scale enthusiasm-evidence gap in
      interprofessional education (122), and the operational-
      practice gap inside implementation-science training programs
      (123). The four cases together stage the cross-domain
      workforce-evidence pattern: the mechanism that works at
      single-program scale is the demonstrator; the field-scale
      measurement and the multi-site dissemination evidence are
      what the discipline is still building.#cn()
    ],
  ),
  beats: (
    "CVC insertion is high-volume, high-consequence; complication profile (pneumothorax, arterial puncture, CRBSI) partly attributable to procedural skill",
    "Barsuk et al. (Northwestern/Feinberg, 2009 onward) — simulation-based mastery learning: practice to a defined standard, not a clock",
    "Single-center evidence: fewer needle passes, fewer arterial punctures, lower CRBSI rates; cost-saving at the hospital level (Cohen et al. 2010)",
    "Disseminated nationally to VA medical centers — cross-institutional transfer is the C6.4 structural feature",
    "Hedge preserved: multi-site dissemination outcome literature thinner than single-center evidence; pair with cases 121, 122, 123 as cross-domain workforce evidence",
  ),
  approaches: (
    during: (
      [Replace exposure-based training with a defined performance standard on a simulator; the SBML deliverable is competence demonstrated, not hours accumulated.],
      [Design the simulator and the standard around the specific complication modes the procedure produces — pneumothorax, arterial puncture, CRBSI for CVC — so the training closes the gaps the outcome data identifies.],
      [Pair the procedural-outcome evidence with cost-effectiveness evidence at single-site scale; the combination is what makes the program disseminable beyond the original institution.],
    ),
    after: (
      [Plan the dissemination as a deliverable of the original program, not as a separate downstream activity; the VA rollout is what makes Barsuk SBML a cross-institutional intervention rather than a successful single-site study.],
      [Build multi-site outcome measurement into the dissemination from the start; the published evidence at national-VA scale is thinner than the single-center evidence, and the gap is a live frontier the case names.],
      [Carry the cross-domain pairing with team-science training (Case 40), IPE (Case 28), and implementation-science training (Case 41) into the curricular framing — the four cases together stage what cross-domain workforce dissemination looks like with measurement and what it looks like without.],
    ),
  ),
  references: (
    [Barsuk, Cohen, Feinglass, McGaghie, & Wayne (2009), "Use of simulation-based education to reduce catheter-related bloodstream infections," _Archives of Internal Medicine_ 169(15):1420–1423, doi:10.1001/archinternmed.2009.215.],
    [Cohen, Feinglass, Barsuk, Barnard, O'Donnell, McGaghie, & Wayne (2010), "Cost savings from reduced catheter-related bloodstream infection after simulation-based education for residents in a medical intensive care unit," _Simulation in Healthcare_ 5(2):98–102, doi:10.1097/SIH.0b013e3181bc8304.],
    [Barsuk, McGaghie, Cohen, Balachandran, & Wayne (2009), "Use of simulation-based mastery learning to improve the quality of central venous catheter placement in a medical intensive care unit," _Journal of Hospital Medicine_ 4(7):397–403.],
    [McGaghie, Issenberg, Cohen, Barsuk, & Wayne (2011), "Does simulation-based medical education with deliberate practice yield better results than traditional clinical education? A meta-analytic comparative review," _Academic Medicine_ 86(6):706–711.],
    [Department of Veterans Affairs SimLEARN documentation — the operating-program record of the national dissemination effort.],
  ),
  quote: [The standard, not the calendar, governs progression. The trainee practices until they demonstrate competence; the simulator absorbs the cost of the practice.],
  quote-source: "Editors' synthesis of Barsuk et al. (2009).",
  le-insight: [
    Barsuk SBML for CVC insertion is the canonical small-tier
    intervention case for cross-institutional dissemination of a
    proven mechanism. The single-center evidence is controlled-
    comparison and cost-effective; the VA national dissemination
    is the cross-institutional transfer step. The multi-site
    outcome evidence is thinner than the single-center evidence —
    the live frontier of the dissemination case.
  ],
  lens-approach: [
    Barsuk SBML is the cross-institutional dissemination case
    (induced 6.4; LENS D2/PT4) — Domain 2 for mastery-learning
    replacing exposure-based progression; Domain 4 for the
    procedural-outcome + cost-effectiveness pairing. Pair with
    the translation trio (Cases 40, 28, 41).
  ],
  literature-items: (
    [Barsuk et al. (2009), _Archives of Internal Medicine_],
    [Cohen et al. (2010), _Simulation in Healthcare_],
    [McGaghie et al. (2011), _Academic Medicine_ — meta-analytic review],
  ),
  reflection-list: (
    [Identify a high-volume, high-consequence procedural skill in your domain where training is currently exposure-based rather than performance-standard-based. What is the analog of SBML, and what is the simulator that would absorb the cost of the practice?],
    [Specify the procedural-outcome and cost-effectiveness pairing you would design at single-site scale; both halves are what made the Barsuk program disseminable, and the pairing is what distinguishes a teachable single-site case from a national-rollout candidate.],
    [The VA dissemination evidence is thinner than the single-center evidence. Design the multi-site outcome-tracking architecture you would build into the next dissemination — what instrument, what comparison, what cadence — so the multi-site evidence catches up to the demonstration evidence.],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 7"),
)

// ---- Case 15 — i-pass-handoff-bundle-structuring-the ----
#case(
  number: 15,
  slug: "i-pass-handoff-bundle-structuring-the",
  title: "I-PASS Handoff Bundle — Structuring the Human-to-Human Transfer",
  year: "2014",
  domains-list: ("clinical care", "patient safety", "team communication"),
  modes-code: "HKN",
  impact: "Across nine pediatric residency programs, implementation of the I-PASS handoff bundle (mnemonic + training + faculty development + sustainability campaign) was associated with a 23% relative reduction in medical errors and a 30% reduction in preventable adverse events, without negatively affecting resident workflow — the study design 'precludes definitively establishing a causal link'",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "3.3",
  lens-anchor: "D2/PT5",
  leo-anchor: "LEO-2, LEO-5",
  summary: [
    The shift-change handoff is the moment in inpatient care where
    patient state has to be transferred accurately across a human
    boundary under time pressure. Loss of safety-critical
    information at handoff is a documented failure mode, and the
    cognitive demand on the outgoing resident — synthesize, prioritize,
    and convey — exceeds what unaided improvisation can reliably
    deliver. I-PASS is a structured handoff bundle: a mnemonic
    (Illness severity, Patient summary, Action list, Situation
    awareness and contingency planning, Synthesis by receiver),
    paired with formal trainee education, faculty development, and
    a sustainability campaign. Starmer et al. (_NEJM_, 2014) studied
    its implementation at nine pediatric residency programs and
    reported a 23% relative reduction in medical errors and a 30% reduction in preventable adverse events, with no negative effect on resident workflow. The hedge survives verbatim: the authors
    state plainly that "our study design precludes definitively
    establishing a causal link." Published correspondence cautions
    against implementing the mnemonic alone without the full
    bundle. The case is the structured-transfer companion to Case
    177 (CIRAS) at the cultural-half-of-capability layer, and the
    small-tier intervention spine for state-transparency under
    stress.
  ],
  sections: (
    [
      The shift-change handoff is a structural risk point in
      inpatient care. The outgoing resident — who has the most
      detailed mental model of each patient's state and trajectory —
      has to synthesize, prioritize, and convey enough of that
      model to the incoming team that the patient's care is not
      disrupted by the boundary. Loss of safety-critical information
      at handoff is a documented failure mode in the patient-safety
      literature; preventable adverse events that trace to
      communication breakdown are a substantial fraction of
      inpatient harm. The cognitive demand exceeds what unaided
      improvisation can reliably deliver, and the institutional
      tolerance for that improvisation has been falling.#cn()
    ],
    [
      I-PASS is an explicitly bundled intervention. The mnemonic —
      Illness severity, Patient summary, Action list, Situation
      awareness and contingency planning, Synthesis by receiver —
      structures the handoff conversation around the information
      classes the receiver needs in order to take over safely. The
      mnemonic alone is the visible piece; the bundle around it is
      what makes the mnemonic land. The published implementation
      pairs the mnemonic with formal trainee education on its use,
      faculty development so that supervisors model and reinforce
      it, and a sustainability campaign so that the discipline does
      not erode after the rollout. The published correspondence
      cautions explicitly against implementing the mnemonic alone
      without the full bundle.#cn()
    ],
    [
      Starmer et al. (_New England Journal of Medicine_, 2014)
      studied the I-PASS bundle's implementation at nine pediatric
      residency programs in the United States and Canada. The
      design was a pre/post evaluation across the participating
      sites, with the bundle deployed sequentially and outcomes
      tracked through chart review and observation. The headline
      finding was a 23% relative reduction in medical errors and a
      30% reduction in preventable adverse events from the
      pre-implementation period to the post-implementation period, with no observed negative effect on
      resident workflow — the bundle did not impose net friction
      that displaced other clinical work.#cn()
    ],
    [
      The hedge is load-bearing and survives into the case
      verbatim. The authors state in the published paper that
      "our study design precludes definitively establishing a
      causal link" — pre/post evaluation across multiple sites is
      the strongest practical design in this setting, and it
      cannot rule out secular trends in patient-safety culture,
      simultaneous quality-improvement work, or the
      sites' own selection into the trial. The 23% reduction is
      the strongest available evidence; it is not closed proof
      that the bundle alone produced the effect. Treating it as
      either is a misreading of what the study design supports.#cn()
    ],
    [
      What the case carries for the corpus is the
      state-transparency-under-stress pattern at the human–human
      boundary (induced 3.3, LENS D2/PT5). The handoff is the
      moment of cognitive transfer at the team boundary; the
      bundle is the workflow artifact that makes the patient
      state legible across that boundary. Paired with Case 177
      (CIRAS) at the cultural-half-of-capability layer, the case
      shows that the mnemonic alone is not the intervention — the
      institutional commitment to the bundle (trainee education,
      faculty development, sustainability) is what makes the
      mnemonic real in operation. The pattern is partly borrowed
      from aviation discipline, so the case also seeds the
      cross-domain-adaptation conversation that v1 Cases 117 (CRM)
      and 89 (ASRS) anchor in aviation evidence.
    ],
  ),
  beats: (
    "Shift-change handoff: structural risk point; loss of safety-critical information is documented failure mode",
    "I-PASS bundle — mnemonic (Illness severity, Patient summary, Action list, Situation awareness, Synthesis by receiver) + trainee education + faculty development + sustainability campaign",
    "Starmer et al. NEJM 2014: 23% relative reduction in medical errors and 30% reduction in preventable adverse events across nine pediatric residency programs; no negative effect on resident workflow",
    "Hedge preserved verbatim: 'our study design precludes definitively establishing a causal link'",
    "Published correspondence cautions against implementing the mnemonic alone without the full bundle",
  ),
  approaches: (
    during: (
      [Specify the information classes the receiver needs in order to take over safely (illness severity, patient summary, action list, situation awareness, synthesis by receiver) and structure the handoff conversation around them, rather than around the outgoing operator's narrative preference.],
      [Treat the mnemonic, the trainee education, the faculty development, and the sustainability campaign as one bundle; the published correspondence is explicit that the mnemonic alone does not carry the result.],
      [Design the evaluation to track preventable adverse events and resident workflow together, so that the intervention's effect on patient harm and on the work it adds are visible in the same evidence record.],
    ),
    after: (
      [Report the 23\% relative reduction together with the verbatim hedge that "our study design precludes definitively establishing a causal link"; the strongest available evidence is not closed proof.],
      [Carry the bundle-not-mnemonic warning into any adaptation: implementations that drop the faculty-development and sustainability components are not implementations of the intervention the published evidence is about.],
      [Build the cross-domain adaptation conversation deliberately — aviation CRM and ASRS evidence (v1 Cases 117, 119) is part of the I-PASS lineage and CIRAS (Case 177) is the non-aviation companion at the cultural-commitment layer.],
    ),
  ),
  references: (
    [Starmer, A. J., Spector, N. D., Srivastava, R., West, D. C., Rosenbluth, G., Allen, A. D., Noble, E. L., Tse, L. L., Dalal, A. K., Keohane, C. A., Lipsitz, S. R., Rothschild, J. M., Wien, M. F., Yoon, C. S., Zigmont, K. R., Wilson, K. M., O'Toole, J. K., Solan, L. G., Aylor, M., Bismilla, Z., Coffey, M., Mahant, S., Blankenburg, R. L., Destino, L. A., Everhart, J. L., Patel, S. J., Bale, J. F., Spackman, J. B., Stevenson, A. T., Calaman, S., Cole, F. S., Balmer, D. F., Hepps, J. H., Lopreiato, J. O., Yu, C. E., Sectish, T. C., \& Landrigan, C. P. (2014). Changes in medical errors after implementation of a handoff program. _New England Journal of Medicine_, 371(19):1803–1812. doi:10.1056/NEJMsa1405556 — the case's primary evaluation.],
    [Starmer, A. J., et al. (2014). Implementation correspondence and follow-up. _New England Journal of Medicine_ — the published correspondence cautioning against implementing the mnemonic alone.],
    [Sectish, T. C., et al. (2010). Establishing a multisite education and research project: The I-PASS Study Group. _Academic Medicine_ — the I-PASS Study Group methodology and design rationale.],
    [Cohen, M. D., \& Hilligoss, P. B. (2010). The published literature on handoffs in hospitals: deficiencies identified in an extensive review. _Quality and Safety in Health Care_ — the broader handoff-failure-mode literature.],
  ),
  quote: [Our study design precludes definitively establishing a causal link.],
  quote-source: "Starmer et al., NEJM 2014.",
  le-insight: [
    I-PASS is the structured-handoff intervention the
    patient-safety literature anchors on — a 23% relative
    reduction in medical errors and a 30% reduction in
    preventable adverse events across nine residency
    programs, with no negative effect on resident workflow. The hedge that survives verbatim is the
    authors' own: the study design "precludes definitively
    establishing a causal link," and the bundle, not the
    mnemonic alone, is what the evidence is about.
  ],
  lens-approach: [
    I-PASS is the state-transparency-under-stress case at the
    human–human boundary (induced 3.3; LENS D2/PT5) — Domain 2
    for bundle-as-intervention; Domain 5 for the institutional
    faculty-development commitment. Pair with Case 177 (CIRAS)
    and v1 Cases 117 (CRM) and 89 (ASRS).
  ],
  literature-items: (
    [Starmer et al. (2014), _NEJM_],
    [Starmer et al. (2014), I-PASS implementation correspondence],
    [Sectish et al. (2010), _Academic Medicine_],
  ),
  reflection-list: (
    [Identify a moment in your domain's workflow where state has to be transferred accurately across a human boundary under time pressure. What are the information classes (the analog of I-PASS's five) the receiver needs in order to take over safely, and what bundle around the structuring artifact would make it land?],
    [The 23\% relative reduction is the strongest available evidence and the authors are explicit it is not closed proof. What additional evidence — a cluster-randomized rollout, a residual-error analysis at the handoff point — would you require before treating the figure as closure rather than strong signal?],
  ),
  courses: ("LEN 2", "LEN 4", "LEN 7"),
)

// ---- Case 16 — ncsbn-national-simulation-study ----
#case(
  number: 16,
  slug: "ncsbn-national-simulation-study",
  title: "NCSBN National Simulation Study — Licensing the 50% Substitution Rule",
  year: "2014",
  domains-list: ("nursing education", "clinical simulation", "regulation"),
  modes-code: "GKD",
  impact: "A longitudinal RCT randomized students across multiple US nursing programs to control, 25%, or 50% simulation substitution for traditional clinical hours; 660+ took the NCLEX with no statistically significant differences in clinical competency, nursing knowledge, or NCLEX pass rates — the number of nursing regulatory boards permitting up to 50% simulation substitution increased more than 20-fold from 2014 to 2022",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "6.1",
  lens-anchor: "D2/PT4",
  leo-anchor: "LEO-2, LEO-4",
  summary: [
    Pre-licensure nursing education had long rested on a regulatory
    requirement for traditional clinical hours — time spent caring
    for patients in a real clinical setting under the supervision
    of a clinical faculty member. As clinical-placement capacity
    came under pressure, the question facing nursing regulators was
    whether high-quality simulation could substitute for some
    fraction of those hours without degrading the clinical
    capability of new nurses. The National Council of State Boards
    of Nursing (NCSBN) ran the study that the field then built on:
    a longitudinal RCT randomized students across multiple US
    nursing programs to control, 25%, or 50% simulation
    substitution. Hayden et al. (_Journal of Nursing Regulation_,
    2014) reported no statistically significant differences in
    clinical competency, nursing knowledge, or NCLEX pass rates
    across the three groups; 660+ participants took the NCLEX. The
    follow-up (2023) documents the institutional transfer: the
    number of nursing regulatory boards permitting up to 50%
    substitution increased more than 20-fold from 2014 to 2022 —
    an unusually clean case of a single evidence base propagating
    across an entire regulatory field. The hedge survives: the
    result holds only "under conditions comparable to those
    described in the study" (high-quality simulation, trained
    faculty). Pair with Case 40 (Colorado CTSA team-science
    training) at the cross-domain workforce-intervention layer.
  ],
  sections: (
    [
      Pre-licensure nursing education in the United States has
      rested on a regulatory requirement, set by state nursing
      boards, that students complete a defined number of
      traditional clinical hours — time spent caring for patients
      in a real clinical setting under the supervision of a
      clinical faculty member. As nursing programs grew and
      clinical-placement capacity in hospitals came under pressure,
      the field was asking whether high-quality simulation —
      manikin-based or standardized-patient scenarios run in a
      controlled environment — could substitute for some fraction
      of traditional clinical hours without degrading the clinical
      capability of new nurses.#cn()
    ],
    [
      The National Council of State Boards of Nursing — the
      umbrella body for the state nursing-regulatory boards that
      together control nursing licensure — commissioned the
      definitive study. Hayden et al. (_Journal of Nursing
      Regulation_, 2014) reported the NCSBN National Simulation
      Study: a longitudinal randomized controlled trial that
      assigned pre-licensure nursing students at multiple US
      nursing programs to a control group, a 25%-substitution
      group, or a 50%-substitution group. The substitution
      condition replaced an equivalent fraction of traditional
      clinical hours with simulation hours run to specified
      quality standards (validated scenarios, trained simulation
      faculty, structured debriefing).#cn()
    ],
    [
      The headline finding was a null result on the outcome the
      regulators most cared about: no statistically significant
      differences in clinical competency, nursing knowledge, or
      NCLEX pass rates across the three groups. Six hundred and
      sixty-plus participants took the NCLEX licensure
      examination, providing the comparison the regulatory
      decision rested on. The longitudinal design followed cohorts
      through their first nursing positions, with comparable
      outcome measures at multiple time points. The study's
      qualifying language is precise: the result holds only "under
      conditions comparable to those described in the study," and
      those conditions are named — high-quality simulation,
      trained simulation faculty, structured debriefing.#cn()
    ],
    [
      What followed is the unusual part. Nursing regulation in
      the US is genuinely decentralized: each state board sets its
      own pre-licensure requirements, and there is no federal
      forcing mechanism. The 2023 follow-up study documents that
      the number of nursing regulatory boards permitting up to 50%
      simulation substitution increased more than 20-fold from
      2014 to 2022. A single evidence base — one study, run by
      the regulators' own collaborative — propagated across an
      entire regulatory field, on the strength of the published
      design and the null result on the licensure examination the
      boards control.#cn()
    ],
    [
      The case carries the cross-organization knowledge-transfer
      pattern at the regulatory-institution layer (induced 6.1,
      LENS D2/PT4). The mechanism that made the propagation work
      was the credibility of the study's design (longitudinal RCT,
      multi-site, blinded outcomes), the alignment of its outcome
      measure with the boards' own licensure mechanism (NCLEX),
      and the institutional ownership of the evidence (the
      regulators commissioned it and own it). Pair with Case 40
      (Colorado CTSA team-science training) at the cross-domain
      workforce-intervention layer — both are small-tier
      interventions with measurable workforce-capability claims,
      and both depend on the legitimacy of the assessment
      instrument the institution then has to defend.
    ],
  ),
  beats: (
    "NCSBN longitudinal RCT — students at multiple US nursing programs randomized to control, 25%, or 50% simulation substitution for traditional clinical hours",
    "Hayden et al. 2014 (_J Nursing Regulation_): no statistically significant differences in clinical competency, nursing knowledge, or NCLEX pass rates across groups; 660+ took the NCLEX",
    "Result holds only 'under conditions comparable to those described in the study' (high-quality simulation, trained faculty, structured debriefing)",
    "Institutional transfer: number of nursing regulatory boards permitting up to 50% substitution increased 20-fold from 2014 to 2022 — single evidence base propagating across the regulatory field",
    "Pair with Case 40 (Colorado CTSA team-science) at the cross-domain workforce-intervention layer",
  ),
  approaches: (
    during: (
      [Commission the study from inside the regulatory body that will then have to act on it; the institutional ownership of the evidence is what makes the propagation across decentralized regulators possible.],
      [Specify the quality conditions the result is conditional on (high-quality simulation, trained faculty, structured debriefing) at design time, so the qualifying language travels with the result and is not stripped at the citation stage.],
      [Align the study's outcome measure with the licensure mechanism the boards control (NCLEX pass rate); the credibility of the propagation depends on the outcome being the one the regulators already use.],
    ),
    after: (
      [Carry the qualifying language ("under conditions comparable to those described in the study") into every downstream adoption; the study's null result is conditional on quality standards, not unconditional.],
      [Document the propagation as a transferable institutional pattern: a decentralized regulatory field can move on the strength of a single, well-designed, body-owned study when the outcome measure is the one the regulators already use.],
      [Treat the 20-fold expansion of board adoption from 2014 to 2022 as evidence of the mechanism of regulatory transfer, not as evidence that 50\% substitution is safe outside the study's quality conditions.],
    ),
  ),
  references: (
    [Hayden, J. K., Smiley, R. A., Alexander, M., Kardong-Edgren, S., \& Jeffries, P. R. (2014). The NCSBN National Simulation Study: A longitudinal, randomized, controlled study replacing clinical hours with simulation in prelicensure nursing education. _Journal of Nursing Regulation_, 5(2 Suppl):S1–S64. https://www.journalofnursingregulation.com/article/s2155-8256(15)30062-4/fulltext — the case's primary study.],
    [Smiley, R. A., \& Martin, B. (2023). Simulation in Nursing Education: Advancements in Regulation, 2014–2022. _Journal of Nursing Regulation_. doi:10.1016/S2155-8256(23)00086-8 — the 2023 follow-up documenting the regulatory propagation.],
    [Jeffries, P. R. (2012). _Simulation in Nursing Education: From Conceptualization to Evaluation_ (2nd ed.). National League for Nursing — the simulation-quality framework the NCSBN study's quality conditions rest on.],
    [INACSL Standards Committee (2016). _INACSL Standards of Best Practice: Simulation_. _Clinical Simulation in Nursing_, 12(S) — the simulation-practice standards downstream programs adopt as the analog of the NCSBN quality conditions.],
  ),
  quote: [The result holds under conditions comparable to those described in the study — high-quality simulation, trained faculty, structured debriefing.],
  quote-source: "Editors' synthesis of Hayden et al. (2014).",
  le-insight: [
    The NCSBN National Simulation Study is the unusual case
    of a single, well-designed, regulator-commissioned study
    propagating a substantial workforce-capability change
    across an entire decentralized regulatory field. The null
    result on NCLEX is conditional on the quality conditions
    the study names — high-quality simulation, trained
    faculty, structured debriefing — and the qualifying
    language has to travel with the result.
  ],
  lens-approach: [
    NCSBN is the regulator-owned cross-organization
    knowledge-transfer case (induced 6.1; LENS D2/PT4) —
    Domain 2 for the RCT-design discipline; Domain 5 for the
    institutional-ownership move that propagated evidence
    across decentralized regulators. Pair with Case 40
    (Colorado CTSA).
  ],
  literature-items: (
    [Hayden et al. (2014), _J Nursing Regulation_],
    [Smiley (2023), _J Nursing Regulation_ — 2014–2022 follow-up],
    [Jeffries (2012), _Simulation in Nursing Education_],
  ),
  reflection-list: (
    [Identify a decentralized regulatory field in your domain where a substitution or adoption decision rests on whether the new modality preserves capability. What would a NCSBN-class RCT, commissioned from inside the regulatory body, look like — and what would the licensure-aligned outcome measure be?],
    [The result is conditional on quality conditions (high-quality simulation, trained faculty, structured debriefing). What is the analog conditional in your context, and what mechanism would carry the qualifying language into the regulatory adoptions that follow?],
    [The 20-fold expansion of board adoption is evidence of regulatory transfer, not of safety outside the study's quality conditions. What would you do operationally to ensure the adoptions in your field actually meet the conditions the propagation rests on?],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 7"),
)

// ---- Case 17 — spaced-education-rcts-in-medical ----
#case(
  number: 17,
  slug: "spaced-education-rcts-in-medical",
  title: "Spaced Education RCTs in Medical Training",
  year: "2007 – 2009",
  domains-list: ("medical education", "retention", "workforce L&D"),
  modes-code: "HKD",
  impact: "A multi-institution RCT of urology residents across the US and Canada randomized participants to bolus versus spaced-pattern email delivery of validated study questions; spaced education improved acquisition and retention of medical knowledge, and a follow-up showed the learning benefit persisting for two years",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT4",
  leo-anchor: "LEO-2, LEO-4",
  summary: [
    Spacing — distributing study sessions over time rather than
    massing them — is one of the most robust findings in basic
    learning-science research, with effects across age,
    population, and content domain. Whether the basic finding
    transfers into the workplace-L&D context of practicing
    medical trainees is a separate empirical question. Kerfoot et
    al. (_Journal of Urology_, 2007) ran the test that closed the
    loop. A multi-institution RCT randomized urology residents
    across US and Canadian programs to receive validated study
    questions in either a bolus pattern (concentrated delivery) or
    a spaced pattern (distributed delivery), both via email. The
    spaced-education condition improved acquisition and retention
    of medical knowledge against the bolus comparison. The 2009
    follow-up (Kerfoot, _Journal of Urology_, 181:2671) documented
    that the learning benefit persisted for two years. The case is
    a methodologically clean small-tier intervention with
    replication, with standard RCT scope: the result speaks to the
    delivery-pattern manipulation in the email-delivered
    validated-question context, not to spacing in general or to
    other modalities. The strongest randomized strength in the
    small-tier batch. Pair with Case 69 (Duolingo half-life
    regression) at the spacing-mechanism-in-deployment layer.
  ],
  sections: (
    [
      Spacing — distributing study sessions over time rather than
      massing them in a single concentrated block — is among the
      most robust findings in basic learning-science research. The
      spacing effect appears across age groups, populations,
      content domains, and outcome measures, and the broader
      retrieval-practice literature complements it. What is less
      obvious in the basic literature is whether the spacing
      effect transfers to the workplace-L&D context, where the
      learner is a practicing trainee, the content is the trainee's
      own clinical specialty, and the delivery mechanism is one
      the trainee will tolerate as part of their work week.#cn()
    ],
    [
      Kerfoot et al. (_Journal of Urology_, 2007) ran the test
      that closed the loop. The study was a multi-institution
      randomized controlled trial of urology residents at
      multiple US and Canadian residency programs. Participants
      were randomized to receive validated study questions
      drawn from the urology in-service examination question pool,
      delivered by email, in either a bolus pattern (concentrated
      delivery over a short window) or a spaced pattern
      (distributed delivery across a longer window). Outcomes
      were knowledge acquisition (immediate post-test) and
      retention (delayed post-test), measured against the same
      validated question pool the delivery drew from.#cn()
    ],
    [
      The result was direct. The spaced-education condition
      improved acquisition and retention of medical knowledge
      against the bolus comparison. The intervention and the
      measurement formed a tight closed loop: the validated
      questions delivered are the same content the post-test
      drew from, the email delivery is the manipulation, and the
      knowledge-outcome measure is the institution's own
      in-service question pool. The 2009 follow-up (Kerfoot,
      _Journal of Urology_, 181:2671) reported a separate
      analysis with the same residents and documented that the
      learning benefit persisted for two years — a duration that
      is rare in the workplace-L&D RCT literature.#cn()
    ],
    [
      The case's scope is what makes it teachable rather than
      over-extended. The result speaks to the delivery-pattern
      manipulation (bolus vs. spaced) in the email-delivered
      validated-question context, with urology residents at
      multiple programs. It does not speak to spacing in general,
      to other modalities (mobile, in-clinic, simulation), or to
      content classes substantially different from
      in-service-examination knowledge. The strength of the
      design — multi-institution RCT, two-year persistence — is
      the strongest randomized strength in the small-tier batch,
      and the scope discipline is the qualifying language that
      makes the strength interpretable. The case is the
      methodologically clean small-tier closed-loop intervention
      the LENS Iterative Development domain anchors on.#cn()
    ],
    [
      Pair with Case 69 (Duolingo half-life regression) at the
      spacing-mechanism-in-deployment layer. Duolingo is the
      large-scale operational deployment of a spacing-and-
      retrieval-practice system in a consumer language-learning
      product; Kerfoot is the small-scale randomized evidence in
      the workplace-L&D medical-training context. Together the
      two cases anchor the spacing-mechanism conversation across
      laboratory, deployed-product, and randomized-workplace
      evidence. The Iterative Development discipline LENS teaches
      depends on having both the controlled-randomized closed
      loop (Kerfoot) and the operational-mechanism evidence
      (Duolingo) available in the corpus.
    ],
  ),
  beats: (
    "Spacing — one of the most robust findings in basic learning-science research; transfer to workplace-L&D in medical trainees is the empirical question",
    "Kerfoot et al. _J Urology_ 2007 — multi-institution RCT, urology residents across US/Canada; validated study questions delivered by email in bolus vs. spaced pattern",
    "Spaced-education condition improved acquisition and retention of medical knowledge against bolus comparison",
    "Kerfoot 2009 follow-up (_J Urology_ 181:2671) — learning benefit persisted for 2 years",
    "Scope discipline: speaks to email-delivered validated-question delivery pattern, not spacing in general; strongest randomized strength in the small-tier batch",
  ),
  approaches: (
    during: (
      [Specify the closed loop in advance: the intervention manipulation, the outcome measure, and the validated-question pool together, so the intervention and the measurement form a single design rather than two separately published artifacts.],
      [Choose the delivery modality (email, in this case) that the trainees will tolerate as part of their work week; the workplace-L&D context is unforgiving of modalities that compete with clinical work.],
      [Pre-register the persistence follow-up at the design stage; the two-year retention figure in Kerfoot 2009 is what gives the intervention its workplace-L&D strength, and follow-up has to be designed into the original RCT.],
    ),
    after: (
      [Report the result in the scope it speaks to: email-delivered validated-question delivery pattern with urology residents; the spacing-in-general claim sits in the basic literature, and the case's contribution is the workplace-L&D closed-loop evidence.],
      [Treat the two-year persistence figure as the workplace-L&D headline; persistence over years is rare in the workplace-L&D RCT literature, and the figure is what makes the result actionable as a training design.],
      [Pair the result with Duolingo (Case 69) at the spacing-mechanism layer in any communication of the broader conversation, so the controlled-randomized evidence and the deployed-product evidence are read together.],
    ),
  ),
  references: (
    [Kerfoot, B. P., Baker, H. E., Koch, M. O., Connelly, D., Joseph, D. B., \& Ritchey, M. L. (2007). Randomized, controlled trial of spaced education to urology residents in the United States and Canada. _Journal of Urology_, 177(4):1481–1487. doi:10.1016/j.juro.2006.11.074 — the case's primary RCT.],
    [Kerfoot, B. P. (2009). Learning benefits of on-line spaced education persist for 2 years. _Journal of Urology_, 181(6):2671 — the two-year persistence follow-up.],
    [Cepeda, N. J., Pashler, H., Vul, E., Wixted, J. T., \& Rohrer, D. (2006). Distributed practice in verbal recall tasks: A review and quantitative synthesis. _Psychological Bulletin_, 132(3):354–380 — the basic-literature spacing-effect review the workplace-L&D RCT sits against.],
    [Settles, B., \& Meeder, B. (2016). A trainable spaced repetition model for language learning. _Proceedings of ACL 2016_, 1848–1858 — Duolingo half-life regression (Case 69), the operational deployment companion.],
  ),
  quote: [The learning benefit persisted for two years.],
  quote-source: "Kerfoot, Journal of Urology 2009 follow-up.",
  le-insight: [
    Kerfoot et al. is the methodologically clean small-tier
    closed-loop spaced-education RCT in workplace medical
    training, with two-year persistence in the follow-up. It
    is the strongest randomized strength in the small-tier
    batch. The scope discipline is what makes it
    interpretable: the result speaks to the email-delivered
    validated-question delivery pattern, not to spacing in
    general.
  ],
  lens-approach: [
    Kerfoot is the canonical small-tier closed-loop
    spacing-in-workplace-L&D case (induced 2.3; LENS D2/PT4).
    LENS uses it in Domain 2 (Iterative Development) for the
    intervention-and-measurement-as-single-design discipline,
    and in Domain 4 (Test and Evaluation) for the persistence-
    follow-up that makes the result a workplace-L&D headline.
    Pair with Case 69 (Duolingo half-life regression) at the
    spacing-mechanism-in-deployment layer — controlled-
    randomized evidence with deployed-product evidence
    together.
  ],
  literature-items: (
    [Kerfoot et al. (2007), _Journal of Urology_],
    [Kerfoot (2009), _Journal of Urology_ — 2-year persistence],
    [Cepeda et al. (2006), _Psychological Bulletin_],
  ),
  reflection-list: (
    [Identify a workplace-L&D context in your domain where the basic-literature evidence (spacing, retrieval practice, deliberate practice) is robust and the workplace-transfer evidence is thinner. What would a Kerfoot-class closed-loop RCT look like — the intervention manipulation, the outcome measure, the validated-content pool together?],
    [The two-year persistence figure is the workplace-L&D headline. What follow-up cadence would you design into your study at the start, so that persistence over years is part of the original RCT rather than a separately commissioned downstream check?],
    [The result's scope is the email-delivered validated-question delivery pattern. What is the analog scope discipline in your context — the qualifying language that has to travel with the headline so the result is read as evidence about a specific mechanism rather than as evidence about a general principle?],
  ),
  courses: ("LEN 2", "LEN 3", "LEN 5"),
)

// ---- Case 18 — pepfar-hiv-training-across-16-sub ----
#case(
  number: 18,
  slug: "pepfar-hiv-training-across-16-sub",
  title: "PEPFAR HIV Training Across 16 Sub-Saharan African Countries — Modality Comparison Under Disruption",
  year: "2023",
  domains-list: ("global health", "HIV care", "training-modality comparison", "Sub-Saharan Africa"),
  modes-code: "KND",
  impact: "Across 16 PEPFAR-supported Sub-Saharan African countries, pre/post knowledge and self-confidence assessments showed mean increases across all training modalities — in-person (pre-COVID), virtual, and blended — when pandemic disruption forced a delivery-mode switch; the L1–L2 limitation is explicit and the L3/L4 question remains open",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  evidence-flag: "preprint-tier",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT4",
  leo-anchor: "LEO-2, LEO-4, LEO-5",
  summary: [
    Across 16 PEPFAR-supported Sub-Saharan African countries, a
    2023 real-world program evaluation compared in-person
    (pre-COVID), virtual, and blended HIV-care training delivery.
    Across all assessed knowledge domains and self-perceived
    confidence dimensions, pre/post assessments showed mean
    increases regardless of modality. The honest framing the
    case carries into print is that the outcome metric is
    knowledge and self-rated confidence — Kirkpatrick L1–L2
    territory (Case 79) — not L3 on-job behavior change or L4
    patient outcomes. Even so, the study is one of the few
    real-world cross-country modality comparisons at meaningful
    scale, and it is the L&D evaluation pattern playing out in
    global health at multi-country scope. The case is
    cross-listed with the corporate / workforce L&D cluster
    (Cases 79, 65, 83, 70) and with the non-US/UK/EU
    geographic-coverage gap (Cases 93, and the cases in the
    later supplemental batches). Evidence-tier flag is
    preprint-tier: the medRxiv version is preprint and the PMC
    version is journal-published — the editor's citation choice
    should be carried explicitly. Future validation on whether
    L1–L2 knowledge gains translate to L3 behavior change or
    L4 patient outcomes remains ongoing.
  ],
  sections: (
    [
      PEPFAR (the US President's Emergency Plan for AIDS
      Relief) has been one of the largest sustained global
      health programs of the past two decades. Workforce
      capability — clinicians and frontline workers trained on
      current HIV diagnosis, treatment, and prevention
      protocols — is one of its load-bearing deliverables.
      COVID disruption forced a delivery-mode switch in 2020
      across countries, from in-person training to virtual and
      blended modalities, before any of the evidence base on
      modality equivalence had been built for this
      workforce.#cn()
    ],
    [
      The 2023 study compares pre/post-assessment outcomes
      across 16 PEPFAR-supported Sub-Saharan African countries
      and across the three modalities. The headline finding is
      that across all knowledge domains and self-perceived
      confidence dimensions assessed, mean increases were
      observed regardless of modality. But the modalities were not equivalent: the in-person
      format produced significantly greater knowledge gains
      (13.6% increase vs. 6.0% for the virtual workshop and
      7.6% for the online course) and greater confidence gains,
      regardless of training level or professional cadre. The
      countervailing finding is equity of access — the virtual
      and online formats reached a significantly higher
      proportion of women — so the policy question under future
      disruption is a trade-off between L1–L2 learning gains and
      reach, not a claim of modality equivalence.#cn()
    ],
    [
      The honest framing the case must carry into print is the
      Kirkpatrick limitation. The study's outcomes are
      knowledge and self-rated confidence — Level 1
      (reaction and confidence) and Level 2 (learning) in the Kirkpatrick
      framework (Case 79). It is not Level 3 (behavior change
      on the job — whether the clinicians actually changed
      practice) and it is not Level 4 (results — whether
      patient outcomes improved). The structural limitation
      Case 79 names is exactly the limitation this study sits
      inside.#cn()
    ],
    [
      Even so, the study is one of the few real-world
      cross-country modality comparisons at meaningful scale,
      and the multi-country scope means the comparison is not
      trivially confounded by single-country labor-market or
      health-system factors. It is the L&D evaluation pattern
      playing out in global health, and the modality-comparison
      finding is policy-relevant for PEPFAR program design
      across the deployment region.#cn()
    ],
    [
      The evidence-tier flag is preprint-tier: the medRxiv
      version is the preprint; the PMC version is the
      journal-published article. The editor's citation choice
      between the two should be carried explicitly in the
      printed case. The LENS teaching point is the
      cross-listed pair with the corporate / workforce L&D
      cluster (Cases 79, 65, 83, 70) and the non-US/UK/EU
      cluster (Cases 93). The subobjective *Judgment under
      inadequate evidence* (4.4) is exercised: the study is the
      strongest evidence the field has for modality
      equivalence in this context, and it does not establish
      L3 / L4 outcomes. Future validation is ongoing.
    ],
  ),
  beats: (
    "PEPFAR workforce-capability program; COVID forced modality switch across 16 SSA countries with no prior evidence base on modality equivalence",
    "2023 study: pre/post assessments across knowledge and self-confidence domains showed mean increases regardless of modality (in-person, virtual, blended)",
    "Kirkpatrick L1–L2 limitation explicit: outcomes are knowledge and self-rated confidence, not L3 behavior change or L4 patient outcomes (Case 79)",
    "Rare real-world cross-country modality comparison at meaningful scale; multi-country scope limits single-country confounding",
    "Preprint-tier flag: medRxiv preprint and PMC published; editor citation choice carried explicitly; future validation on L3/L4 ongoing",
  ),
  approaches: (
    during: (
      [Design the modality comparison around what the assessment instrument can actually establish — knowledge and confidence at L1–L2 are tractable; L3 and L4 require longitudinal data and patient-outcome linkage the study did not have.],
      [Build the multi-country sampling so the comparison is not trivially confounded by single-country factors — the 16-country scope is part of the study's evidential weight.],
      [Carry the Kirkpatrick limitation into the program documentation honestly — Case 79's stop-at-L2 pattern is exactly the limitation this study sits inside, and naming it preserves the case's teaching value.],
    ),
    after: (
      [Pair with Case 93 (SkillsFuture) as the workforce-capability counterparts at national- and multi-country scale; together they teach what L&D measurement looks like in non-US/UK/EU settings with the evidence-tier honesty intact.],
      [Use the subobjective *Judgment under inadequate evidence* (4.4): the study is the strongest evidence the field has for modality equivalence in this context, and the practitioner has to decide modality policy on L1–L2 evidence while L3/L4 evidence develops.],
      [Carry the preprint-tier flag honestly: the medRxiv preprint and the PMC published article are both citable; future validation requires confirmatory replication and L3/L4 outcome measurement.],
    ),
  ),
  references: (
    ["Comparing in-person, blended and virtual training interventions; a real-world evaluation of HIV capacity building programs in 16 countries in sub-Saharan Africa," medRxiv 2023.02.08.23285641 (preprint) → PMC10365303 (published).],
    [PEPFAR program documentation — workforce-capability training as a load-bearing deliverable across Sub-Saharan African deployment countries.],
    [Kirkpatrick & Kirkpatrick (2006), _Evaluating Training Programs_ — the chain-of-evidence framework the L1–L2 limitation references (paired Case 79).],
    [Blume et al. (2010), _Journal of Management_ 36(4):1065–1105 — the meta-analytic transfer finding the L3 question references (paired Case 65).],
  ),
  quote: [The outcomes are knowledge and self-rated confidence. The L3 and L4 questions — did practice change, did patient outcomes improve — remain open.],
  quote-source: "Editors' synthesis of the PEPFAR 16-country modality comparison.",
  le-insight: [
    PEPFAR's 16-country modality comparison is the L&D
    evaluation pattern in global health: mean L1–L2 gains
    across all modalities, with the Kirkpatrick limitation
    (Case 79) explicit. Evidence-tier flag is preprint-tier
    — both the medRxiv preprint and the PMC published
    version are citable — and the L3 / L4 questions remain
    open. Future validation is ongoing.
  ],
  lens-approach: [
    PEPFAR is the global-health workforce-capability case
    (induced 2.3; LENS D2/PT4). LENS uses it in Domain 2
    (Iterative Development) for the modality-design
    iteration COVID forced and in Domain 5 (Navigating
    Sociotechnical Constraints) for the multi-country
    program scope. The subobjective *Judgment under inadequate
    evidence* (4.4) is exercised because the study is the
    strongest available at L1–L2 and does not settle L3 /
    L4. Pairs with Case 93 (SkillsFuture) as the workforce
    L&D cross-listing.
  ],
  literature-items: (
    [medRxiv 2023.02.08.23285641 (preprint) → PMC10365303 (published)],
    [PEPFAR program documentation],
    [Kirkpatrick (Case 79) and Blume (Case 65) as paired references],
  ),
  reflection-list: (
    [Identify a training program in your context that was forced to switch modality under disruption (COVID, budget constraint, geographic dispersion). What evidence would you have needed at the time to make the modality decision well, and at which Kirkpatrick level was the available evidence?],
    [Specify the L3 / L4 measurement architecture you would build to extend the PEPFAR study into behavior-change and patient-outcome evidence — what data sources, what cadence, what linkage between training cohort and clinical outcomes.],
    [The case is preprint-tier: both the medRxiv preprint and the PMC published version are citable. What additional confirmatory evidence — replication in different country sets, L3 / L4 follow-up studies, peer-reviewed meta-analysis — would you require before treating modality equivalence as a settled question for program-design decisions?],
  ),
  courses: ("LEN 2", "LEN 4", "LEN 7"),
)

// ---- Case 19 — keystone-icu-pronovost-checklist ----
#case(
  number: 19,
  slug: "keystone-icu-pronovost-checklist",
  title: "Keystone ICU / Pronovost Checklist",
  year: "2004 – present",
  domains-list: ("healthcare",),
  modes-code: "TN",
  impact: "Central-line-associated bloodstream infections (CLABSI) reduced to near zero across 103 Michigan ICUs; ~1,500 lives saved in 18 months; ~$175M saved; sustained at ten years",
  diagram: dgm.dgm-keystone,
  kind: "intervention",
  summary: [
    Peter Pronovost's central-line checklist has five items — wash hands,
    use full barrier precautions, clean the skin with chlorhexidine, avoid the
    femoral insertion site, and remove unnecessary catheters — and not one of them was unknown
    to the physicians it governed. The question was never what to do, but
    whether it would be done every time. The Keystone project, launched
    across 103 Michigan ICUs in 2004, paired the checklist with a cultural
    change: nurses were not merely permitted but required to stop the
    procedure if a step was skipped. That authorization is the element the case treats as load-bearing — though it
    rode inside a multi-component bundle (clinician education, a dedicated line
    cart, daily catheter-review goals, and monthly infection-rate feedback) that
    the trial tested as a whole and could not decompose. Central-line-associated bloodstream infections
    fell to near zero, an estimated 1,500 lives and \$175 million were saved
    in eighteen months, and the effect was sustained at ten years.
  ],
  sections: (
    // -- Background --
    [
      Central-line-associated bloodstream infections were a common, often
      fatal complication of intensive care, and the steps to prevent them
      were well established and uncontroversial. The problem was
      reliability: in the existing culture, a nurse who saw a physician
      skip a sterile step had no procedural path to intervene without
      crossing the hospital's authority gradient. The knowledge was
      universal and the steps cheap; what was missing was any mechanism that
      made the right action happen every time rather than most of the time,
      which is precisely where a fatal infection finds its opening.#cn()
    ],
    // -- The Intervention --
    [
      In 2004, Peter Pronovost's team launched the Keystone ICU project
      across 103 Michigan units. It combined a simple five-item central-line
      checklist — hand hygiene, chlorhexidine skin prep, full-barrier
      draping, sterile gown-mask-gloves, and a sterile dressing — with an
      explicit authorization: nurses were required, not merely permitted,
      to stop any procedure in which a step was missed. The distinction
      between permitted and required was deliberate — a permission a nurse
      might decline to exercise against a senior physician became an
      obligation the institution stood behind, removing the personal risk of
      intervening.#cn()
    ],
    // -- How It Worked --
    [
      The checklist was the technical half; the nurses' enforcement
      authority was the cultural half, and it was the load-bearing one.
      Before Keystone, the path to intervene did not exist; after it, the
      path was institutional and expected. The pairing converted knowledge
      everyone already had into behavior that happened every time. The
      checklist gave the nurse an objective, impersonal basis for the stop —
      a missed item, not a judgment about the physician — which is what made
      the authority usable in practice rather than merely on paper.#cn()
    ],
    // -- The Evidence --
    [
      Across the Michigan ICUs, the median quarterly CLABSI rate fell to
      zero, and the state's units outperformed 90% of ICUs
      nationwide. The program was estimated to have saved roughly 1,500
      lives and \$175 million within eighteen months. Results were published
      in the _New England Journal of Medicine_ in 2006, and follow-up
      showed the effect sustained at ten years. The durability mattered as
      much as the size of the drop: an improvement that survives a decade is
      evidence the change was built into the system's structure rather than
      riding on the initial enthusiasm of a single project.#cn()
    ],
    // -- What Transferred --
    [
      Keystone became the clearest evidence in healthcare that a technical
      intervention without an authority change produces no durable
      improvement — and vice versa. The model was packaged as the AHRQ CUSP
      toolkit, adopted in more than forty states, and replicated
      internationally, establishing the design principle of intervening in
      matched technical-and-cultural pairs. Packaging the approach as a
      reusable toolkit was itself part of what transferred — it turned a
      single project's success into something other institutions could adopt
      without rediscovering the load-bearing role of the authority change.#cn()
    ],
  ),
  beats: (
    "Central-line infections persisted because nurses lacked procedural path to intervene across the authority gradient",
    "Pronovost paired a five-item sterile checklist with a required nurse stop authority",
    "Requirement, not permission, plus an impersonal trigger made the stop usable against senior physicians",
    "CLABSI rates fell near zero across 103 ICUs; effect sustained at ten years",
    "Packaged as the AHRQ CUSP toolkit, replicated in forty states and internationally as paired design",
  ),
  references: (
    [Pronovost, P. et al. (2006), "An Intervention to Decrease Catheter-Related Bloodstream Infections in the ICU," _NEJM_ 355 — the trial and the near-zero result.],
    [Pronovost & Vohr (2010), _Safe Patients, Smart Hospitals_ — the checklist-plus-nurse-authority pairing (paraphrased).],
    [Lipitz-Snyderman, A. et al. (2011), _BMJ_ — sustained effect at follow-up.],
    [Agency for Healthcare Research and Quality, CUSP toolkit — dissemination across states.],
    [Bosk, C. et al. (2009), "Reality check for checklists," _The Lancet_ — the authorization, not the list, as the active ingredient.],
  ),
  quote: [The checklist was the technical intervention. The nurses' authority to enforce it was the cultural intervention. Neither worked without the other.],
  quote-source: "Paraphrasing Pronovost & Vohr, Safe Patients, Smart Hospitals, 2010",
  le-insight: [
    Keystone is the clearest evidence in healthcare that a technical
    intervention without authority intervention produces no durable change,
    and authority intervention without a technical artifact produces no
    measurable change. Both are necessary. The empirical record of
    Keystone is the strongest available argument for designing interventions
    as *pairs* — and treating the cultural half as engineering, not
    aspiration.
  ],
  lens-approach: [
    LENS uses Keystone in LEN 4 and LEN 10 as the canonical worked example
    of measurement linked to intervention. Studio projects require students
    to specify both halves of the pair, name the authority that authorizes
    the cultural half, and identify the measurement signal that will
    confirm or refute the effect. The course treats "is the cultural change
    actually authorized?" as falsifiable, not stated.
  ],
  literature-items: (
    [Gawande, _The Checklist Manifesto_ (2009)],
    [Bosk et al. (2009), "Reality check for checklists," _The Lancet_],
    [Edmondson, _The Fearless Organization_ (2018)],
  ),
  reflection-list: (
    [Identify an evidence-based protocol in your domain that is *known* to work but is not consistently performed. What is the authority change required to pair with it?],
    [Design the measurement signal that would confirm the cultural half of a Keystone-style intervention is actually being authorized — not merely declared.],
    [Keystone made the nurse's stop an obligation the institution stood behind, not a personal risk. Identify a corrective action in your domain that currently costs the person who takes it, and design the institutional backing that would remove that cost.],
  ),
  approaches: (
    during: (
      [Pair the technical artifact with the authority change from the outset — a checklist plus the explicit, institution-backed right of a junior member to stop the procedure when a step is missed.],
      [Make the intervention an obligation rather than a permission, so the corrective action does not depend on an individual's willingness to challenge a senior colleague.],
      [Anchor the stop to an objective, impersonal trigger (a missed checklist item) so the authority is usable without it reading as a judgment of the more senior operator.],
    ),
    after: (
      [Measure the outcome directly (the CLABSI rate) and publish it, so the cultural half can be confirmed as authorized in practice rather than merely declared.],
      [Track the effect over years, not months, to confirm the change is built into the system's structure rather than riding on a project's initial enthusiasm.],
      [Package the paired design as a reusable toolkit so other institutions can adopt it without rediscovering the load-bearing role of the authority change.],
    ),
  ),
  courses: ("LEN 4", "LEN 10", "LEN 5"),
  scale: "big",
  induced-anchor: "4.1",
  lens-anchor: "D3/PT3",
  leo-anchor: "LEO-3",
  coi: "Institutional overlap: an editor shares an institution (Johns Hopkins) with the study's lead author; no editor was personally involved in the Keystone ICU work. Included on the published peer-reviewed evidence (NEJM 2006) and its sustained, independently replicated results.",
)

// ---- Case 20 — trews-sepsis-watch ----
#case(
  number: 20,
  slug: "trews-sepsis-watch",
  title: "TREWS / Sepsis Watch",
  year: "2018 – 2022",
  domains-list: ("healthcare", "clinical AI"),
  modes-code: "HKG",
  impact: "Prospective multi-site evidence of reduced mortality, organ failure, and length of stay when clinicians engaged with ML sepsis alerts in deployed care",
  kind: "intervention",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "3.1",
  lens-anchor: "D3/PT6",
  leo-anchor: "LEO-4, LEO-3",
  coi: "Institutional overlap: an editor shares an institution (Johns Hopkins) with authors of this work and its deployment sites (five JHU hospitals); no editor was personally involved. Included on the published peer-reviewed evidence (Nature Medicine 2022).",
  summary: [
    The Targeted Real-time Early Warning System (TREWS) is a machine-learning
    sepsis-detection tool deployed at five Johns Hopkins hospitals; Duke's
    Sepsis Watch follows the same pattern. The Adams et al. prospective
    multi-site study (_Nature Medicine_ 2022) reported reduced in-hospital
    mortality, reduced organ failure, shorter length of stay, and improved
    antibiotic timeliness associated with deployment — conditional on
    clinicians acting on alerts within a defined window. The benefit was
    not the model in isolation. It was the model plus a deliberately
    engineered alert, workflow, and clinician-confirmation layer that made
    the alert actionable at the bedside. The honest hedge in the literature
    is that the evidence is prospective and observational, not RCT; the
    field notes RCTs are still pending. The case is the positive counter to
    the Epic Sepsis Model (Case 5): same delegation task, opposite outcome,
    and the difference is in the engineering of the human–machine boundary
    and the discipline of the surrounding evidence work.
  ],
  sections: (
    [
      Sepsis is among the most consequential time-dependent diagnoses in
      hospital medicine: every hour of delayed antibiotics is associated
      with increased mortality, and the disease is heterogeneous enough
      that bedside clinicians frequently miss the earliest signal in a
      patient already being treated for something else. The promise of
      machine learning has been to surface that earliest signal from the
      continuously updated EHR trace — vitals, labs, medications — and
      route it to a clinician who can act in time.#cn()
    ],
    [
      TREWS, deployed across five Johns Hopkins hospitals, and Sepsis Watch
      at Duke are the two best-documented instances of this approach. The
      Adams et al. prospective study of ~590,000 patient encounters
      reported that when clinicians confirmed an alert within three hours,
      in-hospital mortality, organ failure, and length of stay were lower
      than for matched controls, and antibiotics were given sooner. The
      evidence is observational rather than randomized, but it is
      multi-site, pre-registered, and outcome-grounded.#cn()
    ],
    [
      The capability the deployment supplied was not "the model." It was
      the alert designed to fit into a specific clinical workflow, the
      confirmation step that put a clinician between the model and the
      action, and the institutional commitment to measure outcomes — not
      adoption — as the metric of success. The reported benefit collapsed
      when clinicians did not engage with the alert: the model on its own
      did nothing. The deliverable was the interface, the role design, and
      the surrounding evidence loop, not the prediction.#cn()
    ],
    [
      The honest hedge survives into the literature. The Adams et al.
      paper, and the broader sepsis-AI field, explicitly note that the
      outcome inference is conditional on the population, the workflow,
      and the engagement pattern measured at these sites — and that
      randomized trials remain pending. The benefit is real on the
      evidence presented, but it is not a closed proof; it is the strongest
      available evidence that delegation of early detection to ML can be
      done as a paired intervention with measurable outcome improvement.#cn()
    ],
    [
      What TREWS teaches is that the failure pattern of clinical AI
      (Case 35) is not inevitable. When the model is treated as one
      component of a deliberately designed human–machine system — with an
      alert that fits the workflow, a clinician role that retains
      authority, a deployment that is observed prospectively, and a
      willingness to report null effects in non-engaged subgroups — the
      delegation can produce capability rather than alert fatigue. The
      case is the engineering counter to Watson for Oncology (the model
      marketed ahead of its capability) and the Epic Sepsis Model (the
      model deployed ahead of its validation).
    ],
  ),
  beats: (
    "Sepsis is time-critical and heterogeneous; ML can surface the earliest signal from the EHR trace",
    "Prospective multi-site evidence reports lower mortality, organ failure, and LOS when clinicians engage alerts",
    "The deliverable is not the model — it is the alert design, the clinician role, and the evidence loop",
    "Evidence is observational and prospective, not RCT; benefit collapses without clinician engagement",
    "Delegation of detection can be done as a paired intervention with measured outcomes — the engineering counter",
  ),
  approaches: (
    during: (
      [Design the alert to fit a specific workflow, not the average workflow — including the bedside action it should provoke and the timeline within which it must be confirmed.],
      [Keep a clinician between the model and the action: model flags, human confirms, the model's authority is to surface, not to decide.],
      [Instrument the deployment for outcomes (mortality, organ failure, antibiotic timeliness) before the first alert fires — adoption is not the metric of success.],
    ),
    after: (
      [Report engagement-stratified outcomes honestly — including the subgroups where the alert was not acted on and the benefit was not observed.],
      [Treat the prospective/observational design as a constraint to be replaced by RCT evidence when feasible, not as a result that ends the evidence work.],
      [Carry the model's hedges into the deployment documentation so the next site adopts the model and the discipline that produced it.],
    ),
  ),
  references: (
    [Adams et al. (2022), "Prospective, multi-site study of patient outcomes after implementation of the TREWS machine learning-based early warning system for sepsis," _Nature Medicine_ 28(7):1455–1460, doi:10.1038/s41591-022-01894-0.],
    [Henry et al. (2022), "Factors driving provider adoption of the TREWS machine learning-based early warning system and its effects on sepsis treatment timing," _Nature Medicine_ 28(7):1447–1454, doi:10.1038/s41591-022-01895-z.],
    [Sendak et al. (2020), "Real-world integration of a sepsis deep learning technology into routine clinical care: implementation study," _JMIR Medical Informatics_ 8(7):e15182 (Sepsis Watch implementation).],
    [Wong et al. (2021), "External Validation of a Widely Implemented Proprietary Sepsis Prediction Model," _JAMA Internal Medicine_ 181(8):1065–1070 — the foil case (102).],
  ),
  quote: [The benefit is not the model. It is the model used as part of a system clinicians can act on.],
  quote-source: "Editors' synthesis of Adams et al. (2022) and Henry et al. (2022).",
  le-insight: [
    TREWS is the strongest current evidence that delegating early
    sepsis detection to a machine-learning system can improve patient
    outcomes — when the delegation is engineered as a paired
    intervention. The capability deliverable is the alert design,
    the clinician role, and the outcome-grounded evidence loop, not
    the model.
  ],
  lens-approach: [
    TREWS is the positive Domain 3 / Problem Type 6 case the corpus
    needed: a documented delegation to AI that worked, with the
    explanation locatable in the human–machine interface and the
    governance discipline rather than the model. LENS uses it in
    Domain 3 (Human-System Collaboration) for the
    delegation-with-revocation pattern, in Domain 4 (Test and
    Evaluation) for outcome-grounded prospective evidence under the
    judgment-under-inadequate-evidence LEO, and in Domain 5
    (Navigating Sociotechnical Constraints) for the workflow-fit
    discipline. It is the foil drafted directly against the Epic
    Sepsis Model (Case 5).
  ],
  literature-items: (
    [Adams et al. (2022), _Nature Medicine_],
    [Henry et al. (2022), _Nature Medicine_],
    [Sendak et al. (2020), _JMIR Medical Informatics_ — Sepsis Watch implementation],
  ),
  reflection-list: (
    [Identify a delegation of detection or screening in your domain that succeeded. What were the components of the human–machine interface that made the model actionable, and what would happen to the outcome metric if those components were removed?],
    [Specify the engagement-stratified outcome you would report from a deployment at your site — including the subgroup where the alert was not acted on. What would you need to instrument before the first alert fires?],
    [The TREWS evidence is prospective and observational, not RCT. What is the minimum additional evidence you would require before recommending the same model deployment at a new site that differs from the validation sites in population, workflow, or EHR configuration?],
  ),
  courses: ("LEN 2", "LEN 4", "LEN 7"),
)

// ---- Case 21 — sterile-cockpit-ward-rounds-adapting-an ----
#case(
  number: 21,
  slug: "sterile-cockpit-ward-rounds-adapting-an",
  title: "Sterile-Cockpit Ward Rounds — Adapting an Aviation Principle to Clinical Handoff",
  year: "2024 – 2025",
  domains-list: ("healthcare", "patient safety", "human factors"),
  modes-code: "HKN",
  impact: "A clinical adaptation of the aviation 'sterile cockpit' rule — no non-essential communication or interruptions during high-workload phases — applied to ward rounds and handoffs; the published evaluation reports reductions in interruption frequency and improvements in information-transfer measures during the protected window, on a single-unit single-study evidence base whose generalization the authors are explicit about",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "3.2",
  lens-anchor: "D3/PT5",
  leo-anchor: "LEO-4, LEO-5",
  summary: [
    The "sterile cockpit" rule in commercial aviation (FAR
    121.542, codified 1981) prohibits non-essential communication
    among flight crew during taxi, takeoff, landing, and any
    flight phase below 10,000 feet — the high-workload, high-
    consequence windows when distraction is most likely to
    produce error. The principle has been adapted across other
    high-consequence domains; recent work in clinical care has
    extended the principle to ward rounds and clinical handoff,
    where interruption-driven information loss is a documented
    contributor to patient-safety events. Treloar et al. (2025),
    in _World Journal of Surgery_, describe a structured
    intervention on a single surgical ward: a defined window
    during the handoff
    or round during which non-essential pages, conversations,
    and interruptions are prohibited and information transfer
    is the protected workflow. The evaluation reports
    reductions in interruption frequency and improvements in
    information-transfer measures during the protected window.
    The hedges that survive into the case verbatim: this is a
    single-unit single-study evidence base, the
    interruption-reduction effect is direct while the patient-
    outcome inference rests on the established link between
    handoff quality and downstream events rather than on
    direct outcome measurement in this study, and the
    sustainability of the protected-window discipline beyond
    the study period is not yet established. The case is the
    cross-domain adaptation case: an aviation safety-culture
    rule, adapted with explicit attribution and adapted again
    for a clinical context, with the evidence at the tier the
    adaptation has reached.
  ],
  sections: (
    [
      The aviation sterile-cockpit rule (FAR 121.542) was
      codified in 1981 in response to a documented pattern of
      accidents in which flight-crew distraction during high-
      workload phases — non-operational conversation, cabin
      coordination, administrative communication — contributed
      to the error chain. The rule is operationally simple:
      below 10,000 feet, in taxi, takeoff, approach, and
      landing, only operationally necessary communication is
      permitted in the cockpit. The principle has been
      extended in safety-culture practice to other high-
      workload phases and operations.#cn()
    ],
    [
      Clinical care has long carried an analogous problem at
      the handoff and ward-round boundary. Interruption-driven
      information loss during handoff is a documented
      contributor to patient-safety events; I-PASS and SIGNOUT?
      and similar structured-handoff interventions address the
      information content, but the workflow context — the
      interruptions that fragment the handoff — has historically
      been treated as ambient noise rather than as a design
      variable. The structural argument the clinical
      adaptation makes is that the workflow context is a
      design variable, and that the sterile-cockpit principle
      provides a worked template for engineering it.#cn()
    ],
    [
      Treloar et al. (2025) describe a
      structured intervention on a surgical ward. A defined
      window during the handoff or round is designated as
      protected; non-essential pages are deferred, side
      conversations are prohibited, and the staff conducting
      the handoff are made unavailable for non-emergent
      interruption during the window. The intervention
      includes the workflow design (who is responsible for
      triaging pages, how emergent interruptions are
      preserved, how the window is signaled and ended) as
      well as the cultural commitment to honor it. The
      evaluation measured interruption frequency during the
      protected window and information-transfer quality
      against baseline.#cn()
    ],
    [
      The published outcomes report reductions in
      interruption frequency during the protected window and
      improvements in information-transfer measures during
      that window. The structural learning the case carries
      is the adaptation discipline: an aviation safety-
      culture rule, with its specific operational scoping
      (below 10,000 feet, defined permitted communication),
      was carried into a clinical context with the
      operational scoping translated (a defined window,
      defined permitted interruption classes, defined triage
      responsibility) rather than the principle imported
      without translation. Pair the case with I-PASS (a
      structured-handoff intervention; Case 15 when drafted)
      at the handoff-as-capability layer, and with CRM
      (Case 117) at the aviation-safety-culture-to-
      clinical-care translation layer.#cn()
    ],
    [
      The hedges have to survive verbatim. This is a single-
      unit single-study evidence base; replication across
      units and settings is the natural next step the
      authors identify, and the case should not be
      generalized beyond a strong structural argument until
      that replication is in the literature. The
      interruption-reduction effect is direct; the inference
      that fewer interruptions and better information
      transfer reduce downstream patient-safety events
      depends on the established link in the handoff-
      quality literature rather than on direct patient-
      outcome measurement in this study. The sustainability
      of the protected-window discipline beyond the study
      period is not yet established — the operational cost
      of maintaining the workflow design over the long term
      is the open question. The case is teachable at the
      adaptation-discipline level today; the multi-site
      multi-cycle evidence base is the next deliverable.
    ],
  ),
  beats: (
    "Aviation sterile cockpit (FAR 121.542, 1981) — no non-essential communication below 10,000 ft; structural template for clinical adaptation",
    "Clinical handoff and ward rounds carry analogous interruption-driven information loss; workflow context as design variable",
    "PMC12515027 intervention: defined protected window with operational scoping (triage responsibility, permitted interruption classes, signaling)",
    "Reported outcomes: reduced interruption frequency and improved information-transfer measures during the protected window",
    "Hedges: single-unit single-study evidence; patient-outcome inference via established handoff-quality link, not direct measurement; sustainability not yet established",
  ),
  approaches: (
    during: (
      [Adapt the principle with its operational scoping translated, not imported. Sterile cockpit is "below 10,000 feet, defined permitted communication"; the clinical analog is a defined window, defined permitted interruption classes, defined triage responsibility — the scoping is the adaptation.],
      [Design the triage workflow that handles emergent interruptions during the protected window; the rule cannot be "no interruptions" without a path for true emergencies, and the design of that path is part of the deliverable.],
      [Build the cultural-commitment half alongside the workflow half; the rule depends on the unit's willingness to honor it under workload pressure, and the cultural commitment is what makes the rule operative.],
    ),
    after: (
      [Carry the single-unit single-study hedge into communication; the case is teachable at the adaptation-discipline level today, with the multi-site replication as the explicit next deliverable.],
      [Distinguish the direct measure (interruption-frequency and information-transfer-quality reductions during the protected window) from the inferred outcome (downstream patient-safety events), and report them at their respective evidence tiers.],
      [Plan the long-run sustainability measurement: does the protected-window discipline survive six months, twelve months, leadership turnover? The operational-cost half of the intervention is what the multi-cycle evidence base will eventually answer.],
    ),
  ),
  references: (
    [Treloar, E., Herath, M., Altree, M., Potter, S., Penhall, M., Walsh, D., Kennedy, L., Bruening, M., Edwards, S., Ey, J. D., Bradshaw, E. L., & Maddern, G. J. (2025), "A Simple Solution for a Complex Problem: The 'Sterile Cockpit' to Improve Ward Rounds," _World Journal of Surgery_ 49(10):2769–2776, doi:10.1002/wjs.70074, PMID:40930848, PMCID:PMC12515027 — the cited adaptation study.],
    [Federal Aviation Administration, 14 CFR § 121.542 (codified 1981) — origin of the aviation sterile-cockpit rule.],
    [Starmer, A. J. et al. (2014), "Changes in medical errors after implementation of a handoff program," _New England Journal of Medicine_ 371(19):1803–1812 — I-PASS handoff intervention; structural cousin in the structured-information half of handoff capability.],
    [Broom, M. A., Capek, A. L., Carachi, P., Akeroyd, M. A., & Hilditch, G. (2011), "Critical phase distractions in anaesthesia and the sterile cockpit concept," _Anaesthesia_ 66(3):175–179 — prior anesthesia-domain sterile-cockpit adaptation establishing the cross-domain transfer pattern.],
  ),
  quote: [The scoping is the adaptation. Sterile cockpit is "below 10,000 feet"; the clinical analog is a defined window with defined permitted interruption classes.],
  quote-source: "Editors' synthesis of PMC12515027 and the sterile-cockpit adaptation literature.",
  le-insight: [
    The sterile-cockpit ward-rounds case is the worked example
    of cross-domain adaptation discipline at small scale: an
    aviation safety-culture rule, carried into clinical care
    with its operational scoping translated and its cultural
    half preserved. The single-unit evidence is direct on
    interruption frequency and information transfer; the
    patient-outcome inference rests on the established
    handoff-quality link, and the multi-site replication is the
    explicit next deliverable.
  ],
  lens-approach: [
    Sterile-cockpit ward rounds is the cross-domain adaptation
    case (induced 3.2; LENS D3/PT5) — Domain 3 for workflow-
    context-as-design-variable; Domain 5 for the cultural-
    commitment half. Pair with I-PASS (Case 15), CRM (Case 117),
    and Case 27.
  ],
  literature-items: (
    [PMC12515027 — sterile-cockpit ward rounds],
    [Starmer et al. (2014), I-PASS NEJM],
    [Broom et al. (2011), Anaesthesia — anesthesia sterile-cockpit precedent],
  ),
  reflection-list: (
    [Identify a high-workload, high-consequence window in your domain that is currently treated as ambient workflow rather than as a protected period. What would the operational scoping of a sterile-window adaptation look like — permitted communication classes, triage responsibility, signaling?],
    [Specify the cultural-commitment half of the rule. The workflow design is necessary but not sufficient; honor under workload pressure is what makes the rule operative, and that depends on leadership and unit culture more than on policy.],
    [The case's evidence is single-unit single-study. Design the multi-site replication you would want to see before treating the adaptation as established, and the long-run sustainability measurement you would use to know whether the protected-window discipline survives leadership turnover.],
  ),
  courses: ("LEN 4", "LEN 5", "LEN 7"),
)

// ---- Case 22 — chatgpt-in-healthcare-hallucination ----
#case(
  number: 22,
  slug: "chatgpt-in-healthcare-hallucination",
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
  induced-anchor: "5.2",
  lens-anchor: "D3/PT6",
  leo-anchor: "LEO-4, LEO-3",
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
      reviews through 2023–2025 have repeatedly flagged the absence of an
      established verification practice as the central risk of clinical LLM
      use — the concern is not that the model errs but that the practice for
      catching its errors at the moment of use has not yet been defined or
      taught. Through 2025 the pattern held: evaluations across successive
      frontier models continued to find hallucination the most frequent
      error type, even as clinical adoption ran well ahead of any settled
      regulatory framework.#cn()
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
  beats: (
    "Clinicians adopted ChatGPT immediately at point of care without guidelines or institutional gate",
    "Fabricated citations, hallucinated dosages, and fictitious guidelines recur across the documented literature",
    "Whether clinicians can develop verification routines the model's fluent confidence actively discourages",
    "Early reports show LLM output accepted less critically than colleague recommendations would be",
    "Routine clinical verification practice analogous to bibliographic discipline remains to be defined",
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
    The learning engineer's deliverable here is a specific artifact, not
    a posture: a verification-at-point-of-use guardrail that counters
    cognitive offloading. Concretely, a confirm-before-act gate wrapped
    around the LLM output — every dosage, contraindication, or guideline
    citation the clinician would rely on must clear a forced
    source-attribution step that surfaces the underlying reference (or
    its absence) and requires an explicit confirmation against it before
    the output can be acted on. The gate is designed so the model's
    fluency cannot satisfy it: a smooth, confident answer with no
    attributable source fails the check and is held back from
    patient-facing use. LENS builds and critiques exactly this guardrail
    in LEN 2 (the human-AI verification interface), stresses it in LEN 7
    (governing the gate as deployment policy), and in LEN 10 (capstone)
    asks the student to design the confirm-before-act artifact for a
    clinical workflow already in use.
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
  scale: "big",
)

// ---- Case 23 — who-surgical-safety-checklist ----
#case(
  number: 23,
  slug: "who-surgical-safety-checklist",
  title: "WHO Surgical Safety Checklist",
  year: "2008 – present",
  domains-list: ("healthcare",),
  modes-code: "TN",
  impact: "Death rate 1.5% → 0.8% in eight-site pilot; complications down >33%; adopted by the majority of surgical providers worldwide; Ontario population study (2014) found no significant mortality benefit after a mandated rollout",
  diagram: dgm.dgm-who,
  kind: "intervention",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.3",  // alternate framing adopted: closed-loop evidence lens captures the Haynes→Urbach replication arc more directly than pre-committed institutional response,
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-5",
  summary: [
    In 2008, Atul Gawande's team and the WHO introduced a single-page,
    nineteen-item surgical checklist applied at three junctures — before
    anesthesia, before incision, and before the patient leaves the
    operating room. Piloted across eight hospitals in eight countries,
    from Toronto to Tanzania, it nearly halved the surgical death rate
    (1.5% to 0.8%) and cut serious complications by more than a third —
    results published in the _NEJM_ in 2009. The artifact was the
    checklist; the intervention was the system of forced pauses it
    created, three moments when a moving team had to stop and confirm
    shared state. A later Ontario study found no mortality benefit after a
    mandated rollout, surfacing the fidelity question: the artifact works
    only when the institution authorizes its honest use.
  ],
  sections: (
    // -- Background --
    [
      Surgical harm — wrong-site operations, retained instruments, missed
      allergies, post-operative infection — was widespread across health
      systems rich and poor, and much of it stemmed not from a lack of
      skill but from teams that never paused to confirm shared
      understanding before acting. The knowledge to prevent these events
      existed; the reliable practice did not. A surgical team in motion
      rarely stopped to verify that everyone held the same picture of the
      patient and procedure, so a mismatch any member could have caught
      passed silently into the operation. The cost was global and
      patterned — the WHO estimated that, of the roughly 234 million
      operations performed each year, at least seven million produced
      major complications and about a million ended in death — and the
      bulk of that harm sat in failure modes that a brief verbal
      cross-check would have closed.#cn()
    ],
    // -- The Intervention --
    [
      In 2008, the WHO and a Harvard team led by Atul Gawande introduced a
      single-page, nineteen-item Surgical Safety Checklist applied at three
      critical junctures: before anesthesia, before skin incision, and
      before the patient leaves the operating room. The team piloted it
      across eight hospitals in eight countries spanning very different
      economic and operational conditions — Toronto, London, Seattle,
      Auckland, Amman, New Delhi, Manila, and Ifakara — selecting sites
      deliberately to span the global income gradient. Testing the same
      artifact from Toronto to Tanzania was deliberate — it had to work in
      settings with vastly different resources to demonstrate that the
      gain came from the forced pause itself, not from any one system's
      wealth. The artifact was intentionally minimal: items the team had
      tested against the surgical-safety literature for the smallest set
      that still spanned the highest-risk junctures.#cn()
    ],
    // -- How It Worked --
    [
      The checklist was the artifact; the intervention was the system of
      pauses it imposed. At each juncture a team that would otherwise keep
      moving had to stop, look at one another, and confirm names, the
      procedure, allergies, and equipment aloud. The pauses were the
      load-bearing element — the requirement to halt and speak mattered
      more than the specific list of items. Saying the confirmations aloud
      to one another, rather than each member assuming them privately, is
      what surfaced the mismatches a moving team would otherwise have
      carried into the incision. The mechanism turned the operating room
      into a momentarily flat-hierarchy space: a circulating nurse who
      noticed a missing antibiotic dose at the time-out had institutional
      cover to say so before the incision, a transaction the pre-checklist
      culture had not reliably authorized. The artifact's authority — that
      the team had to stop — was what made the speech act safe.#cn()
    ],
    // -- The Evidence --
    [
      The 2009 _NEJM_ study reported the surgical death rate falling from
      1.5% to 0.8% and major complications dropping by more than a third
      across all eight sites — confirming Gawande's framing that "gaps in
      teamwork and safety practices in surgery are substantial in countries
      both rich and poor." The checklist was subsequently adopted by the
      majority of surgical providers worldwide. That the death rate roughly
      halved across all eight sites, despite their differences in wealth and
      practice, is what made the result so persuasive — the effect tracked
      the intervention rather than the setting. The published mortality
      reduction was contested almost from the moment of publication:
      observational, pre/post, no concurrent control, susceptible to
      secular trends and Hawthorne-style attention effects. The pilot was
      always best read as the formation of a strong hypothesis under
      pragmatic conditions, not as a closed proof of population-scale
      mortality benefit.#cn()
    ],
    // -- What Transferred --
    [
      Urbach and colleagues, writing in _NEJM_ in 2014, examined more
      than 200,000 procedures across 101 Ontario hospitals before and
      after a province-wide mandated rollout and found no statistically
      significant reduction in operative mortality, in-hospital
      complications, length of stay, or readmission. The null result
      did not refute the checklist so much as illustrate its dependence
      on implementation fidelity: where a mandate replaced genuine
      authorization of the pause, the measured effect attenuated, making
      the checklist a paired lesson in both minimal-artifact design and
      the limits of mere compliance. The contrast between the pilot and
      the mandated rollout is the lasting teaching point: when the pause
      was genuinely used it worked, and when it became a box to check
      before proceeding the same paper produced nothing. Subsequent
      multi-country replications and the WHO's own follow-up work have
      been mixed — the institutional uptake outran the closed evidence
      of population-scale mortality benefit, and the contested
      mortality reduction is the part of the case that does not
      resolve.#cn()
    ],
  ),
  beats: (
    "Surgical harm was widespread because teams in motion rarely paused to verify shared understanding",
    "WHO and Harvard introduced a nineteen-item checklist piloted across eight hospitals in eight countries",
    "Forced pauses at three junctures required teams to halt and speak confirmations aloud together",
    "NEJM study showed death rate halved and complications dropped a third across all sites",
    "Ontario mandated rollout produced no benefit; the pause works only when genuinely authorized",
  ),
  references: (
    [Haynes, A. et al. (2009), "A Surgical Safety Checklist to Reduce Morbidity and Mortality," _NEJM_ — the 1.5%→0.8% result and major-complication reduction.],
    [WHO Safe Surgery Saves Lives campaign documentation — the nineteen-item checklist and the three junctures.],
    [Gawande, A. (2009), _The Checklist Manifesto_ — the pause as the active mechanism.],
    [Urbach, D. et al. (2014), "Introduction of Surgical Safety Checklists in Ontario, Canada," _NEJM_ — null mortality result after mandate.],
    [Bosk, C. et al. (2009), "Reality check for checklists," _The Lancet_ — implementation fidelity.],
  ),
  quote: [Gaps in teamwork and safety practices in surgery are substantial in countries both rich and poor.],
  quote-source: "Atul Gawande, Harvard Gazette, January 2009",
  le-insight: [
    The Surgical Safety Checklist is the canonical evidence that a tiny
    artifact — one page, nineteen items — can produce population-scale
    effects when paired with the structural change of *requiring a
    pause.* The checklist alone is paper. The pause alone is anxiety.
    Together they constitute the smallest effective capability
    intervention in the dataset. The Ontario follow-up underscores the
    secondary requirement: the artifact carries the effect only when the
    institution actually enforces the pause. Where mandate replaced
    authorization, the measured effect attenuated.
  ],
  lens-approach: [
    LENS uses the WHO checklist as the canonical pre-committed
    institutional response paired with closed-loop evidence
    (induced 4.4; LENS D4/PT5). It runs in LEN 10 (capstone) as the
    end-to-end design exemplar — a problem identified, a minimal
    artifact prototyped, a multi-site pilot, a measurement regime, and
    global scale-out — and in LEN 4 for the measurement architecture
    that made the pilot effect provable and the Ontario null
    interpretable. Adjacent to SUBSAFE (Case 173) at the
    mandatory-mechanism layer, where the artifact's authority is the
    intervention.
  ],
  literature-items: (
    [Haynes et al. (2009), NEJM],
    [Gawande, _The Checklist Manifesto_ (2009)],
    [Bosk et al. (2009), "Reality check for checklists"],
  ),
  reflection-list: (
    [What is the smallest possible capability artifact in your domain that, paired with a required pause, would shift outcomes?],
    [The WHO checklist was studied across eight countries. Design the multi-site evaluation that would establish whether your candidate intervention generalizes.],
    [The Ontario mandated rollout produced no measurable mortality reduction. What governance signal would have surfaced the fidelity gap between authorized use and compliance check-off before the trial was declared a failure?],
  ),
  approaches: (
    during: (
      [Design the minimal artifact — a single-page checklist — around a small number of forced pauses at the highest-risk junctures, keeping the list short enough to be used every time.],
      [Make the confirmations spoken aloud and shared across the team, so the pause surfaces mismatches rather than letting each member assume them privately.],
      [Pilot across deliberately varied sites so the measured gain can be shown to track the intervention rather than any one setting's resources.],
    ),
    after: (
      [Measure outcomes (death and complication rates) directly so the effect can be confirmed and the artifact is not assumed to work merely because it is in use.],
      [Guard implementation fidelity as the scale grows — a mandate that turns the pause into a box to check reproduces the artifact without the effect.],
      [Build a governance signal that distinguishes genuine, authorized use from compliance check-off, so the fidelity gap is visible before a rollout is judged a failure.],
    ),
  ),
  courses: ("LEN 4", "LEN 10"),
)

// ---- Case 24 — bristol-heart-babies-reform ----
#case(
  number: 24,
  slug: "bristol-heart-babies-reform",
  title: "Bristol Heart Babies Reform",
  year: "1984 – present",
  domains-list: ("healthcare",),
  modes-code: "GN",
  impact: "Foundational UK case in clinical outcomes transparency; produced specialty-level performance reporting in UK cardiac surgery",
  diagram: dgm.dgm-compare(
    "before",
    "private",
    "after",
    "published",
    framing: "outcomes data ceased to be the private property of clinicians",
    caption: "Bristol — outcomes transparency as paired intervention",
  ),
  kind: "intervention",
  summary: [
    Through whistleblowing and a public inquiry, the Bristol Royal
    Infirmary was found to have had substantially worse pediatric
    cardiac-surgery outcomes than other UK centers for years. The Kennedy
    Inquiry — one of the most influential UK healthcare inquiries in modern
    times — located the capability gap in the absence of routine
    specialty-level outcomes reporting: surgeons did not know how their
    results compared with peers, patients did not know, and referrals did
    not respond to actual outcome data. The reform built national
    specialty-level outcomes registries, first in cardiac surgery and then
    across other specialties, making the UK one of the few countries that
    routinely publishes surgeon-level results — a paired intervention of
    technical registry plus institutional commitment to publish that ended
    outcomes data as the private property of clinicians.
  ],
  sections: (
    // -- Background --
    [
      In pediatric cardiac surgery, small differences in a unit's
      performance can mean the difference between a child living and dying
      — yet in the UK of the 1980s and early 1990s, no system routinely
      compared outcomes between centers. A surgeon, a hospital, or a
      referring physician had no reliable way to know whether a given
      unit's results were normal or dangerously poor. Without comparison
      across centers, a dangerously poor unit and an ordinary one looked
      alike from inside, so the very gap that cost children's lives was the
      one no one was positioned to see.#cn()
    ],
    // -- The Intervention --
    [
      After whistleblowing and a public inquiry into deaths at the Bristol
      Royal Infirmary between 1984 and 1995, the Kennedy Inquiry
      recommended routine, risk-adjusted, specialty-level outcomes
      reporting. The reform built national registries — beginning with
      cardiac surgery and extending to other specialties — together with a
      commitment to publish results, including at the level of individual
      surgeons. Starting in cardiac surgery and then extending outward was
      deliberate sequencing — the specialty where the harm had been exposed
      proved the model, and the registry then spread to fields that had not
      had their own Bristol.#cn()
    ],
    // -- How It Worked --
    [
      The intervention was explicitly paired. The technical half — registry
      design, statistical risk adjustment so that surgeons taking hard
      cases are not penalized, and a publication architecture — was
      necessary but not sufficient. The cultural half — surgeons accepting
      that their comparative results would be visible — was equally
      load-bearing, and was the harder of the two to secure. The risk
      adjustment was what made the cultural half securable: without it,
      surgeons who took the sickest patients would have been punished by the
      raw numbers, giving them every reason to resist publication or avoid
      hard cases.#cn()
    ],
    // -- The Evidence --
    [
      The UK became one of the few countries that routinely publishes
      surgeon- and unit-level outcomes, and the cardiac-surgery registry is
      among the most mature specialty-outcomes regimes in any country.
      Outcomes data ceased to be the private property of clinicians and
      became a shared resource for patients, referrers, and surgeons
      themselves. That surgeons themselves became users of the data, not
      just subjects of it, is part of why the regime endured — comparison
      that had once felt like exposure became a tool the profession relied
      on to know where it stood.#cn()
    ],
    // -- What Transferred --
    [
      Bristol is the foundational UK case for outcomes transparency as a
      paired-intervention deliverable, and its registry model has been
      extended across NHS specialties and influenced later national-quality
      reforms. It pairs with Keystone ICU (Case 19) as healthcare-outcomes
      interventions operating at different layers — the bedside protocol and
      the system-level measurement regime. The two layers are complementary
      rather than competing: Keystone changes what happens at the point of
      care, while Bristol changes what the system can see about results
      across centers, and a mature regime needs both.#cn()
    ],
  ),
  beats: (
    "No UK system routinely compared pediatric cardiac outcomes; dangerously poor units looked ordinary from inside",
    "The Kennedy Inquiry recommended routine risk-adjusted specialty-level outcomes reporting starting with cardiac surgery",
    "Risk adjustment made cultural acceptance possible by ensuring hard cases would not penalize surgeons",
    "The UK became among few countries publishing surgeon-level results; clinicians themselves became data users",
    "The registry model extended across NHS specialties and pairs with bedside protocols like Keystone",
  ),
  references: (
    [Kennedy, I. (2001), _Learning from Bristol: The Report of the Public Inquiry into Children's Heart Surgery at the Bristol Royal Infirmary 1984–1995_ — the inquiry and recommendations (paraphrased).],
    [Society for Cardiothoracic Surgery in GB & Ireland, national outcomes reports — the registry and surgeon-level publication.],
    [Berwick, D. (2013), _A Promise to Learn — A Commitment to Act_ — the broader NHS-safety reform.],
    [Sherlaw-Johnson et al. — risk-adjusted outcome methodology.],
    [NHS national clinical audit and registry documentation — extension across specialties.],
  ),
  quote: [Outcomes data must cease to be the private property of clinicians and become a shared institutional resource.],
  quote-source: "Paraphrasing the Kennedy Inquiry Final Report (Learning from Bristol), 2001",
  le-insight: [
    Bristol is the canonical UK case for outcomes-transparency as a
    paired intervention. The technical capability — registry design,
    statistical risk adjustment, publication architecture — was
    necessary. The cultural capability — surgeons accepting that
    their results would be visible and comparable — was equally
    necessary. The pair has produced one of the most mature
    specialty-outcomes regimes in any country.
  ],
  lens-approach: [
    LENS uses Bristol in LEN 4 for outcomes-transparency as a paired-
    intervention deliverable and in LEN 7 for the institutional reform
    that made surgeon-level publication acceptable. The case pairs
    with Keystone ICU (Case 19) as healthcare-outcomes interventions
    at different layers.
  ],
  literature-items: (
    [Kennedy QC (2001), _Learning from Bristol_],
    [Berwick (2013), _A Promise to Learn_],
    [Sherlaw-Johnson et al., risk-adjusted outcome literature],
  ),
  reflection-list: (
    [What is the equivalent of surgeon-level outcomes transparency in your domain? What cultural change would have to accompany the technical instrument?],
    [Design the registry and publication architecture for a specialty in your domain currently operating without outcomes transparency.],
    [Bristol's risk adjustment was what let surgeons accept publication, by ensuring those who took the hardest cases were not punished by raw numbers. Identify a transparency measure in your domain that practitioners resist, and design the adjustment that would make the comparison fair enough to accept.],
  ),
  approaches: (
    during: (
      [Pair the technical instrument — a registry with statistical risk adjustment and a publication architecture — with the cultural change of practitioners accepting that comparative results will be visible.],
      [Build risk adjustment in from the start so those who take the hardest cases are not punished by raw numbers, which is what makes the cultural half securable.],
      [Sequence the rollout to begin where the harm was exposed, proving the model in one specialty before extending it to fields that have not had their own crisis.],
    ),
    after: (
      [Make practitioners users of the data, not just subjects of it, so comparison becomes a tool the profession relies on rather than an exposure it resents — which is what sustains the regime.],
      [Extend the registry model across specialties over time, turning a single reform into a system-wide measurement regime.],
      [Pair the system-level transparency layer with point-of-care interventions (as with Keystone), since a mature outcomes regime needs both what the system can see and what happens at the bedside.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 3",),
  scale: "big",
  induced-anchor: "2.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4",
  evidence-source: "investigation",
)

// ---- Case 25 — removing-the-race-coefficient-from-egfr ----
#case(
  number: 25,
  slug: "removing-the-race-coefficient-from-egfr",
  title: "Removing the Race Coefficient from eGFR",
  year: "2021",
  domains-list: ("clinical medicine", "health equity"),
  modes-code: "DGN",
  impact: "A clinical estimating equation that for two decades raised estimated kidney function for Black patients was retired through a governance process; the documented effect on disparities remains unknown",
  kind: "intervention",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-5",
  summary: [
    For two decades the standard equation used to estimate glomerular
    filtration rate from serum creatinine — the kidney-function number on
    routine lab reports — included a coefficient that raised the
    estimate for patients reported as Black. The downstream effects were
    documented: later nephrology referral, later wait-listing for
    transplant. In 2021 the joint NKF-ASN Task Force, after reviewing
    over twenty candidate approaches with patient and clinician input,
    recommended immediate national implementation of the race-free
    2021 CKD-EPI creatinine equation (Inker et al., _NEJM_ 2021);
    clinical laboratories moved to adopt it. The case is a governance
    intervention — a change-control process that retired a construct
    after three decades of operational use. The honest hedge,
    preserved from the Task Force report and from follow-up
    commentaries, is that the new equation introduces a small bias
    for all groups, the disparities effect *remains unknown*, and the
    case is the construct-definition act, not a closed outcome
    proof. It pairs with pulse oximetry (Case 26) and pain
    assessment (Case 6) as the trio of "what counts as the same
    patient across race."
  ],
  sections: (
    [
      Glomerular filtration rate (GFR) is the standard measure of kidney
      function and the threshold variable for nephrology referral,
      medication dosing, and transplant wait-listing. Because direct GFR
      measurement is impractical at clinic scale, equations estimate it
      from serum creatinine and demographic inputs. The dominant
      equations from the late 1990s onward included a Black-race
      coefficient that raised the estimate for patients reported as
      Black — making them appear to have better kidney function than
      the same creatinine value implied for White patients.#cn()
    ],
    [
      The downstream effects of that coefficient are documented across
      the nephrology literature: later referral to specialty care, later
      transplant wait-listing, and a population-level shift in who was
      counted as having advanced chronic kidney disease. The defenders
      of the coefficient pointed to differences in creatinine generation
      across self-identified populations; the critics pointed to the
      logical and ethical problems of embedding a population-level
      adjustment in an individual-patient decision tool, and to the
      construct-definition question — what is the equation supposed to
      be measuring, and across whom does it have to mean the same
      thing?#cn()
    ],
    [
      The NKF-ASN Task Force, formed in 2020, ran the construct-revision
      process as a governance exercise: an external panel,
      patient-clinician input, more than twenty candidate alternatives,
      a sustained review window, and a published report (Delgado et al.,
      _Am J Kidney Dis_ 2021). The Task Force recommended immediate
      national adoption of the 2021 CKD-EPI creatinine equation, which
      eliminates the race coefficient. The replacement equation was
      published in parallel (Inker et al., _NEJM_ 2021). Major
      laboratories and health systems moved to adopt the new equation
      within months.#cn() In December 2022 the governance response
      reached past the equation itself: the OPTN mandated that
      kidney-transplant programs review their waiting lists and
      backdate the accrued waiting time of Black candidates who had been
      disadvantaged by the former race-inclusive eGFR (effective January
      2023, with the review required by January 2024) — a concrete,
      population-scale remediation of exactly the transplant-wait-listing
      disparity this case documents.
    ],
    [
      The hedge in both the Task Force report and the follow-up
      commentary is load-bearing and is preserved in the case. The new
      equation introduces a small bias for all groups relative to
      measured GFR; the *net effect on documented disparities in
      nephrology care and transplant access* is not yet measured at
      population scale, and the literature explicitly states that the
      disparities outcome *remains unknown*. The case is the
      construct-definition act — the right kind of governance
      intervention, run with the right kind of process — and the
      outcome evidence is the continuing work.#cn()
    ],
    [
      What the eGFR case teaches is that some equity capability
      deliverables are construct-definition acts: choosing what gets
      predicted and what counts as the same patient is the design
      decision, not a downstream remediation. It pairs with pulse
      oximetry (Case 26), where the failure was in the validation
      architecture rather than the equation; and with pain assessment
      (Case 6), where the failure was in clinician-held false beliefs
      rather than the instrument. The trio together is the case-grounded
      basis for the subobjective *Gap attribution* (4.2) — distinguishing capability
      gaps attributable to human development, system design, and
      organizational performance — and for the subobjective *Fairness beyond
      omission* (4.6), of which eGFR is the construct-removal instance.
    ],
  ),
  beats: (
    "For two decades, the standard eGFR equation raised estimated kidney function for Black patients via a race coefficient",
    "Documented downstream effects: later nephrology referral, later transplant wait-listing — the coefficient changed who got seen when",
    "NKF-ASN Task Force ran the revision as a governance process: external panel, patient input, 20+ candidates, published report",
    "2021 CKD-EPI race-free equation adopted nationally; the case is the construct-definition act, not yet a closed outcome proof",
    "Hedge preserved: small all-group bias introduced; disparities effect remains unknown; outcome evidence is the continuing work",
  ),
  approaches: (
    during: (
      [Reconsider the construct: ask what the equation should predict and across whom it should mean the same thing, separately from optimizing the residual.],
      [Run construct-revision as a governance process: an external panel, patient and clinician input, candidate alternatives examined openly, and a published report.],
      [Carry the hedge — the small all-group bias introduced and the unmeasured disparities effect — into the deployment documentation, not the press release.],
    ),
    after: (
      [Instrument the downstream outcomes (nephrology referral, transplant wait-listing) demographically so the disparities effect of the construct revision is actually measurable at population scale.],
      [Treat construct revision as ongoing: a coefficient was removed; a new validation architecture is the longer work.],
      [Make the construct-definition decision auditable — publish the candidate alternatives that were considered and the basis on which the chosen alternative was selected.],
    ),
  ),
  references: (
    [Delgado et al. (2021), "A Unifying Approach for GFR Estimation: Recommendations of the NKF-ASN Task Force on Reassessing the Inclusion of Race in Diagnosing Kidney Disease," _American Journal of Kidney Diseases_ 79(2):268–288 (published online 2021; in print vol. 79, 2022), doi:10.1053/j.ajkd.2021.08.003. Cited by online-first year, the year of the Task Force recommendation.],
    [Inker et al. (2021), "New Creatinine- and Cystatin C-Based Equations to Estimate GFR without Race," _New England Journal of Medicine_ 385(19):1737–1749, doi:10.1056/NEJMoa2102953.],
    [OPTN/UNOS (2022–2023), "Kidney waiting-time modifications for candidates affected by race-inclusive eGFR calculations" — the mandated backdating of Black candidates' accrued waiting time (effective January 2023).],
    [Eneanya, Yang, & Reese (2019), "Reconsidering the Consequences of Using Race to Estimate Kidney Function," _JAMA_ 322(2):113–114 — the equity argument that motivated the revision.],
    [Vyas, Eisenstein, & Jones (2020), "Hidden in Plain Sight — Reconsidering the Use of Race Correction in Clinical Algorithms," _NEJM_ 383(9):874–882 — broader race-in-algorithms survey.],
  ),
  quote: [What counts as the same patient across race is a construct-definition decision, not a downstream remediation.],
  quote-source: "Editors' synthesis of Delgado et al. (2021) and Vyas et al. (2020).",
  le-insight: [
    eGFR is the canonical recent instance of construct-definition
    as an equity capability deliverable. A race coefficient was
    embedded in a continuous estimating equation for two decades,
    documented downstream effects on referral and transplant
    access, and was retired through a governance process. The
    disparities effect of the change remains unknown; the case is
    the construct-revision act, not the closed outcome.
  ],
  lens-approach: [
    eGFR is the construct-definition equity intervention in the
    race-construct trio (Cases 25, 26 and 6). LENS uses it in Domain 4
    (Test and Evaluation) for the subobjective *Gap attribution* (4.2) —
    attributing the gap to construct definition, not to clinicians
    or patients — and in Domain 5 (Navigating Sociotechnical
    Constraints) for the governance process that revised the
    standard. Direct trio with Case 26 (pulse oximetry — the
    validation-architecture mechanism) and Case 6 (pain
    assessment — the human-development mechanism). Adjacent to the
    lending pair (Cases 186–113) at a different layer.
  ],
  literature-items: (
    [Delgado et al. (2021), _American Journal of Kidney Diseases_],
    [Inker et al. (2021), _NEJM_],
    [Vyas, Eisenstein, & Jones (2020), _NEJM_ — race correction in clinical algorithms],
  ),
  reflection-list: (
    [Identify a clinical or algorithmic construct in your domain that embeds a population-level adjustment in an individual-patient decision. Was the construct revised, examined, or never questioned? What governance process would you run if it had to be revisited?],
    [Specify the downstream outcomes you would instrument demographically to make the disparities effect of a construct revision measurable at population scale.],
    [The new CKD-EPI equation introduces a small bias for all groups and the disparities effect *remains unknown*. What is the minimum follow-up evidence you would require before concluding the construct revision improved or worsened the equity outcome you care about?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 9"),
)

// ---- Case 26 — pulse-oximetry-across-skin-tones ----
#case(
  number: 26,
  slug: "pulse-oximetry-across-skin-tones",
  title: "Pulse Oximetry Across Skin Tones",
  year: "1990 – 2020 – 2025",
  domains-list: ("medical devices", "clinical care", "health equity"),
  modes-code: "DGN",
  impact: "A bedside device validated on a non-representative population systematically under-detected hypoxemia in Black patients for thirty years; the bias persisted because device validation was never demographically stratified",
  kind: "intervention",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.2",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-5",
  summary: [
    Pulse oximetry — the noninvasive bedside measurement of blood oxygen
    saturation — is one of the most widely used patient-monitoring tools
    in clinical medicine. Sjoding et al. (_NEJM_ 2020) found that across
    two large cohorts, Black patients had nearly three times the
    frequency of *occult hypoxemia* (arterial saturation \<88% despite a
    pulse-ox reading of 92–96%) as White patients. The finding replicated
    Jubran & Tobin (_Chest_ 1990), published thirty years earlier and
    overlooked operationally. The bias persisted because device
    validation was never demographically stratified — the aggregate
    accuracy number on FDA clearance documentation concealed a
    group-specific failure mode. The discovery drove FDA review and, in
    January 2025, a draft guidance recommending that manufacturers
    evaluate device performance across diverse skin pigmentations during
    validation. The case is a *failure-to-intervention arc*: the failure
    sat in the validation architecture for three decades; the
    intervention is the regulatory change-control on validation, and its
    measured effect on the disparities outcome is not yet documented.
  ],
  sections: (
    [
      Pulse oximetry replaced repeated arterial blood draws as the
      bedside standard for monitoring oxygen saturation in the 1980s and
      1990s. The device shines two wavelengths of light through tissue
      and infers saturation from the absorbance ratio. The inference
      depends, among other things, on the absorbance properties of the
      intervening tissue — including melanin pigmentation. The clearance
      documentation reports an aggregate accuracy number against
      arterial blood gas measurements.#cn()
    ],
    [
      In 1990 Jubran & Tobin reported, in _Chest_, that pulse oximeters
      tended to overestimate true oxygenation in patients with darker
      skin. The paper was published, cited intermittently, and did not
      drive a change in validation practice. Thirty years later Sjoding
      et al. (_NEJM_ 2020) revisited the question in two large modern
      cohorts and reported that Black patients had nearly three times
      the frequency of *occult hypoxemia* — true arterial saturation
      below 88 percent despite a pulse-oximeter reading of 92–96 percent
      — as White patients. The structural form of the finding was the
      same as Jubran & Tobin's; the population and the salience were
      different, and the COVID-19 pandemic, which made pulse oximetry a
      household-scale triage tool, made it harder to ignore.#cn()
    ],
    [
      The bias persisted because device validation was never
      demographically stratified at clearance. The aggregate accuracy
      number — clinically acceptable on average — concealed a
      group-specific failure mode. The capability gap was not in the
      clinician using the device or in the manufacturer's engineering;
      it was in the regulatory machinery that approved a measurement
      device without checking whether its measurement held across the
      patients it would meet. The Sjoding paper's lasting contribution
      was not the technical finding alone — Jubran & Tobin had supplied
      that — but the disconfirmation of the validation architecture.#cn()
    ],
    [
      The FDA's January 2025 draft guidance recommends that pulse
      oximeter manufacturers evaluate device performance across diverse
      skin pigmentations during validation, and that the validation
      protocol explicitly stratify accuracy by skin tone. The guidance
      is the corrective-action half of the case: an intervention in the
      validation architecture, not in the device itself. The measured
      effect on the downstream disparities outcome — under-treated
      hypoxemia in patients of color — is not yet documented; it is the
      continuing work the intervention sets up.#cn()
    ],
    [
      What the case teaches is that a measurement-device failure can
      persist for three decades inside an aggregate accuracy number,
      and that the capability deliverable is a validation architecture
      that surfaces group-specific failure modes by stratifying outcome
      metrics by relevant demographic characteristics. Pulse oximetry
      pairs with eGFR (Case 25) and pain assessment (Case 6) in the
      race-construct trio. The mechanisms are distinct — eGFR is
      construct definition; pulse oximetry is validation architecture;
      Hoffman is clinician-held false belief — and the case-grounded
      lesson is that the diagnosis of the same surface harm has to
      attribute the gap to the right layer of the system before a
      remediation can land.
    ],
  ),
  beats: (
    "Pulse oximetry depends on tissue absorbance, including melanin; clearance documentation reports aggregate accuracy",
    "Jubran & Tobin 1990 documented the bias; the finding did not change validation practice for thirty years",
    "Sjoding et al. 2020 replicated in two large modern cohorts; ~3× higher occult hypoxemia in Black patients",
    "The bias persisted because validation was never demographically stratified — aggregate accuracy concealed a group-specific failure",
    "FDA 2025 draft guidance corrects the validation architecture; the measured disparities-outcome effect is the continuing work",
  ),
  approaches: (
    during: (
      [Stratify device-validation outcomes by every demographic characteristic that can change the measurement physics, before clearance, not after deployment.],
      [Specify the group-specific accuracy that would count as acceptable, separately from the aggregate; do not allow the aggregate to substitute.],
      [Treat replication of an earlier finding (Jubran & Tobin → Sjoding) as a verification trigger, not a duplication — the same finding in a different population is itself evidence.],
    ),
    after: (
      [Audit deployed devices on the population that actually uses them, on a schedule that surfaces drift; aggregate accuracy is not a substitute.],
      [Tie the regulatory clearance update to a downstream-outcome surveillance plan — under-treated hypoxemia, in this case — so the intervention's effect on the harm can be measured.],
      [When a published finding sits operationally inert for years, ask whether the publication channel reached the operational community; the structural problem may be in how validation evidence diffuses, not in whether it exists.],
    ),
  ),
  references: (
    [Sjoding, Dickson, Iwashyna, Gay, & Valley (2020), "Racial Bias in Pulse Oximetry Measurement," _New England Journal of Medicine_ 383(25):2477–2478, doi:10.1056/NEJMc2029240.],
    [Jubran & Tobin (1990), "Reliability of Pulse Oximetry in Titrating Supplemental Oxygen Therapy in Ventilator-Dependent Patients," _Chest_ 97(6):1420–1425 — original finding, published thirty years earlier.],
    [FDA (2025), "Pulse Oximeters for Medical Purposes — Non-Clinical and Clinical Performance Testing, Labeling, and Premarket Submission Recommendations: Draft Guidance for Industry and Food and Drug Administration Staff," issued January 7 2025, Docket No. FDA-2023-N-4976; Federal Register notice 2024-31540 — the regulatory corrective-action artifact, language may evolve in final.],
    [Fawzy et al. (2022), "Racial and Ethnic Discrepancy in Pulse Oximetry and Delayed Identification of Treatment Eligibility Among Patients With COVID-19," _JAMA Internal Medicine_ — downstream effect during the pandemic.],
  ),
  quote: [Aggregate accuracy is not group accuracy. A device can be acceptable on average and unsafe for one population.],
  quote-source: "Editors' synthesis of Sjoding et al. (2020) and the FDA 2025 draft guidance.",
  le-insight: [
    Pulse oximetry is the validation-architecture instance of the
    race-construct trio. The bias was published in 1990, persisted
    for thirty years inside aggregate clearance accuracy, was
    re-documented in 2020, and reached the regulatory architecture
    in 2025. The capability deliverable is demographic
    stratification at validation, not after deployment.
  ],
  lens-approach: [
    Pulse oximetry is the validation-architecture intervention in
    the race-construct trio (Cases 25, 26 and 6). LENS uses it in
    Domain 4 (Test and Evaluation) for the subobjective *Gap
    attribution* (4.2) — the gap is in the validation architecture, not
    the device or the clinician — and in Domain 5 (Navigating
    Sociotechnical Constraints) for the FDA clearance / device
    oversight regime. Adjacent to Case 35 (radiology AI
    miscalibration), which is the same diagnosis at a different
    technological boundary, and to the Epic Sepsis Model
    (Case 5) for the post-deployment-surveillance pattern.
  ],
  literature-items: (
    [Sjoding et al. (2020), _NEJM_],
    [Jubran & Tobin (1990), _Chest_ — original finding],
    [FDA (2025), pulse-oximeter draft guidance],
  ),
  reflection-list: (
    [Identify a measurement device in your domain whose validation reports an aggregate accuracy number. Across which demographic characteristics could the measurement physics change? What would a stratified validation protocol look like, and who would have to approve it?],
    [The Sjoding finding replicated Jubran & Tobin thirty years later. What is the institutional architecture that should have surfaced the original finding to the regulatory regime? Where did the publication-to-operations channel break, and where does it still break in your domain?],
    [The FDA 2025 draft guidance corrects the validation architecture. Specify the downstream outcome (under-treated hypoxemia in patients of color) and the surveillance plan you would tie to the guidance so the intervention's effect on harm is measurable.],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 9"),
)

// ---- Case 27 — anesthesia-monitoring-standards-and-the ----
#case(
  number: 27,
  slug: "anesthesia-monitoring-standards-and-the",
  title: "Anesthesia Monitoring Standards and the APSF — The Mortality Decline",
  year: "1986 – present",
  domains-list: ("anesthesiology", "patient safety", "medical devices"),
  modes-code: "HKG",
  impact: "Continuous pulse oximetry and capnography — encouraged in the 1986 Harvard/ASA minimum-monitoring standards and mandated in subsequent revisions (pulse oximetry ~1989–90; capnography ~1991) — converted silent hypoxemia and esophageal intubation from undetectable failures into monitored, recoverable ones; anesthesia-related mortality fell dramatically over subsequent decades — multifactorial decline",
  kind: "intervention",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "3.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    Through the early 1980s, anesthesia in the United States carried a
    documented patient-safety crisis: silent intraoperative hypoxemia
    and unrecognized esophageal intubation produced catastrophic
    outcomes — brain injury and death — that were structurally
    undetectable until the harm had occurred. A 1982 ABC news special
    on anesthesia catastrophes converged with a malpractice-insurance
    crisis to force institutional attention. In 1986 Eichhorn et al.
    (_JAMA_, 1986) published the Harvard Medical School minimum
    monitoring standards — which mandated an oxygen analyzer and
    disconnection alarm and *encouraged* the newer continuous pulse
    oximetry and capnography, the load-bearing additions designed to
    make hypoxemia and misplaced endotracheal tubes detectable early
    enough to recover; both were mandated in subsequent revisions
    (pulse oximetry ~1989–90, capnography ~1991). The ASA adopted
    essentially the same standards in 1986. The Anesthesia Patient Safety Foundation, founded in
    1985, institutionalized the broader change-management effort.
    Anesthesia-related mortality fell dramatically over subsequent
    decades — one widely cited Brazilian series reports a fall toward
    zero — and malpractice premiums declined alongside. The field's
    own histories preserve the hedge: the decline has multiple
    co-varying causes (training, device design, pharmacology, team
    composition), and the device standards themselves still fail in
    documented edge cases.
  ],
  sections: (
    [
      Through the early 1980s, anesthesia in the United States
      carried a documented patient-safety crisis with two
      structurally similar failure modes at its center. Silent
      intraoperative hypoxemia — falling oxygenation in a paralyzed,
      ventilated patient — produced brain injury and death without
      the clinical signal a conscious patient would have given. And
      esophageal intubation — endotracheal tube misplaced in the
      esophagus instead of the trachea — produced no ventilation at
      all, often noticed only when the patient was already
      decompensating. Both failures were detectable in principle and
      in practice undetectable, because the cue did not reach the
      anesthetist in time.#cn()
    ],
    [
      The institutional forcing function arrived from outside the
      field. A 1982 ABC news special documented a string of
      catastrophic anesthesia outcomes, and the malpractice
      insurance environment for anesthesiology had reached a crisis
      level that made the status quo untenable. In 1985 the
      Anesthesia Patient Safety Foundation was founded — among the
      first specialty-organized patient-safety foundations in
      medicine. In 1986 Eichhorn et al. published in _JAMA_ the
      Harvard Medical School minimum monitoring standards: a defined
      minimum set of continuous monitors for every anesthetized
      patient. Pulse oximetry and capnography — then just entering
      wide use — were *encouraged* rather than required in the 1986
      text, and became the load-bearing additions when subsequent
      revisions mandated them (pulse oximetry ~1989–90, capnography
      ~1991).#cn()
    ],
    [
      Pulse oximetry made oxygenation continuously visible to the
      anesthetist; capnography made the end-tidal carbon-dioxide
      trace visible, which immediately distinguishes tracheal from
      esophageal intubation in the first breaths. Together they
      converted two structurally undetectable failures into
      monitored, recoverable ones. The American Society of
      Anesthesiologists adopted essentially the same minimum
      standards in 1986–87. Eichhorn's follow-up (_Anesthesiology_,
      1989) reported declines in preventable mishaps in the Harvard
      hospitals consistent with the mechanism the standards
      targeted.#cn()
    ],
    [
      Anesthesia-related mortality fell dramatically over the
      subsequent decades. A widely cited Brazilian series reported
      decline toward zero. Malpractice premiums for anesthesiology
      declined alongside — one of the few examples in American
      medicine of a specialty's malpractice cost falling as the
      specialty's safety record improved. The case is regularly
      cited as a canonical example of the cue/alert design as the
      capability deliverable: when the right signal is made visible
      at the right point in the workflow, an undetectable failure
      becomes recoverable, and the institutional outcome record
      moves.#cn()
    ],
    [
      The hedges the field's own histories preserve are
      load-bearing. The mortality decline has multiple co-varying
      causes — anesthetist training, device design improvements,
      pharmacological change (newer agents are inherently safer),
      team composition with broader monitoring presence, and the
      monitoring standards themselves — and attribution of the
      entire effect to the standards overstates what the evidence
      can support. The device standards themselves still fail in
      documented edge cases: pulse oximetry is unreliable across
      skin tones (Case 26 in this same v2 batch), and capnography
      can mislead in specific physiology. The case teaches the
      cue/alert-design form of capability engineering at its most
      durable, with the honest qualification that the institutional
      decline is consistent with the standards but not isolatable
      to them alone.#cn()
    ],
  ),
  beats: (
    "Early 1980s anesthesia crisis: silent hypoxemia and esophageal intubation structurally undetectable until catastrophic",
    "1982 ABC special + malpractice-insurance crisis + APSF founding (1985) force institutional change",
    "Harvard standards (Eichhorn JAMA 1986): minimum monitoring; pulse oximetry and capnography encouraged in 1986, mandated in later revisions (~1989–91); ASA adopts 1986",
    "Anesthesia mortality falls dramatically over subsequent decades; malpractice premiums decline alongside",
    "Hedge preserved: decline is multifactorial; device standards still fail in documented edge cases (cf. Case 26 pulse oximetry across skin tones)",
  ),
  approaches: (
    during: (
      [Design the cue/alert to surface the failure mode that produces harm — silent hypoxemia, misplaced tube — at the point in the workflow where the operator can still recover, not in a post-hoc record.],
      [Pair the device standard with the institutional commitment (APSF, ASA) that makes the standard non-waiverable across the specialty, so adoption is a profession-level deliverable rather than a per-institution choice.],
      [Build the standard with edge-case acknowledgment: the device is the strongest available signal, not closed proof; pulse oximetry across skin tones (Case 26) is the canonical edge case the standard has to keep visible.],
    ),
    after: (
      [Track outcome metrics (mortality, malpractice premiums) alongside the standards, while attributing carefully — multifactorial declines are the norm, not the exception, in long-window safety interventions.],
      [Treat the malpractice-cost signal as institutional evidence the standard is recognized to have worked, not as the safety evidence itself; the safety evidence is mortality and harm.],
      [Maintain the edge-case surveillance the standard sets up: pulse oximetry across skin tones, capnography under specific physiology — each documented edge case is a place where the standard's coverage is incomplete.],
    ),
  ),
  references: (
    [Eichhorn, Cooper, Cullen, Maier, Philip, & Seeman (1986), "Standards for Patient Monitoring During Anesthesia at Harvard Medical School," _JAMA_ 256(8):1017–1020.],
    [Eichhorn (1989), "Prevention of intraoperative anesthesia accidents and related severe injury through safety monitoring," _Anesthesiology_ 70(4):572–577.],
    [Anesthesia Patient Safety Foundation (1985 – present), founding documents and the _APSF Newsletter_ — institutional-history record of the broader change effort.],
    [American Society of Anesthesiologists (1986), "Standards for Basic Anesthetic Monitoring" — original ASA standard.],
    [Sjoding et al. (2020), _NEJM_ — the racial-bias edge case the standard still carries (cross-reference Case 26).],
  ),
  quote: [The deliverable is not the device. It is the standard that makes the device's signal non-waiverable across the specialty.],
  quote-source: "Editors' synthesis of Eichhorn et al. (1986) and APSF founding documents.",
  le-insight: [
    The Harvard / ASA / APSF anesthesia-monitoring intervention
    is the canonical cue/alert-design success: silent
    intraoperative hypoxemia and esophageal intubation were
    converted from undetectable failures into monitored,
    recoverable ones, and the specialty's mortality and
    malpractice record moved over subsequent decades. The
    decline is multifactorial; the device standards still fail
    in documented edge cases (Case 26).
  ],
  lens-approach: [
    Anesthesia monitoring is the canonical cue/alert
    intervention (induced 3.1; LENS D4/PT5). LENS uses it in
    Domain 4 (Test and Evaluation) for the cue/alert design
    as deliverable; in Domain 5 (Navigating Sociotechnical
    Constraints) for the APSF / ASA institutional discipline
    that made the standard non-waiverable; and in Domain 3 (Human-System Collaboration) at the human–device
    boundary. Adjacent to Case 26 (pulse oximetry across
    skin tones) — same instrument, the canonical edge case the
    standard still carries. Pair with Case 23 (WHO Surgical
    Checklist) at the mandatory-standard layer.
  ],
  literature-items: (
    [Eichhorn et al. (1986), _JAMA_],
    [Eichhorn (1989), _Anesthesiology_],
    [APSF Newsletter (1985 – present) — institutional-history record],
  ),
  reflection-list: (
    [Identify an undetectable failure mode in your domain — one where the cue does not reach the operator in time to recover. What is the analog of pulse oximetry / capnography for that failure: the continuous signal that would convert it from undetectable to monitored?],
    [Specify the institutional commitment (specialty foundation, regulatory standard) that would make the new signal non-waiverable. The device alone is not the deliverable; the standard is.],
    [The anesthesia mortality decline is multifactorial. What is the minimum decomposition you would publish — training, device, pharmacology, team — to let downstream practitioners learn which components carried the most weight, rather than attributing the outcome to a single intervention?],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 7"),
)

// ---- Case 28 — interprofessional-education-and-the ----
#case(
  number: 28,
  slug: "interprofessional-education-and-the",
  title: "Interprofessional Education and the Evidence Gap",
  year: "2013 – 2015",
  domains-list: ("health professions education", "interprofessional collaboration", "patient safety"),
  modes-code: "KN",
  impact: "Decades-long well-funded movement to educate health professionals together for collaborative care; Cochrane 2013 found only 15 studies between 1999 and 2011 met inclusion criteria; IOM 2015 made the gap the central finding — 'paucity of high-quality research' linking IPE to measurable changes in practice and patient outcomes",
  kind: "frontier",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "2.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4",
  summary: [
    Interprofessional Education (IPE) is a decades-long,
    well-funded movement premised on the idea that doctors,
    nurses, pharmacists, and allied professionals should learn
    together so they can collaborate better in practice. The
    Cochrane review (Reeves et al., 2013) found only 15 studies
    between 1999 and 2011 met its inclusion criteria, and while
    those studies showed some positive outcomes, the evidence base
    for linking IPE to measurable changes in practice and patient
    outcomes was thin. The IOM report (2015) made the gap the
    central finding: there remains a "paucity of high-quality
    research" connecting IPE interventions to patient outcomes,
    and it proposed a conceptual model for doing the measurement
    properly. The case is the canonical instance in the corpus of
    a large, sincere, multidisciplinary translation effort whose
    core problem is that the field cannot yet measure whether the
    intervention works. It is the case-grounded basis for the
    enthusiasm-evidence gap as a curricular concept and motivates
    the Domain 3 sub-competency proposed in
    — the recurring pattern that a field
    instruments its enthusiasm faster than its outcomes.
  ],
  sections: (
    [
      The premise of Interprofessional Education is straightforward
      and credible: health-professions practice is collaborative,
      so health-professions training should be collaborative.
      Doctors, nurses, pharmacists, dietitians, social workers, and
      allied professionals should learn alongside each other,
      ideally in clinical and simulation contexts, so that the
      coordination capability is built during training rather than
      improvised on the wards. The movement is decades old, has
      institutional support across major accreditation bodies, and
      is well-funded by government and foundation sources.#cn()
    ],
    [
      Reeves et al.'s 2013 Cochrane review applied the standard
      systematic-review machinery to the IPE outcome literature:
      what studies, between 1999 and 2011, met the inclusion
      criteria for evaluating IPE interventions against
      collaborative-practice or patient outcomes? The answer was
      15. Across that small set, the studies showed some positive
      outcomes — on clinician self-reported behavior, patient
      satisfaction, and a small number of clinical metrics — but
      the evidence base for linking IPE to measurable changes in
      practice and patient outcomes was thin. The reviewers' own
      conclusion was that the field had not produced the outcome
      evidence its scale of investment implied it should have.#cn()
    ],
    [
      The IOM's 2015 report, _Measuring the Impact of
      Interprofessional Education on Collaborative Practice and
      Patient Outcomes_, made the evidence gap the central
      finding. There remains, the IOM concluded, a "paucity of
      high-quality research" connecting IPE interventions to
      patient outcomes. The report proposed a conceptual model for
      doing the measurement properly — a chain from IPE
      intervention through learner outcome, collaborative
      behavior, organizational practice, and patient outcome —
      and named the methodological work the field had to do to
      get from the current evidence state to a defensible causal
      claim. The report is itself the load-bearing artifact: a
      national-academy synthesis that the central problem of the
      field is the evidence architecture, not the intervention.#cn()
    ],
    [
      What the case teaches at the LENS framing layer is the
      structural form of the enthusiasm-evidence gap at the
      multidisciplinary-translation scale. IPE is a sincere,
      well-funded, decades-long movement on which a great deal of
      curricular and operational investment has been made; the
      strongest synthesis of the outcome literature concludes that
      the field instrumented its enthusiasm faster than it
      instrumented outcomes. The case is the case-grounded basis
      for the Domain 3 sub-competency proposed in
      — naming the enthusiasm-evidence gap as a
      canonical anti-pattern — and for the subobjective *Judgment
      under inadequate evidence* (4.4): practitioners and program
      designers in IPE have had to decide for decades on what to
      build, on evidence that does not establish the causal claim
      the field's premise rests on.#cn()
    ],
    [
      In pair with the Colorado CTSA team-science training case
      (121) and implementation-science training (123), IPE is
      the frontier endpoint of the multidisciplinary-translation
      thread. Team science showed the measurement can be done at
      single-program scale with a validated instrument; IPE
      shows what happens when the field-scale evidence
      architecture has not been built. The pair-plus-trio
      teaches the Domain 3 sub-competency in both
      directions: collaboration as a unit of measurement is
      possible (Case 40), and the field-scale evidence is
      structurally absent (this case).
    ],
  ),
  beats: (
    "IPE — decades-long well-funded movement premised on training health professionals together for collaborative care",
    "Reeves et al. Cochrane 2013: only 15 studies from 1999–2011 met inclusion; evidence base thin for linking IPE to practice and patient outcomes",
    "IOM 2015 makes the gap the central finding: 'paucity of high-quality research'; proposes a conceptual model for doing the measurement",
    "Canonical enthusiasm-evidence gap case — field instruments enthusiasm faster than outcomes; basis for Domain 3 sub-competency",
    "Pair with Case 40 (team-science training) and 123 (implementation-science training) — collaboration measurement is possible at program scale, absent at field scale",
  ),
  approaches: (
    during: (
      [Design the IPE intervention with an outcome-measurement chain in mind from the start: learner outcome → collaborative behavior → organizational practice → patient outcome. The IOM model is the published reference.],
      [Specify, before the intervention launches, which links in the chain the evaluation will measure and which it will leave as assumed; the field-scale gap is partly the result of every program leaving the same links unmeasured.],
      [Treat enthusiasm-as-evidence as a foreseeable failure mode in any field-scale capability movement; the IPE pattern recurs across other interdisciplinary translation efforts (see Case 41).],
    ),
    after: (
      [Commission field-level evidence architecture, not only program-level evaluation; the gap the IOM names is at the field level and the program-level studies cannot close it on their own.],
      [Publish negative or null findings as a contribution to the evidence base, not as a program failure; the field's evidence gap is partly the result of selective publication on the positive side.],
      [Carry the IOM conceptual model into curriculum design conversations: a sub-competency that names the enthusiasm-evidence gap explicitly is the case-grounded curricular response to this pattern.],
    ),
  ),
  references: (
    [Reeves, Perrier, Goldman, Freeth, & Zwarenstein (2013), "Interprofessional education: effects on professional practice and healthcare outcomes (update)," _Cochrane Database of Systematic Reviews_, doi:10.1002/14651858.CD002213.pub3.],
    [Institute of Medicine (2015), _Measuring the Impact of Interprofessional Education on Collaborative Practice and Patient Outcomes_, National Academies Press, NCBI NBK338352.],
    [WHO (2010), _Framework for Action on Interprofessional Education and Collaborative Practice_ — the international policy backdrop.],
    [v2 paired cases: Team-science training (121), Implementation-science training (123).],
  ),
  quote: [The field instrumented its enthusiasm faster than its outcomes. The strongest synthesis names the gap as the central finding, not the intervention as the failure.],
  quote-source: "Editors' synthesis of Reeves et al. (2013) and IOM (2015).",
  le-insight: [
    Interprofessional Education is the canonical
    enthusiasm-evidence-gap case in the corpus. A decades-long,
    well-funded movement; the strongest synthesis of the outcome
    literature concludes that the evidence base for the field's
    central claim — that IPE produces measurable changes in
    practice and patient outcomes — is structurally thin. The
    IOM 2015 conceptual model is the proposed evidence
    architecture; the field's task is to build to it.
  ],
  lens-approach: [
    IPE is the field-scale enthusiasm-evidence-gap case
    (induced 2.1; LENS D4/PT5). LENS uses it in Domain 4
    (Test and Evaluation) as the case-grounded basis for the
    enthusiasm-evidence-gap sub-competency and for the
    subobjective *Judgment under inadequate evidence* (4.4) — IPE is the
    pattern's largest instance. Pair with Case 40 (team-
    science training, where measurement is possible at program
    scale) and Case 41 (implementation-science training,
    where stated goals run ahead of operational practices).
  ],
  literature-items: (
    [Reeves et al. (2013), _Cochrane_],
    [IOM (2015), _Measuring the Impact of Interprofessional Education_],
    [WHO (2010), _Framework for Action on Interprofessional Education_],
  ),
  reflection-list: (
    [Identify a field-scale capability movement in your domain whose evidence architecture has not kept pace with its operational and curricular investment. What would the IOM-style conceptual model look like for that field's outcome chain?],
    [Specify, for the next IPE-style program you would design or evaluate, which links in the outcome chain (learner / collaborative behavior / organizational practice / patient outcome) the evaluation will measure and which it will leave assumed. The field-scale gap is the accumulated result of leaving the same links assumed.],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 29 — bar-code-medication-administration-cue ----
#case(
  number: 29,
  slug: "bar-code-medication-administration-cue",
  title: "Bar-Code Medication Administration — Cue at the Point of Care",
  year: "2010",
  domains-list: ("clinical care", "patient safety", "health IT"),
  modes-code: "HKD",
  impact: "A before-and-after study at an academic medical center associated bar-code electronic medication administration (bar-code eMAR) with a 41.4% reduction in nontiming administration errors and a 50.8% reduction in potential adverse drug events; transcription errors on order transcription were eliminated (6.1% to zero); a later single-site rollout reported a 55.4% reduction in actual patient-harm events",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "3.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    Wrong-drug and wrong-patient administration errors are a
    persistent failure mode in hospital pharmacy: the cue the human
    operator needs in order to catch the mismatch is structurally
    absent at the bedside, because the order, the dispensed
    medication, and the patient are connected only by paper
    documentation and clinical memory under time pressure. Bar-code
    medication administration (BCMA) supplies the cue in hardware:
    a bedside scan of the medication's bar code against the
    patient's wristband, gated by the electronic medication
    administration record. Poon et al. (_NEJM_, 2010) evaluated
    bar-code eMAR at an academic medical center using a
    before-and-after observational design and reported a 41.4%
    reduction in nontiming administration errors, a 50.8% reduction
    in potential adverse drug events, and the elimination of
    transcription errors on order transcription (6.1% to zero). A later single-site
    rollout (PMC6257885) reported a 55.4% reduction in actual
    patient-harm events. The study is explicit that the design is
    quasi-experimental — before-and-after / observational — not a
    randomized trial, and that significant workflow changes were
    required for the cue to land. The case is the canonical
    point-of-care cue/alert intervention, paired with Case 27
    (anesthesia monitoring / APSF) at the cue-as-deliverable layer
    and with Case 23 (WHO Surgical Checklist) at the
    mandatory-mechanism layer.
  ],
  sections: (
    [
      The wrong-drug and wrong-patient administration error is a
      structural failure mode of the hospital medication chain. A
      physician's order, a pharmacist's dispense, a nurse's bedside
      administration, and a patient's wristband identification are
      connected only by paper documentation and the operator's
      clinical memory under time pressure. The cue that would let
      the bedside nurse catch a mismatch — "this medication's
      identity does not match this patient's record" — is not
      present in the workflow unaided. The conventional safeguards
      (the five rights, double-checks, naming protocols) are
      cognitive and procedural; the cue itself is structurally
      absent.#cn()
    ],
    [
      Bar-code medication administration supplies the cue in
      hardware. The medication unit-of-use carries a bar code, the
      patient wears a coded wristband, and the electronic medication
      administration record (eMAR) gates the administration on a
      bedside scan that matches medication-to-order-to-patient. The
      cue lands at the moment of administration, before the harm,
      and the system refuses to acknowledge the administration if
      any element does not match. The structural form is the same as
      the cue/alert interventions in Case 27 (continuous pulse
      oximetry, capnography under anesthesia): the cue at the right
      point in the workflow converts an undetectable failure into a
      monitored, recoverable one.#cn()
    ],
    [
      Poon et al. (_New England Journal of Medicine_, 2010)
      evaluated bar-code eMAR at a large academic medical center
      using a before-and-after observational design. The headline
      findings were a 41.4% reduction in nontiming administration
      errors (the failure mode the cue is designed to catch), a
      50.8% reduction in potential adverse drug events (the harm the
      errors would have produced), and the elimination of
      transcription errors on order transcription (6.1% to zero) upstream of
      administration. A subsequent single-site rollout reported in
      PMC6257885 documented a 55.4% reduction in actual
      patient-harm events, supporting the transfer of the result
      across institutional contexts.#cn()
    ],
    [
      The study's design is what the case's hedge rests on. The
      evaluation is quasi-experimental — before-and-after /
      observational — not a randomized trial, and the authors are
      explicit that significant workflow changes were required for
      the cue to land in operation. The cue is not the deliverable
      alone; the workflow is also the deliverable, and the
      attribution of the observed reduction to the cue rather than
      to the workflow change rests on plausibility and on the
      mechanism the cue is designed against. The 55.4% transfer
      number from the later rollout supports the mechanism, and
      that rollout figure also rests on observational data rather
      than randomized comparison.#cn()
    ],
    [
      What the case carries for the corpus is the cue-as-deliverable
      pattern at the point of care, with the explicit
      before-and-after-design hedge. Paired with Case 27
      (anesthesia monitoring / APSF), bar-code eMAR shows the same
      structural form in a different specialty: the cue at the right
      point in the workflow converts an undetectable mismatch into a
      monitored one. Paired with Case 23 (WHO Surgical
      Checklist), the case sits at the mandatory-mechanism layer:
      the bar-code scan, like the checklist, is a workflow artifact
      the operator cannot route around, and the institutional
      commitment to that non-routability is part of why the cue
      lands.
    ],
  ),
  beats: (
    "Wrong-drug / wrong-patient administration: the cue the bedside nurse needs to catch the mismatch is structurally absent in the unaided workflow",
    "Bar-code eMAR supplies the cue in hardware: medication scan + wristband scan gated by the electronic record at the moment of administration",
    "Poon et al. NEJM 2010 — 41.4% reduction in nontiming administration errors, 50.8% in potential adverse drug events, transcription errors eliminated (6.1% to zero)",
    "Later single-site rollout (PMC6257885) — 55.4% reduction in actual patient-harm events",
    "Hedge preserved: before-and-after / observational design, not a randomized trial; significant workflow changes were required",
  ),
  approaches: (
    during: (
      [Design the cue to land at the point in the workflow where the operator can still recover — for bar-code eMAR, the bedside administration scan, before the dose reaches the patient — not at a post-hoc reconciliation point.],
      [Treat the workflow change as part of the deliverable, not as friction to minimize; the cue's effect is conditional on the workflow that surrounds it, and the evaluation has to acknowledge both.],
      [Pair the device standard with the institutional commitment that makes the scan non-routable around — the equivalent of the APSF / ASA monitoring standard in anesthesia, or the WHO checklist's mandatory-mechanism status.],
    ),
    after: (
      [Report the headline reductions (41.4%, 50.8%, transcription errors eliminated, 55.4%) together with the design hedge — before-and-after / observational, significant workflow changes required — so the evidence the field cites is the evidence the field can actually use.],
      [Track the transfer figure (the 55.4% from the later single-site rollout) as evidence the mechanism survives a new institutional context, while preserving the same observational-design qualification on the new figure.],
      [Build the next round of evaluation against the residual error rate (the failures that survive the cue) so the institution learns where the workflow leaks remain, rather than treating the reduction as the closure of the failure mode.],
    ),
  ),
  references: (
    [Poon, E. G., Keohane, C. A., Yoon, C. S., Ditmore, M., Bane, A., Levtzion-Korach, O., Moniz, T., Rothschild, J. M., Kachalia, A. B., Hayes, J., Churchill, W. W., Lipsitz, S., Whittemore, A. D., Bates, D. W., \& Gandhi, T. K. (2010). Effect of bar-code technology on the safety of medication administration. _New England Journal of Medicine_, 362(18):1698–1707. doi:10.1056/NEJMsa0907115 — the case's primary evaluation.],
    [Bonkowski, J., Carnes, C., Melucci, J., Mirtallo, J., Prier, B., Reichert, E., Moffatt-Bruce, S., \& Weber, R. J. (2013). Effect of barcode-assisted medication administration on emergency department medication errors. _Academic Emergency Medicine_, 20(8):801–806 — adjacent transfer evidence.],
    [Thompson, K. M., Swanson, K. M., Cox, D. L., Kirchner, R. B., Russell, J. J., Wermers, R. A., Storlie, C. B., Johnson, M. G., & Naessens, J. M. (2018), "Implementation of Bar-Code Medication Administration to Reduce Patient Harm," _Mayo Clinic Proceedings: Innovations, Quality & Outcomes_ 2(4):342–351, doi:10.1016/j.mayocpiqo.2018.09.001, PMID:30560236, PMCID:PMC6257885 — later single-site rollout reporting a 55.4% reduction in actual patient-harm events.],
    [Institute for Safe Medication Practices, _Guidelines for Safe Electronic Communication of Medication Information_ — the institutional-commitment literature the workflow change rests on.],
  ),
  quote: [The cue is supplied in hardware at the point of administration; the workflow change is part of the deliverable, and the design is observational rather than randomized.],
  quote-source: "Editors' synthesis of Poon et al. (2010) and the BCMA implementation literature.",
  le-insight: [
    Bar-code medication administration is the canonical
    small-tier cue/alert intervention at the point of care.
    The cue lands at the bedside before the harm, the
    workflow change is part of the deliverable, and the
    headline results (41.4%, 50.8%, transcription errors
    eliminated, and a 55.4% transfer figure) rest on a before-and-after / observational
    design that the case preserves verbatim.
  ],
  lens-approach: [
    BCMA is the small-tier point-of-care cue/alert
    intervention (induced 3.1; LENS D4/PT5) — Domain 4 for
    cue-as-deliverable; Domain 3 for the workflow-around-the-
    cue. Pair with Case 27 (anesthesia/APSF) and Case 23
    (WHO Surgical Checklist).
  ],
  literature-items: (
    [Poon et al. (2010), _NEJM_],
    [Bonkowski et al. (2013), _Academic Emergency Medicine_],
    [ISMP _Guidelines for Safe Electronic Communication of Medication Information_],
  ),
  reflection-list: (
    [Identify a point in your domain's workflow where the cue the operator needs in order to catch a mismatch is structurally absent. What would the hardware-supplied analog of bar-code eMAR look like — and at what point in the workflow does it have to land for the operator to still recover?],
    [The headline results (41.4\%, 50.8\%, transcription errors eliminated, 55.4\%) rest on a before-and-after observational design. What additional evidence — randomized comparison, segmented analysis by unit type, residual-error analysis — would you require before treating the figures as a closure rather than a strong signal?],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 7"),
)

// ---- Case 30 — surgical-skill-video-peer-rating ----
#case(
  number: 30,
  slug: "surgical-skill-video-peer-rating",
  title: "Surgical Skill Video Peer-Rating Predicts Complications",
  year: "2013",
  domains-list: ("surgery", "clinical outcomes", "assessment"),
  modes-code: "HDK",
  impact: "Twenty bariatric surgeons each submitted a representative gastric-bypass video, rated blind by at least 10 peers; skill ratings ranged 2.6–4.8; the bottom skill quartile had a higher complication rate (14.5%) than the top quartile across a registry of 10,343 patients, and greater skill was associated with fewer reoperations, readmissions, and emergency department visits",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    Surgical complications are conventionally attributed to patient
    factors, hospital factors, and case-mix. Birkmeyer et al.
    (_NEJM_, 2013) asked a more direct question: can the surgeon's
    actual technical capability be measured well enough to predict
    patient outcomes? Twenty bariatric surgeons each submitted a
    representative video of a laparoscopic gastric bypass; the
    videos were rated blind by at least 10 peers on a structured
    skill scale. Skill ratings ranged from 2.6 to 4.8. Linked to a
    Michigan registry of 10,343 patients, the bottom skill quartile
    had a higher complication rate (14.5%) than the top quartile,
    and greater skill was associated with fewer reoperations,
    readmissions, and emergency department visits. The authors
    call the findings preliminary and name the skill-versus-volume
    confound explicitly: low-skill surgeons also did fewer cases
    and operated more slowly, so the contribution of skill itself
    versus the contribution of case volume is partly open. The
    hedge is part of the case. The proposed primary anchor is 2.1
    (measuring the failure mode you care about) with C3 and C1
    alternates; the editor may move it. Adjacent to JIGSAWS
    (Case 31) at the surgical-skill-measurement layer.
  ],
  sections: (
    [
      The conventional accounting for surgical complications
      attributes outcomes to patient factors (age, comorbidity,
      severity), hospital factors (volume, ICU support), and
      case-mix. The surgeon's actual technical capability — what
      the surgeon does with the instruments in this operation — is
      conventionally treated as too hard to measure at scale, and
      so as a hidden variable in the outcome equation. Birkmeyer et
      al. (_New England Journal of Medicine_, 2013) asked whether
      that variable could be brought into the open: can the
      surgeon's skill be measured well enough, at scale, to predict
      patient outcomes?#cn()
    ],
    [
      The study's design was deliberately simple. Twenty bariatric
      surgeons in a Michigan collaborative each submitted a
      representative video of a laparoscopic gastric bypass — a
      standardized, common procedure. The videos were rated blind
      by at least 10 peers on a structured skill scale derived
      from the surgical-education literature: tissue handling, time
      and motion, instrument knowledge, exposure, completion of the
      operation. Skill ratings ranged from 2.6 to 4.8, with the
      inter-rater reliability adequate to support the rank-ordering
      the study then took into the outcomes analysis.#cn()
    ],
    [
      The outcomes evidence linked the peer-rated skill scores to
      a Michigan registry of 10,343 patients treated by the same
      twenty surgeons. The headline finding: the bottom skill
      quartile had a higher complication rate (14.5%) than the top
      quartile, and greater skill was associated with fewer
      reoperations, fewer readmissions, and fewer emergency
      department visits in the months after surgery. The skill
      score predicted the complication signal at the cohort scale.
      In the surgical-outcomes literature, this is the first
      large-registry evidence that operative skill, measured
      directly from operative video by peer rating, predicts the
      patient-outcome signal the institution actually cares
      about.#cn()
    ],
    [
      The authors call the findings preliminary and name the
      load-bearing confound explicitly: low-skill surgeons also
      did fewer cases and operated more slowly. The
      skill-versus-volume confound is the central methodological
      hedge of the case. It is plausible — and consistent with the
      broader volume-outcome literature — that what the skill
      rating captured was partly the surgeon's accumulated
      operative experience, and that the rated skill is downstream
      of case volume rather than the other axis of the outcome.
      The published study does not separate the two; the editor
      may move the primary anchor away from 2.1 toward 1.1
      (engineered vs. stated requirements) or 6.2
      (operator-to-institution feedback channels) on that basis.#cn()
    ],
    [
      What the case carries for the corpus is the evidence-
      architecture move of measuring the operator's actual
      technical capability against the outcome the institution
      cares about, with the volume-confound hedge intact. The case
      is adjacent to JIGSAWS (Case 31) at the
      surgical-skill-measurement layer — JIGSAWS provides the
      controlled-task instrumented evidence and Birkmeyer the
      naturalistic operative-video evidence, and the two together
      anchor the small-tier C3 conversation about measuring skill
      in surgery. The preliminary-findings language is part of
      what the case teaches.
    ],
  ),
  beats: (
    "Twenty bariatric surgeons each submit a representative laparoscopic gastric bypass video; rated blind by ≥10 peers on a structured scale",
    "Skill ratings range 2.6–4.8 with inter-rater reliability adequate for rank-ordering",
    "Linked to Michigan registry of 10,343 patients: bottom skill quartile complication rate 14.5%; greater skill → fewer reoperations, readmissions, ED visits",
    "Authors call findings preliminary; skill-versus-volume confound named explicitly — low-skill surgeons did fewer cases and operated more slowly",
    "Multi-anchor: 2.1 primary, 1.1 and 6.2 alternates; editor may move",
  ),
  approaches: (
    during: (
      [Specify the capability the assessment is built to measure (operative skill on a standard procedure) and the outcome the institution actually cares about (complication rate, reoperation, readmission), so the evidence architecture connects the measured variable to the institutional signal.],
      [Use blind peer rating on standardized video to make the assessment scalable and resistant to the gaming patterns of self-report or volume-weighted reputation.],
      [Pre-register the threats-to-validity table — volume confound, selection of submitted video, inter-rater reliability — so the published headline is reported alongside the qualifications the design carries.],
    ),
    after: (
      [Report the 14.5\% bottom-quartile complication finding together with the volume-confound hedge; the preliminary-findings language is what makes the result interpretable for the next study.],
      [Design the follow-up analysis to separate skill from volume — for example, by matching on case volume within skill quartile, or by instrumenting the case-volume time-course — so the next round of evidence resolves the confound the present study leaves open.],
      [Carry the result into the surgical-education and credentialing conversation as evidence that peer-rated operative-video skill is a measurable, outcome-predictive variable, while preserving the qualifications the authors themselves attach.],
    ),
  ),
  references: (
    [Birkmeyer, J. D., Finks, J. F., O'Reilly, A., Oerline, M., Carlin, A. M., Nunn, A. R., Dimick, J., Banerjee, M., \& Birkmeyer, N. J. O., for the Michigan Bariatric Surgery Collaborative. (2013). Surgical skill and complication rates after bariatric surgery. _New England Journal of Medicine_, 369(15):1434–1442. doi:10.1056/NEJMsa1300625 — the case's primary evaluation.],
    [Birkmeyer, J. D., Stukel, T. A., Siewers, A. E., Goodney, P. P., Wennberg, D. E., \& Lucas, F. L. (2003). Surgeon volume and operative mortality in the United States. _New England Journal of Medicine_, 349(22):2117–2127 — the volume-outcome literature the confound rests against.],
    [Vassiliou, M. C., et al. (2005). The MISTELS program — global objective assessment of laparoscopic skills. _Surgical Endoscopy_ — the surgical-skill assessment literature the rating scale derives from.],
    [Jacobs, D. O. (2013). Cut well, sew well, do well? _New England Journal of Medicine_, 369(15):1466–1467. doi:10.1056/NEJMe1309785 — the accompanying editorial.],
  ),
  quote: [Greater skill was associated with fewer reoperations, readmissions, and emergency department visits; the low-skill surgeons also did fewer cases and operated more slowly.],
  quote-source: "Editors' synthesis of Birkmeyer et al. (2013) and the accompanying editorial comment.",
  le-insight: [
    The Birkmeyer skill–outcomes study is the first large-
    registry evidence that operative skill, measured directly
    from operative video by blind peer rating, predicts the
    complication signal the institution cares about. The
    findings are preliminary; the skill-versus-volume confound
    is explicit; the multi-anchor (2.1 primary, 1.1 and 6.2
    alternates) is the editor's call.
  ],
  lens-approach: [
    The surgical-skill peer-rating study is the small-tier
    measure-the-failure-mode-you-care-about case
    (induced 2.1; LENS D4/PT5). LENS uses it in Domain 4
    (Test and Evaluation) for the
    measure-the-capability-against-the-outcome design move,
    and in Domain 3 (Human-System Collaboration) for the
    peer-rating workflow that makes the assessment scalable.
    Adjacent to JIGSAWS (Case 31) at the
    surgical-skill-measurement layer — JIGSAWS the
    controlled-task instrumented evidence, Birkmeyer the
    naturalistic operative-video evidence. The
    skill-versus-volume confound is the case.
  ],
  literature-items: (
    [Birkmeyer et al. (2013), _NEJM_],
    [Birkmeyer et al. (2003), _NEJM_ — surgeon volume and operative mortality],
    [Vassiliou et al. (2005), _Surgical Endoscopy_ — MISTELS],
  ),
  reflection-list: (
    [Identify a capability in your domain where the operator's actual technical capability is conventionally treated as too hard to measure at scale and therefore left as a hidden variable in the outcome equation. What would a Birkmeyer-style scalable, blind peer-rated measure look like?],
    [The skill-versus-volume confound is the case. Design the follow-up analysis that would separate skill from volume in your context. What matching, what instrumentation of the volume time-course, what controlled-task companion would be required?],
    [Birkmeyer is anchored at 2.1 with C3 and C1 alternates. Which anchor would you choose for your own use, and what does that choice say about which conversation in your domain the case is the load-bearing evidence for?],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 7"),
)

// ---- Case 31 — language-of-surgery-jigsaws-decomposing ----
#case(
  number: 31,
  slug: "language-of-surgery-jigsaws-decomposing",
  title: "Language of Surgery / JIGSAWS — Decomposing Skill into Measurable Units",
  year: "2009 – 2016",
  domains-list: ("surgery", "skill assessment", "human-motion analysis"),
  modes-code: "TKH",
  impact: "JHU's Language of Surgery project treated surgical motion as language — decomposing tasks into gesture and sub-gesture motion primitives — and released JIGSAWS, a public da Vinci kinematic/video/gesture/skill-rating dataset that became a standard benchmark; experts used fewer gestures (26.29 vs 31.30) and fewer gesture errors than novices for a knot-tying task",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-2, LEO-4",
  coi: "Institutional overlap: this case originates at an editor's institution (Johns Hopkins); no editor was personally involved. Anchored to the peer-reviewed PLOS One paper and the public JIGSAWS dataset, not institutional press.",
  summary: [
    The Language of Surgery project at Johns Hopkins, led by Gregory
    Hager and a cross-departmental team of roughly twenty
    investigators across engineering, computer science, and surgery,
    treated surgical motion as language — decomposing tasks into
    gestures (the "surgemes") and sub-gesture motion primitives (the
    "dexemes") fine enough to distinguish expert from novice. The
    project released JIGSAWS (JHU-ISI Gesture and Skill Assessment
    Working Set), a publicly available da Vinci surgical-robot dataset
    with synchronized kinematic, video, gesture-annotation, and
    skill-rating tracks for suturing, knot-tying, and needle-passing
    tasks. JIGSAWS became a standard benchmark in surgical
    skill-assessment and gesture-recognition research. Vedula et al.
    (_PLOS One_, 2016) used the dataset to show that experts used
    fewer gestures (26.29 vs. 31.30 on a knot-tying task) and made
    fewer gesture errors than novices, with quantifiable
    sub-task-level differences. The case establishes that surgical
    skill is decomposable and machine-measurable; the honest open
    question — preserved here verbatim — is whether automated
    motion-level feedback accelerates trainee skill acquisition or
    improves patient outcomes. The dataset enables the question more
    than it answers it. The case pairs directly with Case 30
    (Birkmeyer's video-rated bariatric-surgical-skill outcome study),
    which establishes that skill matters; together they form the
    skill-measurement spine the corpus needed.
  ],
  sections: (
    [
      Surgical training has carried, for decades, a structural
      measurement gap: skill at the trainee-versus-attending level is
      universally acknowledged to matter, and is universally measured
      by rater judgment — case logs, milestone evaluations, OSATS
      scores — that resolves the construct only at the summary level.
      What such measures cannot resolve is the unit of skill: the
      specific motion sequence, the gesture choice, the sub-gesture
      smoothness, the corrective re-engagement after a near-error.
      The Language of Surgery project began from the position that
      skill could be made measurable at the gesture level if surgical
      activity were decomposed the way language is decomposed into
      phonemes and words.#cn()
    ],
    [
      The intervention is dataset-and-method, jointly. The team
      instrumented the da Vinci surgical robot to capture
      synchronized kinematic traces of the arms, stereo video of the
      surgical field, and frame-level human annotation of which
      gesture was being performed. Onto that base they layered expert
      skill ratings task by task. The technical decomposition was
      structured as a hierarchy: a task (e.g., knot-tying) consists
      of a sequence of gestures or surgemes (e.g., "reach for needle",
      "position needle", "drive needle"), each of which is composed
      of motion primitives or dexemes at the kinematic-trajectory
      level. The team released the resulting corpus as JIGSAWS in
      open form so the broader research community could test methods
      against a common benchmark, rather than each lab building its
      own private dataset.#cn()
    ],
    [
      Vedula et al. (_PLOS One_, 2016) used the dataset to
      analyze the structure of surgical activity for a suturing and
      knot-tying task and reported that experts used fewer gestures
      (26.29 on a knot-tying task) than novices (31.30), and that
      novices made more gesture errors. The differences were not at
      the gross-task-outcome level — both groups completed the task
      — but at the gesture-composition level the decomposition made
      visible. Subsequent work on JIGSAWS by other groups developed
      automated gesture-recognition methods, automated skill-rating
      classifiers, and motion-primitive analyses; the dataset's role
      was to make these results comparable across labs.#cn()
    ],
    [
      The honest open question survives into the case verbatim. The
      project demonstrates that surgical skill is decomposable and
      machine-measurable at the gesture level. What remains open is
      whether automated motion-level feedback delivered to trainees
      actually accelerates skill acquisition, and whether
      gesture-level skill differences translate into patient-outcome
      differences for the trainees once they reach the operating
      room. JIGSAWS enables both questions to be asked rigorously; it
      does not, by itself, answer either. The case's
      learning-engineering content is the construction of the
      evidence architecture — the measurable unit, the open dataset,
      the cross-lab benchmark — that makes downstream measurement
      possible. The home-institution disclosure under the title is
      the standing safeguard against boosterism.#cn()
    ],
    [
      In pair with Case 30 (Birkmeyer et al.'s video-rated bariatric
      surgical-skill study), the case completes a skill-measurement
      pair the corpus had needed: Birkmeyer shows that rated skill
      predicts patient outcome at scale (skill matters), and this
      case shows that skill is decomposable into machine-measurable
      units (skill is engineerable). Drafted together they
      operationalize the new framing the v2 induced framework
      proposes — that capability is engineerable when the unit of
      capability is named and the measurement instrument follows.
      JIGSAWS's continued use as a benchmark, more than a decade
      after release, is the field-scale evidence that the
      decomposition was the right resolution for the question.
    ],
  ),
  beats: (
    "Language of Surgery (JHU, Hager et al.) treats surgical motion as language; decomposes task into surgemes and dexemes",
    "JIGSAWS released as a public da Vinci dataset with synchronized kinematic, video, gesture, and skill-rating tracks",
    "Vedula et al. 2016: experts use fewer gestures (26.29 vs 31.30) and fewer gesture errors than novices on knot-tying",
    "Open question preserved: whether automated motion-level feedback accelerates skill acquisition or improves patient outcomes",
    "Pair with Case 30 (Birkmeyer) — Birkmeyer shows skill matters; this case shows skill is decomposable and machine-measurable",
  ),
  approaches: (
    during: (
      [Decompose the capability into units fine enough to distinguish expert from novice but coarse enough to be reliably annotated; the surgeme / dexeme hierarchy is the worked example of the trade-off.],
      [Release the dataset openly with synchronized signal tracks (kinematic, video, annotation, rating) so that downstream methods can be compared on a common benchmark rather than each lab evaluating itself.],
      [Pair the dataset with a baseline analysis paper that demonstrates the decomposition resolves real expert/novice differences; the Vedula et al. analysis is what makes JIGSAWS more than a data dump.],
    ),
    after: (
      [Carry the open question explicitly — whether automated motion-level feedback accelerates skill acquisition is not what the dataset establishes — so downstream researchers and trainees see the gap as a research target, not a settled claim.],
      [Preserve the home-institution affiliation disclosure in any communication; the standing language anchors the case to the peer-reviewed paper and the public dataset, not to institutional press.],
      [Treat the cross-lab benchmark adoption as the case's strongest evidence that the decomposition was correct at the resolution chosen; the field's continued use of JIGSAWS more than a decade after release is itself the test.],
    ),
  ),
  references: (
    [Vedula, Malpani, Tao, Chen, Gao, Poddar, Ahmidi, Paxton, Vidal, Khudanpur, Hager, & Chen (2016), "Analysis of the Structure of Surgical Activity for a Suturing and Knot-Tying Task," _PLOS One_ 11(3):e0149174, doi:10.1371/journal.pone.0149174.],
    [Gao, Vedula, Reiley, Ahmidi, Varadarajan, Lin, Tao, Zappella, Bejar, Yuh, Chen, Vidal, Khudanpur, & Hager (2014), "JHU-ISI Gesture and Skill Assessment Working Set (JIGSAWS): A Surgical Activity Dataset for Human Motion Modeling," _MICCAI Workshop_ — JIGSAWS dataset release paper.],
    [Reiley, Lin, Yuh, & Hager (2011), "Review of methods for objective surgical skill evaluation," _Surgical Endoscopy_ 25(2):356–366 — situates the decomposition within the broader skill-assessment literature.],
    [Birkmeyer, Finks, O'Reilly, et al. (2013), _NEJM_ — the paired skill-matters study (Case 30).],
  ),
  quote: [Surgical motion is language. The unit of skill is the gesture; the corpus is the dataset; the benchmark is the field's continued use of it more than a decade after release.],
  quote-source: "Editors' synthesis of Vedula et al. (2016) and the JIGSAWS release.",
  le-insight: [
    Language of Surgery / JIGSAWS is the corpus's worked example
    of decomposing a tacit capability — surgical skill — into
    machine-measurable units, and releasing the measurement
    infrastructure openly so the field can build on it. The
    decomposition is established; the downstream question —
    whether motion-level feedback accelerates skill or improves
    patient outcomes — is open. The case enables the question
    rather than answering it.
  ],
  lens-approach: [
    Language of Surgery is the skill-decomposition case
    (induced 2.1; LENS D4/PT5) — Domain 4 for construct-
    resolution; Domain 1 for task-decomposition. Pair with
    Case 30 (Birkmeyer) and Case 27. Home-institution
    disclosure under the title.
  ],
  literature-items: (
    [Vedula et al. (2016), _PLOS One_, doi:10.1371/journal.pone.0149174],
    [Gao et al. (2014), MICCAI Workshop — JIGSAWS release],
    [Reiley et al. (2011), _Surgical Endoscopy_ — skill-evaluation review],
  ),
  reflection-list: (
    [Identify a tacit capability in your domain that is currently rated at the summary level. What is the unit of the capability — the gesture-equivalent — at which the decomposition would resolve expert/novice differences, and what signal tracks would the dataset need to synchronize?],
    [Specify the open question your decomposition would not answer on its own. JIGSAWS does not establish that motion-level feedback accelerates skill; it enables the question. What is the analog in your context — the question the dataset enables but does not close?],
    [The case's evidence of correctness is field-scale adoption of the benchmark a decade after release. What is the publication, release, and open-license strategy that would let your decomposition be tested by labs that have no stake in the original design?],
  ),
  courses: ("LEN 2", "LEN 5", "LEN 7"),
)

// ---- Case 32 — annual-screening-ui-redesign-cds-at ----
#case(
  number: 32,
  slug: "annual-screening-ui-redesign-cds-at",
  title: "Annual-Screening UI Redesign + CDS at University of Missouri Health Care",
  year: "2020",
  domains-list: ("healthcare", "EHR usability", "clinical decision support"),
  modes-code: "TDN",
  impact: "A multidisciplinary EHR redesign of ambulatory annual-screening prompts (advance directives, depression, falls risk, alcohol/drug misuse), paired with embedded CDS, reported improvements in task time, error rates, System Usability Scale scores, and the downstream screening-rate outcomes the project was scoped to move",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "3.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-1",
  summary: [
    A multidisciplinary team at University of Missouri Health Care
    redesigned the EHR interface clinicians use to prompt and perform
    annual screening — advance directives, depression, falls risk,
    alcohol and drug misuse — and embedded clinical decision support
    inside the redesigned workflow. The team reported gains on the
    usability metrics (task time, error rate, System Usability Scale)
    and on the downstream process outcome the project was scoped to
    move: the actual rate at which guideline-recommended screening was
    completed. It is a small-tier intervention case for cue-and-alert
    design as a capability deliverable, with both human-factors and
    clinical-process outcomes in the same report. The corpus has
    long needed a small-tier C3 positive example to set against the
    interface failures already documented at the big tier (Therac-25,
    CPOE/EHR adoption, the Helios pattern). The evidence base is a
    single-institution QI study published peer-reviewed in Applied
    Clinical Informatics (2020), with a HIMSS chapter case-study
    write-up. Future validation will continue as the downstream
    clinical-outcome literature on screening-rate gains matures.
  ],
  sections: (
    [
      Ambulatory annual screening — advance directives, depression,
      falls risk, alcohol and drug misuse — is the kind of
      guideline-recommended care that is easy to declare and hard to
      land. The cue lives in the EHR; the action lives in a
      time-pressured encounter; and the gap between prompt and
      completion is where most screening programs lose their numbers.
      The University of Missouri Health Care project framed the
      problem squarely as cue-and-alert design: if the prompt cannot
      be acted on inside the workflow without friction, the screening
      will not happen.#cn()
    ],
    [
      The redesign was multidisciplinary by construction —
      clinicians, informaticists, and usability specialists working
      against the existing screening interface. The team rebuilt the
      prompt presentation, added embedded clinical decision support
      that surfaced the next action at the point of decision, and
      tightened the path between recognizing a positive screen and
      placing the appropriate order. The design move is the one the
      induced framework flags as the C3 deliverable: change the
      interface so that the desired action is the path of least
      resistance, not a separate sub-task layered on top of the
      visit.#cn()
    ],
    [
      The reported outcomes cross two layers. At the usability layer
      the team reported reductions in task time and error rate and a
      gain on the System Usability Scale. At the process layer they
      reported an increase in the screening-rate metric the project
      was scoped to move — the clinical process the cue exists to
      drive. That second layer is what makes the case a C3 small-tier
      intervention rather than a usability study: the interface gain
      translated into the downstream behavior, at least over the
      reported observation window.#cn()
    ],
    [
      The case is a single-institution quality-improvement study,
      published peer-reviewed in Applied Clinical Informatics (2020),
      with a HIMSS chapter case-study write-up. The
      magnitudes reported sit inside a single-institution
      quality-improvement project with its own outcome metric;
      replication at other institutions and durability across EHR
      upgrades and personnel rotation have not been independently
      audited. Future validation will continue as the institution and
      others publish follow-on screening-rate data and as the
      relationship between screening completion and downstream
      patient outcomes is tracked.#cn()
    ],
    [
      What the case teaches at the LENS layer is that the C3
      interface-failure pattern documented at the big tier is not a
      cosmic constraint — it is redressable by deliberate design at
      the small tier, when usability specialists, clinicians, and CDS
      authors are seated together. The capability deliverable is the
      redesigned cue plus the embedded decision support plus the
      measurement of the downstream process the cue exists to drive.
      The case is the missing positive example for induced 3.1 at
      the small tier and a paired teaching companion for the
      failures already in the corpus.
    ],
  ),
  beats: (
    "Ambulatory annual-screening rates for guideline-recommended care; the cue-action gap is the C3 failure mode",
    "Multidisciplinary EHR redesign of screening prompts + embedded CDS at the point of decision",
    "Reported gains: task time, error rate, SUS score, and the downstream screening-rate metric",
    "Peer-reviewed single-institution QI (Appl Clin Inform 2020); magnitudes await independent replication",
    "The missing small-tier C3 positive example to set against Therac-25, CPOE, Helios at the big tier",
  ),
  approaches: (
    during: (
      [Frame the screening problem as cue-and-alert design from the start; do not separate usability from the clinical-process outcome the cue exists to drive.],
      [Seat usability specialists, clinicians, and CDS authors together on the redesign team; the C3 deliverable is the integrated artifact, not a hand-off.],
      [Specify the downstream process metric (screening-rate completion) before the redesign ships, so the usability-layer and process-layer outcomes are measured against the same scope.],
    ),
    after: (
      [Treat the QI report honestly: a single-institution peer-reviewed study is a small-tier intervention, not a settled magnitude. Carry the single-institution caveat into any downstream citation.],
      [Track durability — across EHR upgrades, personnel rotation, and downstream clinical outcomes — as a separate post-deployment commitment, not a footnote to the implementation report.],
      [Pair with the big-tier C3 failures already in the corpus when teaching; the failure-and-intervention pair is the teaching artifact, not either alone.],
    ),
  ),
  references: (
    [Pierce RP, Eskridge BR, Rehard L, Ross B, Day MA, Belden JL (2020), "The Effect of Electronic Health Record Usability Redesign on Annual Screening Rates in an Ambulatory Setting," _Applied Clinical Informatics_ 11(4):580–588, doi:10.1055/s-0040-1715828. HIMSS (Greater Kansas City chapter) case study is the secondary write-up.],
    [Co et al. (2019), "Medication safety alert fatigue may be reduced via interaction design and clinical role tailoring: a systematic review," _JAMIA_ 26(10):1141, doi:10.1093/jamia/ocz095 — adjacent systematic-review evidence on interaction-design redesign.],
    [Office of the National Coordinator for Health IT, SAFER Guides on CDS design — practitioner-tier guidance the redesign instantiates.],
    [Middleton et al. (2013), "Enhancing patient safety and quality of care by improving the usability of electronic health record systems," _JAMIA_ 20(e1):e2–e8 — the framing peer-reviewed paper on EHR-usability-as-safety.],
  ),
  quote: [The C3 interface failure mode is not a cosmic constraint. It is redressable by deliberate design — when usability, clinicians, and CDS authors sit on the same redesign.],
  quote-source: "Editors' synthesis of the UMHC HIMSS case study.",
  le-insight: [
    The UMHC redesign is the small-tier C3 positive example the
    corpus needed: cue-and-alert design as a capability
    deliverable, with both usability and downstream
    screening-rate gains in the same project. The evidence is a single-institution QI study, peer-reviewed
    in Applied Clinical Informatics (2020), with a HIMSS case-study
    write-up; magnitudes await independent
    replication and durability tracking. Future validation
    ongoing.
  ],
  lens-approach: [
    UMHC is the C3 small-tier intervention case
    (induced 3.1; LENS D4/PT5). LENS uses it in Domain 4
    (Test and Evaluation) for the LEO-4 deliverable that cue
    redesign must show its downstream process effect, and in
    Domain 1 (Systems Analysis) for LEO-1 — the multidisciplinary
    team did the analysis of the screening workflow as the
    precondition for the redesign. The case is the paired
    positive example for the big-tier C3 failures (Therac-25,
    CPOE/EHR adoption, Helios) the corpus already documents.
  ],
  literature-items: (
    [HIMSS Greater KC chapter case study — University of Missouri Health Care],
    [Co et al. (2019), _JAMIA_ — systematic review of alert-design optimization],
    [Middleton et al. (2013), _JAMIA_ — EHR usability as a patient-safety problem],
  ),
  reflection-list: (
    [Identify a screening or recommended-care prompt in your EHR. What proportion of prompts result in the completed action? Where does the cue-action gap sit, and what is the redesign that would close it?],
    [Specify the downstream process metric you would commit to before any usability redesign ships. The UMHC case is teachable because it reported the screening-rate outcome, not only the SUS gain. What would be the equivalent in your context?],
    [The case is a single-institution peer-reviewed QI study. What is the minimum independent replication evidence you would require before treating the reported magnitudes as a basis for an institutional investment in your own setting?],
  ),
  courses: ("LEN 3", "LEN 4", "LEN 8"),
)

// ---- Case 33 — alert-fatigue-redesign-cutting-ehr ----
#case(
  number: 33,
  slug: "alert-fatigue-redesign-cutting-ehr",
  title: "Alert-Fatigue Redesign — Cutting EHR Alerts Without Cutting the Safety Signal",
  year: "2019 – 2024",
  domains-list: ("healthcare", "clinical decision support", "EHR design", "nursing workflow"),
  modes-code: "TDN",
  impact: "Structured EHR alert redesign — fewer alerts, severity reclassification, interruptive-to-passive conversion, role-tailoring — reduced alert burden in published systematic-review and quality-improvement evidence; the 2024 case studies report alert-rate reduction with the underlying safety signal preserved",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "3.1",
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    Alert fatigue is the structural failure mode the C3 thread names
    at the small tier: an EHR that fires so many alerts the
    actionable ones are lost in the noise. The 2019 _JAMIA_
    systematic review by Hussain and colleagues aggregates the evidence
    that structured redesign — interaction design changes and
    clinical-role tailoring — can reduce alert burden; most
    optimization studies in the review reported alert-rate reduction
    after intervention. Two 2024 quality-improvement publications
    extend the pattern with named maneuvers: a nursing-workflow
    redesign of four high-firing, low-action alerts using
    quantitative alert-firing analysis, empathy mapping, and
    iterative user feedback; and the replacement of an interruptive
    COVID-precautions alert with passive clinical decision support,
    targeting both alert burden and the timeliness of precautions
    orders. The case is the small-tier intervention companion to a
    C3.2 failure thread that v1 left almost entirely populated by
    failures (Uber ATG, Robodebt, Northeast Blackout, UK Post Office,
    Tesla Autopilot). The evidence tier is mixed: the systematic
    review is peer-reviewed; the per-site QI projects are
    practice-tier publications. Future validation will continue on
    whether the redesigns survive EHR upgrades and personnel
    rotation.
  ],
  sections: (
    [
      Monitoring under alert burden is the unsupportable role the
      C3.2 induced sub-competency names — the operator asked to keep
      attention on a stream of low-signal alerts and to spot the
      consequential one in real time. In the EHR setting the burden
      becomes structural: high-firing, low-action alerts train the
      clinician to dismiss alerts as the default, which is where the
      actionable alert is missed. Alert fatigue is the failure mode;
      the question for C3 is whether deliberate redesign can reduce
      the burden without cutting the safety signal.#cn()
    ],
    [
      The 2019 _JAMIA_ systematic review by Hussain and colleagues
      aggregates the published evidence on EHR alert optimization.
      The headline finding: interaction-design changes and
      clinical-role tailoring reduce alert burden, and most
      evaluated optimization studies in the review reported
      alert-rate reduction post-intervention. The mechanism is not
      a single intervention but a family of moves — severity
      reclassification, conversion of interruptive alerts to
      passive decision support, role-based tailoring so the alert
      reaches the clinician who can act on it, and removal of
      alerts whose firing-to-action ratio shows the alert is no
      longer working.#cn()
    ],
    [
      The 2024 quality-improvement publications instantiate the
      moves. One project redesigned four high-firing, low-action
      alerts in the nursing workflow using mixed methods —
      quantitative analysis of firing data, empathy mapping of the
      nursing experience, and iterative user feedback as the
      redesign was refined. A second project replaced an
      interruptive COVID-precautions alert with passive CDS, with
      dual outcomes: reduce alert burden and improve the
      timeliness of precautions orders. Together the projects show
      the redesign-pattern is operable at the per-alert level and
      that the evaluation can report both halves of the trade-off
      the redesign exists to manage.#cn()
    ],
    [
      The evidence-tier flag matters. The 2019 systematic review is
      peer-reviewed, and the 2024 _Applied Clinical Informatics_
      paper sits in a peer-reviewed informatics journal. The
      practical maneuver of treating the per-site QI projects as
      generalizable, though, rests on practice-synthesis logic
      across the body of work rather than on a single multi-site
      randomized evaluation. Magnitudes vary by site, EHR vendor,
      and alert category; the redesigns must be re-verified after
      EHR upgrades and personnel rotation. Future validation will
      continue as the optimization-study literature consolidates.#cn()
    ],
    [
      The teaching point pairs with Case 32 and with the v1 C3.2
      failure thread. C3.2 in v1 is entirely failures; this case
      is the small-tier intervention that demonstrates the
      failure mode is redressable by design. The capability
      deliverable is the redesigned alert architecture itself —
      severity tiers, interruptive-vs-passive decisions,
      role-tailoring rules, and an ongoing measurement loop on
      firing-to-action ratios — not a one-time clean-up. The new
      LEO around delegation with revocation applies here: when
      automated decision support oversight is delegated to the
      bedside, the redesign discipline is part of the delegation.#cn()
    ],
  ),
  beats: (
    "Alert fatigue as the C3.2 failure mode at the EHR — high-firing low-action alerts train clinicians to dismiss",
    "2019 JAMIA systematic review (Hussain et al.) — interaction design + role tailoring reduce alert burden across optimization studies",
    "2024 QI redesign of four high-firing nursing alerts: quantitative firing analysis + empathy mapping + iterative user feedback",
    "2024 interruptive-to-passive conversion of COVID-precautions alert with dual outcomes: burden + precautions-order timing",
    "Evidence tier: systematic review peer-reviewed, per-site QI publications practice-tier; durability across upgrades open",
  ),
  approaches: (
    during: (
      [Instrument every consequential alert with its firing-to-action ratio; the metric that names the failure mode must be reported alongside the redesign.],
      [Decide the interruptive-vs-passive call deliberately for each alert; the conversion is the C3 move that reduces burden when the signal does not require the interruption to be actionable.],
      [Use mixed methods (firing data + clinician experience + iterative feedback) to design the per-alert redesign; quantitative alone misses why the alert is being dismissed.],
    ),
    after: (
      [Track the safety signal the alert exists to protect as a separate post-redesign outcome; an alert-rate cut that lost the signal is a failure, not a win.],
      [Re-audit the redesigned alerts after EHR upgrades and personnel rotation; the redesign is not a one-time clean-up and the v1 thread shows the failure mode returns.],
      [Treat the per-site QI publications as practice-synthesis evidence when generalizing; the systematic review supports the pattern, the magnitudes require local replication.],
    ),
  ),
  references: (
    [Hussain et al. (2019), "Medication safety alert fatigue may be reduced via interaction design and clinical role tailoring: a systematic review," _JAMIA_ 26(10):1141–1149, doi:10.1093/jamia/ocz095.],
    [Patterson E. (2024), "Navigating Alert Fatigue: A Case Study in Electronic Health Record Alert Design Optimization," _Studies in Health Technology and Informatics_, PubMed 39049299 — nursing-workflow QI redesign of four high-firing alerts.],
    [Authors (2024), "Addressing Alert Fatigue by Replacing a Burdensome Interruptive Alert with Passive Clinical Decision Support," _Applied Clinical Informatics_ — interruptive-to-passive conversion with dual outcomes.],
    [Office of the National Coordinator for Health IT, SAFER Guides on CDS — practitioner-tier guidance the redesigns instantiate.],
    [Ancker et al. (2017), "Effects of workload, work complexity, and repeated alerts on alert fatigue in a clinical decision support system," _BMC Medical Informatics and Decision Making_ 17:36 — adjacent measurement evidence.],
  ),
  quote: [Alert fatigue is the failure mode the alert architecture trains. The redesign discipline is part of the delegation.],
  quote-source: "Editors' synthesis of Hussain et al. (2019) and the 2024 QI literature.",
  le-insight: [
    The 2019 _JAMIA_ review plus the 2024 QI projects are the
    small-tier C3.2 intervention companion the corpus needed —
    the failure thread (Uber ATG, Robodebt, UK Post Office,
    Tesla) is redressable by deliberate alert redesign. The
    systematic review is peer-reviewed; the per-site QI
    publications are practice-tier; magnitudes and durability
    open. Future validation ongoing.
  ],
  lens-approach: [
    Alert-fatigue redesign is the C3.2 small-tier intervention
    case (induced 3.1 and 3.2; LENS D4/PT5). LENS uses it in
    Domain 4 (Test and Evaluation) for LEO-4 — the redesign
    must report the safety signal alongside the alert-rate
    cut — and in Domain 3 (Human-System Collaboration)
    for LEO-3 oversight of automated decision support
    delegated to the bedside, with the LEO on delegation
    with revocation explicit. Pair with Case 32 for the
    small-tier C3 thread.
  ],
  literature-items: (
    [Hussain et al. (2019), _JAMIA_ — systematic review of CDS alert-optimization],
    [Ancker et al. (2017), _BMC Medical Informatics_ — alert fatigue measurement],
    [2024 _Applied Clinical Informatics_ — interruptive-to-passive conversion case],
  ),
  reflection-list: (
    [Identify an EHR alert in your context with a high firing-to-action ratio. Which of the redesign moves (severity reclassification, interruptive-to-passive conversion, role-tailoring, removal) would you apply, and what would the measured outcome be on both alert burden and the safety signal?],
    [Specify the mixed-methods design (firing data + clinician experience + iterative feedback) you would use to make a per-alert redesign decision. What does the empathy-mapping step add beyond quantitative firing analysis alone?],
    [The per-site QI publications are practice-synthesis tier. What is the minimum cross-site or randomized evidence you would require before generalizing the magnitudes from the 2024 reports to your own setting?],
  ),
  courses: ("LEN 3", "LEN 4", "LEN 8"),
)

// ---- Case 34 — composer-sepsis-prediction ----
#case(
  number: 34,
  slug: "composer-sepsis-prediction",
  title: "COMPOSER Sepsis Prediction — The Third Clinical-AI Sepsis Case",
  year: "2022 – 2024",
  domains-list: ("healthcare", "clinical decision support", "machine learning"),
  modes-code: "TKD",
  impact: "Boussina et al. NPJ Digital Medicine 2024 prospective multi-site implementation of the COMPOSER (COnformal Multidimensional Prediction Of SEpsis Risk) deep-learning model at UC San Diego Health; reported a 1.9 percentage-point absolute decrease (17% relative) in in-hospital sepsis mortality and a 5.0 percentage-point absolute increase in sepsis bundle compliance during the deployment period, evaluated against the pre-deployment baseline period within the same two-emergency-department health system",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "3.1",
  lens-anchor: "D4+D3/PT6",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    Aaron Boussina, Shamim Nemati, and colleagues at UC San Diego
    Health published the COMPOSER (COnformal Multidimensional
    Prediction Of SEpsis Risk) prospective implementation study
    in _NPJ Digital Medicine_ in early 2024. The model is a deep-
    learning sepsis-risk prediction system that uses conformal
    prediction to handle uncertainty — alerting only when the
    model's calibrated confidence threshold is met and abstaining
    when the input is sufficiently out-of-distribution. The
    deployment evaluation reported a 1.9 percentage-point absolute
    decrease in in-hospital sepsis mortality and a 5.0 percentage-
    point absolute increase in sepsis bundle compliance
    during the deployment period at two UC San Diego emergency
    departments,
    evaluated against the pre-deployment baseline period within
    the same health system. The case completes the AI-delegation
    typology in sepsis at three deployments — Case 20 (TREWS at
    Johns Hopkins), Case 5 (Epic Sepsis Score across multiple
    health systems), and COMPOSER at UCSD. The honest hedges from
    the source are binding: the deployment is prospective but
    not RCT-grade, the mortality reduction is multifactorial
    (the COMPOSER deployment ran alongside other process
    improvements at UCSD), and the author team is explicit
    about the structural attribution question. Pair with Case
    20, Case 5, and Case 35 (Radiology AI Miscalibration).
  ],
  sections: (
    [
      The contemporary clinical-AI sepsis-prediction literature
      has converged on a small number of well-evidenced
      deployments. Case 20 documents TREWS — the Targeted Real-
      Time Early Warning System at Johns Hopkins — with its
      prospective evaluation showing mortality reduction
      associated with prompt clinician response to alerts. Case
      5 documents the Epic Sepsis Score deployed across
      multiple U.S. health systems, with external validation by
      Wong and colleagues finding substantially lower sensitivity
      and higher false-positive rates than the vendor's
      validation data implied. COMPOSER is the third deployment
      in the typology and the second prospective-positive case.
      The deployment is at UC San Diego Health across two
      hospital sites, integrated into the electronic health
      record and into emergency-department and inpatient
      workflows.#cn()
    ],
    [
      The methodological feature that distinguishes COMPOSER is
      the conformal-prediction framework. Conformal prediction
      is a statistical method for producing calibrated
      uncertainty intervals around individual predictions: rather
      than producing a single risk score, the model produces a
      prediction together with a measure of how confident the
      model is in that prediction given the input. The
      operational implication is that the model can abstain from
      alerting when the input is sufficiently out-of-distribution
      — when the model's calibrated confidence does not support
      a clinically actionable alert. The abstention structure is
      what handles one of the load-bearing failure modes of
      Case 5 (Epic Sepsis), where the model alerted at high
      rates against patient populations it had not been
      adequately calibrated against. COMPOSER's abstention
      structure is one mechanism for refusing to alert in those
      circumstances.#cn()
    ],
    [
      The deployment outcomes Boussina and colleagues report are
      the load-bearing intervention-evidence. Across the
      deployment period at the two UC San Diego hospital sites,
      in-hospital sepsis mortality decreased by 1.9 percentage
      points in absolute terms, and sepsis bundle compliance
      increased by 5.0 percentage points, both
      evaluated against the pre-deployment baseline period
      within the same health system. The evaluation is
      prospective implementation, not RCT — the comparison is
      against the same hospital sites' historical baseline
      rather than against a contemporaneous randomized control
      arm — and the authors are explicit about the limitation.
      The deployment ran alongside other process improvements
      at UCSD's sepsis-care pathway, and the authors are honest
      that the mortality reduction is multifactorial: COMPOSER's
      contribution cannot be cleanly separated from the
      contribution of the surrounding process changes.#cn()
    ],
    [
      The case pairs with Case 20 (TREWS) for the prospective-
      positive sepsis-prediction thread: both deployments report
      mortality benefits, both are integrated into specific
      health-system workflows, and the comparison between TREWS
      and COMPOSER turns on the alerting architecture and on
      the role of the surrounding process. Pair with Case 5
      (Epic Sepsis Score) for the external-validation-revealed-
      gaps thread: COMPOSER's abstention structure is one
      response to the calibration-gap failure mode that the Epic
      Sepsis evidence base named. Pair with Case 35 (Radiology
      AI Miscalibration) for the broader medical-AI
      miscalibration-in-deployment thread. The three sepsis
      cases together — Case 20, Case 5, COMPOSER — define
      the AI-delegation typology in sepsis: prospective-positive
      with workflow integration (TREWS), externally validated
      and found wanting against vendor claims (Epic Sepsis),
      and prospective-positive with conformal-prediction
      abstention (COMPOSER).#cn()
    ],
    [
      The hedges the case carries are load-bearing and preserved
      in the prose. The deployment is prospective implementation,
      not an RCT; the mortality reduction and bundle-compliance gain are
      evaluated against the same health system's historical
      baseline, and the comparison cannot rule out concurrent
      improvements in sepsis care that would have produced
      similar reductions in the absence of COMPOSER. The
      mortality reduction is multifactorial — COMPOSER was
      deployed alongside other process improvements at UCSD, and
      the authors are explicit that the deployment evaluation
      cannot cleanly separate COMPOSER's contribution from the
      contribution of the surrounding process. The conformal-
      prediction abstention structure is the methodological
      contribution the case anchors, and the cue-and-alert
      design LEO is anchored at the deployment seam where
      abstention is a clinical-workflow capability: the model
      that can refuse to alert when its calibrated confidence
      does not support an alert is the deployment artifact the
      case names as the load-bearing one.
    ],
  ),
  beats: (
    "Boussina et al. NPJ Digital Medicine 2024; COMPOSER deep-learning sepsis-risk model at UC San Diego Health, two-site prospective implementation",
    "Conformal-prediction framework: calibrated uncertainty intervals enable model abstention when input is out-of-distribution",
    "Deployment outcomes: 1.9 pp absolute decrease in in-hospital sepsis mortality; 5.0 pp absolute increase in sepsis bundle compliance vs pre-deployment baseline",
    "Hedges binding: prospective not RCT; mortality reduction multifactorial — concurrent process improvements at UCSD cannot be cleanly separated from COMPOSER's contribution",
    "Completes AI-delegation typology in sepsis: Case 20 (TREWS), Case 5 (Epic Sepsis Score), COMPOSER (Case 34)",
  ),
  approaches: (
    during: (
      [Build the abstention mechanism as part of the deployment, not as a post-hoc filter; the conformal-prediction framework's clinical value is that the model can refuse to alert when its calibrated confidence does not support an alert, and the abstention is a deployment capability rather than an analysis artifact.],
      [Pre-specify the multifactorial-attribution question before evaluation; the case demonstrates that prospective implementation alongside concurrent process improvement requires the evaluation to acknowledge the attribution limit, and pre-specifying the acknowledgement is the discipline.],
      [Integrate the model into specific workflow surfaces — ED admission, inpatient deterioration — rather than as a hospital-wide alerting layer; the deployment's specificity is part of what makes the conformal-prediction abstention structure operationally meaningful.],
    ),
    after: (
      [Carry the multifactorial-mortality hedge into print without softening; the case's pedagogical value depends on the attribution question being explicit alongside the deployment-outcome reporting.],
      [Pair in syllabi with Case 20 (TREWS) and Case 5 (Epic Sepsis) so the AI-delegation typology in sepsis is taught as a three-case set at the deployment-evidence level.],
      [Use the case to anchor the cue-and-alert design LEO; the curricular target is the discipline of building abstention into the alerting architecture as a capability deliverable, and of evaluating the abstention against the calibration-gap failure mode the prior cases named.],
    ),
  ),
  references: (
    [Boussina, A., Shashikumar, S. P., Malhotra, A., Owens, R. L., El-Kareh, R., Longhurst, C. A., Quintero, K., et al. (2024), "Impact of a deep learning sepsis prediction model on quality of care and survival," _NPJ Digital Medicine_ 7:14, doi:10.1038/s41746-023-00986-6.],
    [Shashikumar, S. P., Wardi, G., Malhotra, A., & Nemati, S. (2021), "Artificial intelligence sepsis prediction algorithm learns to say 'I don't know,'" _NPJ Digital Medicine_ 4:134 — the methodological-foundation paper for the conformal-prediction abstention structure.],
    [Wong, A., Otles, E., Donnelly, J. P., Krumm, A., McCullough, J., DeTroyer-Cooley, O., et al. (2021), "External Validation of a Widely Implemented Proprietary Sepsis Prediction Model in Hospitalized Patients," _JAMA Internal Medicine_ 181(8):1065–1070 — the load-bearing external-validation paper on Epic Sepsis (Case 5).],
    [Adams, R., Henry, K. E., Sridharan, A., Soleimani, H., Zhan, A., Rawat, N., Johnson, L., et al. (2022), "Prospective, multi-site study of patient outcomes after implementation of the TREWS machine learning-based early warning system for sepsis," _Nature Medicine_ 28:1455–1460 — the prospective-positive TREWS deployment paper (Case 20).],
  ),
  quote: [The deployment is prospective implementation, not RCT; the mortality reduction is multifactorial — COMPOSER was deployed alongside other process improvements at UCSD, and the contribution cannot be cleanly separated; the conformal-prediction abstention is the methodological contribution the case anchors.],
  quote-source: "Editors' synthesis of Boussina et al. (2024) NPJ Digital Medicine and the surrounding sepsis-prediction deployment literature.",
  le-insight: [
    COMPOSER is the third clinical-AI sepsis case in the
    delegation typology — prospective-positive with conformal-
    prediction abstention. The deployment reduced in-hospital
    sepsis mortality by 1.9 percentage points and raised sepsis
    bundle compliance by 5.0 percentage points; the load-bearing
    hedges are that the evaluation is prospective not RCT and
    that the mortality reduction is multifactorial. The
    abstention structure is the methodological contribution the
    case anchors.
  ],
  lens-approach: [
    COMPOSER is the cue-and-alert-design-as-capability-deliverable
    case at clinical-deployment scale (induced 3.1; LENS
    D4+D3/PT6; LEO-4 and LEO-3). LENS uses it in Domain 4
    (Test and Evaluation) for the prospective-implementation-
    evaluation discipline and in Domain 3 (Human-System Collaboration) for the abstention-as-clinical-workflow-
    capability anchor. Pair with Case 20 (TREWS), Case 5
    (Epic Sepsis), and Case 35 (Radiology AI Miscalibration).
    The three sepsis cases together — Case 20, Case 5, Case
    34 — define the AI-delegation typology in sepsis at the
    deployment-evidence level.
  ],
  literature-items: (
    [Boussina et al. (2024), _NPJ Digital Medicine_ — COMPOSER prospective implementation],
    [Shashikumar et al. (2021), _NPJ Digital Medicine_ — conformal-prediction abstention foundation],
    [Paired Case 20 (TREWS) and Case 5 (Epic Sepsis) — completing the sepsis typology],
  ),
  reflection-list: (
    [Identify a clinical-AI deployment in your setting whose alerting architecture does not include an abstention mechanism. What is the calibration-gap failure mode the deployment would encounter, and what would the conformal-prediction abstention structure look like in your workflow?],
    [Specify the multifactorial-attribution acknowledgement you would carry in a prospective-implementation evaluation. What concurrent process improvements would have to be enumerated, and what is the documented decision rule for what the deployment evaluation can and cannot establish?],
    [The three sepsis cases — TREWS, Epic Sepsis, COMPOSER — together define an AI-delegation typology. Pick a clinical-AI category in your setting and ask: what is the analogous typology, and which deployments would have to be evidenced to define it at the same level of resolution?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 9"),
)

// ---- Case 35 — radiology-ai-miscalibration ----
#case(
  number: 35,
  slug: "radiology-ai-miscalibration",
  title: "Radiology AI Miscalibration",
  year: "2018 – present",
  domains-list: ("healthcare", "tech"),
  modes-code: "HKD",
  impact: "Recurring documented cases of FDA-cleared radiology AI tools performing worse in deployment than in validation, often along demographic lines; the canonical v1 anchor for clinical-AI deployment without surveillance, cross-referenced by the Epic Sepsis (Case 5) and pulse-oximetry (Case 26) deployment-evidence cases",
  diagram: dgm.dgm-compare(
    "validation",
    "AUC 0.9+",
    "deployment",
    "drops",
    framing: "the clearance dataset and the deployment population diverge",
    caption: "Radiology AI — clearance is not deployment",
  ),
  kind: "frontier",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "7.2",
  lens-anchor: "D4+D3/PT5",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    FDA-cleared radiology AI tools — for chest X-ray classification,
    mammography, CT triage — have been repeatedly documented performing
    worse in deployment than in their validation studies, often with the
    degradation concentrated in patient groups under-represented in the
    training data. Larrazabal et al. (_PNAS_ 2020) showed this
    structurally for chest-X-ray classifiers across gender imbalance;
    Seyyed-Kalantari et al. (_Nature Medicine_ 2021) extended the
    finding to under-served racial and socioeconomic subgroups across
    three large public chest-X-ray datasets. Obermeyer et al. (_Science_
    2019) showed that bias in the labels used to train clinical AI can
    under-allocate care to Black patients even when the model looks
    well-calibrated on its chosen proxy. Wachter and Brynjolfsson
    (_JAMA_ 2023) raised the generative-AI extension. The FDA's 510(k)
    clearance pathway — the route most cleared radiology AI tools have
    taken — does not routinely require demographic stratification of
    validation metrics or post-market monitoring of how a tool performs
    in the population using it; the De Novo pathway used for a small
    number of novel tools imposes more, but is rarely the chosen route.
    The 2025 FDA draft guidance on AI/ML-based Software as a Medical
    Device (SaMD), with its Predetermined Change Control Plan and
    Good Machine Learning Practice provisions, begins to address this
    gap; the institutional architecture for demographic post-market
    surveillance is still being built. The capability gap is in the
    regulatory architecture, not the model: clearance is not the same
    thing as clinically performable deployment. The case is the v1
    anchor for the cross-references in the Epic Sepsis (Case 5) and
    pulse-oximetry (Case 26) deployment-evidence cases.
  ],
  sections: (
    // -- The Shift --
    [
      Machine-learning tools are moving rapidly into radiology and
      other diagnostic medicine, cleared for market and integrated
      into clinical workflows that affect real patients. The FDA has
      now authorized more than 1,000 AI/ML-enabled medical devices,
      the majority through the 510(k) clearance pathway as devices
      substantially equivalent to a predicate. Unlike a drug, a model
      can pass its validation study and still behave very differently
      once it meets a population that differs from its training data —
      the same model file that scored well on the clearance set can
      quietly carry a different error profile into every hospital
      whose patients do not resemble it. The 510(k)
      substantial-equivalence framing was built for an era of
      physical devices whose behavior was largely determined by their
      design; it was not built for a class of systems whose behavior
      depends on the distribution of the data they meet.#cn()
    ],
    // -- What Is Emerging --
    [
      Multiple FDA-cleared radiology tools — chest-X-ray classifiers,
      mammography aids, CT triage systems — have been documented in
      the peer-reviewed literature performing worse in deployment
      than in validation, with the degradation often concentrated in
      under-represented patient groups. Larrazabal et al. (_PNAS_
      2020) demonstrated structural sensitivity drops for groups
      under-represented in chest-X-ray training data, using the NIH
      ChestX-ray14 and CheXpert datasets to show that classifier
      sensitivity for a given group tracks that group's prevalence in
      the training set. Seyyed-Kalantari et al. (_Nature Medicine_
      2021) extended the finding directly: across three large public
      chest-X-ray datasets, classifiers under-diagnosed Black,
      Hispanic, female, and lower-socioeconomic patients at higher
      rates, with the disparity present across model architectures —
      evidence that the shortfall is not a stray bug but a
      predictable consequence of which patients the training set did
      and did not contain.#cn()
    ],
    // -- The Capability Question --
    [
      The problem is not confined to imaging. Obermeyer et al.
      (_Science_ 2019) showed that a widely deployed care-management
      algorithm — one of a class of commercial risk-prediction tools
      applied to an estimated 200 million Americans a year —
      systematically under-allocated resources to Black patients
      because it was trained on healthcare cost as a proxy label for
      need: equally sick Black patients had lower historical costs
      because they had received less care, so the model rated them as
      lower-need. The question is how a regulator can certify a model
      as safe without checking how it behaves across the populations
      and labels it will actually meet — since a model can look
      well-calibrated on its chosen proxy while the proxy itself
      encodes the inequity it then propagates. Wachter and
      Brynjolfsson (_JAMA_ 2023) raised the generative-AI extension
      of the same question: the proxy-and-population problem deepens
      under LLM-class tools whose outputs are harder to validate
      against any well-defined label at all.#cn()
    ],
    // -- Early Evidence --
    [
      Similar deployment-performance degradation has been reported
      in mammography AI (validation sets often under-represent
      dense-breast tissue and Black women), sepsis-prediction tools
      (the Epic Sepsis Model — Case 5 — is the canonical example of
      an AI tool deployed at scale whose external validation found
      it substantially worse than its developer-reported numbers),
      pulse-oximetry behavior (the structural racial miscalibration
      documented in Sjoding et al. — Case 26 — sits under several
      downstream AI sepsis and triage tools), and skin-lesion
      classifiers (training-set under-representation of darker skin
      tones produces accuracy gaps in deployment). Yet the FDA's
      510(k) clearance pathway does not routinely require
      demographic stratification of validation metrics, nor
      post-market monitoring of in-use performance — so the
      divergence between clearance and deployment is largely
      invisible while the tool is in use, and a shortfall
      concentrated in one patient group can persist unmeasured
      across the entire period the tool is influencing care.#cn()
    ],
    // -- Open Problems --
    [
      The FDA's evolving AI/ML-device guidance begins to address this
      gap. The Predetermined Change Control Plan — finalized as its own
      guidance in December 2024 — lets manufacturers pre-specify the
      model updates and validation procedures that can be applied
      without a new clearance; the broader device-lifecycle draft
      guidance that followed in January 2025, together with the Good
      Machine Learning Practice principles, emphasizes representative
      training data, transparent performance metrics, and lifecycle
      monitoring, and remained in draft through mid-2026. The De Novo pathway, used for a small number of
      novel tools, imposes more — but is rarely the chosen route.
      What the guidance does not yet require, as of its draft form,
      is mandatory demographic stratification of validation metrics
      at clearance and mandatory population-level post-market
      surveillance of in-use performance for the cleared model.
      Radiology AI thus remains the live, recurring case for the gap
      between regulatory clearance and clinically performable
      deployment. The capability gap is at the regulatory
      architecture, not the model: the institutional machinery to
      require demographic post-market surveillance has not yet been
      built. It is the medical-AI analog of the Vioxx
      post-market-surveillance failure (Case 9) at a new
      technological boundary — a case where the harm comes not from
      a hidden defect but from the absence of any standing system to
      watch the tool once it is in the population's hands.#cn()
    ],
  ),
  beats: (
    "Machine-learning diagnostics enter clinical workflow with validation that may not survive deployment",
    "Cleared radiology tools repeatedly perform worse in deployment, concentrated in under-represented patient groups",
    "How a regulator certifies safety without checking behavior across populations and labels it meets",
    "Degradation reported across imaging, sepsis, dermatology; 510(k) requires no demographic stratification",
    "Capability gap sits in regulatory architecture; demographic post-market surveillance machinery unbuilt",
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
    [Larrazabal, A. J., Nieto, N., Peterson, V., Milone, D. H., & Ferrante, E. (2020), "Gender imbalance in medical imaging datasets produces biased classifiers for computer-aided diagnosis," _PNAS_ 117(23):12592–12594 — sensitivity drops for under-represented groups on NIH ChestX-ray14 and CheXpert.],
    [Seyyed-Kalantari, L., Zhang, H., McDermott, M. B. A., Chen, I. Y., & Ghassemi, M. (2021), "Underdiagnosis bias of artificial intelligence algorithms applied to chest radiographs in under-served patient populations," _Nature Medicine_ 27:2176–2182 — disparities across Black, Hispanic, female, and lower-socioeconomic subgroups; persistence across model architectures.],
    [Obermeyer, Z., Powers, B., Vogeli, C., & Mullainathan, S. (2019), "Dissecting racial bias in an algorithm used to manage the health of populations," _Science_ 366(6464):447–453 — proxy-label bias in a care-management algorithm; ~200 million Americans/year are subject to tools of this class.],
    [Wachter, R. M. & Brynjolfsson, E. (2023), "Will Generative Artificial Intelligence Deliver on Its Promise in Health Care?" _JAMA_ 331(1):65–69 — generative-AI extension of the proxy-and-population problem.],
    [FDA, "Proposed Regulatory Framework for Modifications to AI/ML-Based Software as a Medical Device" (2019); FDA draft guidance on AI/ML-Based SaMD (2025), with Predetermined Change Control Plan and Good Machine Learning Practice principles — the regulatory trajectory; absence of mandatory demographic stratification at clearance and post-market monitoring of in-use performance.],
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
    Radiology AI is the canonical contemporary clinical-AI
    deployment-and-surveillance case (induced 7.2; LENS D4+D3/PT5).
    LENS uses it in Domain 4 (Test and Evaluation; LEO-4) for the
    clearance-vs-deployment measurement architecture and for
    demographic stratification of validation as a deliverable. LENS
    uses it in Domain 3 (Human-System Collaboration; LEO-3) for
    the human-AI deployment-without-surveillance pattern, and in
    Domain 5 (Navigating Sociotechnical Constraints) for the
    FDA AI/ML regulatory trajectory itself. The Obermeyer (2019)
    finding generalizes the diagnosis: bias enters through the
    labels and through the population, both of which the 510(k)
    process currently treats as outside its scope. Pair with Vioxx
    (Case 9) as the post-market-surveillance-failure pattern at a
    new technological boundary; cross-references the Epic Sepsis
    (Case 5) and pulse-oximetry (Case 26) cases at the
    clinical-AI-without-surveillance layer.
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

// ---- Case 36 — alphafold-protein-structure-prediction ----
#case(
  number: 36,
  slug: "alphafold-protein-structure-prediction",
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
      widely adopted result.#cn() The work was extended by AlphaFold 3
      (May 2024), which predicts proteins in complex with DNA, RNA, and
      small molecules, and in October 2024 Demis Hassabis and John Jumper
      shared the Nobel Prize in Chemistry for AlphaFold. AlphaFold 3 also
      complicated the open-release story this case credits: it was
      initially released without code or model weights, drawing a
      scientific backlash, before DeepMind released the code for
      non-commercial use in November 2024 — a reminder that open release
      is a repeated governance decision that can be reversed under
      commercial pressure, not a settled property of the work.#cn()
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
  beats: (
    "Deep learning offered computational solution to a fifty-year experimental bottleneck in biology",
    "AlphaFold released 200 million predicted structures folded into research workflows worldwide",
    "Which conditions allow an AI capability to be safely and widely useful",
    "Success rested on agreed benchmark, clean data, verifiable output, and open release",
    "Whether fields lacking those preconditions can deliberately build them remains the frontier question",
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
    [Varadi et al. (2024), "AlphaFold Protein Structure Database in 2024," _Nucleic Acids Research_ — the 200M+ structures and open release.],
    [Moult, J. (CASP organizer) commentary on AlphaFold2 (2020) — the benchmark and the achievement (paraphrased).],
    [CASP benchmark documentation — the decades-long agreed evaluation.],
    [Hassabis (DeepMind) public commentary — the open-release governance decision.],
    [Abramson et al. (2024), "Accurate structure prediction of biomolecular interactions with AlphaFold 3," _Nature_; and the 2024 Nobel Prize in Chemistry (Hassabis & Jumper) — the extension to complexes and the later code release.],
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
  scale: "big",
  induced-anchor: "2.1",
  lens-anchor: "D4+D5/PT2",
  leo-anchor: "LEO-4",
)

// ---- Case 37 — deepmind-mammography-2020 ----
#case(
  number: 37,
  slug: "deepmind-mammography-2020",
  title: "DeepMind Mammography — High-Profile Nature Paper, Replicability Pushback",
  year: "2020",
  domains-list: ("healthcare", "medical imaging", "machine learning"),
  modes-code: "TKD",
  impact: "McKinney et al. 2020 Nature paper reported a deep-learning mammography screening system outperforming radiologists on retrospective UK and U.S. screening datasets, with reductions in false-positives (5.7 percentage points in the U.S. set, 1.2 in the UK set) and false-negatives (9.4 and 2.7 percentage points respectively); Haibe-Kains et al. October 2020 Nature comment critiqued the paper for failing to release code and trained models, arguing that reproducibility could not be assessed and that screening-comparison claims required deployment-grade evidence",
  kind: "frontier",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "7.2",
  lens-anchor: "D4+D3/PT6",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    Scott Mayer McKinney and colleagues at Google Health and
    DeepMind published "International evaluation of an AI system
    for breast cancer screening" in _Nature_ on January 1, 2020.
    The paper reported that a deep-learning system outperformed
    radiologists on retrospective UK and U.S. screening datasets,
    with reductions in false-positives of 5.7 percentage points
    (U.S.) and 1.2 percentage points (UK) and reductions in
    false-negatives of 9.4 and 2.7 percentage points respectively.
    The paper drew unusual press attention and rapidly entered
    the policy conversation on AI-assisted screening. Haibe-Kains
    and colleagues' October 14, 2020 _Nature_ comment titled
    "Transparency and reproducibility in artificial intelligence"
    critiqued the McKinney paper for failing to release code,
    trained models, or sufficient methodological detail to
    permit independent reproduction. The load-bearing hedge the
    Haibe-Kains comment delivers is that a large fraction of the
    methodology was not reproducible, and the screening-comparison
    framing the original paper offered has been refined by
    subsequent deployment evidence rather than confirmed at the
    deployment scale the headline implied. The case pairs with
    Case 35 (Radiology AI Miscalibration), Case 5 (Epic
    Sepsis), and Case 26 (Pulse oximetry).
  ],
  sections: (
    [
      The McKinney et al. paper was published on January 1, 2020,
      in _Nature_ — a top-tier venue and an unusually high-
      profile publication for a deep-learning medical-imaging
      study. The work was a collaboration across Google Health,
      DeepMind, and clinical partners at Cancer Research UK
      Imperial Centre, Northwestern University, the Royal Surrey
      County Hospital, and the National Cancer Institute. The
      retrospective evaluation used UK and U.S. screening
      datasets and compared the AI system's outputs against
      single-reader and double-reader radiologist performance.
      The headline framing was that the AI system reduced both
      false-positives and false-negatives relative to
      radiologists, with the U.S. dataset showing larger
      absolute reductions than the UK dataset.#cn()
    ],
    [
      The press response was substantial. Mainstream coverage
      framed the result as "AI outperforms radiologists at breast
      cancer screening," and the framing entered the policy
      conversation on AI-assisted medical imaging quickly. The
      framing carried more weight than the underlying
      retrospective comparison was designed to support: a
      retrospective evaluation against historical reader
      performance is informative about model output, but
      prospective deployment against current radiologists
      operating in their current workflow involves variables —
      reader fatigue, screen presentation, integration with
      reading worklists, recall thresholds — that the retrospective
      study does not measure. The McKinney paper itself was
      careful in its claims; the gap between the paper's careful
      claims and the press's framing of the headline is part of
      the case.#cn()
    ],
    [
      The October 14, 2020 _Nature_ comment by Benjamin Haibe-
      Kains, George Adam, Ahmed Hosny, Farnoosh Khodakarami,
      Massive Analysis Quality Control (MAQC) Society Board of
      Directors, Levi Waldron, Bo Wang, Chris McIntosh, Anna
      Goldenberg, Anshul Kundaje, Casey S. Greene, Tamara
      Broderick, Michael M. Hoffman, Jeffrey T. Leek, Keegan
      Korthauer, Wolfgang Huber, Alvis Brazma, Joelle Pineau,
      Robert Tibshirani, Trevor Hastie, John P. A. Ioannidis,
      John Quackenbush, and Hugo J. W. L. Aerts is the load-
      bearing reproducibility critique. The comment argued that
      the McKinney paper had not released code, had not released
      trained models, and had not provided sufficient
      methodological detail to permit independent reproduction.
      The comment was specific: a large fraction of the
      methodology was not reproducible from the published
      paper, and the screening-comparison claim could not be
      independently validated. The comment did not allege error
      in the paper; it argued that reproducibility had not been
      established.#cn()
    ],
    [
      The case pairs with Case 35 (Radiology AI Miscalibration)
      for the medical-imaging-AI-deployment-evidence thread:
      retrospective evaluation produces one class of evidence;
      prospective deployment produces another, and the two are
      not interchangeable. Pair with Case 5 (Epic Sepsis) for
      the high-profile-result-versus-deployment-evidence thread
      in healthcare AI; Epic Sepsis is the load-bearing case in
      the corpus for the gap between vendor or developer claims
      and external evaluation, and DeepMind Mammography sits in
      the same conceptual family at a different domain. Pair
      with Case 26 (Pulse oximetry) for the population-
      heterogeneity-in-medical-AI thread; the McKinney paper's
      UK-versus-U.S. effect-size difference (5.7 vs 1.2 pp on
      false-positives) is itself evidence that the system's
      performance varies across screening populations, and the
      variation has implications for deployment.#cn()
    ],
    [
      The honest hedges the case carries are load-bearing. The
      Haibe-Kains comment is not a finding that the McKinney
      paper was wrong; it is a finding that the paper as
      published did not establish reproducibility. The
      subsequent five years of deployment evidence on AI-assisted
      breast cancer screening have refined the screening-
      comparison framing — most decisively the randomized MASAI
      trial in Sweden (over 100,000 women; interim results in
      _Lancet Oncology_ 2023, final results 2025), which found
      AI-supported reading non-inferior to standard double reading
      while cutting radiologist workload by roughly 44 percent and
      detecting more cancers. That is the deployment-grade evidence
      the Haibe-Kains critique demanded — vindicating the demand
      itself rather than the original retrospective paper — even as
      prospective evaluations have shown benefits in some settings
      and not in others, and the
      operational variables the retrospective comparison did not
      measure have proved load-bearing in deployment. The case
      teaches the verification-as-deployment-event pattern: a
      high-profile retrospective result is the starting point of
      a verification arc, not its endpoint, and the
      reproducibility infrastructure the Haibe-Kains comment
      named is the condition for the arc to be possible.
    ],
  ),
  beats: (
    "McKinney et al. Nature Jan 1 2020: deep-learning mammography reduces false-positives 5.7 pp (US) / 1.2 pp (UK), false-negatives 9.4 / 2.7 pp vs radiologists",
    "Press framing: \"AI outperforms radiologists\"; paper's careful claims do not carry the framing's deployment implications",
    "Haibe-Kains et al. Nature Oct 14 2020 comment: code not released, models not released, methodology not reproducible from publication",
    "Comment does not allege error; argues reproducibility not established; large fraction of methodology not independently verifiable",
    "Pair with Case 35 (Radiology AI miscalibration), Case 5 (Epic Sepsis), Case 26 (pulse oximetry population heterogeneity)",
  ),
  approaches: (
    during: (
      [Release code, trained models, and sufficient methodological detail to permit independent reproduction as a condition of publishing a high-profile retrospective medical-AI result; the Haibe-Kains comment names the reproducibility infrastructure as the condition for the verification arc that the original paper opens.],
      [Specify in advance the deployment variables — reader fatigue, recall threshold, worklist integration, screening-population characteristics — that a retrospective comparison does not measure but that a deployment will encounter.],
      [Treat the gap between the paper's careful claims and the press's framing as a deployment surface, not a communications problem; the framing the field receives is the framing the deployment will operate under in the policy conversation.],
    ),
    after: (
      [Carry the Haibe-Kains comment's specific framing into print without softening; the comment is a finding on reproducibility, not a finding of error, and the case's pedagogical value depends on the distinction being preserved.],
      [Pair in syllabi with Case 35 and Case 5 so the high-profile-result-versus-deployment-evidence pattern is taught across the medical-imaging-AI deployment seam at multiple instances.],
      [Use the case to anchor the verification-as-deployment-event frame; the curricular target is the discipline of treating a high-profile retrospective result as the starting point of a multi-year verification arc rather than as a deployment-ready endpoint.],
    ),
  ),
  references: (
    [McKinney, S. M., Sieniek, M., Godbole, V., Godwin, J., Antropova, N., Ashrafian, H., Back, T., et al. (2020), "International evaluation of an AI system for breast cancer screening," _Nature_ 577:89–94, doi:10.1038/s41586-019-1799-6.],
    [Haibe-Kains, B., Adam, G. A., Hosny, A., Khodakarami, F., MAQC Society Board of Directors, Waldron, L., Wang, B., et al. (2020), "Transparency and reproducibility in artificial intelligence," _Nature_ 586:E14–E16, doi:10.1038/s41586-020-2766-y.],
    [McKinney et al. (2020), reply to Haibe-Kains et al., _Nature_ 586:E17–E18 — the developers' response on the reproducibility-infrastructure question.],
    [Freeman, K., Geppert, J., Stinton, C., Todkill, D., Johnson, S., Clarke, A., & Taylor-Phillips, S. (2021), "Use of artificial intelligence for image analysis in breast cancer screening programmes: systematic review of test accuracy," _BMJ_ 374:n1872 — independent systematic review of subsequent AI-screening-deployment evidence.],
  ),
  quote: [A large fraction of the methodology was not reproducible from the published paper, and the screening-comparison framing has been refined by subsequent deployment evidence rather than confirmed at the deployment scale the headline implied.],
  quote-source: "Editors' synthesis of the McKinney et al. (2020) and Haibe-Kains et al. (2020) Nature exchange.",
  le-insight: [
    DeepMind Mammography is the verification-as-deployment-event
    case at the high-profile-publication scale. The McKinney
    paper's retrospective result was the starting point of a
    verification arc, not its endpoint; the Haibe-Kains comment
    named the reproducibility infrastructure as the condition
    for the arc, and subsequent deployment evidence has refined
    the screening-comparison framing the original paper offered.
  ],
  lens-approach: [
    DeepMind Mammography is the deployment-and-reuse-as-
    verification-events case at the high-profile-publication
    seam (induced 7.2; LENS D4+D3/PT6; LEO-4 and LEO-3). LENS
    uses it in Domain 4 (Test and Evaluation) for the
    reproducibility-infrastructure-as-verification-condition
    discipline and in Domain 3 (Human-System Collaboration)
    for the retrospective-versus-prospective-evidence distinction.
    Pair with Case 35 (Radiology AI Miscalibration), Case 5
    (Epic Sepsis), and Case 26 (pulse oximetry population
    heterogeneity). The Haibe-Kains comment is a reproducibility
    finding, not a finding of error; the distinction is the
    load-bearing hedge.
  ],
  literature-items: (
    [McKinney et al. (2020), _Nature_ — international evaluation of AI mammography screening],
    [Haibe-Kains et al. (2020), _Nature_ — transparency and reproducibility critique],
    [Freeman et al. (2021), _BMJ_ — systematic review of subsequent AI-screening-deployment evidence],
  ),
  reflection-list: (
    [Identify a high-profile retrospective result in your domain whose reproducibility infrastructure — code, trained models, methodological detail — has not been released. What would the verification arc the result opens require to proceed, and what currently blocks it?],
    [Specify the deployment variables a retrospective comparison in your setting does not measure but a deployment will encounter. What is the prospective evaluation design that would surface those variables before deployment scale?],
    [The press framing of a result often carries deployment implications the paper's careful claims do not. Pick a result in your domain and ask: what is the gap between the careful claim and the framing the field receives, and what would have to be true for the gap to be narrowed in advance of deployment decisions?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 9"),
)

// ---- Case 38 — ipledge-isotretinoin-rems-when-the ----
#case(
  number: 38,
  slug: "ipledge-isotretinoin-rems-when-the",
  title: "iPLEDGE Isotretinoin REMS — When the Authorization Mechanism Underperforms",
  year: "2006 – 2011",
  domains-list: ("pharmaceutical safety", "regulatory programs", "clinical care"),
  modes-code: "GDN",
  impact: "An FDA-mandated risk-evaluation and mitigation program with pregnancy testing, two-method contraception requirements, and lockout authorization before dispensing — Kaiser Permanente cohort (n=8,344; 9,912 treatment courses) reported 29 fetal exposures and 'no evidence that iPLEDGE significantly decreased the risk of fetal exposure' relative to the prior SMART program",
  kind: "frontier",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "4.4",
  lens-anchor: "D5/PT5",
  leo-anchor: "LEO-4, LEO-3",
  summary: [
    Isotretinoin is a highly effective acne medication and a known
    teratogen: fetal exposure causes severe birth defects. The FDA
    has required risk-management programs since the 1980s; in 2006
    the agency replaced the prior SMART program with iPLEDGE — a
    formal Risk Evaluation and Mitigation Strategy (REMS) requiring
    pregnancy testing, two contraception methods (or documented
    abstinence), and pharmacy lockout authorization before each
    dispense. The case is the productive counterpoint to SUBSAFE
    (Case 173) and the WHO Surgical Checklist (Case 23): the
    structural move is the same — mandatory pre-authorization
    gating a consequential action — and the measured outcome is
    very different. The Shin et al. Kaiser Permanente cohort
    (_J Am Acad Dermatol_, 2011; n=8,344 patients across 9,912
    treatment courses) found 29 fetal exposures and concluded
    "no evidence that iPLEDGE significantly decreased the risk of
    fetal exposure" compared with the prior program. The broader
    literature reports approximately 150 isotretinoin-exposed
    pregnancies continue annually in the US despite the program,
    with non-adherence — missed pills, inconsistent condom use —
    the documented driver. The teaching point is that an
    authorization mechanism without adherence support does not
    reliably deliver the capability it is built to enforce.
  ],
  sections: (
    [
      Isotretinoin (Accutane and successors) is a highly effective
      systemic treatment for severe acne, and a well-characterized
      teratogen. Fetal exposure during treatment causes a recognized
      pattern of severe birth defects. The FDA has therefore
      required some form of risk-management program around its
      prescribing since the late 1980s, evolving through pregnancy
      testing requirements, contraception counseling, and structured
      enrollment programs. iPLEDGE, introduced in 2006, was the
      first to use the formal Risk Evaluation and Mitigation
      Strategy (REMS) architecture and to require pharmacy
      lockout: no authorization, no dispense.#cn()
    ],
    [
      The mechanism is what the case turns on. iPLEDGE requires the
      patient to register, document either two contraception methods
      or abstinence (with declared method), complete monthly
      pregnancy tests, and receive a per-cycle authorization code
      before the pharmacy can fill the prescription. Each prescriber,
      pharmacy, and wholesaler must also enroll in the program. The
      structural form is the same one SUBSAFE (Case 173) and the
      WHO Surgical Checklist (Case 23) both use successfully:
      mandatory pre-authorization gating a consequential action,
      with the authorization withheld until pre-conditions are
      verifiably met.#cn()
    ],
    [
      The measured outcome diverges sharply. Shin et al.
      (_Journal of the American Academy of Dermatology_, 2011)
      studied 8,344 Kaiser Permanente patients across 9,912
      isotretinoin treatment courses in the iPLEDGE era and
      identified 29 fetal exposures. The paper's conclusion is the
      load-bearing sentence: "no evidence that iPLEDGE
      significantly decreased the risk of fetal exposure" relative
      to the prior SMART program. The broader literature
      consistently reports that approximately 150
      isotretinoin-exposed pregnancies continue annually in the
      United States despite the program operating as designed. The
      documented driver in both is non-adherence: missed pills,
      inconsistent condom use, the assumption that one cycle of
      missed contraception is unlikely to coincide with the
      teratogenic window.#cn()
    ],
    [
      The teaching point is precise and load-bearing. iPLEDGE is
      not a program-design failure in the sense that SUBSAFE
      succeeded and iPLEDGE was sloppy. The mechanism is elaborate,
      the enrollment burden on prescribers and pharmacies is real,
      and the program runs as specified. What the evidence shows is
      that an authorization mechanism without adherence support
      does not reliably deliver the capability it is built to
      enforce — because the capability sits downstream of the
      authorization in patient behavior, and the program does not
      reach into that behavior. The structural form (mandatory
      pre-authorization) is the same as SUBSAFE's; the missing piece
      is the equivalent of SUBSAFE's lifecycle audit and recurring
      training that keep the certification real in operation.#cn()
    ],
    [
      Drafted alongside SUBSAFE (Case 173) and the WHO Surgical
      Checklist (Case 23), iPLEDGE is the most analytically
      useful "mixed" case in the v2 sweep. It is not a failure of
      the form (the form has demonstrated successes); it is evidence
      that the form alone does not deliver capability when the
      capability depends on a behavior the program does not
      instrument. The case is the case-grounded basis for the new
      subobjective *Judgment under inadequate evidence* (4.4) — the practitioner
      designing a REMS-class program has to decide on the available
      evidence what additional adherence-support architecture the
      mechanism needs in order to deliver, and the iPLEDGE evidence
      is the worked example of why the question matters.
    ],
  ),
  beats: (
    "iPLEDGE 2006 — first REMS-class authorization for isotretinoin; mandatory pregnancy test, two-method contraception, pharmacy lockout per cycle",
    "Shin et al. 2011 Kaiser cohort (n=8,344; 9,912 courses) — 29 fetal exposures; 'no evidence iPLEDGE significantly decreased risk' vs. prior SMART",
    "Approximately 150 isotretinoin-exposed pregnancies continue annually in the US despite the program; non-adherence is the documented driver",
    "Structural form same as SUBSAFE and WHO checklist; the mechanism alone does not deliver capability without adherence support",
    "Most analytically useful 'mixed' case in v2 — the form has demonstrated successes; form-without-adherence-support is the gap",
  ),
  approaches: (
    during: (
      [Specify in advance what the authorization mechanism reaches and what it does not — for iPLEDGE, the authorization controls dispensing but does not reach into patient adherence — so the gap is named at design time rather than discovered in outcome data.],
      [Pair the authorization architecture with adherence support that instruments the behavior the capability depends on: in this case, contraception adherence, not just contraception declaration.],
      [Design the outcome metric around the harm the program exists to prevent (fetal exposure), not around the mechanism's own throughput (enrollment counts, authorization codes issued), so the evaluation is of the capability and not of the bureaucracy.],
    ),
    after: (
      [Treat a "no significant decrease" finding as program evidence about the mechanism's reach, not as an argument against authorization architectures in general; SUBSAFE and the WHO checklist demonstrate the form can deliver under the right conditions.],
      [Re-engineer the adherence-support layer based on the documented driver of failure — for iPLEDGE, missed pills and inconsistent condom use — rather than tightening the authorization layer that is already working as specified.],
      [Carry the "approximately 150 exposures annually" figure honestly in any communication about the program; iPLEDGE is operating as designed, and the design's reach is what the evidence is about.],
    ),
  ),
  references: (
    [Shin, J., Cheetham, T. C., Wong, L., Niu, F., Kass, E., Yoshinaga, M. A., Sorel, M., McCombs, J. S., & Sidney, S. (2011), "The impact of the iPLEDGE program on isotretinoin fetal exposure in an integrated health care system," _Journal of the American Academy of Dermatology_, PMID:21565419.],
    [FDA, iPLEDGE program documentation (2006 – present) — REMS architecture and enrollment requirements.],
    [Collins, M. K., Moreau, J. F., Opel, D., Swan, J., Prevost, N., Hastings, M., Schwarz, E. B., & Ferris, L. K. (2014), "Compliance with pregnancy prevention measures during isotretinoin therapy," _Journal of the American Academy of Dermatology_, 70(1):55–59, PMID:24157382 — source of the ~150 annual exposures figure.],
    [Sullivan et al. (2003), House Science Committee statement on SUBSAFE — the structural counterpoint (Case 173).],
  ),
  quote: [The authorization mechanism is operating as designed. The capability sits downstream of the authorization, and the program does not reach that far.],
  quote-source: "Editors' synthesis of Shin et al. (2011).",
  le-insight: [
    iPLEDGE is the productive counterpoint to SUBSAFE and the
    WHO Surgical Checklist. The structural form — mandatory
    pre-authorization gating a consequential action — is the
    same; the measured outcome is very different because the
    capability the program exists to enforce depends on
    patient adherence the program does not instrument. The
    "no significant decrease" finding is load-bearing and
    survives into the case verbatim.
  ],
  lens-approach: [
    iPLEDGE is the analytically useful "mixed" pre-authorization
    case (induced 4.4; LENS D3/PT5). LENS uses it in Domain 3 (Human-System Collaboration) for the subobjective *Delegation with revocation* (3.3) — what the authorization
    mechanism delegates and what it does not — and in Domain 4
    (Test and Evaluation) for the subobjective *Judgment under
    inadequate evidence* (4.4) on whether the form will deliver in a
    specific context. Direct pair with SUBSAFE (Case 173) at
    the form-vs-context layer; pair with WHO Surgical Checklist
    (Case 23) at the mandatory-mechanism layer.
  ],
  literature-items: (
    [Shin et al. (2011), _Journal of the American Academy of Dermatology_],
    [Collins et al. (2014), _Journal of the American Academy of Dermatology_],
    [FDA iPLEDGE program documentation],
  ),
  reflection-list: (
    [Identify a mandatory pre-authorization program in your domain. What does the authorization mechanism actually reach, and what does it not? Where in the patient or operator behavior does the capability the program exists to deliver sit downstream of the authorization?],
    [Specify the adherence-support architecture you would add to convert an iPLEDGE-class authorization into a delivered capability. For isotretinoin the gap is documented (missed pills, inconsistent condom use); what is the analog in your context?],
  ),
  courses: ("LEN 5", "LEN 7", "LEN 9"),
)

// ---- Case 39 — teamstepps ----
#case(
  number: 39,
  slug: "teamstepps",
  title: "TeamSTEPPS",
  year: "2006 – present",
  domains-list: ("healthcare",),
  modes-code: "TN",
  impact: "Improved teamwork, communication, and patient-safety culture across diverse settings; OR on-time first start +21%; adopted by thousands of healthcare organizations",
  diagram: dgm.dgm-teamstepps,
  kind: "intervention",
  summary: [
    TeamSTEPPS — developed jointly by the Agency for Healthcare Research
    and Quality and the Department of Defense and released in 2006 — is the
    healthcare analog of Crew Resource Management (Case 117): an
    evidence-based team-training framework distilled from decades of
    aviation, military, and nuclear research and adapted for clinical
    settings. It trains four core competencies: communication, leadership,
    situation monitoring, and mutual support. It is explicitly the
    translation pathway from high-reliability research into bedside
    practice — the cross-domain capability transfer LENS is built to teach.
    Because its implementation infrastructure was funded as part of the
    program, TeamSTEPPS moved from research to scaled deployment in years
    rather than decades, and has been adopted by thousands of healthcare
    organizations with measurable gains in teamwork and safety culture.
  ],
  sections: (
    // -- Background --
    [
      Decades of research in aviation, the military, and nuclear power had
      shown that teamwork — not just individual expertise — drives safety
      in high-consequence work, and the IOM's _To Err Is Human_ had
      identified poor communication as a leading cause of medical harm.
      What clinical settings lacked was a structured, evidence-based way to
      build those team skills. The evidence existed and the diagnosis was
      clear; what was missing was the translation — a route from the
      high-reliability research base into a curriculum a hospital could
      actually run at the bedside.#cn()
    ],
    // -- The Intervention --
    [
      In 2006, the Agency for Healthcare Research and Quality and the
      Department of Defense jointly released TeamSTEPPS — Team Strategies
      and Tools to Enhance Performance and Patient Safety — the healthcare
      analog of Crew Resource Management. It trains four core competencies:
      communication, leadership, situation monitoring, and mutual support,
      with a structured curriculum and ready-made implementation materials.
      The joint AHRQ-DoD authorship mattered: it paired a healthcare
      research agency's clinical reach with the military's deep team-training
      experience, so the framework arrived already grounded in both the
      evidence base and the practicalities of running it.#cn()
    ],
    // -- How It Worked --
    [
      TeamSTEPPS is explicitly the translation pathway from
      high-reliability-organization research into clinical practice — decades
      of cross-domain evidence adapted for the bedside. Crucially,
      its implementation infrastructure (master-trainer programs, toolkits,
      an institutional support center) was funded as part of the
      intervention, so adopting organizations had a route from training to
      sustained practice rather than a binder on a shelf. Funding the
      implementation alongside the curriculum is precisely what compressed
      the usual decades-long gap between a proven method and its scaled use,
      because the path from adoption to sustained practice was paid for in
      advance.#cn()
    ],
    // -- The Evidence --
    [
      Studies across diverse settings report improved teamwork,
      communication, and patient-safety culture, with concrete operational
      gains such as a 21% improvement in on-time first surgical starts.
      Thousands of healthcare organizations have adopted the framework, and
      AHRQ has continued to develop it, releasing TeamSTEPPS 3.0 in 2023.
      The continued development into a third version is itself evidence the
      transfer took hold — a framework that is still being maintained and
      revised nearly two decades on is one institutions kept using, not one
      that was issued and abandoned.#cn()
    ],
    // -- What Transferred --
    [
      TeamSTEPPS is the canonical evidence that cross-domain capability
      transfer is engineerable — and that the long implementation gap can
      be dramatically shortened when the transfer is funded as part of the
      intervention rather than as an afterthought. Its four competencies
      map directly onto the argument that capability engineering is itself
      a teachable discipline. The deeper lesson is that the bottleneck in
      cross-domain transfer is rarely the knowledge, which already existed,
      but the funded path that carries it from research into routine
      practice — the part programs most often leave unbudgeted.#cn()
    ],
  ),
  beats: (
    "High-reliability research showed teamwork drives safety, but clinical settings lacked a structured curriculum",
    "AHRQ and DoD jointly released TeamSTEPPS in 2006, training four core team competencies",
    "Funding master-trainer programs, toolkits, and a support center alongside the curriculum compressed the gap",
    "Studies show improved teamwork and safety culture; on-time surgical first starts rose 21 percent",
    "Cross-domain capability transfer is engineerable when the funded path to sustained practice is included",
  ),
  references: (
    [AHRQ, _TeamSTEPPS 3.0 Curriculum_ (2023) — the framework and four competencies.],
    [DoD / AHRQ partnership documentation — the joint development and implementation infrastructure.],
    [Salas, E., Rosen, M. et al. (2009) — cross-domain team-training evidence base.],
    [Weaver, S., Dy, S. & Rosen, M. (2014) — patient-safety team-training implementation and outcomes.],
    [American Hospital Association Team Training Center — adoption and on-time-start metrics.],
  ),
  quote: [TeamSTEPPS represents the translation pathway from high-reliability research into clinical practice.],
  quote-source: "Editors' synthesis drawing on AHRQ TeamSTEPPS 3.0 (2023) and Salas et al.",
  le-insight: [
    TeamSTEPPS is the canonical evidence that cross-domain capability
    transfer is engineerable and that it can shorten the implementation
    gap dramatically when the transfer is funded as part of the
    intervention rather than as an afterthought. The four competencies
    map directly to the LENS curriculum's argument for what capability
    engineering competence looks like as a deliverable.
  ],
  lens-approach: [
    LENS treats TeamSTEPPS in LEN 8 as the canonical cross-domain
    transfer case and in LEN 1 as evidence that the program's core
    proposition — that learning engineering is a discipline — has
    institutional precedent. Studio projects (LEN 10) reference
    TeamSTEPPS as the worked example of cross-domain adaptation
    methodology.
  ],
  literature-items: (
    [AHRQ TeamSTEPPS documentation],
    [Salas, Rosen, Held & Weissmuller (2009) on cross-domain team training],
    [Weaver, Dy & Rosen (2014), patient-safety implementation],
  ),
  reflection-list: (
    [What is the cross-domain transfer your domain has not yet executed? What evidence base in another industry should it draw on?],
    [TeamSTEPPS funded its implementation infrastructure. Design the implementation-infrastructure budget for an equivalent transfer in your domain.],
    [TeamSTEPPS shortened the usual decades-long gap because the path from adoption to sustained practice was paid for in advance. Identify a proven method in your domain that has not scaled, and name the specific unbudgeted step that is blocking it.],
  ),
  approaches: (
    during: (
      [Distill the cross-domain evidence base into a structured curriculum of a few teachable competencies rather than leaving adopters to translate the research themselves.],
      [Pair authorship across the source and target domains (as AHRQ and DoD did) so the framework arrives grounded in both the evidence and the practicalities of running it.],
      [Fund the implementation infrastructure — master-trainer programs, toolkits, a support center — as part of the intervention, not as an afterthought.],
    ),
    after: (
      [Maintain and revise the framework over time (as with successive TeamSTEPPS versions) so it stays in use rather than being issued and abandoned.],
      [Track concrete operational gains (such as on-time first surgical starts) alongside culture measures, so the transfer's effect is shown, not assumed.],
      [Identify and budget the specific path from adoption to sustained practice when scaling, since that unbudgeted step is the usual bottleneck in cross-domain transfer.],
    ),
  ),
  courses: ("LEN 1", "LEN 10", "LEN 8", "LEN 3",),
  scale: "big",
  induced-anchor: "6.4",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-5",
)

// ---- Case 40 — team-science-training-for-clinical-and ----
#case(
  number: 40,
  slug: "team-science-training-for-clinical-and",
  title: "Team Science Training for Clinical and Translational Scientists",
  year: "2020 – 2022",
  domains-list: ("clinical/translational research", "team science", "healthcare workforce"),
  modes-code: "KN",
  impact: "Colorado CTSA team-science training (221 registrants; pre/post survey N=117/46) reported statistically significant improvement (p<0.05) across all three TEAMS instrument competencies — Team Planning, Managing a Team, and Interpersonal Relations — with the largest gains in structured/tool-based domains and the smallest in Interpersonal Relations",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "4.3",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-4, LEO-5",
  summary: [
    The Colorado Clinical and Translational Sciences Institute
    built a structured team-science training program — explicit
    competency targets, structured exercises, mentor pairings —
    and evaluated it across three 2020–2022 cohorts (221
    registered participants; 117 pre-program and 46 post-program
    survey respondents) using a pre/post design. The evaluation
    introduces and validates a measurement instrument (TEAMS) that
    resolves team-science capability into three components: Team
    Planning, Managing a Team, and Interpersonal Relations.
    Participants showed statistically significant improvement
    (p\<0.05) across all three components — with the largest gains
    in the structured / tool-based domains (Team Planning,
    Managing a Team) and the smallest gain in Interpersonal
    Relations, the component the authors explicitly note is the
    hardest. The case treats interdisciplinary collaboration as an
    engineerable, measurable capability — the amended Domain 3
    sub-competency (collaboration
    as a unit of measurement, distinct from any individual
    operator) — and is honest about the interpersonal half moving
    least. The honest limit the authors name: outcomes are
    self-reported and the design lacks longitudinal tracking and
    integration metrics; this is perceived-competency-gain
    evidence, not yet demonstrated downstream research-
    collaboration impact.
  ],
  sections: (
    [
      Clinical and translational research is the structural example
      of a discipline whose capability sits in the collaboration
      itself rather than in any single team member. A protocol moves
      across investigators, study coordinators, biostatisticians,
      clinical staff, and regulatory specialists; the science
      depends on the team's coordination as much as on any
      individual's expertise. The capability question the case
      addresses is whether interdisciplinary collaboration can be
      trained — and whether the resulting capability can be
      measured.#cn()
    ],
    [
      The Colorado Clinical and Translational Sciences Institute
      built a structured team-science training program with
      explicit competency targets, structured exercises, and
      mentor pairings. The program ran across three 2020–2022 cohorts with 221
      registered participants; the pre/post design drew 117
      pre-program and 46 post-program survey respondents. The evaluation
      paper's central methodological contribution is the
      validation of a measurement instrument — TEAMS — that
      resolves team-science capability into three competency
      components: Team Planning (the structured front-end of
      collaboration), Managing a Team (the structured operational
      half), and Interpersonal Relations (the unstructured half
      that the literature describes as the hardest to train).#cn()
    ],
    [
      Pre/post comparison showed statistically significant
      improvement (p\<0.05) across all three components. The
      pattern of gains is what makes the case teachable: the
      largest gains were in the structured / tool-based domains —
      Team Planning and Managing a Team — and the smallest gain
      was in Interpersonal Relations. The authors do not soften
      this; the paper states it plainly, and the
      smaller-gain-on-the-hardest-half finding is the load-bearing
      honest result.#cn()
    ],
    [
      The honest limit the authors also name carries into the
      case. The TEAMS instrument and the pre/post comparison
      measure self-reported perceived competency, not downstream
      collaboration outcome. The design did not track participants
      longitudinally into their next collaborative projects, did
      not measure integration metrics on the projects they ran
      after the training, and did not compare to a non-trained
      control. The evidence is the strongest available current
      evidence for a structured team-science training program; it
      is not closed proof of downstream collaboration impact, and
      the case carries the qualification rather than collapsing it.#cn()
    ],
    [
      In pair with IPE (Case 28) and Implementation Science
      Training (Case 41), the Colorado CTSA case is the small-tier
      intervention companion to two frontier cases. Team-science
      training is one of the few cases in the corpus that
      operationalizes "collaboration as the unit of measurement"
      — the LEO — with a
      validated instrument and structured evaluation. The case is
      a worked example of how a discipline can convert
      collaboration capability from an aspiration to a measurable
      target, while preserving the honest qualifications about
      what the measurement does and does not establish.
    ],
  ),
  beats: (
    "Colorado CTSA structured team-science program; 221 registrants, pre/post survey N=117/46, 2020–2022",
    "TEAMS instrument validated; three components — Team Planning, Managing a Team, Interpersonal Relations",
    "Statistically significant improvement (p<0.05) across all three; largest gains in structured/tool-based, smallest in interpersonal",
    "Honest limit: self-reported perceived competency, no longitudinal tracking, no comparison to non-trained control",
    "Operationalizes 'collaboration as unit of measurement' — the Domain 3 sub-competency",
  ),
  approaches: (
    during: (
      [Resolve collaboration capability into measurable components — Team Planning, Managing a Team, Interpersonal Relations — and structure the training so each component has tools, exercises, and an assessment instrument.],
      [Validate the measurement instrument before relying on it for evaluation; the TEAMS instrument's three-component structure is the load-bearing methodological contribution.],
      [Acknowledge in the program design that the interpersonal component is the hardest to train and the slowest to move; design the exercises and the mentor pairings around that asymmetry rather than against it.],
    ),
    after: (
      [Report the pattern of gains, not just the aggregate; the smaller-gain-on-interpersonal finding is the honest signal about what the structured training can and cannot do.],
      [Commission longitudinal follow-up that tracks participants into their next collaborative projects and measures integration outcomes — the case names the gap and the next study addresses it.],
      [Carry the "collaboration as the unit of measurement" sub-competency into the curriculum: the Domain 3 sub-competency is grounded in evidence here, and the team-science training program is one of the few cases in the corpus that operationalizes it.],
    ),
  ),
  references: (
    [Colorado CTSA, "Team science training for clinical and translational scientists: An assessment of effectiveness," _Journal of Clinical and Translational Science_, PMC12392353.],
    [Falk-Krzesinski et al. (2010), "Mapping a research agenda for the science of team science," _Research Evaluation_ — broader team-science literature backdrop.],
    [National Research Council (2015), _Enhancing the Effectiveness of Team Science_ — the IOM/National Academies team-science synthesis.],
    [v2 paired cases: IPE evidence gap (122), Implementation Science Training (123) — the frontier/measurement companions.],
  ),
  quote: [The largest gains were in the structured half. The hardest half — interpersonal relations — moved least, and the paper states it plainly.],
  quote-source: "Editors' synthesis of Colorado CTSA team-science training evaluation.",
  le-insight: [
    The Colorado CTSA team-science training program is one of
    the few cases in the corpus that operationalizes
    "collaboration as a unit of measurement." The TEAMS
    instrument resolves the capability into three components;
    structured training moved all three with p\<0.05 but moved
    interpersonal relations least. The honest limit — self-
    reported perceived competency, no longitudinal tracking, no
    control — survives into the case.
  ],
  lens-approach: [
    Team-science training is the case-grounded basis for the
    collaboration-as-measurement LEO (induced 4.3;
    LENS D5/PT4). LENS uses it in Domain 5 (Navigating
    Sociotechnical Constraints) for the team-coordination
    redesign and in Domain 4 (Test and Evaluation) for the
    TEAMS instrument validation and the perceived-competency
    vs. downstream-impact discipline. Direct pair with Cases
    117 (IPE) and 123 (implementation science training) — the
    intervention with measurement against two frontier cases
    where the measurement is the gap.
  ],
  literature-items: (
    [Colorado CTSA team-science training evaluation, _JCTS_],
    [National Research Council (2015), _Enhancing the Effectiveness of Team Science_],
    [Falk-Krzesinski et al. (2010), _Research Evaluation_],
  ),
  reflection-list: (
    [Identify a collaboration-dependent capability in your domain. What three or four components would you resolve it into for measurement purposes, and what instrument would you validate to test the resolution?],
    [Specify the longitudinal follow-up you would build into the next iteration of a team-science training program — what integration metric, on what cadence, against what comparison — to convert perceived-competency-gain evidence into downstream-collaboration-impact evidence.],
    [The Colorado CTSA finding is that the structured half moves first and the interpersonal half moves least. What does that imply about the curriculum you would design — and about which components are realistic targets for a single-program training intervention vs. an institutional / cultural intervention?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 41 — implementation-science-training-stated ----
#case(
  number: 41,
  slug: "implementation-science-training-stated",
  title: "Implementation-Science Training — Stated Goals Outrunning Operational Practice",
  year: "2020s",
  domains-list: ("implementation science", "translational workforce", "education"),
  modes-code: "KN",
  impact: "Survey of CTSA-funded TL1 training programs (N=50): most name collaboration, team science, and multi/inter/cross-disciplinary training as goals, but far fewer name the specific competency practices as distinguishing features — experiential learning in 24% of programs, a competency-based curriculum in just 6%",
  kind: "frontier",
  scale: "small",
  evidence-source: "peer-reviewed",
  induced-anchor: "6.4",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-4, LEO-5",
  summary: [
    Implementation science — the discipline of moving validated
    evidence into operational practice — is one of the most
    consequential cross-domain-transfer competencies in
    contemporary medicine and adjacent fields, and the CTSA T32 /
    TL1 program survey (N=50 programs) examined whether it is
    being taught systematically. The headline finding is the same
    structural pattern as the IPE case (122) at smaller scale:
    most programs name the right goals — collaboration, team
    science, multi/inter/cross-disciplinary training — but far
    fewer name the specific competency practices — a competency-
    based curriculum in just 6% of programs, experiential learning
    in 24%, program evaluation in 38% — that those stated goals
    imply. The picture is of a field that
    has converged on what interdisciplinary translation training
    should aim for, but where the operational practices lag the
    stated goals — the same enthusiasm-ahead-of-evidence pattern
    as IPE. The case is the workforce-training counterpart to
    Case 13 (the "17-year gap" between research evidence and
    practice adoption); the v2 frame is the gap between what
    implementation-science training programs *say* they do and
    what they *operationally* do.
  ],
  sections: (
    [
      Implementation science exists because the gap between
      research evidence and operational practice in medicine — the
      so-called "17-year gap" the v1 corpus documents at v1
      Case 13 — is large enough to constitute a discipline-level
      capability question. Moving validated evidence into clinical
      practice reliably is itself a competency that has to be
      designed, trained, and evaluated. The CTSA (Clinical and
      Translational Science Awards) program is the primary US
      mechanism for building that workforce, and the TL1 / T32
      programs are its training arm.#cn()
    ],
    [
      The case's evidence base is a 2021 survey of CTSA-funded TL1
      training programs (N=50) examining what those programs
      actually do at the operational level. The survey covers the
      stated goals — what the programs say they aim to develop —
      and the operational practices — what the programs do, in
      practice, to develop it. The stated-goals side is where the
      programs converge: most name collaboration, team science,
      and multi/inter/cross-disciplinary training as central
      objectives. The operational-practices side is where the
      pattern surfaces: far fewer programs name the specific
      competency practices as distinguishing features — a
      competency-based curriculum in just 6%, experiential learning
      in 24%, program evaluation in 38% — at the level the
      stated goals would imply.#cn()
    ],
    [
      The structural form is the same pattern IPE shows at field
      scale (Case 28): the field has converged on what
      interdisciplinary translation training should aim for, but
      the operational practices lag the stated goals. At the
      implementation-science training scale, the lag has specific
      consequences: programs that intend to produce graduates
      capable of moving evidence into practice often do not
      systematically assess whether they have produced that
      capability, and the field's measurement of its own
      workforce-development effectiveness is correspondingly
      sparse.#cn()
    ],
    [
      What the case teaches is the operational-practice gap as a
      designable target, not as a curricular failure. The low uptake of the specific
      competency practices is not an indictment of the programs
      that fall on the wrong side of it; it is a finding about the operational-
      infrastructure investment that competency-based training and
      assessment require, and that field-scale stated-goal
      convergence does not by itself produce. The pair with
      Case 13 (the 17-year gap) gives the case its frame: the
      implementation-science workforce is the recovery mechanism
      for the research-to-practice gap, and the operational
      capacity of that workforce is itself the capability the
      training programs are trying to build.#cn()
    ],
    [
      In the multidisciplinary-translation trio (Cases 40 +
      30 + 31), implementation-science training sits between
      team science (where the measurement is possible at program
      scale) and IPE (where the measurement is the field-scale
      gap). The trio teaches the enthusiasm-evidence-gap
      sub-competency from three angles — the program-scale
      success, the field-scale gap, and the operational-practice
      gap inside training programs themselves — and it teaches
      the subobjective *Judgment under inadequate evidence* (4.4) by
      example: practitioners designing implementation-science
      training programs have to decide what to build on incomplete
      evidence of what works, while the field is still building
      the evidence architecture that would let them decide
      better.
    ],
  ),
  beats: (
    "Implementation science = moving validated evidence into operational practice; CTSA TL1/T32 is the US training mechanism",
    "Survey N=50 CTSA-funded TL1 programs: most name collaboration / team science / multi-disc training as goals",
    "Far fewer name the specific competency practices — competency-based curriculum 6%, experiential learning 24%, program evaluation 38%",
    "Same enthusiasm-ahead-of-evidence pattern as IPE (Case 28) at smaller scale — operational practices lag stated goals",
    "Workforce-training counterpart to Case 13 ('17-year gap'); pair with Cases 40, 28 in the multidisciplinary-translation trio",
  ),
  approaches: (
    during: (
      [Specify the competency-based assessment instrument before launching the training program; the gap the survey documents is partly the result of stated competencies that were never operationalized into measurement.],
      [Build experiential learning into the operational structure of the program, not as an add-on; the survey found experiential learning named by only 24% of programs — one of the operational dimensions that lags.],
      [Plan program evaluation as a deliverable of the training program itself, with the cadence, instrument, and reporting venue named at launch.],
    ),
    after: (
      [Report the operational-practice gap honestly: stated goals are the convergence point, operational practices are the lag, and the lag is the addressable target.],
      [Treat the multidisciplinary-translation trio (Cases 40, 28, 41) as a unit; the three-angle teaching of the enthusiasm-evidence pattern is more useful than any single case can be.],
      [Connect the case explicitly to Case 13 (the 17-year gap): the implementation-science workforce is the recovery mechanism for that gap, and the operational capacity of the workforce is the capability that has to be built — which is the case's pedagogical point.],
    ),
  ),
  references: (
    [CTSA T32/TL1 program-goals study (2021), _Journal of Clinical and Translational Science_, PMC8826009.],
    [Morris, Wooding, & Grant (2011), "The answer is 17 years, what is the question: understanding time lags in translational research," _Journal of the Royal Society of Medicine_ — the original 17-year-gap source for Case 13.],
    [Brownson, Colditz, & Proctor (2018), _Dissemination and Implementation Research in Health_ (2nd ed.) — the broader implementation-science synthesis.],
    [v2 paired cases: Team-science training (121), IPE evidence gap (122).],
  ),
  quote: [Stated goals converge on the right targets. Operational practices lag. The gap is designable, not a curricular failure.],
  quote-source: "Editors' synthesis of the CTSA TL1 program-goals study (2021).",
  le-insight: [
    The CTSA TL1 program survey is the workforce-training
    instance of the enthusiasm-evidence gap pattern: most
    programs name competency-based training, assessment, and
    program evaluation as goals; the specific competency practices that would deliver on those
    goals are named by far fewer — a competency-based curriculum
    in just 6% of programs, experiential learning in 24%. The implementation-science workforce is the
    recovery mechanism for the 17-year research-to-practice gap;
    the case names the gap inside the recovery mechanism
    itself.
  ],
  lens-approach: [
    Implementation-science training is the frontier
    workforce-training case (induced 6.4; LENS D5/PT4). LENS
    uses it in Domain 5 (Navigating Sociotechnical Constraints)
    for the cross-disciplinary translation discipline; in
    Domain 4 (Test and Evaluation) for the enthusiasm-
    evidence-gap sub-competency; and in Domain 2 (Iterative
    Development) for the subobjective *Judgment under inadequate
    evidence* (4.4) as practitioners design training programs while
    the field-scale evidence is still being built. Pair with
    Cases 40, 28 as the multidisciplinary-translation trio;
    workforce-training counterpart to Case 13.
  ],
  literature-items: (
    [CTSA TL1 program-goals study (2021), _JCTS_],
    [Brownson, Colditz, & Proctor (2018), _Dissemination and Implementation Research in Health_],
    [Morris, Wooding, & Grant (2011), _JRSM_ — 17-year gap source],
  ),
  reflection-list: (
    [Identify a training program in your domain whose stated goals include competency-based assessment, program evaluation, or experiential learning. What proportion of those stated goals are operationalized into specific instruments, cadences, and reporting structures — and which are at the goal-statement layer only?],
    [Specify the competency-based assessment instrument you would build into the next iteration of an implementation-science training program. The survey found a competency-based curriculum named by just 6% of programs — the instrument is what is missing more than the intent; what is the instrument?],
    [The implementation-science workforce is the recovery mechanism for the 17-year research-to-practice gap (Case 13). What is the analog in your domain — the workforce whose operational capacity is the recovery for a documented systemic gap — and what is the case for investing in that workforce's training architecture?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 42 — australian-hospital-pharmacy-technician ----
#case(
  number: 42,
  slug: "australian-hospital-pharmacy-technician",
  title: "Australian Hospital-Pharmacy Technician Role Redesign",
  year: "2016",
  domains-list: ("hospital pharmacy", "healthcare workforce", "role redesign"),
  modes-code: "DNH",
  impact: "Expanded pharmacy-technician scope (final accuracy checking, drugs-of-addiction management, clinical support) reportedly cut average prescription turnaround from 18.5 to 12.3 minutes, increased throughput from 220 to 295 prescriptions per shift, and decreased dispensing errors from 2.1% to 1.2% — throughput and the safety metric moving in the same direction",
  kind: "intervention",
  scale: "small",
  evidence-source: "program-report",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "3.2",
  lens-anchor: "D5/PT3",
  leo-anchor: "LEO-1, LEO-5",
  summary: [
    Australian hospital pharmacies faced the structural problem most
    healthcare workforces meet at some point: the pharmacist's
    capacity was being absorbed by dispensing-accuracy checking, which
    crowded out the clinical work that requires pharmacist judgment.
    The 2016 Pharmacy Technician and Assistant Role Redesign project
    expanded pharmacy-technician scope to include final accuracy
    checking, drugs-of-addiction management, and clinical-support
    duties, with the design intent of freeing pharmacist capacity
    without degrading dispensing safety. The reported operational
    outcomes moved throughput and the safety metric in the same
    direction: average prescription turnaround fell from 18.5 to
    12.3 minutes, prescriptions per shift rose from 220 to 295, and
    dispensing errors declined from 2.1% to 1.2%. A 2021 _Journal of
    Pharmacy Practice and Research_ cross-sectional survey extended
    the evidence base into workforce-acceptance attitudes. The
    evidence-tier flag renders under the title: the operational
    figures come from a program-report rather than an independent
    multi-site audit. Future validation will continue on long-term
    safety durability and on whether the role-redesign pattern
    generalizes to other healthcare-workforce roles.
  ],
  sections: (
    [
      The structural problem the case sits inside is the C3 thread
      where monitoring or checking duties are loaded onto the
      role that needs to be doing the clinical work — and the
      checking work absorbs the capacity. Australian hospital
      pharmacies in the early 2010s were in this pattern: the
      pharmacist's day was consumed by dispensing-accuracy
      checking, and the clinical-support work that requires
      pharmacist judgment was crowded out. The induced 3.2 framing
      is the precise diagnosis: the unsupportable role is the
      pharmacist as primary accuracy-checker.#cn()
    ],
    [
      The redesign expanded pharmacy-technician scope to include
      final accuracy checking, drugs-of-addiction management, and
      clinical-support duties. The design move is not the
      addition of a checker but the redistribution of authority:
      the technician is given the role that the pharmacist was
      doing, with the training, certification, and supervisory
      structure to back it. The pharmacist is freed to do the
      clinical-judgment work that the system needed pharmacists
      for. The redesign is the C3 role-design intervention the
      induced framework calls for at the small tier.#cn()
    ],
    [
      The reported operational outcomes moved throughput and the
      safety metric in the same direction — an unusual combination
      in healthcare workforce changes. Average prescription
      turnaround fell from 18.5 to 12.3 minutes; prescriptions
      per shift rose from 220 to 295; dispensing errors fell from
      2.1% to 1.2%. The redesign did not simply trade safety for
      throughput. The 2021 _Journal of Pharmacy Practice and
      Research_ cross-sectional survey extended the evidence into
      the workforce-attitudes layer — what hospital pharmacists
      and technicians thought about the expanded scope and where
      acceptance was strongest.#cn()
    ],
    [
      The evidence-tier flag is load-bearing. The headline
      operational figures come from a program-report and rest on
      the project's internal measurement; the redesign was not
      subjected to an independent multi-site audit, and the
      magnitudes have not been replicated by a peer-reviewed
      controlled evaluation. The cross-sectional survey is
      peer-reviewed but measures attitudes rather than outcomes.
      The case is included because the pattern is teachable and
      the practitioner literature is consistent; the magnitudes
      should travel with the tier flag intact. Future validation
      will continue.#cn()
    ],
    [
      What the case teaches at the LENS layer is the role-design
      move as a sociotechnical-constraints intervention. The
      pharmacist-as-checker pattern was not a property of any
      individual; it was a property of the role architecture, and
      the redesign treated the architecture as the design
      variable. The Domain-5 frame applies: the work was to redraw
      the authority gradient and team-coordination boundary so
      that the system's capability — fast, safe dispensing plus
      pharmacist clinical judgment — emerged from the team rather
      than depending on the pharmacist's individual heroism. The
      case is also a Gap-5 echo: a non-US small-tier role-redesign
      success with documented operational outcomes.
    ],
  ),
  beats: (
    "Pharmacist capacity absorbed by dispensing-accuracy checking — clinical-support work crowded out",
    "Project expands pharmacy-technician scope: final accuracy checking, drugs-of-addiction management, clinical support",
    "Reported outcomes: turnaround 18.5→12.3 min; throughput 220→295 per shift; errors 2.1%→1.2%",
    "2021 JPPR cross-sectional survey extends evidence into workforce-acceptance attitudes",
    "Evidence tier: program-report magnitudes; no independent multi-site audit; future validation ongoing",
  ),
  approaches: (
    during: (
      [Diagnose the role-architecture failure before redesigning: which capability does the system need from which role, and where is checking work absorbing capacity that the system needs elsewhere.],
      [Redistribute authority, not just tasks: the technician's expanded scope must come with training, certification, and supervisory structure, not just a new line in the procedure manual.],
      [Specify both throughput and safety metrics before the redesign ships, so the joint movement (or trade-off) of both is what the report has to defend.],
    ),
    after: (
      [Treat the program-report figures as practice-synthesis evidence; carry the tier flag into any generalization to other sites or other workforce roles.],
      [Track durability of the safety metric over years, not weeks; the dispensing-error reduction is the load-bearing result and must hold under personnel rotation and volume changes.],
      [Use the workforce-acceptance evidence (2021 survey) to identify where the redesign meets resistance, and stage the rollout against that resistance rather than ignoring it.],
    ),
  ),
  references: (
    [SHPA / Australian hospital-pharmacy network (2016), "Pharmacy Technician and Assistant Role Redesign within Australian Hospitals Project," outcomes report.],
    [Anderson et al. (2021), "Perceptions of hospital pharmacists and pharmacy technicians towards expanding roles for hospital pharmacy technicians: a cross-sectional survey," _Journal of Pharmacy Practice and Research_, doi:10.1002/jppr.1697.],
    [Boughen, Sutton, Fenn, & Wright (2017), "Defining the Role of the Pharmacy Technician and Identifying Their Future Role in Medicines Optimisation," _Pharmacy_ 5(3):40 — UK companion analysis.],
    [Royal Pharmaceutical Society and SHPA practice statements on technician scope expansion — practitioner-tier framing the project sits inside.],
  ),
  quote: [The pharmacist-as-checker pattern was a property of the role architecture, not the pharmacist. The redesign treated the architecture as the design variable.],
  quote-source: "Editors' synthesis of the 2016 project report and Anderson et al. (2021).",
  le-insight: [
    The Australian pharmacy-technician redesign is a small-tier
    C3 role-redesign intervention with both throughput and
    safety moving in the same direction (turnaround, throughput,
    error rate). Evidence base is program-report plus a
    peer-reviewed attitudes survey; the operational magnitudes
    rest on the project's internal measurement and have not been
    independently audited at multi-site scale. Future validation
    ongoing.
  ],
  lens-approach: [
    Australian pharmacy-technician redesign is the C3 small-tier
    role-redesign case (induced 3.2 and 4.3; LENS D5/PT3).
    LENS uses it in Domain 5 (Navigating Sociotechnical
    Constraints) for LEO-5 — the work was to redraw the
    authority gradient — and in Domain 1 (Systems Analysis)
    for LEO-1, since the role-architecture diagnosis was the
    precondition for the redesign. Pair with Cases 32–132 for
    the small-tier C3 thread; Gap-5 echo as a non-US case.
  ],
  literature-items: (
    [SHPA project report (2016) — operational outcomes],
    [Anderson et al. (2021), _JPPR_ — workforce-acceptance survey],
    [Boughen et al. (2017), _Pharmacy_ — UK companion role-scope analysis],
  ),
  reflection-list: (
    [Identify a healthcare role in your setting where checking or monitoring work is absorbing the capacity the system needs for clinical judgment. What is the technician- or assistant-equivalent role redesign that would redistribute the authority, and what training and supervisory structure would it require?],
    [Specify the throughput and safety metrics you would commit to before the redesign ships, so the joint movement of both is what the report has to defend. The Australian project teaches because both metrics moved in the same direction — what would the equivalent be in your context?],
    [The operational figures are program-report tier. What independent or multi-site evidence would you require before treating the magnitudes as generalizable to other workforce roles (nursing, radiology, lab) or other countries?],
  ),
  courses: ("LEN 4", "LEN 5", "LEN 8"),
)

// ---- Case 43 — rwanda-mhealth-maternal-care-community ----
#case(
  number: 43,
  slug: "rwanda-mhealth-maternal-care-community",
  title: "Rwanda mHealth Maternal Care — Community Health Workers as the Capability Interface",
  year: "2013 – 2018",
  domains-list: ("global health", "mHealth", "maternal and newborn care"),
  modes-code: "HN",
  impact: "A Rwanda mHealth monitoring system equipped community health workers with mobile decision support for maternal and newborn care; the published evaluations were mixed — uptake of maternal and newborn services rose only where the system was paired with added training, supervision, and equipment, while a controlled national-survey time-series found no significant change from the system alone — with the technology designed to extend the CHW's diagnostic-and-referral role rather than replacing it",
  kind: "intervention",
  scale: "small",
  evidence-source: "peer-reviewed",
  evidence-flag: "mixed-evidence-tier",
  induced-anchor: "6.4",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-2, LEO-5",
  summary: [
    Between 2013 and 2018 Rwanda's Ministry of Health, working with
    research partners, deployed an mHealth monitoring system that
    placed mobile-phone-mediated decision support into the hands of
    community health workers (CHWs) responsible for maternal and
    newborn care, including surgical-site infection screening after
    Cesarean. Peer-reviewed evaluations were mixed: uptake rose only where
    the system was paired with added support (Ruton et al., 2018),
    while a controlled national-survey time-series found no
    significant change attributable to the system alone (Hategeka
    et al., 2019). The case sits at the small (program/study) tier
    and teaches a precise pattern: capability delivered at the
    periphery of the formal health system, with the technology
    designed to extend the CHW's diagnostic-and-referral role
    rather than replace it. The evidence-tier flag is honest — one
    peer-reviewed evaluation, with broader impact claims still
    resting partly on practitioner reporting. As a non-US
    small-tier case it pairs naturally with the PEPFAR
    Sub-Saharan training-modality comparison as the African
    workforce-capability evidence the corpus has been thin on, and
    it carries the standing "future validation ongoing" language
    into print rather than overclaiming what one study can settle.
  ],
  sections: (
    [
      Rwanda's health system, post-genocide, was rebuilt around
      community-level delivery: every village has elected CHWs who
      handle a defined scope of maternal, newborn, and child-health
      work and refer upward when their scope is exceeded. The
      capability question for the mHealth program was specific —
      could a mobile decision-support tool, in CHW hands, increase
      the uptake of maternal and newborn health services in a way
      that the prior paper-based workflow had not.#cn()
    ],
    [
      The system delivered structured prompts, reminders, and a
      referral pathway through the CHW's mobile phone, with an
      added screening flow for surgical-site infection after
      Cesarean delivery — a recognized post-discharge failure mode
      where signs first appear in the village, not the clinic. The
      design move worth naming is that the technology was scoped
      to extend the CHW's existing diagnostic-and-referral role,
      not to substitute for clinical judgment further up the
      chain. The CHW remained the capability interface; the phone
      was the cue and the record.#cn()
    ],
    [
      Ruton et al. (2018) report increased uptake of maternal
      and newborn health services only where the mHealth system was
      paired with additional training, supervision, and equipment;
      RapidSMS alone was ineffective. A controlled time-series on
      national survey data (Hategeka et al., 2019) found no
      significant change attributable to the system, largely for
      ceiling-effect reasons. The published evaluation is the
      anchor finding; downstream reporting (MIT News 2022 and
      subsequent AI-augmented maternal-care work) describes the
      program's continuation and adjacent developments but is
      journalism-tier, not investigation-grade. The case carries its evidence-tier flag honestly: one peer-reviewed evaluation does not close the question of long-term outcome
      durability or generalization to other low-resource settings.#cn()
    ],
    [
      The teaching point is the location of capability. The mHealth
      tool did not centralize the work; it instrumented the
      periphery. The decisive variables — household trust in the
      CHW, the CHW's standing in the village, the referral
      pathway upward — sit in the sociotechnical layer the tool
      could support but not constitute. This is the inverse of
      capability deployments that try to relocate judgment to the
      center; Rwanda's system kept judgment where it already was
      and used the technology to make that judgment more reliable
      and more visible to the formal health system.#cn()
    ],
    [
      What survives the evidence-tier flag is the structural
      pattern: capability extension at the frontline, with
      mobile-mediated decision support designed around an existing
      role, in a low-resource setting where the formal health
      system cannot reach every birth. Future validation ongoing —
      both replication in other African and South Asian settings,
      and longer-term outcome data linking process uptake to
      maternal and newborn outcomes downstream. The case is
      included with the flag intact and pairs with the PEPFAR
      cross-country modality comparison as the Sub-Saharan
      workforce-capability evidence the v2 corpus needs.
    ],
  ),
  beats: (
    "Rwanda Ministry of Health mHealth program (2013–2018) puts mobile decision support in CHW hands for maternal/newborn care",
    "Tool scoped to extend the CHW's diagnostic-and-referral role, not relocate judgment to the center",
    "Ruton et al. (2018) find uptake rose only where RapidSMS was paired with added support; Hategeka et al. (2019) find no significant change on national survey data",
    "Mixed-evidence tier: peer-reviewed but conditional and null findings; durability and generalization remain open",
    "Pairs with PEPFAR (Sub-Saharan training-modality comparison) as the African workforce-capability evidence base",
  ),
  approaches: (
    during: (
      [Scope the tool to extend an existing frontline role rather than substitute for it; the CHW's village standing is the load-bearing capability the technology can support but cannot create.],
      [Instrument the post-discharge failure modes that the formal health system cannot see — surgical-site infection after Cesarean is the named example — so the tool turns village-level observation into health-system-visible signal.],
      [Carry the evidence-tier flag through the deployment documentation: one peer-reviewed evaluation is the anchor finding, not the closure of the question.],
    ),
    after: (
      [Track uptake of the targeted services as the primary process measure, and link to longer-term maternal and newborn outcomes as the data matures; resist treating short-term process gains as outcome evidence.],
      [Report the CHW workload and tool-acceptance trajectory separately from the headline uptake figures; the periphery-extension pattern only holds if the frontline role remains sustainable.],
      [When asked whether the pattern generalizes, name the conditions Rwanda's system supplies (village-level CHW network, post-conflict institutional rebuild, single payer) before asserting transfer to other low-resource settings.],
    ),
  ),
  references: (
    [Hategeka, C., Ruton, H., Law, M. R., et al. (2019), "Effect of a community health worker mHealth monitoring system on uptake of maternal and newborn health services in Rwanda," _Global Health Research and Policy_, PMC6429813.],
    [Rwanda Ministry of Health, community health program documentation and CHW scope-of-practice guidance, 2013–2018.],
    [MIT News (2022), reporting on subsequent AI-augmented maternal-care work in Rwanda — journalism-tier companion to the peer-reviewed evaluation.],
    [Cross-reference: Case 18 (PEPFAR HIV training-modality comparison) for the paired Sub-Saharan workforce-capability evidence.],
  ),
  quote: [The mHealth tool did not centralize the work. It instrumented the periphery — and kept judgment where it already was.],
  quote-source: "Editors' synthesis of Hategeka et al. (2019), Ruton et al. (2018), and the Rwanda CHW program documentation.",
  le-insight: [
    Rwanda mHealth is a small-tier capability-extension case at
    the frontline: technology designed around an existing CHW
    role, with peer-reviewed evaluation showing uptake gains only when
    the system was paired with added support, and a controlled
    national-survey series showing no significant change from the
    system alone. The evidence-tier flag is load-bearing — one study does not close the
    durability or generalization question, and the broader
    impact claims rest partly on practitioner reporting. Future
    validation ongoing.
  ],
  lens-approach: [
    Rwanda mHealth is the small-tier non-US frontline-capability
    case (induced 6.4; LENS D5/PT4). LENS uses it in Domain 5
    (Navigating Sociotechnical Constraints) for the periphery-
    extension pattern — the technology supports the CHW's
    diagnostic-and-referral role without relocating judgment to
    the center — and in Domain 2 (Iterative Development) for
    the scope-the-tool-to-the-role design discipline. Direct
    pair with Case 201 (PEPFAR Sub-Saharan training-modality
    comparison) as the African workforce-capability evidence
    the v2 corpus needs.
  ],
  literature-items: (
    [Hategeka et al. (2019), _Global Health Research and Policy_; Ruton et al. (2018), _Health Policy and Planning_],
    [Rwanda MoH community-health program documentation],
    [MIT News (2022) on subsequent AI-augmented maternal-care work],
  ),
  reflection-list: (
    [Identify a frontline capability role in your context (CHW, field technician, ward nurse, line supervisor). What would it mean to scope a mobile decision-support tool to extend that role rather than relocate judgment to the center? Which failure modes only the frontline can see should the tool surface upward?],
    [The case rests on one peer-reviewed evaluation with broader claims supported by practitioner reporting. What is the minimum additional evidence — durability follow-up, replication in a second setting, linkage to maternal/newborn outcomes — you would require before treating the uptake finding as settled for a transfer decision?],
    [Specify the village-level and health-system-level instrumentation you would put in place for a comparable deployment so that the frontline-extension pattern can be evaluated against an alternative deployment that relocates judgment to the clinic level.],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)

// ---- Case 44 — japan-pmda-pre-approved-change ----
#case(
  number: 44,
  slug: "japan-pmda-pre-approved-change",
  title: "Japan PMDA — Pre-Approved Change Management as Regulatory Architecture for AI/SaMD",
  year: "2014 – present",
  domains-list: ("medical-device regulation", "AI/SaMD", "Japan"),
  modes-code: "GN",
  impact: "Japan's 2019 PMD Act amendment (enforced September 2020) introduced IDATEN (Improvement Design within Approval for Timely Evaluation and Notice): a pre-agreed device-improvement plan approved at initial approval, streamlined review for in-scope changes. The 2025 scoping review of PMDA-approved AI radiology software documents transparency variability — hedge preserved",
  kind: "intervention",
  scale: "big",
  evidence-source: "program-report",
  evidence-flag: "preprint-tier",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT6",
  leo-anchor: "LEO-5, LEO-3",
  summary: [
    Japan's Pharmaceuticals and Medical Devices Agency (PMDA)
    operates one of the regulatory regimes most explicitly
    designed for the AI/Software-as-a-Medical-Device (SaMD)
    update problem. A 2019 amendment to the Pharmaceutical and
    Medical Device Act (enforced September 2020) introduced
    conditional early approval and IDATEN (Improvement Design
    within Approval for Timely Evaluation and Notice): a
    company can submit a proposed device-improvement plan at
    initial submission; once the plan is approved,
    subsequent changes within its scope receive streamlined
    review rather than full re-approval. The DASH for SaMD
    initiative supports faster reviews and earlier application.
    A 2025 scoping review on PMDA-approved AI radiology software
    documents transparency variability across approvals — a
    load-bearing hedge the case preserves. The teaching point
    is structural: the regulator designed change-control as a
    deliverable rather than defaulting to "approve once, then
    watch," which is the governance failure pattern that
    Epic-Sepsis-class deployments surface. Evidence-tier flag is
    preprint-tier for the most recent systematic analyses; future
    validation ongoing on outcome durability across approved
    devices.
  ],
  sections: (
    [
      Medical-device regulation evolved for hardware whose design
      is largely fixed at approval. AI/SaMD breaks that assumption:
      a learning model can be updated, a training-data
      distribution can shift, and the device approved on Tuesday
      can be a meaningfully different device by Friday. The
      governance question for any regulator is whether the
      approval architecture handles the update or defaults to
      approve-once-then-watch. Japan's PMDA chose the former and
      built the architecture explicitly.#cn()
    ],
    [
      The 2014 Pharmaceutical and Medical Device Act laid the
      groundwork; the 2019 amendment introduced conditional early
      approval and the IDATEN system (Improvement Design within
      Approval for Timely Evaluation and Notice). Under IDATEN a
      manufacturer submits, alongside the
      initial approval package, a structured description of the
      modifications the manufacturer expects to make over the
      device's life — with the test and validation plan that
      will accompany each modification. Once the improvement plan
      is approved, subsequent changes within its scope receive
      streamlined regulatory review rather than full
      re-approval.#cn()
    ],
    [
      The DASH for SaMD initiative complements IDATEN by supporting
      faster reviews and earlier application of SaMD products,
      anchoring the change-control architecture in a workflow that
      can keep pace with iteration. Together IDATEN and DASH are
      the regulator-side design for delegation-with-revocation:
      the deployer is delegated the modification authority within
      a pre-agreed scope, and the regulator retains the authority
      to review and revoke. The structure is the inverse of
      static-approval regimes that either block iteration or fail
      to track it.#cn()
    ],
    [
      The 2025 medRxiv scoping review on PMDA-approved AI
      radiology software documents transparency variability
      across approvals — what is published about each device's
      training data, intended use, and post-approval modification
      history is not uniform. The hedge is load-bearing: IDATEN is
      a structural improvement in regulatory architecture, but
      the per-approval transparency the framework enables varies
      and has been documented as a research finding rather than
      assumed as a feature. The 2021 medRxiv-then-published
      systematic review on PMDA AI/ML medical devices through
      2020 supplies the prior baseline.#cn()
    ],
    [
      The case pairs structurally with the Epic-Sepsis governance
      gap earlier in the corpus and with the FDA's evolving
      change-control SaMD policy. PMDA shows what designing
      change-control as a deliverable looks like at the regulator
      layer; Epic-Sepsis shows what happens when neither the
      vendor nor the deploying health system holds the change-
      control deliverable explicitly. The preprint-tier flag is
      honest: the regulatory framework is documented in
      program-report sources; the per-approval transparency
      analyses are preprint or recent. Future validation ongoing
      on outcome durability across approved devices.
    ],
  ),
  beats: (
    "2014 PMD Act lays the groundwork; 2019 amendment introduces conditional early approval and IDATEN",
    "IDATEN: manufacturer submits pre-agreed modification scope at initial approval; in-scope changes get streamlined review",
    "DASH for SaMD initiative supports faster reviews and earlier application — pace-matched architecture for iteration",
    "2025 scoping review documents transparency variability across PMDA-approved AI radiology software — hedge preserved",
    "Pairs with Epic-Sepsis governance gap and FDA's evolving SaMD policy as the non-US regulator-designed change-control case",
  ),
  approaches: (
    during: (
      [Treat post-approval change control as a deliverable at the initial-approval submission, not a downstream addendum: the modification scope, test plan, and revocation conditions should be on the approval package from the start.],
      [Specify the delegation boundary explicitly — what the manufacturer can modify without re-approval and what triggers a full review — so the delegation-with-revocation structure is operationally clear to both parties.],
      [Carry the preprint-tier evidence flag through any policy decision the scoping review supports; the regulatory framework is documented, but the per-approval transparency analyses are recent.],
    ),
    after: (
      [Audit transparency across approvals — what is published per device about training data, intended use, modification history — as a separate program-evaluation question; the 2025 scoping review documents this variability as a research finding.],
      [Use IDATEN as the structural contrast with Epic-Sepsis-class deployments: the regulator-designed change-control deliverable is the inverse of the static-approval-plus-watch pattern.],
      [When importing the IDATEN pattern into another jurisdiction, name what the Japanese regulatory institution supplies (centralized agency capacity, established conditional-approval precedent) before asserting transfer.],
    ),
  ),
  references: (
    [Kikuchi, et al. (2025), "Scoping Review of Regulatory Transparency in AI-based Radiology Software: Analysis of PMDA-approved SaMD Products," medRxiv 2025.10.02.25336333.],
    [Aoki, T., et al. (2021 → published), "Regulatory-approved Deep Learning/Machine Learning-Based Medical Devices in Japan as of 2020: A Systematic Review," PMC9931274.],
    [Pharmaceuticals and Medical Devices Agency of Japan, PMD Act amendment (2019) and DASH for SaMD program documentation.],
    [Cross-reference: "A decade of review in global regulation and research of artificial intelligence medical devices (2015–2025)," PMC12310608 — comparative regulatory context.],
  ),
  quote: [The PMDA designed change-control as a deliverable rather than defaulting to approve once, then watch.],
  quote-source: "Editors' synthesis of the PMD Act amendment and the PMDA SaMD scoping reviews.",
  le-insight: [
    PMDA's IDATEN and DASH for SaMD are the non-US regulatory
    architecture for AI/SaMD change control: the modification
    scope is pre-agreed at initial approval, in-scope changes
    get streamlined review, and the delegation-with-revocation
    structure is explicit. The 2025 scoping review documents
    transparency variability across approvals — load-bearing
    hedge preserved. Preprint-tier flag for the recent
    systematic analyses; future validation ongoing.
  ],
  lens-approach: [
    PMDA is the non-US regulator-designed change-control case
    (induced 5.4; LENS D5/PT6). LENS uses it in Domain 5
    (Navigating Sociotechnical Constraints) for the
    delegation-with-revocation structure and in Domain 3 (Human-System Collaboration) for the subobjective *Delegation with revocation* (3.3) — the regulator delegates
    in-scope modification authority and retains revocation,
    rather than defaulting to static approval. Pairs with the
    Epic-Sepsis governance gap as the structural contrast
    case.
  ],
  literature-items: (
    [Kikuchi et al. (2025), medRxiv — PMDA AI radiology software scoping review],
    [Aoki et al. (2021/PMC9931274) — PMDA AI/ML medical devices systematic review],
    [PMDA, PMD Act amendment (2019) and DASH for SaMD documentation],
  ),
  reflection-list: (
    [Identify an AI/SaMD-adjacent product in your context whose post-deployment modification is anticipated. What would a IDATEN-style submission look like — the pre-agreed modification scope, the per-modification test plan, the revocation conditions — and which party currently holds each element?],
    [The case rests on program-report sources for the framework and preprint analyses for the per-approval transparency findings. What is the minimum additional evidence you would require — outcome durability across approved devices, independent transparency audits — before treating IDATEN as a settled best-practice template?],
    [Specify the delegation-with-revocation boundary you would write for a deploying organization adopting a SaMD product: which modifications can ship under the pre-agreed scope, which trigger re-review, and what evidence the deployer must publish at each modification event.],
  ),
  courses: ("LEN 5", "LEN 7", "LEN 8"),
)
