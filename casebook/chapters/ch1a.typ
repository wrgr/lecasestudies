// ============================================================
// Part I — Healthcare & Patient Safety · What Fails (Chapter 1)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part I — Healthcare & Patient Safety",
  number: "1",
  title: "Healthcare & Patient Safety — What Fails",
  subtitle: "When care systems assume capability that was never specified, trained, or measured.",
  epigraph: [The harm arrived through the workflow, not around it.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Case 1 — therac-25 ----
#case(
  number: 1,
  slug: "therac-25",
  title: "Therac-25",
  year: "1985 – 1987",
  domains-list: ("healthcare", "tech"),
  modes-code: "HDG",
  impact: "Six known massive radiation overdoses; at least three deaths; canonical case in software safety engineering",
  diagram: dgm.dgm-therac,
  kind: "failure",
  summary: [
    The Therac-25, a radiation-therapy machine, massively overdosed at
    least six patients between 1985 and 1987, killing at least three. Its
    predecessors used hardware interlocks to stop the high-energy beam from
    firing without its target in place; to save cost, the Therac-25 removed
    them and trusted software — adapted from the older machines and never
    engineered for safety — to keep the beam modes separated. A race
    condition let a fast operator trigger the full beam with no target,
    while the console showed only a meaningless "Malfunction 54." Leveson
    and Turner's 1993 investigation, the founding case of software-safety
    engineering, found a systemic failure: a safeguard removed with nothing
    put in its place. The lesson — a safeguard you delete does not remove
    the hazard; it relocates it to whatever you failed to build.
  ],
  sections: (
    // -- Background --
    [
      The Therac-25 was a radiation-therapy linear accelerator. Its
      predecessors used hardware interlocks that physically blocked the
      high-energy beam unless the spreading target was confirmed in place — a
      mechanical backstop that could not be talked out of stopping the beam.
      To save cost and simplify the machine, the Therac-25 removed them and
      trusted software — adapted from the older machines and never engineered
      from the ground up for safety-critical use — to keep its two beam modes,
      a hundredfold apart in energy, safely separated. The safety case
      migrated silently from steel to code.#cn()
    ],
    // -- What Happened --
    [
      Between 1985 and 1987 the machine massively overdosed at least six
      patients. A race condition the engineers never knew about meant that
      if an operator entered a prescription, caught a mistake, and corrected
      it within about eight seconds — the speed an experienced operator
      naturally reaches — the full-power beam could fire with no target in
      place, delivering up to a hundred times the intended dose. The console
      showed only "MALFUNCTION 54," a code with no documented meaning, and
      offered to proceed; operators, assured the machine was safe and long
      accustomed to its cryptic faults, did. At least three patients died of
      the radiation burns.#cn()
    ],
    // -- The Investigation --
    [
      When patients reported searing pain, the manufacturer first insisted
      an overdose was impossible and treated each report as an isolated
      complaint rather than a signal. Nancy Leveson and Clark Turner's 1993
      investigation — the founding case study of software-safety engineering
      — found the fault was systemic rather than a single bug: overconfidence
      in software, removal of the hardware safeguards without replacement,
      meaningless error messages, reused code never audited for safety, no
      independent review of the safety-critical logic, and an
      incident-reporting posture that dismissed the early warnings instead of
      compounding them into evidence.#cn()
    ],
    // -- The Capability Gap --
    [
      The hardware interlock had not been redundant; it *was* the safety
      case, the one thing standing between a typing error and a lethal dose.
      Removing it put nothing in its place — no verified software check, no
      informed operator action, no independent monitor watching the beam. The
      operator stayed nominally in the loop but lost any means to detect what
      the machine was doing wrong, since the only feedback was a code that
      told them nothing, which made the human presence a formality rather than
      a safeguard. The question capability engineering would have forced —
      *what function now carries the interlock's load?* — was never asked of
      the redesign.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Therac-25 reshaped safety-critical software practice, making the case
      by counterexample for independent hazard analysis, safeguards that do
      not all rest on the same software, error messages that say what is wrong
      so the operator can act, and treating field reports as evidence to be
      aggregated rather than complaints to be closed. It remains the canonical
      teaching case across software, medical-device, and systems-safety
      curricula.#cn() Its lesson is exact and portable: a safeguard you remove
      does not remove the hazard it guarded — it relocates the hazard to
      whatever you failed to put in its place, and waits there.
    ],
  ),
  beats: (
    "Hardware interlocks removed to save cost; safety case migrated silently into software",
    "Race condition let fast operators fire full beam with no target",
    "Manufacturer denied harm; Leveson and Turner found systemic, not single-bug, failure",
    "Interlock was the safety case; nothing took its load when removed",
    "Founded software-safety engineering; deleted safeguards relocate hazard to whatever replaces them",
  ),
  references: (
    [N. G. Leveson & C. S. Turner, "An Investigation of the Therac-25 Accidents," _IEEE Computer_ 26(7): 18–41 (1993). #link("https://doi.org/10.1109/MC.1993.274940")[doi:10.1109/MC.1993.274940] — the removed hardware interlocks and the adapted software.],
    [Leveson & Turner (1993) — the race condition, the uninformative "Malfunction 54", overdoses up to ~100×, six accidents, and at least three deaths.],
    [Leveson & Turner (1993); N. G. Leveson, _Safeware: System Safety and Computers_ (Addison-Wesley, 1995) — the manufacturer's denial and the systemic findings.],
    [N. G. Leveson, _Engineering a Safer World: Systems Thinking Applied to Safety_ (MIT Press, 2011) — why removing a safeguard requires explicitly reassigning its safety function.],
    [The case's role in medical-device software regulation and software-safety practice (FDA software guidance; IEC 62304 lineage); see also #link("https://ethicsunwrapped.utexas.edu/case-study/therac-25")[Ethics Unwrapped, UT Austin].],
  ),
  quote: [Therac-25 illustrates the dangers of relying on software safety controls without rigorous engineering practices.],
  quote-source: "Paraphrasing Leveson & Turner, IEEE Computer, 1993",
  le-insight: [
    Therac-25 is the moment when removing the human safety margin became
    visible as a design choice. The hardware interlock was not redundant —
    it was the safety case. When it was removed, no equivalent capability
    was put in its place. The operator was retained in the system but
    stripped of the ability to detect what it was doing wrong. Capability
    engineering would have asked, before removing the interlock, *what
    function takes its load?*
  ],
  lens-approach: [
    LENS frames Therac-25 as a *Design-Out* failure made visible through
    Interface and Governance pathologies. Studio projects in LEN 5 ask
    students to produce capability-load diagrams tracing every safety
    function to a hardware backstop, a software check, or a trained
    operator action with the information needed to perform it. LEN 7
    examines incident reporting as governance.
  ],
  literature-items: (
    [Leveson, _Engineering a Safer World_ (2011) — STAMP for medical devices],
    [Rasmussen (1997), "Risk management in a dynamic society"],
    [Perrow, _Normal Accidents_ (1984)],
  ),
  reflection-list: (
    [Identify a system in your domain that migrated a safety function from hardware to software. Where did the human-capability load go, and who is accountable for sustaining it?],
    [Therac-25 operators saw "MALFUNCTION 54" and continued treatment. Redesign that interface using LEN 2 principles so that the operator's correct action is the easiest action.],
    [The Therac-25's safety-critical software was inherited from earlier machines and never re-audited. Identify reused code in a system you build that now carries a load it was never written for, and specify the review it should have received.],
  ),
  approaches: (
    during: (
      [Before deleting any hardware interlock, write down the safety function it performs and explicitly reassign that function to a verified software check, an independent monitor, or an informed operator action.],
      [Do not let safety rest entirely on one software path; require an independent channel that does not share the same code, so a single defect cannot defeat the whole safety case.],
      [Specify error messages as a safety deliverable — each fault code must say what is wrong and what the operator should do, never offer to proceed past an undiagnosed condition.],
    ),
    after: (
      [Treat every field report of unexpected harm as evidence to be aggregated, not a complaint to be closed, with a standing path to halt the device when a pattern emerges.],
      [Audit any safety-critical code reused from a prior system against the new hazard set, since assumptions safe in the old context may be lethal in the new one.],
      [Instrument the machine so an independent monitor can detect a beam fired without its target and stop it, restoring the interlock's function even where the operator cannot see the fault.],
    ),
  ),
  courses: ("LEN 5", "LEN 7", "LEN 2"),
  scale: "big",
  induced-anchor: "3.1",
  lens-anchor: "D3/PT3",
  clo-anchor: "CLO-3",
)

// ---- Case 2 — ehr-cpoe-implementation ----
#case(
  number: 2,
  slug: "ehr-cpoe-implementation",
  title: "EHR / CPOE Implementation",
  year: "2005 – present",
  domains-list: ("healthcare",),
  modes-code: "HDG",
  impact: "~$30B federal investment under HITECH; documented increase in pediatric ICU mortality post-CPOE at one institution; ongoing usability harm at scale",
  diagram: dgm.dgm-ehr,
  kind: "failure",
  summary: [
    The 2009 HITECH Act poured roughly \$30 billion into accelerating
    electronic health records, and adoption surged — but the systems had
    been built to billing and administrative specifications, not clinical
    workflow. New categories of harm followed. A disputed but canonical 2005
    study found that deploying a commercial order-entry (CPOE) system at one
    pediatric ICU was associated with a near-doubling of mortality; later
    deployments showed mixed or improved results, yet the warning stuck. A
    2023 survey across 200-plus hospitals found EHR usability is clinicians'
    top complaint, and that usability scores track patient-safety outcomes.
    Specific harms recur — a missed abnormal result hidden behind a default,
    a fatal overdose an unactivated alert would have caught. There is still
    no regulatory framework monitoring EHR safety. It is the book's live
    interface-mismatch case.
  ],
  sections: (
    // -- Background --
    [
      The 2009 HITECH Act authorized roughly \$30 billion in incentives to
      accelerate electronic health record adoption, and adoption surged. But
      the systems clinicians now had to use had been built to administrative
      and billing specifications, not to clinical workflow or human-factors
      specifications — a mismatch baked in before the first order was
      entered.#cn() Because the incentives rewarded adoption rather than
      usability, hospitals raced to install whatever cleared the bar, and the
      specification gap propagated to the bedside at national scale before
      anyone had to demonstrate that the tools supported the work of care
      rather than merely the work of billing.
    ],
    // -- What Happened --
    [
      New categories of harm appeared alongside the new tools. A 2005 study
      reported that deploying a commercial computerized order-entry (CPOE)
      system at one pediatric ICU was associated with a near-doubling of
      mortality — a single-institution result that provoked debate and that
      later deployments elsewhere did not reproduce, but that became
      canonical as a warning that powerful tools without workflow integration
      can disrupt care at the moment of greatest acuity, when the seconds the
      interface adds to an order are the seconds a critical patient does not
      have.#cn() Specific harms
      recur: a cancer treatment delayed for years because a default surfaced
      an old normal result instead of a recent abnormal one; a baby killed by
      an overdose an alert would have caught had it been switched on — each a
      case where the interface's defaults and toggles, not the clinician's
      competence, determined whether the right information reached the
      decision.#cn()
    ],
    // -- The Investigation --
    [
      A 2023 KLAS Arch Collaborative survey across more than two hundred
      hospitals found EHR usability is consistently the top complaint of
      physicians, nurses, and pharmacists, and that end-user experience
      scores correlate with patient-safety outcomes — turning a stream of
      anecdotes into longitudinal evidence that usability is now itself a
      patient-safety variable. Spanning some two hundred hospitals, the survey
      converts what could be dismissed as one site's grievance into a
      reproducible signal, the kind of measurement that makes an interface
      problem legible as a safety problem rather than a satisfaction one.#cn()
    ],
    // -- The Capability Gap --
    [
      EHR/CPOE is the canonical ongoing case of an interface designed for one
      set of requirements and deployed against another. The systems work for
      billing and administration because that was the design constraint; they
      fail for clinical workflow because clinical workflow was not. Decades
      and tens of billions of dollars later, usability remains among the
      largest contributors to in-system harm in U.S. healthcare — a cost that
      persists precisely because it was never a design requirement and so was
      never engineered out, only worked around by clinicians absorbing the
      friction shift after shift.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Usability and safety have risen on the agenda — AMA/Pew/MedStar
      usability work, KLAS benchmarking, safety-focused design guidance — but
      there is still no regulatory framework that monitors deployed EHR
      safety the way drugs or devices are monitored. The lesson is that
      buying the tool is not the same as engineering the capability: an
      interface deployed against the wrong specification keeps extracting a
      cost no one is formally counting, and without a monitoring regime the
      harm stays diffuse — spread across millions of encounters, attributable
      to no single failure, and therefore easy for the system to keep paying
      indefinitely.#cn()
    ],
  ),
  beats: (
    "HITECH poured thirty billion into EHRs built to billing specifications, not clinical workflow",
    "Disputed 2005 CPOE study tied pediatric ICU mortality to deployment; default and alert harms recurred",
    "A 2023 KLAS survey across hundreds of hospitals tied usability scores to patient safety outcomes",
    "Systems work for billing because that was the specification; clinical workflow was never engineered",
    "Usability guidance has matured but no regulatory regime monitors deployed EHR safety at scale",
  ),
  references: (
    [Health Information Technology for Economic and Clinical Health (HITECH) Act (2009) — the ~\$30B EHR incentive program.],
    [Y. Han et al., "Unexpected Increased Mortality After Implementation of a Commercially Sold CPOE System," _Pediatrics_ 116(6): 1506–1512 (2005) — the disputed pediatric-ICU mortality result.],
    [KLAS Arch Collaborative, EHR usability and safety surveys (2023) — usability as the top clinician complaint, correlated with safety outcomes.],
    [D. Sittig & H. Singh, "Defining health information technology-related errors," and related EHR-safety work (2011–2013).],
    [AHRQ Patient Safety Network, EHR-related harm cases — the default-result delay and the unactivated-alert overdose.],
    [AMA / Pew / MedStar, _EHR Usability and Patient Safety_ (2018); R. Wachter, _The Digital Doctor_ (2015).],
  ),
  quote: [Reports of new types of errors directly related to EHR implementation — errors that can compromise quality of care and patient safety — have emerged.],
  quote-source: "Paraphrasing Sittig & Singh, EHR-related safety risks, 2013",
  le-insight: [
    EHR/CPOE is the canonical ongoing case of an interface designed for
    one set of requirements and deployed against another. The systems
    work for billing and administration. They fail for clinical workflow
    because clinical workflow was not the design constraint. Forty
    billion dollars later, usability remains the single largest
    contributor to in-system harm in U.S. healthcare.
  ],
  lens-approach: [
    LENS treats EHR/CPOE in LEN 7 as the live, ongoing example of
    Design-Out and Interface failure under governance opacity, in LEN 2
    as a human-AI teaming problem (alert fatigue, default surfacing), and
    in LEN 9 as a computational systems problem (the alerting
    architecture itself is a learnable model). The Han 2005 pediatric
    ICU finding is the durable warning; the KLAS 2023 surveys across
    two hundred hospitals are the contemporary, longitudinal evidence
    that usability is now itself a patient-safety variable.
  ],
  literature-items: (
    [Sittig & Singh (2013), Safety-related EHR risks],
    [AMA / Pew / MedStar (2018), _EHR Usability and Patient Safety_],
    [Wachter, _The Digital Doctor_ (2015)],
  ),
  reflection-list: (
    [What is the equivalent system in your domain that was designed for one specification and deployed against another? How would you measure the harm?],
    [Design the regulatory architecture that would surface EHR safety harms at scale. Be specific about signal, threshold, and authority.],
    [The Han 2005 mortality result was disputed; the 2023 KLAS surveys are consistent across two hundred hospitals. What ongoing measurement architecture would have to exist for the equivalent emerging clinical-AI deployment in your domain to be evaluated honestly while in use?],
  ),
  approaches: (
    during: (
      [Write clinical workflow and human-factors performance into the procurement specification, so a system that serves billing but not bedside care cannot clear the buy.],
      [Validate defaults, alerts, and result-surfacing against real clinical scenarios before deployment, since it was the default and the unactivated alert — not clinician skill — that determined the harm.],
      [Tie any adoption incentive to demonstrated usability, so the money rewards a tool that supports care rather than merely one that is installed.],
    ),
    after: (
      [Stand up a post-deployment safety-monitoring regime for fielded EHRs comparable to how drugs and devices are surveilled, with thresholds and authority to force changes.],
      [Track end-user experience scores as a patient-safety variable, using the cross-institution evidence that usability correlates with outcomes.],
      [Audit recurring interface-driven harms — surfaced defaults, disabled alerts — and feed them back into vendor design requirements rather than absorbing them as clinician burden.],
    ),
  ),
  courses: ("LEN 7", "LEN 2", "LEN 9"),
  scale: "big",
  induced-anchor: "3.1",
  lens-anchor: "D3/PT3",
  clo-anchor: "CLO-3",
)

// ---- Case 3 — watson-for-oncology-delegation-marketed ----
#case(
  number: 3,
  slug: "watson-for-oncology-delegation-marketed",
  title: "Watson for Oncology — Delegation Marketed Ahead of Capability",
  year: "2013 – 2018",
  domains-list: ("healthcare/oncology", "commercial AI", "procurement"),
  modes-code: "DKN",
  impact: "IBM marketed Watson for Oncology with tumor-board concordance rates as high as 96%; STAT News investigation (Ross & Swetlitz, 2017–2018) and internal IBM documents documented unsafe and incorrect cancer-treatment recommendations and that the system was trained on a small number of synthetic cases rather than real patient outcomes; hospitals worldwide had purchased the tool on the marketed concordance claim",
  kind: "failure",
  scale: "big",
  evidence-source: "journalism",
  evidence-flag: "journalism-tier",
  induced-anchor: "2.4",
  lens-anchor: "D3/PT6",
  clo-anchor: "CLO-1, CLO-4",
  summary: [
    Watson for Oncology was IBM's heavily marketed clinical-decision-
    support system, sold to hospitals worldwide as a cancer-
    treatment recommendation engine whose concordance with expert
    tumor boards was advertised at rates as high as 96%. The
    capability the system was sold under was AI-grade treatment
    recommendation across cancer types, delivered with the
    institutional credibility of IBM and MD Anderson partnerships.
    The capability the system actually carried — documented in the
    investigative reporting by Casey Ross and Ike Swetlitz at STAT
    News through 2017 and 2018, drawing on leaked IBM internal
    documents — was substantially smaller. Watson was trained on a
    small number of synthetic cases curated by Memorial Sloan
    Kettering oncologists rather than on real patient outcomes,
    generated unsafe and incorrect recommendations in some
    documented cases, and the internal IBM record showed engineers
    raising concerns about the gap between marketed concordance
    claims and what the system actually delivered. Hospitals
    around the world had purchased Watson on the marketed
    capability; major deployments at MD Anderson and elsewhere
    were later wound down. The case is the canonical instance in
    the AI-delegation typology of capability marketed ahead of
    capability validated. The evidence-tier flag rendered under
    the title is binding: STAT News journalism is the primary
    public source, and the academic record cites it secondarily.
    "Future validation ongoing" is the standing language;
    independent peer-reviewed evaluation of Watson for Oncology's
    operating accuracy at the level the marketing claimed was
    never produced.
  ],
  sections: (
    [
      Watson for Oncology was the most publicly visible commercial
      clinical-AI deployment of the mid-2010s. IBM had positioned
      Watson — originally the Jeopardy-winning question-answering
      system — as a healthcare engine after the 2011 Jeopardy
      performance, and oncology was the flagship domain. The
      product was sold as a cancer-treatment recommendation
      system: a clinician would enter the patient's case, Watson
      would query its knowledge base against the training data
      provided by Memorial Sloan Kettering oncologists, and the
      system would return ranked treatment recommendations
      annotated with evidence citations. The marketed capability
      was treatment recommendation that concorded with expert
      tumor boards at rates as high as 96%. Hospitals worldwide
      purchased the system on that claim.#cn()
    ],
    [
      Casey Ross and Ike Swetlitz at STAT News produced the
      investigation of record across 2017 and 2018. Drawing on
      leaked IBM internal documents and interviews with engineers,
      oncologists, and former IBM staff, the reporting documented
      a substantially different operating picture. Watson had been
      trained not on real patient outcomes — the standard a
      treatment-recommendation engine would have to clear — but on
      a small number of synthetic cases curated by MSK oncologists
      to reflect what those oncologists would have done. The
      training corpus was a model of expert opinion at one
      institution, not an outcome-anchored learning record. In
      documented cases the system generated unsafe and incorrect
      treatment recommendations. Internal IBM documents showed
      engineers raising concerns about the gap between marketed
      capability and operating reality.#cn()
    ],
    [
      The structural failure pattern the case carries is delegation
      of consequential authority — cancer-treatment recommendation
      — to a tool whose validated capability was substantially
      smaller than its marketed capability. The procurement
      mechanism was the carrier: hospitals purchased Watson
      through capital and IT procurement processes that evaluated
      the marketed concordance claims and the IBM/MSK
      institutional credentials, but did not independently
      validate operating accuracy on the receiving institution's
      patient population. The capability the procurement was
      buying — accurate, real-world treatment recommendation at
      the marketed concordance rate — was not the capability the
      system carried. Major deployments at MD Anderson and
      elsewhere were wound down as the gap surfaced.#cn()
    ],
    [
      The evidence-tier flag rendered under the title is binding
      and survives into the case verbatim. The STAT News
      investigation by Ross and Swetlitz is the primary public
      source, and the academic record cites it secondarily. No
      independent peer-reviewed evaluation of Watson for
      Oncology's operating accuracy at the level the marketing
      claimed was ever produced — partly because the system was
      proprietary and partly because the deployments were wound
      down before the kind of prospective study that would have
      established the operating record could be conducted. The
      case is teachable on the structural failure pattern at
      journalism-grade evidence; the standing "source confidence
      flagged; future validation ongoing" language is the honest
      tier the case rests on.#cn()
    ],
    [
      In the AI-delegation typology (Cases 20 TREWS, 102 Epic
      Sepsis Model, 111 SyRI, and this case), Watson is the
      marketing-ahead-of-capability failure mode: the procurement
      decision rode on marketed concordance rates that were not
      validated at the operating institutions, and the
      institutional credentials did not substitute for the
      validation. TREWS shows delegation with strong outcome
      evidence works; Epic Sepsis shows delegation without
      validation fails by accuracy disconfirmation; SyRI shows
      delegation halted on rights grounds; Watson shows delegation
      driven by procurement and marketing rather than by validated
      capability. The four together teach the typology of when AI
      delegation is and is not legitimate. Watson is the case
      where the marketing finance — the institutional credibility
      and the headline concordance number — substituted for the
      evidence the procurement should have required, and the
      capability the hospitals thought they were buying was not
      the capability they got.
    ],
  ),
  beats: (
    "Watson for Oncology marketed as cancer-treatment recommendation engine with tumor-board concordance rates as high as 96%",
    "STAT News investigation (Ross & Swetlitz, 2017–2018) drawing on leaked IBM documents: trained on small synthetic-case set curated by MSK, not real patient outcomes",
    "Documented unsafe and incorrect recommendations; internal IBM engineers raised concerns about gap between marketed and operating capability",
    "Hospitals worldwide purchased on marketed claim; major deployments (MD Anderson and others) later wound down",
    "Evidence tier: journalism-grade (STAT primary, academic secondary); no independent peer-reviewed evaluation of operating accuracy; future validation ongoing",
  ),
  approaches: (
    during: (
      [Separate marketed capability from validated capability in any procurement decision involving consequential delegation; the marketed concordance number is the carrier of the procurement story, not the evidence the procurement should rest on.],
      [Require independent operating-accuracy validation on the receiving institution's patient population before delegation; the AI-delegation literature now treats this as the procurement floor, and Watson is one of the reasons.],
      [Anchor the procurement evidence to outcome-anchored training, not to expert-curated synthetic cases; expert opinion at one institution is not outcome data the procurement can rely on.],
    ),
    after: (
      [Render the evidence tier honestly when the primary public source is journalism; the STAT investigation is the load-bearing source, and the academic record's secondary citation is the accurate description, not "peer-reviewed evidence."],
      [Carry the AI-delegation typology — TREWS, Epic Sepsis, SyRI, Watson — as a unit in any curricular discussion of when delegation is legitimate; the four-case set teaches the typology more clearly than any single case.],
      [Treat the wind-down at MD Anderson and elsewhere as the case's own correction signal; the institutional decisions to discontinue are themselves evidence about what the procurement should have required up front.],
    ),
  ),
  references: (
    [Ross & Swetlitz (2017–2018), "IBM Watson recommended unsafe and incorrect cancer treatments" and adjacent investigations, _STAT News_ — the load-bearing primary source; investigative journalism drawing on leaked IBM internal documents.],
    [Strickland (2019), "How IBM Watson Overpromised and Underdelivered on AI Health Care," _IEEE Spectrum_ — independent retrospective synthesis of the public record.],
    [Topol (2019), _Deep Medicine_, Basic Books — secondary academic situating of Watson within the broader clinical-AI delegation discourse.],
    [v2 paired cases: TREWS (Case 20), Epic Sepsis Model (Case 5), SyRI (Case 184) — the AI-delegation typology.],
  ),
  quote: [The capability the procurement was buying — accurate, real-world treatment recommendation at the marketed concordance rate — was not the capability the system carried.],
  quote-source: "Editors' synthesis of Ross & Swetlitz (STAT News 2017–2018).",
  le-insight: [
    Watson for Oncology is the canonical instance of clinical-AI
    delegation marketed ahead of validated capability. The
    operating capability was substantially smaller than the
    marketed concordance claims; the procurement mechanism
    evaluated the marketing rather than the validation; the
    deployments were wound down as the gap surfaced. The
    evidence-tier flag is binding: journalism-grade reporting is
    the load-bearing source, and future validation ongoing
    remains the honest qualifier.
  ],
  lens-approach: [
    Watson for Oncology is the marketing-ahead-of-capability
    AI-delegation failure (induced 1.1; LENS D3/PT6) — Domain 3
    for *Delegation with revocation* (MD Anderson wind-downs
    are the revocation half); Domain 4 for requirements-vs-
    marketing. Pair with Cases 20, 5, 184. Evidence-tier
    flag binds.
  ],
  literature-items: (
    [Ross & Swetlitz (2017–2018), _STAT News_ — primary investigative record],
    [Strickland (2019), _IEEE Spectrum_ — independent retrospective],
    [Topol (2019), _Deep Medicine_ — secondary academic situating],
  ),
  reflection-list: (
    [Identify a procurement decision in your domain that delegated consequential authority to an automated system. Did the procurement evaluate marketed capability claims or validated capability on the receiving institution's data? Where is the gap most likely to have been smoothed by institutional credentials standing in for evidence?],
    [Specify what operating-accuracy validation you would require before delegating: which prospective study, on which population, with which comparison and which outcome metric. The AI-delegation typology has established this as the procurement floor; the question is whether your domain's procurement processes meet it.],
    [The evidence-tier flag under this case's title is binding because the primary public source is journalism. Identify a case in your domain where the strongest available evidence is journalism-grade. What is the responsible drafting discipline that surfaces the tier rather than implying peer-reviewed validation?],
  ),
  courses: ("LEN 5", "LEN 7", "LEN 9"),
)

// ---- Case 4 — mid-staffordshire-nhs-foundation-trust ----
#case(
  number: 4,
  slug: "mid-staffordshire-nhs-foundation-trust",
  title: "Mid Staffordshire NHS Foundation Trust",
  year: "2005 – 2009",
  domains-list: ("healthcare",),
  modes-code: "GNK",
  impact: "Excess deaths at Stafford Hospital documented across years; the Francis Inquiry produced 290 recommendations and restructured UK patient-safety governance",
  diagram: dgm.dgm-cascade(
    ("ward staff", "hospital management", "trust board", "regional oversight", "Department of Health"),
    outcome: "each layer was acting on the metric, not the patient",
    caption: "Mid Staffs — measurement and reality diverged across years",
  ),
  kind: "failure",
  summary: [
    Between roughly 2005 and 2009, Stafford Hospital, run by the Mid
    Staffordshire NHS Foundation Trust, subjected patients to appalling
    neglect — left without food, water, or basic care — while mortality ran
    above expected. The trust had been chasing financial targets that
    depended on staffing cuts. Robert Francis QC's public inquiry produced a
    2,000-page report and 290 recommendations, identifying the structural
    problem as the gap between the trust's reported performance and patients'
    actual experience: every governance layer above the ward received reports
    that targets were being met, and none checked those reports against what
    was happening to patients. Mid Staffs is the dataset's strongest case for
    the harm done when measurement and reality diverge over years.
  ],
  sections: (
    // -- Background --
    [
      The Mid Staffordshire NHS Foundation Trust ran Stafford Hospital in
      England. Pursuing Foundation Trust status and the financial targets
      that came with it, the board cut staffing — and the cuts fell on the
      wards. The institution's reported performance, the numbers that
      travelled upward, stayed on target.#cn() The targets the board chased
      were financial and procedural, so cutting ward staff improved the very
      figures the trust was measured on even as it removed the people on whom
      patient care directly depended.
    ],
    // -- What Happened --
    [
      On the wards the reality was appalling. Patients were left in their own
      excrement, denied food and water, given the wrong medication or none,
      for years; mortality ran substantially above expected. The harm was not
      a single incident but a sustained condition — visible to anyone on the
      ward and invisible in the reports that left it.#cn() Because the
      suffering was a continuous state rather than a nameable event, it never
      generated the kind of discrete incident a reporting system is built to
      catch, and so it accumulated for years beneath numbers that stayed
      reassuringly on target.
    ],
    // -- The Investigation --
    [
      The Healthcare Commission investigated; the layers above did not.
      Robert Francis QC's public inquiry ran to some 2,000 pages and 290
      recommendations.#cn() Its structural finding was the divergence between
      reported performance and patient experience: every governance layer
      above the ward had received reports that the hospital was meeting its
      targets, and none had checked them against what was happening to
      patients. "The system as a whole failed in its most essential duty — to
      protect patients from unacceptable risks of harm."#cn() The phrase
      "the system as a whole" located the failure deliberately above any
      single ward or manager: no one layer was solely at fault, because each
      had trusted the layer below to be reporting reality rather than targets.
    ],
    // -- The Capability Gap --
    [
      Mid Staffs is the British analog of the VA wait-time scandal (Case 7):
      measurement and reality diverged over years while every layer of
      governance acted on the measurement. The capability that was missing
      was not clinical skill on the ward but the institutional habit of
      testing whether the numbers corresponded to the patients — a check no
      layer above the ward performed.#cn() Each layer reasonably assumed the
      check belonged to someone else, so the verification that the report
      matched the patient fell into the gap between layers — exactly the place
      a reporting chain built only to pass numbers upward is structurally
      unequipped to look.
    ],
    // -- Aftermath & Reform --
    [
      The Francis Inquiry restructured how the NHS treats patient safety, and
      the Berwick review that followed pressed for a culture of learning over
      targets. The lesson is the measurement one in its starkest form: a
      reporting chain can run clean from ward to Department of Health while,
      underneath it, the thing being reported on quietly fails.#cn() Berwick's
      framing — learning over targets — named the deeper correction: as long
      as the target is the thing the institution rewards, the report will
      describe the target, and only a culture that prizes finding the gap will
      keep checking the report against the patient.
    ],
  ),
  beats: (
    "Pursuing Foundation Trust status, the board cut ward staffing while reported targets stayed met",
    "Patients neglected for years in appalling conditions; mortality ran substantially above expected",
    "Francis Inquiry produced 2,000 pages and 290 recommendations; system as a whole failed",
    "Like the VA case, every governance layer acted on metrics; no one checked against patients",
    "Berwick review pressed for learning over targets; reporting can run clean while reality fails",
  ),
  references: (
    [R. Francis QC, _Report of the Mid Staffordshire NHS Foundation Trust Public Inquiry_ (2013) — the staffing cuts and Foundation Trust targets.],
    [Healthcare Commission, _Investigation into Mid Staffordshire NHS Foundation Trust_ (2009) — ward conditions and excess mortality.],
    [Francis QC (2013) — the ~2,000-page report and 290 recommendations.],
    [Francis QC (2013) — "the system as a whole failed in its most essential duty — to protect patients from unacceptable risks of harm" (quoted).],
    [D. Berwick, _A Promise to Learn — A Commitment to Act_ (National Advisory Group on the Safety of Patients in England, 2013).],
    [K. Walshe & J. Higgins (2002) on NHS safety governance; cf. the VA wait-time scandal (Case 7).],
  ),
  quote: [The system as a whole failed in its most essential duty — to protect patients from unacceptable risks of harm.],
  quote-source: "Robert Francis QC, Report of the Mid Staffordshire NHS Foundation Trust Public Inquiry, 2013",
  le-insight: [
    Mid Staffordshire is the British analog of the VA wait-time scandal
    (Case 7). Measurement and reality diverged over years; every layer
    of governance above the operating environment was acting on the
    measurement; patients paid the cost of the divergence. The Francis
    Inquiry recommendations changed how the NHS thinks about patient
    safety as an institutional capability.
  ],
  lens-approach: [
    LENS uses Mid Staffs in LEN 4 for the divergence-of-measurement
    problem and in LEN 7 for the governance failure across multiple
    layers. Studio projects examine the Francis recommendations as a
    template for institutional reform deliverables.
  ],
  literature-items: (
    [Francis QC (2013)],
    [Berwick (2013), _A Promise to Learn_],
    [Walshe & Higgins (2002) on NHS safety governance],
  ),
  reflection-list: (
    [Identify a multi-layer reporting chain in your domain. What would it take for the top layer to know whether the reports correspond to reality?],
    [The Francis Inquiry produced 290 recommendations. Pick five that you think were most load-bearing and explain why.],
    [The verification fell into the gap between layers because each assumed it belonged to someone else. In your domain, who explicitly owns the check that a report matches reality — and how would you know if no one does?],
  ),
  approaches: (
    during: (
      [Design targets so that gaming them (e.g., cutting ward staff) cannot improve the metric while degrading the outcome it stands for.],
      [Build a direct patient-experience signal — independent of the financial and procedural targets — into the reporting chain from the start.],
      [Assign explicit ownership of the report-versus-reality check at each layer, so verification cannot fall into the gap between them.],
    ),
    after: (
      [Audit sustained conditions, not just discrete incidents, since continuous harm never trips an event-based reporting system.],
      [Cross-check upward reports against ground truth at the ward periodically, treating a clean report as a hypothesis to be tested.],
      [Reward a culture of learning over target attainment, so the institution keeps looking for the gap rather than describing the target.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 3",),
  scale: "big",
  induced-anchor: "2.1",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4",
  evidence-source: "investigation",
)

// ---- Case 5 — epic-sepsis-model ----
#case(
  number: 5,
  slug: "epic-sepsis-model",
  title: "Epic Sepsis Model",
  year: "2017 – 2021",
  domains-list: ("healthcare", "clinical AI", "governance"),
  modes-code: "DGN",
  impact: "External validation across 38,455 hospitalizations found AUROC 0.63 versus reported 0.76–0.83, missing ~67% of sepsis at the operational threshold; deployed in hundreds of hospitals without independent validation or FDA clearance",
  kind: "failure",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "2.4",
  lens-anchor: "D4+D3/PT6",
  clo-anchor: "CLO-4, CLO-5, CLO-3",
  summary: [
    The Epic Sepsis Model was a proprietary machine-learning sepsis
    prediction tool embedded in the Epic EHR and deployed in hundreds of
    US hospitals — the most widely operational clinical AI in American
    medicine. Until Wong et al. (_JAMA Internal Medicine_ 2021) ran an
    external validation across 38,455 hospitalizations, no independent
    evaluation had been published. The reported AUROC was 0.63, well
    below the 0.76–0.83 Epic had reported; at the operational threshold,
    the model missed roughly two-thirds of sepsis cases, with a 12%
    positive predictive value and substantial alert burden. The case is
    not principally about the model's performance. It is about the
    governance seam that let the deployment happen at scale without
    independent validation: as an EHR-embedded proprietary feature, the
    model sat outside the FDA's medical-device oversight regime, so the
    machinery that would have surfaced its limitations at clearance was
    never engaged. The post-deployment surveillance pattern (Vioxx,
    Case 9) is the analog: the harm was the absence of a standing system
    to check the tool once it was in the population's hands.
  ],
  sections: (
    [
      By the late 2010s the Epic Sepsis Model was, by deployment count,
      the most widely operational clinical AI in American medicine —
      embedded in hundreds of hospitals as a default feature of the
      dominant inpatient EHR. The tool was presented as a help to
      clinicians trying to catch sepsis earlier in a workflow already
      saturated with alerts. The model's design and validation, however,
      were proprietary and not externally evaluated.#cn()
    ],
    [
      In 2021 Wong et al. published the first large external validation
      in _JAMA Internal Medicine_: 38,455 hospitalizations at the
      University of Michigan, with sepsis diagnosed using two consensus
      definitions. The model achieved an AUROC of 0.63, materially below
      Epic's reported 0.76–0.83. At the operational threshold for
      bedside alerting, the model missed roughly two-thirds of sepsis
      cases. The 12% positive predictive value meant most alerts were
      false; the alert burden landed on clinicians who could not
      distinguish the few real alerts from the many spurious ones.#cn()
    ],
    [
      The governance seam is the structural lesson. Because the Epic
      Sepsis Model was distributed as a feature of an EHR rather than as
      a stand-alone clinical-decision-support device, it did not require
      FDA clearance. The machinery that would normally require
      independent validation, post-market surveillance, and demographic
      stratification of performance was never engaged. The model's
      deployment was a regulatory non-event because the regulatory regime
      treated the EHR layer as out of scope. The clinical AI question and
      the device-oversight question diverged.#cn()
    ],
    [
      What surfaced the failure was post-deployment external validation —
      the exact discipline that the clearance pathway omits. The Wong et
      al. paper was disconfirmation in the form the system did not
      otherwise provide. Epic subsequently revised the model and added
      stratification to its documentation; many hospitals turned the
      alert off, recalibrated, or replaced it. The corrective action
      worked through publication, not through governance. That is the
      gap: a tool can be deployed at hundreds of sites, alert at the
      bedside for years, and still be disconfirmable only by an academic
      paper rather than by the surveillance architecture the deployment
      was supposed to have.#cn()
    ],
    [
      The Epic case is the negative pair to TREWS (Case 20) and the
      governance-seam analog to Radiology AI Miscalibration (Case 35).
      Together they teach a typology: delegation done well as a paired
      intervention with engineered interface and outcome-grounded
      evidence (TREWS); delegation done badly as a proprietary
      EHR-embedded model deployed outside the device-oversight regime
      without independent validation (Epic); delegation halted on
      rights grounds because the system was both ineffective and
      rights-violating (SyRI); delegation marketed ahead of capability
      (Watson for Oncology). The four together are the canonical AI
      delegation typology.
    ],
  ),
  beats: (
    "Most-deployed clinical AI in US medicine — embedded as a default Epic EHR feature; no independent validation",
    "Wong et al. external validation: AUROC 0.63, missed ~67% of sepsis at threshold, 12% PPV, alert burden",
    "Governance seam: EHR-embedded proprietary models fell outside FDA device oversight by classification, not by design",
    "Disconfirmation came as a published external validation, not from a standing post-deployment surveillance regime",
    "Negative pair to TREWS; part of the AI-delegation typology (Epic / SyRI / Watson / TREWS)",
  ),
  approaches: (
    during: (
      [Require independent external validation before deployment of any consequential clinical AI, regardless of whether it ships as a stand-alone device or as a feature of a host platform.],
      [Specify in advance the disconfirming evidence — population, threshold, PPV, alert burden — that would revoke the delegation, and the channel through which that evidence would surface.],
      [Identify the regulatory regime the tool falls under, and where the seam between regimes is — proprietary EHR features should not be exempt from clinical-AI oversight by virtue of their packaging.],
    ),
    after: (
      [Build post-deployment surveillance as a standing institutional capability — outcome metrics, demographic stratification, alert-burden audit — so disconfirmation does not require a single academic paper to surface.],
      [Close the cross-regime seam: clinical AI embedded in EHRs should be subject to the same independent validation and surveillance as stand-alone clinical-decision-support devices.],
      [When disconfirming evidence arrives, treat it as a designed input: revise, recalibrate, or remove on a defined timeline, with the corrective action visible to the clinicians who used the tool.],
    ),
  ),
  references: (
    [Wong et al. (2021), "External Validation of a Widely Implemented Proprietary Sepsis Prediction Model in Hospitalized Patients," _JAMA Internal Medicine_ 181(8):1065–1070, doi:10.1001/jamainternmed.2021.2626.],
    [Habib et al. (2021), commentary on Wong et al., _JAMA Internal Medicine_ — on the implications for proprietary clinical AI.],
    [FDA, _Clinical Decision Support Software: Final Guidance_ (2022) — the post-Wong reframing of the EHR-embedded oversight question.],
    [Adams et al. (2022), _Nature Medicine_ — the paired positive case (101).],
  ),
  quote: [A deployment is not a validation. Deployment without independent validation is delegation without evidence.],
  quote-source: "Editors' synthesis of Wong et al. (2021).",
  le-insight: [
    The Epic Sepsis Model is the canonical case of consequential
    clinical-AI delegation at scale without independent validation.
    The structural lesson is not the model's poor performance; it
    is the governance seam that let the deployment proceed without
    the validation and surveillance machinery that the
    medical-device pathway would have required, surfaced only by
    post-deployment external work.
  ],
  lens-approach: [
    Epic is the Domain 4 + Domain 3 / Problem Type 6 failure that
    motivates the post-deployment-surveillance discipline LENS
    teaches. Used in Domain 4 (Test and Evaluation) for measurement
    architecture under proprietary opacity and the gap-attribution
    CLO; in Domain 3 (Human-System Collaboration) for the
    delegation-with-revocation CLO — Epic was delegated without a
    pre-specified revocation criterion; and in Domain 5 (Navigating
    Sociotechnical Constraints) for the cross-regime / platform
    governance seam. Pairs directly against TREWS (Case 20) and
    sits in the AI-delegation typology with SyRI and Watson.
  ],
  literature-items: (
    [Wong et al. (2021), _JAMA Internal Medicine_],
    [FDA, _Clinical Decision Support Software: Final Guidance_ (2022)],
    [Habib et al. (2021), _JAMA Internal Medicine_ commentary],
  ),
  reflection-list: (
    [Identify a clinical AI tool deployed in your domain. Where in the regulatory architecture would independent validation have been required, and where could it slip the seam? What pre-specified disconfirming evidence would revoke the delegation?],
    [Design the post-deployment surveillance deliverable that should accompany every deployment of consequential clinical AI — including embedded-in-EHR features that currently fall outside the device-oversight regime.],
    [The disconfirmation in this case came from a single academic paper, not from a standing institutional architecture. What is the minimum surveillance machinery that would have surfaced the model's performance gap at the operational threshold without requiring the Wong et al. paper to exist?],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 2"),
)

// ---- Case 6 — racial-bias-in-pain-assessment-the ----
#case(
  number: 6,
  slug: "racial-bias-in-pain-assessment-the",
  title: "Racial Bias in Pain Assessment — The False-Belief Mechanism",
  year: "2016",
  domains-list: ("clinical medicine", "medical education", "health equity"),
  modes-code: "TKN",
  impact: "About half of surveyed medical students and residents endorsed at least one false belief about biological differences between Black and White people; those who held more false beliefs rated Black patients' pain as less severe and recommended less accurate treatment",
  kind: "failure",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "8.1",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4",
  summary: [
    Hoffman, Trawalter, Axt, and Oliver (_PNAS_ 2016) surveyed medical
    students and residents on a battery of false beliefs about
    biological differences between Black and White people (e.g., "Black
    people's skin is thicker," "Black people's nerve endings are less
    sensitive"). About half endorsed at least one such belief. The
    paper's experimental layer showed that respondents who endorsed
    more false beliefs rated the pain of mock Black patients as less
    severe than the same pain in mock White patients, and made less
    accurate treatment recommendations. The mechanism the case
    identifies is specific and unusually precise for a bias study: the
    pain-assessment gap is traceable to a small set of nameable false
    biological beliefs, not to diffuse implicit bias or
    structural-only explanation. That precision is what makes
    Hoffman the human-development case in the race-construct trio. The
    capability deliverable is not awareness training; it is
    curriculum that specifically disconfirms the named false beliefs
    and instrumentation that surfaces when bedside ratings of pain
    diverge by patient race.
  ],
  sections: (
    [
      Pain assessment is a clinician's judgment, made repeatedly across
      a day, on patients whose subjective report of pain has to be
      translated into a numeric rating and a treatment decision. A
      documented finding in the medical literature is that Black
      patients in the United States are systematically under-treated
      for pain across emergency-department, post-surgical, and
      end-of-life settings. The bias has been measured at the
      population level for decades; the mechanism was less precisely
      named.#cn()
    ],
    [
      Hoffman et al. (2016) administered a battery of statements about
      biological differences between Black and White people to
      222 medical students and residents — some true, some false (e.g.,
      "Black people's skin is thicker," "Black people's blood
      coagulates more quickly," "Black people's nerve endings are less
      sensitive"). About half of respondents endorsed at least one
      false belief; a smaller subset endorsed several. The experimental
      layer of the study presented respondents with two mock patient
      cases identical except for race, asked them to rate the
      patients' pain, and asked them to recommend treatment.#cn()
    ],
    [
      The pattern was that respondents who endorsed more false beliefs
      rated the pain of the Black mock patient as less severe than the
      pain of the White mock patient, and recommended less accurate
      treatment for the Black mock patient. Respondents who endorsed
      no false beliefs did not show the rating gap. The case is unusual
      in identifying a specific cognitive mechanism — a small set of
      named false biological beliefs — that mediates a documented
      population-level disparity. Most bias studies leave the
      mechanism diffuse; Hoffman names it precisely enough that a
      curriculum or assessment can target it.#cn()
    ],
    [
      What the case teaches at the construct layer is that the
      capability deliverable in medical education is not generic
      "implicit bias" awareness — it is curriculum that specifically
      disconfirms the named false beliefs, with assessment instruments
      that test whether the beliefs were actually disconfirmed.
      Operationally, the deliverable is a bedside instrument or
      surveillance pattern that surfaces when pain ratings diverge by
      patient race in ways that survive case-mix adjustment. The
      Hoffman finding makes both deliverables specifiable in a way
      that more diffuse bias findings did not.#cn()
    ],
    [
      Hoffman pairs with pulse oximetry (Case 26) and eGFR
      (Case 25) in the race-construct trio. The three cases are the
      same surface harm — minority patients systematically under-served
      across a clinical decision — attributable to three distinct
      layers of the system: the construct definition (eGFR), the
      validation architecture (pulse oximetry), and the
      human-development mechanism (Hoffman). The trio is the
      case-grounded basis for the CLO *Gap attribution*: distinguishing
      capability gaps attributable to human development, system
      design, and organizational performance, and selecting
      measurement that isolates the intended cause.
    ],
  ),
  beats: (
    "Documented pain-undertreatment disparity for Black patients in US clinical settings; mechanism less precisely named",
    "Hoffman et al. survey medical trainees on a battery of false biological-difference beliefs; ~half endorse at least one",
    "Experimental layer: respondents who endorse more false beliefs rate Black mock patients' pain as less severe and treat less accurately",
    "Mechanism is specific and nameable: a small set of false beliefs, not diffuse implicit bias — curriculum and instrumentation can target it",
    "Trio with eGFR (construct) and pulse oximetry (validation): same surface harm at three distinct layers — gap attribution is the deliverable",
  ),
  approaches: (
    during: (
      [Build curriculum that specifically disconfirms the named false biological beliefs identified in the Hoffman survey, with assessment items that test whether the disconfirmation took hold.],
      [Instrument bedside pain ratings to surface case-mix-adjusted divergence by patient race; the gap is otherwise invisible to the system that produces it.],
      [Identify the layer of the gap before designing the remediation: construct, validation, or human-development. A construct fix cannot remediate a clinician-belief fix and vice versa.],
    ),
    after: (
      [Re-administer the Hoffman survey periodically as a curriculum-evaluation instrument; a curriculum that does not move the false-belief endorsement rate is not closing the mechanism the paper identifies.],
      [Track whether the bedside pain-rating disparity narrows in cohorts that received the disconfirming curriculum, with reporting at intervals long enough for selection effects to settle.],
      [Cross-reference the human-development result against the construct (eGFR) and validation-architecture (pulse oximetry) layers, so the overall equity capability of the clinical system is not assessed only at the layer the institution finds easiest to instrument.],
    ),
  ),
  references: (
    [Hoffman, Trawalter, Axt, & Oliver (2016), "Racial bias in pain assessment and treatment recommendations, and false beliefs about biological differences between blacks and whites," _PNAS_ 113(16):4296–4301, doi:10.1073/pnas.1516047113.],
    [Anderson, Green, & Payne (2009), "Racial and ethnic disparities in pain: causes and consequences of unequal care," _Journal of Pain_ 10(12):1187–1204 — the population-level disparity.],
    [Sabin & Greenwald (2012), "The influence of implicit bias on treatment recommendations for 4 common pediatric conditions," _American Journal of Public Health_ — the diffuse-mechanism backdrop the Hoffman precision improves on.],
    [Vyas, Eisenstein, & Jones (2020), _NEJM_ — connecting race-in-clinical-algorithms to race-in-clinical-judgment.],
  ),
  quote: [The mechanism the paper names is precise enough to teach against. Awareness training is not a curriculum; a curriculum has to disconfirm something specific.],
  quote-source: "Editors' synthesis of Hoffman et al. (2016).",
  le-insight: [
    Hoffman et al. is the human-development case in the
    race-construct trio. The pain-assessment disparity in
    medical settings is mediated, in measurable part, by a
    nameable set of false biological-difference beliefs held by
    clinicians in training. The capability deliverable is
    curriculum that specifically disconfirms the beliefs and
    instrumentation that surfaces the bedside rating gap when
    it persists.
  ],
  lens-approach: [
    Hoffman is the human-development case in the race-construct
    trio (Cases 25, 26 and 6). LENS uses it in Domain 4 (Test and
    Evaluation) for the CLO *Gap attribution* — the gap is in
    the clinician's training, not the construct or the device —
    and in Domain 2 (Learning Engineering Design) for the
    curriculum-design implication. The trio together is the
    case-grounded basis for *Gap attribution*: same surface
    harm, three distinct layers, three distinct remediations.
    Adjacent to the lending pair (Cases 181–113) at the
    construct layer.
  ],
  literature-items: (
    [Hoffman, Trawalter, Axt, & Oliver (2016), _PNAS_],
    [Anderson, Green, & Payne (2009), _Journal of Pain_ — population-level disparity],
    [Vyas, Eisenstein, & Jones (2020), _NEJM_],
  ),
  reflection-list: (
    [Identify a documented disparity in your domain whose mechanism is treated as diffuse. What would a Hoffman-style survey look like — a battery of named false beliefs or assumptions whose endorsement could be measured and whose presence predicts the operational decision?],
    [Design the curriculum-evaluation instrument you would use to test whether a curriculum has actually disconfirmed the false beliefs. What endorsement-rate change would you require before claiming the mechanism has been addressed?],
    [Hoffman is the human-development case in the race-construct trio. Pulse oximetry (Case 26) is the validation-architecture case; eGFR (Case 25) is the construct-definition case. Which of the three layers does your domain currently address, and which does it leave invisible?],
  ),
  courses: ("LEN 1", "LEN 4", "LEN 7"),
)

// ---- Case 7 — va-wait-time-scandal ----
#case(
  number: 7,
  slug: "va-wait-time-scandal",
  title: "VA Wait-Time Scandal",
  year: "2014",
  domains-list: ("gov",),
  modes-code: "GKN",
  impact: "Veterans died waiting for care; 300,000+ on waiting lists or waiting 6+ months; staff falsified records",
  diagram: dgm.dgm-va,
  kind: "failure",
  summary: [
    In 2014 the VA Inspector General found that staff at the Phoenix VA —
    and then nationwide — had created secret waiting lists and falsified
    appointment data to hide that veterans were waiting weeks or months for
    care; some died waiting while the system reported success. A 14-day
    access target, unrealistic given staffing, was met by hiding reality
    rather than surfacing it. The warning signs ran back fifteen years: GAO
    had flagged data-reliability problems since 2000, the IG since 2005, with
    no systemic fix — and schedulers, the staff operating the measurement,
    are among the VA's highest-turnover roles, so the institution kept losing
    the knowledge even to see it was lying to itself. The VA case is the
    book's canonical example of normalization of deviance applied to
    measurement itself.
  ],
  sections: (
    // -- Background --
    [
      The Veterans Health Administration measured access to care against a
      14-day appointment target — a target that, given staffing, was often
      unrealistic to meet honestly. Schedulers, the staff who operate that
      measurement, are among the VA's highest-turnover positions.#cn() The
      target functioned as the headline number leadership watched, so the
      pressure to show 14-day compliance bore down hardest on the very
      front-line role least equipped, through constant churn, to record the
      access data accurately or to question what the number was leaving out.
    ],
    // -- What Happened --
    [
      In 2014 the VA Office of Inspector General found that staff at the
      Phoenix VA — and then across the system — had created secret waiting
      lists and falsified appointment data to hide that veterans were waiting
      weeks or months for care. Some veterans died waiting, inside a system
      that, by its own metrics, was succeeding.#cn() The secret lists were the
      mechanism by which an impossible target was reconciled with reality:
      official records showed appointments inside 14 days while the true wait
      accumulated off the books, so the more the metric was gamed, the more
      confidently the reporting line above it declared the access problem
      solved.
    ],
    // -- The Investigation --
    [
      The warning signs went back fifteen years: GAO had flagged
      data-reliability concerns since 2000, and the VA IG had identified
      problems in 2005, 2007, and 2008, with the incoming administration
      warned in 2008 — none of which produced systemic change.#cn() GAO named
      scheduler training as a root cause: with schedulers among the top-ten
      highest-turnover roles, the institution perpetually lost the knowledge
      required even to run the measurement honestly, and five years on still
      reported data-reliability concerns.#cn() Each warning had named a real
      defect in how access was recorded, yet because the schedulers who held
      the practical knowledge of the system kept turning over, every wave of
      findings landed on a workforce that had to relearn the instrument from
      scratch, so the same defect resurfaced report after report.
    ],
    // -- The Capability Gap --
    [
      This is normalization of deviance applied to measurement itself. When
      the measurement system cannot capture reality — and the people
      operating it churn before the gaming can be unlearned — the gap between
      reported and actual performance becomes invisible. Veterans died inside
      a system whose numbers said it was fine, which is the lethal form of
      the evidence problem this book treats as a design failure, not a
      reporting one.#cn() An institution that cannot retain the staff who run
      its measurement loses not only accuracy but the memory that the number
      was ever wrong, so the gaming stops registering as deviance at all and
      hardens into the ordinary way the work is done.
    ],
    // -- Aftermath & Reform --
    [
      The scandal forced resignations, the Veterans Access, Choice, and
      Accountability Act (2014), and a long, uneven effort to rebuild
      scheduling and data integrity.#cn() Its lesson is that decision-grade
      evidence is a design requirement: an institution must be able to
      surface its own failures without relying on the very people
      incentivized — and too transient — to hide them. The Choice Act bought
      access by routing care outside the VA, but the underlying capability —
      a measurement the institution could trust even as its schedulers churned
      — was the harder thing to rebuild, and the data-reliability concerns
      that persisted for years afterward show why.
    ],
  ),
  beats: (
    "A 14-day access target pressed hardest on schedulers, the highest-turnover front-line role",
    "Phoenix and nationwide staff hid waits on secret lists while official metrics reported success",
    "Fifteen years of GAO and IG warnings landed on a continually relearning scheduler workforce",
    "Measurement gaming hardened into routine practice once turnover erased memory of deviance",
    "Resignations and the 2014 Choice Act followed; trustworthy measurement proved harder to rebuild",
  ),
  references: (
    [VA Office of Inspector General, Report 14-02603-267 (2014) — secret waiting lists and falsified appointment data.],
    [GAO Veterans Health Administration reports (2000–2019) — fifteen years of data-reliability warnings.],
    [VA OIG reports (2005, 2007, 2008) — prior, unactioned findings.],
    [D. Draper (GAO), House VA Committee testimony, GAO-19-687T (2019) — "schedulers are among the top ten highest-turnover positions in the VA" (quoted).],
    [Veterans Access, Choice, and Accountability Act (2014) — the legislative response.],
    [C. Argyris & D. Schön, _Organizational Learning_ (1978); measurement-gaming literature.],
  ),
  quote: [Schedulers are among the top ten highest-turnover positions in the VA.],
  quote-source: "Debra Draper (GAO Director of Health Care), House VA Committee testimony, GAO-19-687T, July 2019",
  le-insight: [
    The VA case is the canonical example of measurement failure as a
    capability failure. The system that should have surfaced the gap
    instead generated reports that hid it. The turnover among
    schedulers — the human capability operating the measurement
    instrument — meant the institution lost the knowledge to even
    notice it was lying to itself. The case stands as the strongest
    argument in this book for treating decision-grade evidence as a
    design requirement, not a reporting requirement.
  ],
  lens-approach: [
    LENS treats the VA case in LEN 4 as the canonical evidence-gap case
    (the measurement system itself was the source of harm), in LEN 7 as
    a governance failure (multiple warnings unactioned over fifteen
    years), and in LEN 8 as a knowledge-loss case via turnover.
  ],
  literature-items: (
    [VA OIG, full reports (2014–present)],
    [Argyris & Schön (1978), _Organizational Learning_],
    [Tuckey & Pollack (2024), measurement-gaming literature],
  ),
  reflection-list: (
    [Identify a measurement system in your domain that is also operated by a high-turnover role. What is the institutional risk that the system stops measuring reality?],
    [Design the evidence pipeline that would have surfaced the Phoenix VA gap without relying on the people who were gaming the metrics.],
    [The 14-day target was unrealistic given staffing, so it was met by hiding reality. Identify a target in your organization that the people measured against it cannot honestly meet — and design the correction that surfaces the gap rather than burying it.],
  ),
  approaches: (
    during: (
      [Set access targets against actual staffing capacity, so the metric cannot be met only by falsifying it.],
      [Design the scheduling instrument so correct data entry is the path of least resistance, not a discipline that churning staff must be retrained into.],
      [Build an independent read on real wait times — separate from the staff incentivized to report them — into the measurement architecture from the start.],
    ),
    after: (
      [Audit reported access against an out-of-band signal (direct veteran survey, third-party booking records) with authority to act when the two diverge.],
      [Treat scheduler turnover as a measurement risk: monitor it, and protect the knowledge of how to run the instrument honestly against constant churn.],
      [Track whether old data-reliability findings keep recurring — a repeat finding is the signal that the institution is relearning the same gap rather than closing it.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
  scale: "big",
  induced-anchor: "2.2",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4",
  evidence-source: "investigation",
)

// ---- Case 8 — medical-errors-as-systemic-failure ----
#case(
  number: 8,
  slug: "medical-errors-as-systemic-failure",
  title: "Medical Errors as Systemic Failure",
  year: "1999 – present",
  domains-list: ("healthcare",),
  modes-code: "THNKG",
  impact: "IOM 1999 estimate of 44,000–98,000 US deaths/year from medical error; Makary & Daniel (2016) estimate of ~250,000 deaths/year — substantively contested on methodological grounds; 2023 NEJM inpatient-harm study confirms persistence; 25-year reform arc with bounded successes and an unmoved population count",
  diagram: dgm.dgm-makary,
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "2.1",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4",
  summary: [
    Medical error in the United States is not a single incident but a
    systemic condition that the system's own measurement instruments
    cannot see. The Institute of Medicine's _To Err Is Human_ (1999)
    raised the alarm with a 44,000–98,000 annual-deaths estimate and
    reframed harm as a systems problem rather than an individual one;
    _Crossing the Quality Chasm_ (2001) and the 2015 _Improving
    Diagnosis in Health Care_ sequel extended the program. In 2016,
    Makary and Daniel of Johns Hopkins published a _BMJ_ analysis
    estimating ~250,000 deaths a year — which would make medical error
    the third leading cause of death behind heart disease and cancer.
    Death certificates do not record medical error as a cause, so the
    problem is structurally invisible to the systems meant to track it.
    The 250,000 figure has been substantively contested on
    methodological grounds (Shojania & Dixon-Woods, _BMJ Quality &
    Safety_, 2017; Carr in _Health Affairs_), a dispute that is itself a
    worked example of the gap-attribution problem. The field's
    25-year arc shows bounded interventions that work — computerized
    order entry, handoff protocols, the WHO surgical checklist (Case 23),
    the Keystone ICU project (Case 19), TeamSTEPPS (Case 39) — alongside
    a population-scale mortality count that has resisted both
    intervention and precise estimation.
  ],
  sections: (
    // -- Background --
    [
      The Institute of Medicine's _To Err Is Human_ (1999) was the
      field-defining moment: it estimated 44,000–98,000 deaths annually
      from medical error in US hospitals — at the lower bound, more
      Americans than die in motor-vehicle accidents — and made the
      explicit case that the problem was a systems problem, not an
      individual-clinician problem. The 2001 sequel _Crossing the
      Quality Chasm_ set six aims for the redesign of care, and the
      2015 sequel _Improving Diagnosis in Health Care_ extended the
      framing to diagnostic error. The framing of harm as systemic
      mattered: it created the cultural permission for non-punitive
      incident reporting, root-cause analysis, and the broader
      patient-safety movement that followed.#cn() Yet modern medicine's
      core mortality-measurement instrument — the death certificate —
      records a proximate physiological cause and has no field for
      medical error. Because the certificate is keyed to an ICD billing
      taxonomy built for disease, a death set in motion by a
      care-process breakdown is recorded under whatever organ ultimately
      failed, and the causal role of the system disappears into the
      physiology.
    ],
    // -- What Happened --
    [
      In 2016, surgeon Martin Makary and Michael Daniel published an
      analysis in the _BMJ_ estimating that medical errors cause more
      than 250,000 deaths a year in the United States — which would
      rank third behind heart disease and cancer. Their core claim was
      that "people don't just die from heart attacks and bacteria, they
      die from system-wide failings and poorly coordinated care." By
      relocating the cause from the individual clinician to the
      coordination of care, the framing recast a ledger of isolated
      mistakes as a single population-scale failure mode the existing
      statistics were never built to count. The number itself was
      computed by extrapolating from four prior studies — the IOM 1999
      estimate, the 2010 OIG Medicare adverse-events study, the
      Landrigan 2010 _NEJM_ study, and the Classen 2011 Global Trigger
      Tool study — to the contemporary inpatient population, an
      extrapolation the authors acknowledged as approximate.#cn()
    ],
    // -- The Investigation --
    [
      The 250,000 estimate was substantively contested almost
      immediately. Shojania and Dixon-Woods, writing in _BMJ Quality &
      Safety_ in 2017, challenged both the extrapolation and the
      attribution method, arguing that counting deaths "due to" error
      is far harder than a single headline number implies. A
      _Health Affairs_ commentary by Carr and a series of letters in
      the _BMJ_ pressed the same point: the source studies use
      different definitions of "preventable death," the extrapolation
      rests on prior estimates already known to be unstable, and the
      ranking against CDC cause-of-death categories is methodologically
      incompatible (CDC counts use ICD codes; the Makary estimate does
      not).#cn() The objection turned on counterfactual attribution —
      how confidently one can say a frail, already-dying patient would
      have survived but for the error — a judgment that resists the
      clean tallying a headline number demands. The dispute is itself a
      worked example of the gap-attribution problem: how much of a
      counted death is the learning system, how much the system
      design, how much the underlying disease.#cn()
    ],
    // -- The Capability Gap --
    [
      The deeper failure is one of measurement: a system that cannot
      see its own failure modes cannot manage them. With no field on
      the certificate, no reliable count, and no agreed attribution
      method, every safety program competes for resources against a
      harm that the official record renders invisible, so even
      effective interventions struggle to prove their worth at
      population scale. The bounded interventions that have worked —
      computerized physician order entry, structured handoff protocols
      (I-PASS), the WHO Surgical Checklist (Case 23), the Keystone ICU
      central-line bundle (Case 19), TeamSTEPPS (Case 39) — each move a
      specific harm in a specific setting, and each can prove it. What
      none can prove is movement on the population count, because the
      population count does not exist in a form precise enough to be
      moved. The missing capability is an instrument that captures
      medical error as a tracked cause of harm — and an attribution
      method robust enough that the resulting number can guide
      intervention rather than fuel a methodological stalemate.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The 25-year arc since _To Err Is Human_ is the case's most
      important teaching artifact. The IOM framing catalyzed a
      patient-safety movement, an Agency for Healthcare Research and
      Quality patient-safety program, and the bounded interventions
      noted above. Yet later work, including the 2023 _NEJM_ study by
      Bates et al. of inpatient harm across eleven Massachusetts
      hospitals, confirms that the problem persists at scale: about a
      quarter of admissions involved an adverse event, and roughly a
      quarter of those events were preventable. The system has not
      built the instrument the original report implied it would need —
      no national active-surveillance system for inpatient harm, no
      death-certificate field for care-process failure, no agreed
      attribution method for "deaths due to error." The interventions
      exist; the measurement and the implementation still lag, and the
      headline mortality kept escaping measurement even as bounded
      harms fell. The case is the canonical worked example of the
      gap-attribution problem at population scale, and a standing
      reminder that an instrument the system cannot see through is one
      it cannot govern.#cn()
    ],
  ),
  beats: (
    "Death certificates record proximate physiology with no field for medical error",
    "Makary and Daniel estimated 250,000 annual U.S. error deaths from systemic care failings",
    "Critics challenged the extrapolation, arguing counterfactual attribution of error-caused death resists clean tallying",
    "Without a tracked instrument and robust attribution, safety programs cannot prove worth against invisible harm",
    "Targeted reforms cut bounded harms while system-wide mortality kept escaping measurement and persisted at scale",
  ),
  references: (
    [Institute of Medicine, _To Err Is Human: Building a Safer Health System_ (1999); _Crossing the Quality Chasm_ (2001); _Improving Diagnosis in Health Care_ (2015) — the field-defining trilogy and the 44,000–98,000 estimate; the systems framing.],
    [Makary, M. & Daniel, M. (2016), "Medical error — the third leading cause of death in the US," _BMJ_ 353:i2139 — the ~250,000 estimate, the quoted framing, the extrapolation from four prior studies (IOM 1999; OIG 2010; Landrigan 2010; Classen 2011).],
    [Shojania, K. & Dixon-Woods, M. (2017), "Estimating deaths due to medical error: the ongoing controversy and why it matters," _BMJ Quality & Safety_ 26(5):423–428; with companion commentaries including Carr in _Health Affairs_ — methodological contestation of the Makary extrapolation and CDC-ranking comparison.],
    [Makary & Daniel (2016), _BMJ_ — death certificates do not capture medical error as a cause; ICD billing taxonomy as the structural reason.],
    [Bates, D. W., Levine, D. M., Salmasian, H., et al. (2023), "The Safety of Inpatient Health Care," _NEJM_ 388(2):142–153 — eleven-hospital Massachusetts cohort; adverse events in ~25% of admissions, ~25% of those preventable; persistence of harm at scale.],
    [Agency for Healthcare Research and Quality, _National Healthcare Quality and Disparities Reports_ (annual); CDC WONDER ICD-coded mortality data — institutional context for the missing national active-surveillance instrument.],
  ),
  quote: [People don't just die from heart attacks and bacteria, they die from system-wide failings and poorly coordinated care.],
  quote-source: "Martin Makary, press statements accompanying Makary & Daniel, BMJ (2016)",
  le-insight: [
    The Makary data is the anchor evidence for the LENS argument
    because of its scale, its provenance (Johns Hopkins), and its
    framing — system failure rather than individual error. The seventeen
    years between *To Err Is Human* and Makary's reassessment is also
    the implementation gap of Case 13 in another guise — and the cost of
    leaving it open is measured in lives at population scale.
  ],
  lens-approach: [
    Medical error is the central evidence anchor of the curriculum
    (induced 2.1; LENS D4/PT5). LENS uses it in Domain 4 (Test and
    Evaluation; CLO-4) for the foundational measurement problem: the
    death certificate cannot record the failure mode it is supposed
    to govern, and the contested mortality estimates show what
    happens when an instrument's gap is filled by extrapolation.
    LENS uses it in Domain 1 (Systems Analysis) as the foundational
    problem statement of the program and in Domain 5 (Navigating
    Sociotechnical Constraints) for industry-level institution
    building. The 25-year arc pairs the case with the WHO Surgical
    Checklist (Case 23), Keystone ICU (Case 19), and TeamSTEPPS
    (Case 39) as the bounded interventions that worked; pair with
    Vioxx (Case 9) at the population-scale-surveillance layer.
  ],
  literature-items: (
    [Makary & Daniel (2016), BMJ],
    [Institute of Medicine, _To Err Is Human_ (1999)],
    [Bates et al. (2023), "The Safety of Inpatient Health Care," _NEJM_ 388(2)],
  ),
  reflection-list: (
    [Identify a measurement instrument in your domain that systematically fails to capture the failure modes it should be designed to surface. What would it cost to fix?],
    [Two hundred fifty thousand deaths a year is the third leading cause of death in the U.S. Design the measurement and intervention regime that would shift the curve over a five-year horizon. Estimate the deliverable and the evidence.],
    [Makary and Shojania disagreed not on whether error kills but on how to attribute a death to it. Specify an attribution method robust enough to survive that dispute — and name who would hold the authority to act on the number it produces.],
  ),
  approaches: (
    during: (
      [Give the mortality-recording instrument an explicit field for care-process failure, so a system-caused death is captured, not absorbed into the proximate cause.],
      [Specify the attribution method up front — the counterfactual test for "due to" error — so the count guides action rather than collapsing into dispute.],
      [Pair each safety intervention with the population measure it should move, gating reforms on demonstrated effect.],
    ),
    after: (
      [Audit reported mortality against an independent count of care-related harm.],
      [Use active surveillance of inpatient harm rather than waiting for the death certificate.],
      [Hold the count and the intervention to the same measurement discipline, closing the implementation gap.],
    ),
  ),
  courses: ("LEN 1", "LEN 4", "LEN 10", "LEN 6",),
)

// ---- Case 9 — vioxx-withdrawal ----
#case(
  number: 9,
  slug: "vioxx-withdrawal",
  title: "Vioxx Withdrawal",
  year: "1999 – 2004",
  domains-list: ("healthcare",),
  modes-code: "GD",
  impact: "Tens of thousands of excess cardiovascular events estimated (FDA's Graham, 2004; Lancet 2005); Merck withdrew Vioxx in September 2004; ~\\$4.85B settlement; FDA Amendments Act of 2007 and the Sentinel Initiative (2008) institutionalized active post-market surveillance",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "2.4",
  lens-anchor: "D4+D3/PT5",
  clo-anchor: "CLO-4, CLO-3",
  diagram: dgm.dgm-curve(
    ((1.0, 1.0), (2.0, 1.4), (3.5, 1.8), (5.0, 2.4), (6.5, 3.0), (7.5, 0.8)),
    milestone: 7.5,
    milestone-label: "withdrawn",
    x-label: "1999 → 2004",
    y-label: "exposure",
    framing: "signal in internal data; aggregation absent for years",
    caption: "Vioxx — post-market surveillance as a missing deliverable",
  ),
  kind: "failure",
  summary: [
    Merck's painkiller Vioxx (rofecoxib) was approved by the FDA in
    May 1999 and prescribed to an estimated 80 million people
    worldwide. The 2000 VIGOR trial (Bombardier et al., _NEJM_) found
    a roughly five-fold higher rate of myocardial infarction in the
    Vioxx arm than in the naproxen comparator — a signal Merck and
    many readers attributed to a hypothesized cardio-protective
    effect of naproxen rather than a cardiovascular risk of Vioxx,
    a reading that required the absent placebo arm to be true. Not
    until the placebo-controlled APPROVe trial (Bresalier et al.,
    _NEJM_) was halted in September 2004 was the risk established and
    the drug withdrawn. For nearly four years the disclosure
    architecture between Merck's internal data, FDA reviewers, and
    prescribers failed to surface the magnitude of the danger to a
    decision point. FDA Office of Drug Safety scientist David Graham
    testified to the Senate Finance Committee in November 2004 that
    the risk had been visible well before withdrawal, and estimated
    88,000–139,000 excess cardiovascular events attributable to
    Vioxx; the 2005 Graham et al. _Lancet_ analysis put the figure
    in similar range. Merck litigation discovery produced internal
    Merck communications used in the Senate hearings to argue that
    publication-bias and authorship-by-Merck-employees patterns had
    suppressed the cardiovascular signal in the published record.
    The reforms that followed — Risk Evaluation and Mitigation
    Strategies (REMS), the FDA Amendments Act of 2007, and the
    Sentinel Initiative (2008) — built the active post-market
    surveillance architecture that had not previously existed.
  ],
  sections: (
    // -- Background --
    [
      Vioxx, a selective COX-2 inhibitor for arthritis pain, was
      approved by the FDA in May 1999 and became one of the most widely
      prescribed drugs of its era — an estimated 80 million people
      worldwide were exposed before withdrawal. Detecting rare or
      delayed harms in a drug at that scale depends on post-market
      surveillance — aggregating adverse-event data after approval — a
      function that, at the time, was thin relative to the size of the
      exposed population. The FDA's MedWatch system relied on voluntary
      submission from clinicians; no active query of the underlying
      claims and electronic-health-record data was operational. A risk
      too small to surface in a pre-approval trial becomes a large
      absolute toll once a drug reaches millions, which is precisely
      the regime that demands strong after-market monitoring — and
      precisely the regime in which voluntary reporting fails to
      detect it.#cn()
    ],
    // -- What Happened --
    [
      The VIGOR trial (Bombardier et al., _NEJM_ 2000) reported about
      a five-fold higher rate of myocardial infarction in 8,076 patients
      taking Vioxx than in those taking naproxen. Merck and many readers
      interpreted the gap as naproxen being cardio-protective rather
      than Vioxx being harmful. That reading was not absurd — it was the
      more comfortable of two explanations for the same numbers — but it
      required the absent placebo arm to be true, and the data could
      not adjudicate between the readings. The placebo-controlled
      APPROVe trial (Bresalier et al., _NEJM_ 2005), originally
      designed to test Vioxx for colorectal-polyp prevention, was
      terminated early in September 2004 when its data safety monitoring
      board observed a doubling of cardiovascular events in the Vioxx
      arm relative to placebo. Merck withdrew the drug worldwide within
      days.#cn()
    ],
    // -- The Investigation --
    [
      Senate Finance Committee hearings in November 2004 and the
      subsequent FDA Office of Inspector General review found that
      signals of cardiovascular harm had been present in the trial
      record for years before withdrawal. FDA Office of Drug Safety
      scientist David Graham testified under oath that the
      cardiovascular risk had been visible to him by 2000, that he had
      been pressured by FDA management not to publish his estimate,
      and that he believed Vioxx had caused 88,000–139,000 excess
      heart attacks and strokes in the United States, of which 30–40%
      were probably fatal. The Graham et al. _Lancet_ 2005 analysis,
      using Kaiser Permanente data, produced a population-level
      estimate in similar range. Merck litigation discovery, made
      public through New Jersey and federal court filings and reported
      in the _NEJM_ editorial trail, included internal Merck
      communications and ghost-authorship patterns in published Vioxx
      papers; a 2008 _JAMA_ analysis by Ross et al. documented the
      publication-bias and authorship patterns directly.#cn() The harm
      was not hidden in some unmeasured corner — it sat in the trial
      record the whole time, waiting for an architecture that would
      carry it to a decision rather than leave it to interpretation.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability gap was in post-market surveillance: the
      disclosure architecture between manufacturer-held data, FDA
      reviewers, and prescribers did not aggregate the signal to a
      decision boundary for nearly four years. The FDA's MedWatch
      adverse-event reporting system relied on voluntary submissions
      structured to minimize signal, and was not adequate to the
      volume of the drug's distribution. A system that waits for a
      clinician to choose to file a report will always lag a harm
      spread thinly across millions of prescriptions, because no single
      prescriber sees enough of the pattern to recognize it. The
      Merck-side gap was structural in a different way: VIGOR was
      designed to test gastrointestinal safety (the COX-2 selling
      point), and the cardiovascular signal was a secondary finding
      that the trial was not powered to adjudicate against the
      naproxen-protective hypothesis. That trial-design choice
      compounded with a publication-bias pattern, an FDA
      adverse-event-reporting architecture insufficient for the
      population at risk, and a regulator–manufacturer disclosure
      protocol that had no decision boundary for ambiguous signals.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Merck eventually settled US litigation for about \$4.85 billion
      across approximately 27,000 plaintiffs. The case drove a
      coordinated regulatory response. The FDA Amendments Act of 2007
      gave the FDA explicit authority to require Risk Evaluation and
      Mitigation Strategies (REMS) and post-market study commitments
      as conditions of approval. In 2008 the FDA launched the
      Sentinel Initiative — an active post-market surveillance system
      that queries distributed health-data partners covering hundreds
      of millions of patient-years, rather than waiting for voluntary
      reports — a direct response to the Vioxx-era detection failure.
      The _NEJM_ tightened conflict-of-interest disclosure for trial
      reports; the _JAMA_ Ross et al. (2008) analysis became the
      reference point for publication-bias diagnosis in drug safety.
      By going out to the data instead of waiting for it to arrive,
      the reform inverted the logic that had let the signal sit
      unaggregated for years. The reform built the surveillance
      infrastructure that had not previously existed; the Vioxx
      record is what made the case for it.#cn()
    ],
  ),
  beats: (
    "Widely prescribed COX-2 inhibitor approved 1999; post-market surveillance thin relative to exposure",
    "VIGOR trial showed five-fold heart attack rate; Merck read comparator as protective instead",
    "Hearings and Graham testimony showed cardiovascular signals present in trial record years earlier",
    "Disclosure architecture between manufacturer data, FDA reviewers, and prescribers failed to aggregate signal",
    "Merck settled near five billion; REMS and Sentinel built active post-market surveillance",
  ),
  references: (
    [Bombardier, C. et al. (2000), "Comparison of upper gastrointestinal toxicity of rofecoxib and naproxen in patients with rheumatoid arthritis," VIGOR trial, _NEJM_ 343(21):1520–1528 — the five-fold myocardial-infarction signal and the naproxen-protective hypothesis.],
    [Bresalier, R. et al. (2005), "Cardiovascular events associated with rofecoxib in a colorectal adenoma chemoprevention trial," APPROVe, _NEJM_ 352(11):1092–1102 — placebo-controlled confirmation of cardiovascular risk; early trial termination.],
    [Graham, D. J. et al. (2005), "Risk of acute myocardial infarction and sudden cardiac death in patients treated with COX-2 selective and non-selective NSAIDs: nested case-control study," _Lancet_ 365(9458):475–481 — Kaiser Permanente population-level cardiovascular risk analysis.],
    [US Senate Committee on Finance, hearings on Vioxx and FDA's drug-safety system (November 18, 2004) — Graham testimony; "88,000 to 139,000 Americans" estimate of excess cardiovascular events; described FDA management pressure.],
    [Ross, J. S., Hill, K. P., Egilman, D. S., Krumholz, H. M. (2008), "Guest authorship and ghostwriting in publications related to rofecoxib," _JAMA_ 299(15):1800–1812 — publication-bias and ghost-authorship documentation from Merck litigation discovery.],
    [FDA Amendments Act of 2007 (P.L. 110-85) and FDA Sentinel Initiative documentation (2008–present) — REMS authority, post-market study requirements, and active distributed-data post-market surveillance.],
  ),
  quote: [The cardiovascular risk was visible in Merck's internal data years before the drug was withdrawn.],
  quote-source: "Paraphrasing David Graham (FDA Office of Drug Safety), Senate Finance Committee testimony, November 2004",
  le-insight: [
    Vioxx is the canonical pharmaceutical case for post-market
    surveillance as a capability deliverable. The signal existed; the
    institutional architecture to aggregate it did not. The reform
    pattern — Sentinel — built the architecture. The case is the
    drug-industry analog of the EHR case (Case 2): a measurement
    architecture too thin for the system that depended on it.
  ],
  lens-approach: [
    Vioxx is the canonical pharmaceutical post-deployment-surveillance
    case (induced 2.4; LENS D4+D4/PT5). LENS uses it in Domain 4
    (Test and Evaluation; CLO-4) for post-market surveillance as a
    measurement deliverable — the signal existed; the institutional
    architecture to aggregate it did not. LENS uses it in Domain 3 (Human-System Collaboration; CLO-4) for the change-control
    and disclosure architecture between manufacturer, regulator, and
    prescriber that determines whether ambiguous safety signals reach
    a decision boundary. Pair with Radiology AI (Case 35) as the
    post-market-surveillance failure pattern at a new technological
    boundary; pair with EHR/CPOE (Case 2) at the
    measurement-architecture-too-thin layer; pair with Medical Errors
    and IOM (Case 8) at the population-scale-instrument layer.
  ],
  literature-items: (
    [Graham et al. (2005), _Lancet_],
    [Avorn, _Powerful Medicines_ (2004)],
    [FDA Sentinel Initiative documentation],
  ),
  reflection-list: (
    [Identify a post-deployment surveillance architecture in your domain that is too thin for the scale of the system it monitors. What is the missing deliverable?],
    [Design the Sentinel-equivalent post-market surveillance system for a new domain.],
    [The VIGOR signal admitted two readings — harmful drug or protective comparator — and the data could not decide. Identify a measurement in your domain whose interpretation is underdetermined, and design the study or instrument that would force the question to a decision.],
  ),
  approaches: (
    during: (
      [Field an active post-market surveillance architecture sized to the exposed population before scale-up, so a harm spread thinly across millions can still aggregate to a decision boundary.],
      [Design trials and data collection to adjudicate between competing readings of a signal, rather than leaving an ambiguous result to the more comfortable interpretation.],
      [Treat signal-aggregation as a defined deliverable carrying evidence from manufacturer data through reviewers to prescribers, not a byproduct of voluntary reporting.],
    ),
    after: (
      [Audit the trial record and adverse-event data for signals already present but never carried to a decision, closing the lag between visibility and action.],
      [Monitor by querying health-data partners actively rather than waiting for voluntary reports that no single prescriber sees enough of the pattern to file.],
      [Sustain post-market surveillance funding against the commercial pressure to defer aggregation, since the cost of waiting compounds across the exposed population.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
)

// ---- Case 10 — theranos ----
#case(
  number: 10,
  slug: "theranos",
  title: "Theranos",
  year: "2003 – 2018",
  domains-list: ("healthcare", "tech"),
  modes-code: "GD",
  impact: "$9B valuation collapsed; thousands of patients given unreliable results; founder convicted on multiple counts of wire fraud",
  diagram: dgm.dgm-compare(
    "claim",
    "Edison",
    "reality",
    "Siemens",
    framing: "the device did not work; the regulatory seam between FDA and CLIA hid that fact",
    caption: "Theranos — fraud exploiting a regulatory seam between FDA and CLIA",
  ),
  kind: "failure",
  summary: [
    Theranos claimed a blood-testing device that could run hundreds of tests
    from a finger-stick drop. It did not work. Internal data showed accuracy
    far below what the company told investors, partners, and patients; to
    keep up appearances, Theranos ran most patient samples on conventional
    commercial analyzers and reported them as its own device's results. It
    reached a \$9-billion valuation and put unreliable tests in front of real
    patients through a Walgreens partnership. The fraud exploited a
    regulatory seam — the FDA had not validated the device, while the CLIA
    regime governing the lab did not match the company's product claims — and
    neither the board nor investors had the depth to challenge it; a
    journalist did. Elizabeth Holmes was convicted of wire fraud in 2022.
    Theranos is the book's case for fraud exploiting a governance gap between
    regulatory regimes.
  ],
  sections: (
    // -- Background --
    [
      Theranos claimed to have built a blood-testing platform — the "Edison"
      — that could perform hundreds of laboratory tests from a single
      finger-stick drop of blood, a promise that would have upended a
      diagnostics industry built on venous draws and large analyzers. It rode
      that claim to a \$9-billion valuation and a partnership putting its
      tests in Walgreens stores, carrying the unproven device straight to
      retail patients.#cn()
    ],
    // -- What Happened --
    [
      The device did not work. Internal data showed accuracy far below what
      the company represented to investors, partners, and patients — the gap
      between the claim and the instrument was known inside the company. To
      preserve the appearance of a working product, Theranos ran most patient
      samples on conventional commercial analyzers and reported the results
      as though they had come from its proprietary device, a substitution that
      kept the fiction alive while putting unreliable results in front of real
      patients making real medical decisions.#cn()
    ],
    // -- The Investigation --
    [
      The fraud exploited a regulatory seam: the FDA had not validated the
      device, while the CLIA regime that governs laboratory operation did not
      match the architecture of the company's product claims, and neither
      layer validated those claims independently — so the device fell into a
      gap each regulator assumed the other covered. The board, the investors,
      and Walgreens lacked the technical depth to challenge them, and a
      celebrity board offered prestige in place of scrutiny; the journalist
      John Carreyrou, and CMS inspectors who revoked Theranos's CLIA
      certificate in 2016, were what finally surfaced the truth from outside
      the failed oversight chain.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability gap sat in the regulatory architecture — at the boundary
      between two regimes, where a deliberate fraud could live because
      neither the FDA nor CLIA owned end-to-end validation of a novel
      diagnostic making clinical claims, and an unowned boundary is exactly
      the shelter a fraud needs. The governance lesson is that the seam
      between regulators is itself a place that must be engineered, because it
      is exactly where a bad actor will operate — choosing the gap precisely
      because no one is watching it.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Theranos collapsed, its CLIA certificate was revoked, and Elizabeth
      Holmes was convicted of multiple counts of wire fraud in 2022, the
      conviction closing a chapter the regulators had been slow to open.#cn()
      The case is canonical in business education for fraud-as-product-strategy
      and in health regulation for the gap that let unvalidated clinical
      tests reach patients — a reminder that "disruptive" claims in a
      regulated domain demand more validation, not less, precisely because the
      novelty is what tempts the oversight regimes to defer to one another.
    ],
  ),
  beats: (
    "Theranos claimed an Edison device running hundreds of tests from one finger-stick, reaching a nine-billion-dollar valuation",
    "The device did not work; Theranos secretly ran samples on commercial analyzers and reported them as its own",
    "Carreyrou's reporting and CMS inspectors surfaced the fraud after the FDA-CLIA seam left validation unowned",
    "Neither regulator validated novel clinical claims end-to-end; a celebrity board offered prestige instead of scrutiny",
    "CLIA certificate revoked, the company collapsed, and Holmes was convicted of multiple wire-fraud counts",
  ),
  references: (
    [_United States v. Elizabeth Holmes_ (N.D. Cal., 2018–2022) — the indictment and conviction.],
    [J. Carreyrou, _Bad Blood_ (2018) — the device's failure and the commercial-analyzer substitution.],
    [CMS inspection reports and the revocation of Theranos's CLIA certificate (2015–2016).],
    [Holmes indictment (2018) — Theranos "misrepresented to investors, regulators, and ultimately patients the accuracy of its blood-testing technology" (quoted).],
    [Medical-device regulation literature on the FDA–CLIA boundary.],
  ),
  quote: [The company misrepresented to investors, regulators, and ultimately patients the accuracy of its blood-testing technology.],
  quote-source: "U.S. v. Holmes, indictment, 2018",
  le-insight: [
    Theranos is the canonical case for fraud exploiting the seam
    between two regulatory regimes. The FDA had not approved the
    device; CLIA accepted the laboratory operation. Neither layer had
    the capability to validate the claims independently. The
    capability gap was at the regulatory architecture.
  ],
  lens-approach: [
    LENS uses Theranos in LEN 7 for the regulatory-seam failure and
    in LEN 4 for the measurement-validation gap. The case demonstrates
    that capability engineering at the boundary between regulatory
    regimes is itself a governance deliverable.
  ],
  literature-items: (
    [Carreyrou (2018), _Bad Blood_],
    [Theranos Inc. CMS inspection reports (2015–2016)],
    [Faulkner, _Medical Device Regulation_ (2019)],
  ),
  reflection-list: (
    [Identify a regulatory seam in your domain where two regimes meet without an explicit handoff. What could exploit it?],
    [Design the validation regime that would have caught Theranos in 2013.],
    [Theranos's board and investors had prestige but not the technical depth to challenge the device's claims. Where in your domain does reputational authority stand in for the expertise needed to validate what is being approved?],
  ),
  approaches: (
    during: (
      [Assign explicit end-to-end validation ownership across the FDA–CLIA-style seam, so a novel diagnostic cannot fall into a gap each regulator assumes the other covers.],
      [Require independent verification of accuracy claims against the actual device before clinical use, not against a substituted commercial analyzer.],
      [Staff the oversight chain — board, partners, regulators — with the technical depth to interrogate the claims, treating prestige as no substitute for expertise.],
    ),
    after: (
      [Audit whether reported results actually came from the validated instrument, watching for the substitution pattern that hides a non-working device.],
      [Monitor the regulatory seam as a standing risk, since a determined fraud will choose precisely the boundary no single regime owns.],
      [Protect external scrutiny — journalists, inspectors, whistleblowers — as the backstop that surfaces what a captured oversight chain misses.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
  scale: "big",
  induced-anchor: "5.3",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-5",
)
