// ============================================================
// Part VI — Disaster Prevention & Recovery · What Works — and the Frontier (Chapter 12)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#let phase-mark(t) = if view == "book" {
  v(10pt)
  block({
    text(font: sans, size: 8pt, tracking: 2pt, fill: teal, upper(t))
    v(3pt)
    line(length: 24mm, stroke: 0.8pt + gold)
  })
  v(4pt)
}
#chapter-divider(
  part: "Part VI — Disaster Prevention & Recovery",
  number: "12",
  title: "Disaster Prevention & Recovery — What Works — and the Frontier",
  subtitle: "Prevention as a deliverable before the event; recovery as a discipline after it.",
  epigraph: [The disaster that did not happen had a budget, an owner, and a deadline.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

#phase-mark("Before the event — prevention")

// ---- Case 170 — navy-subsafe-requirements-as-a-non ----
#case(
  number: 170,
  slug: "navy-subsafe-requirements-as-a-non",
  title: "Navy SUBSAFE — Requirements as a Non-Negotiable Sustainment Deliverable",
  year: "1963 – present",
  domains-list: ("naval engineering", "defense", "safety certification"),
  modes-code: "GKH",
  impact: "From 1915 to 1963 the US Navy lost 16 submarines to non-combat causes; since 1963 it has lost one — USS Scorpion, the only post-1963 loss that was not SUBSAFE-certified. The Columbia Accident Investigation Board cited SUBSAFE as a model NASA should emulate",
  kind: "intervention",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "1.4",
  lens-anchor: "D1/PT3",
  clo-anchor: "CLO-1, CLO-4",
  summary: [
    USS Thresher was lost with 129 aboard on April 10, 1963. Within
    fifty-four days the US Navy created SUBSAFE — a program that
    certifies design, material, fabrication, and testing for every
    component inside the submarine's watertight-integrity boundary and
    its safe-recovery systems. The requirements were issued by
    December 20 of that same year. The program demands what it calls
    "Objective Quality Evidence" for every step — verifiable fact, not
    probabilistic assessment — and pairs that with annual training and
    recurring audits across the entire fleet lifecycle. The documented
    result is a step-change in non-combat submarine loss rates: 16
    losses across the 48 years before SUBSAFE; one loss (USS Scorpion,
    not SUBSAFE-certified) across the 62 years since. The Columbia
    Accident Investigation Board cited SUBSAFE in 2003 as the model
    NASA should emulate. The honest hedge survives: the zero-loss
    record is correlational across decades with many co-varying
    factors — submarine design, reactor maturity, operating procedures,
    intelligence environment — and SUBSAFE's own program literature
    notes that the requirements can look "excessive." The case is the
    archetype of treating capability requirements as a recurring,
    auditable, non-waiverable deliverable across the entire system
    lifecycle, with the hedges that decades-long
    capability-engineering claims have to carry.
  ],
  sections: (
    [
      USS Thresher, the lead boat of a new class of US nuclear attack
      submarines, was lost on April 10, 1963 during post-overhaul
      sea trials off Cape Cod. All 129 aboard died. The investigation
      identified a likely sequence — silver-brazed piping joint
      failure, flooding, electrical fault that scrammed the reactor,
      inability to blow ballast tanks fast enough to recover — that
      pointed not to a single defective component but to a gap in the
      whole way the fleet certified the watertight-integrity
      boundary and the systems for recovering from a flooding casualty.#cn()
    ],
    [
      The Navy's response was institutional speed of an unusual
      order. SUBSAFE was created within fifty-four days of the loss;
      formal requirements were issued by December 20, 1963. The
      program scopes itself to two things: the watertight-integrity
      boundary (every component that holds back seawater at depth),
      and the safe-recovery systems (the ballast-blow and propulsion
      systems that get a boat to the surface if flooding starts).
      Inside that scope it demands certification of design,
      material, fabrication, testing, and configuration control —
      with what the program calls "Objective Quality Evidence"
      attached at every step. That phrase is the load-bearing
      cultural artifact of the program: verifiable fact, not
      probabilistic assessment, is what the certification rests on.#cn()
    ],
    [
      What makes SUBSAFE a sustainment intervention rather than a
      design intervention is the lifecycle discipline. Annual
      training across the fleet, recurring audits at shipyards and
      tenders, change-control on every modification, and a culture
      that treats requirements as non-waiverable artifacts the
      program-management chain cannot trade away under schedule
      pressure. The certification is not done at launch; it is the
      condition of being allowed to dive. Each overhaul re-engages
      the certification process. The cost is real — the program's
      own histories concede the requirements can look "excessive" —
      and the program treats that cost as the price of the
      capability the certification produces.#cn()
    ],
    [
      The documented outcome is one of the cleanest before/after
      records in the safety-engineering literature. From 1915 to
      1963 the Navy lost 16 submarines to non-combat causes
      (collision, flooding, equipment failure, fire). Since 1963 it
      has lost one — USS Scorpion in 1968, the only post-1963 loss
      that was not SUBSAFE-certified. In 2003 the Columbia Accident
      Investigation Board, examining the loss of the Space Shuttle
      Columbia, cited SUBSAFE in its final report as the
      capability-certification model NASA should adopt for human
      spaceflight. The endorsement is from an investigation body
      with no Navy institutional stake, examining a different
      catastrophic-system domain.#cn()
    ],
    [
      The hedge has to survive into the case. The zero-loss record
      since 1963 is correlational across more than six decades and
      many co-varying factors: submarine design generations, reactor
      maturity, training systems, operating procedures, intelligence
      environment, the absence of certain operational stressors that
      the Cold War sometimes produced. Attributing the entire
      outcome to SUBSAFE alone overstates what the evidence can
      support. What the evidence does support is that the
      *program* — the requirements discipline, the Objective Quality
      Evidence standard, the lifecycle audit cycle, the
      non-waiverable culture — has been a defining feature of the
      capability since 1963, and has survived endorsement by an
      independent investigation in a different domain. The case
      teaches the requirements-as-sustainment-deliverable form at
      its strongest, with the honest hedge that decades-long
      capability claims have to carry.#cn()
    ],
  ),
  beats: (
    "USS Thresher lost April 1963 with 129 aboard; investigation traces the gap to certification of the watertight-integrity boundary",
    "SUBSAFE created within 54 days; formal requirements issued by December 20 1963",
    "'Objective Quality Evidence' — verifiable fact, not probabilistic assessment — at every certification step; annual training and recurring audits",
    "Non-combat losses: 16 in the 48 years before; one (Scorpion, uncertified) in the 62 years since; Columbia Accident Investigation Board endorsement",
    "Zero-loss record is correlational across many co-varying factors over decades; hedge preserved",
  ),
  approaches: (
    during: (
      [Scope the certification boundary tightly — for SUBSAFE, the watertight-integrity boundary and the safe-recovery systems — so the discipline is enforceable, not aspirational across an undifferentiated whole.],
      [Make "Objective Quality Evidence" the cultural standard: verifiable fact at every certification step, not probabilistic assessment, and not signature-without-evidence.],
      [Treat the requirements as non-waiverable artifacts the program-management chain cannot trade away under schedule pressure; the program's resistance to waivers is the program.],
    ),
    after: (
      [Operate the lifecycle discipline as the program: annual training, recurring audits, change-control on every modification, certification re-engaged at each overhaul.],
      [Carry the correlational hedge in any communication of the outcome record; a decades-long zero-loss record across co-varying factors is the strongest available evidence the program works, not closed proof.],
      [Treat external endorsement (Columbia Accident Investigation Board) as a teaching artifact about the *form* of the program, transferable to other catastrophic-system domains under their own scope discipline.],
    ),
  ),
  references: (
    [Rear Admiral Paul E. Sullivan, statement to House Science Committee (2003), NASA/Columbia archive — primary congressional record on SUBSAFE.],
    [MIT Press, "SUBSAFE: An Example of a Successful Safety Program" — book chapter (open access).],
    [NASA SMA (2006), "USS Thresher Lessons Learned" briefing — safety-message archive.],
    [Columbia Accident Investigation Board (2003), final report — Volume I, endorsement of SUBSAFE as a model for NASA.],
    [US Navy NAVSEA, SUBSAFE program documentation — operating program publications.],
  ),
  quote: [Objective Quality Evidence — verifiable fact, not probabilistic assessment — is the cultural artifact the program is built on.],
  quote-source: "Editors' synthesis of the SUBSAFE program literature.",
  le-insight: [
    SUBSAFE is the archetype of treating capability requirements
    as a recurring, auditable, non-waiverable deliverable across
    the entire system lifecycle. The before/after non-combat-loss
    record is one of the cleanest in safety engineering — and
    correlational across many co-varying factors over six decades.
    The hedge is part of the case.
  ],
  lens-approach: [
    SUBSAFE is the canonical sustainment-engineering case
    (induced 1.4; LENS D1/PT3). LENS uses it in Domain 1
    (Systems Analysis) for the requirements-as-deliverable
    discipline; in Domain 4 (Test and Evaluation) for the
    Objective-Quality-Evidence standard and the
    recurring-audit cycle; and in Domain 5 (Navigating
    Sociotechnical Constraints) for the non-waiverable
    culture that resists schedule pressure. Adjacent to the
    nurse-ratios case (Case 11) at the requirements-becomes-
    engineered layer, and to the WHO Surgical Checklist
    (Case 23) at the mandatory-mechanism layer.
  ],
  literature-items: (
    [Sullivan (2003), House Science Committee statement],
    [MIT Press, "SUBSAFE: An Example of a Successful Safety Program"],
    [Columbia Accident Investigation Board (2003), final report],
  ),
  reflection-list: (
    [Identify a capability in your domain where the certification is done at launch and not re-engaged across the lifecycle. What is the analog of SUBSAFE's annual training and recurring audit — and what is the resistance to it?],
    [Specify what "Objective Quality Evidence" would mean in your context: verifiable fact at every step rather than signature-without-evidence. Which steps in your current process would not survive that standard?],
    [SUBSAFE's outcome record is correlational across many co-varying factors. What is the minimum additional evidence you would require before treating a similar long-run record in your domain as evidence the program is what produced the outcome?],
  ),
  courses: ("LEN 1", "LEN 5", "LEN 7"),
)

// ---- Case 171 — y2k-remediation-the-aging-system ----
#case(
  number: 171,
  slug: "y2k-remediation-the-aging-system",
  title: "Y2K Remediation — The Aging-System Transition That Worked Because It Was Believed",
  year: "1996 – 2000",
  domains-list: ("software sustainment", "critical infrastructure", "federal program management"),
  modes-code: "GDK",
  impact: "The US federal government and the broader public and private sectors invested an estimated 100 billion dollars (US) over four years remediating two-digit-year date handling in legacy systems; the January 1, 2000 rollover passed with minimal disruption to critical infrastructure — the success contributed to the durable counterfactual debate about whether the threat justified the spending",
  kind: "intervention",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "7.1",
  lens-anchor: "D1/PT4",
  clo-anchor: "CLO-1, CLO-5",
  summary: [
    The "Year 2000 problem" — Y2K — was the structural consequence
    of decades of legacy software representing year fields as two
    digits, ambiguous between 1900 and 2000 at the rollover. The
    affected code ran banking systems, embedded controllers in
    industrial infrastructure, federal benefit-payment systems, air
    traffic and rail systems, and the broader public and private
    software base. From 1996 through December 1999 the US federal
    government, under sustained Office of Management and Budget
    reporting and GAO audit, drove an inventory-and-remediation
    program across mission-critical federal systems, while the
    private sector executed a parallel multi-year effort. Estimates
    of the total US investment range around \$100 billion. The
    January 1, 2000 rollover passed with minimal disruption to
    critical infrastructure. The case is the canonical instance of
    a believed-and-treated aging-system transition in the recent
    regulatory record: the threat was specific, the program was
    inventoried at line-item granularity, the deadline was
    immovable, and the institutional discipline was sustained over
    four years. The hedge survives in the durable counterfactual
    debate the success itself produced — would the rollover have
    passed similarly with less spending? — and the published GAO
    record characterizes the program as a major federal management
    success without claiming the counterfactual is closed.
  ],
  sections: (
    [
      The Y2K problem was an artifact of decades of software
      development in which year fields had been stored as two
      digits to save memory and database space when memory and
      database space were expensive. By the mid-1990s the code
      base had aged into a regime where the two-digit
      representation was a foreseeable failure: date arithmetic
      across the January 1, 2000 boundary could return wildly
      incorrect results — interest calculations, scheduling logic,
      embedded controller timestamps, federal benefit eligibility
      checks. The structural form is the C7 case par excellence:
      legacy code aging past the assumptions of its original
      design, with a hard, foreseeable deadline.#cn()
    ],
    [
      The federal-program-management response began in earnest in
      1996 and accelerated through 1997 with the creation of the
      President's Council on Year 2000 Conversion and the OMB
      quarterly reporting cycle. Federal mission-critical systems
      were inventoried at line-item granularity — the GAO report
      series tracked the proportion of federal mission-critical
      systems Y2K-compliant on a quarterly cadence, agency by
      agency. The discipline of the program rested on three
      institutional features: line-item inventory at the level of
      the actual systems, OMB-enforced quarterly status reporting,
      and GAO-sustained external audit that named agencies whose
      remediation lagged.#cn()
    ],
    [
      The parallel private-sector effort was as large and is
      harder to characterize precisely. Total US investment
      estimates cluster around the \$100 billion figure; global
      estimates are larger. Major financial institutions, utilities,
      telecommunications providers, and industrial operators ran
      their own multi-year inventory-and-remediation programs.
      Industry-coordination bodies (banking, electric utility,
      telecom) operated parallel structures to the federal
      program's coordination role. The deadline forced parallel
      execution across the public and private sectors at a scale
      and pace that legacy-software remediation does not usually
      see.#cn()
    ],
    [
      January 1, 2000 passed with minimal disruption to critical
      infrastructure. A small number of localized incidents
      occurred and were absorbed; the catastrophic-scenario
      possibilities the program had been built to prevent — major
      financial system failure, power-grid cascade, air-traffic
      disruption, federal benefit payment failure — did not
      materialize. The GAO published a sustained record of the
      federal program through and past the rollover; the broader
      retrospective literature characterizes the four-year effort
      as one of the major federal program-management successes of
      the era.#cn()
    ],
    [
      The hedge that survives the case is the counterfactual debate
      the success itself produced. The rollover passed; the
      counterfactual — whether the same outcome would have obtained
      with substantially less spending — is structurally
      unobservable, because the program ran. The post-2000
      retrospective literature includes serious arguments on both
      sides: that the threat was real and the investment was the
      reason the rollover passed quietly, and that the investment
      was substantially overestimated relative to the actual
      latent failure population. The case is teachable on the
      institutional discipline — line-item inventory, OMB-enforced
      reporting, GAO audit, sustained four-year cadence, immovable
      deadline — and on the structural feature that the C7
      transition succeeded because it was believed and treated.
      The counterfactual debate is preserved as part of the case
      rather than smoothed away.#cn()
    ],
  ),
  beats: (
    "Y2K problem: decades of two-digit year fields in legacy code, ambiguous at the 1999/2000 rollover, with a hard immovable deadline",
    "Federal-program-management response from 1996 onward: line-item inventory, OMB quarterly reporting, GAO sustained external audit",
    "Parallel private-sector effort across financial, utility, telecom, industrial operators; total US investment estimates around \\$100 billion",
    "January 1, 2000 rollover passed with minimal disruption to critical infrastructure; widely characterized as a major program-management success",
    "Counterfactual debate preserved: would the rollover have passed similarly with less spending? — structurally unobservable; the case is teachable on the institutional discipline",
  ),
  approaches: (
    during: (
      [Inventory the legacy at line-item granularity — actual systems, not categories — so the remediation status can be reported and audited against a denominator the program can defend.],
      [Build the immovable deadline into the program's operating discipline; the Y2K deadline could not be rebaselined, and the program's discipline came from the deadline's hardness rather than from management exhortation.],
      [Pair internal OMB reporting (the program's own status discipline) with external GAO audit (independent verification); the combination is what produced the institutional record the retrospective rests on.],
    ),
    after: (
      [Preserve the counterfactual hedge: a transition that succeeds because it was treated cannot prove the threat was as large as the response implies. The case is teachable on the institutional discipline, not on the closed answer to "was it worth it."],
      [Carry the public/private parallel-execution lesson: the federal program and the broader private-sector effort moved together because the deadline was external to both, and the coordination mechanisms operated alongside each other rather than depending on each other.],
      [Treat the Y2K case as part of the v2 aging-system quartet (Cases 114, 115, 156) — the instance where the transition was a software-sustainment problem with the largest counterfactual-debate hedge.],
    ),
  ),
  references: (
    [Government Accountability Office, _Year 2000 Computing Challenge_ report series (1996–2000), particularly GAO/AIMD-99-225, GAO/T-AIMD-00-30, and GAO/AIMD-00-1 — line-item federal-program-management record.],
    [Office of Management and Budget, quarterly reports on federal Y2K remediation status (1997–1999) — program-self-report tier.],
    [President's Council on Year 2000 Conversion, _The Journey to Y2K_ final report (2000) — institutional retrospective of the federal coordination effort.],
    [Anson, "The Y2K Bug: A Historical and Retrospective Analysis," _Computer_ (IEEE), retrospective literature on the counterfactual debate.],
    [National Research Council, _Continued Review of the Tax Systems Modernization of the Internal Revenue Service_ — Y2K-related sustainment-engineering record.],
  ),
  quote: [The C7 transition succeeded because it was believed and treated. The counterfactual — whether the threat was as large as the response implies — the program structurally cannot answer.],
  quote-source: "Editors' synthesis of the GAO Y2K report series and the post-2000 retrospective literature.",
  le-insight: [
    Y2K remediation is the canonical case of a believed-and-
    treated aging-system transition. Line-item inventory, OMB
    quarterly reporting, GAO sustained audit, an immovable
    deadline, and a sustained four-year program-management
    cadence converted a foreseeable legacy-software failure into
    a transition the rollover passed quietly. The counterfactual
    debate the success produced is part of the case.
  ],
  lens-approach: [
    Y2K is the legacy-software-sustainment case (induced 7.1;
    LENS D1/PT4) — Domain 1 for line-item inventory + immovable
    deadline; Domain 5 for OMB-reporting + GAO-audit. Closes C7
    with Cases 114, 115, 156. Counterfactual-debate hedge
    preserved.
  ],
  literature-items: (
    [GAO _Year 2000 Computing Challenge_ report series],
    [President's Council on Y2K Conversion, _The Journey to Y2K_ (2000)],
    [OMB quarterly Y2K status reports (1997–1999)],
  ),
  reflection-list: (
    [Identify a legacy-software or aging-system transition in your domain whose deadline is foreseeable but rebaselinable. What would the program look like if the deadline were treated as immovable — line-item inventory, quarterly reporting, sustained external audit — and what is the institutional cost of treating it that way?],
    [Specify the public/private parallel-execution structure you would build if the transition reached beyond a single organization. The Y2K coordination did not depend on one body controlling the others; it depended on the external deadline being equally hard for everyone.],
    [The Y2K success produces a counterfactual debate. Identify a similar success in your domain whose justification rests on the absence of the failure it was built to prevent. What institutional discipline keeps the historical record honest about the counterfactual without diminishing the discipline that produced the outcome?],
  ),
  courses: ("LEN 1", "LEN 7", "LEN 8"),
)

#phase-mark("After the event — response and recovery")

// ---- Case 172 — inpo-and-the-nuclear-academy ----
#case(
  number: 172,
  slug: "inpo-and-the-nuclear-academy",
  title: "INPO and the Nuclear Academy",
  year: "1979 – present",
  domains-list: ("energy",),
  modes-code: "TKG",
  impact: "No INES-level event at U.S. commercial reactors post-INPO; sustained improvement in INPO/WANO performance indicators across the industry",
  diagram: dgm.dgm-inpo,
  kind: "intervention",
  summary: [
    Three Mile Island did not produce a reactor accident at the next plant
    over — it produced an institution. Within months of the 1979 Kemeny
    Commission report, the U.S. commercial nuclear industry founded the
    Institute of Nuclear Power Operations on a stark premise: an accident
    at any single plant would threaten every operator's license, and no
    utility could engineer its safety capability alone. Funded by the
    utilities it evaluated and operating without statutory authority, INPO
    set training and certification standards, accredited every plant's
    programs through the National Academy for Nuclear Training, and ran
    peer evaluations in which operators from one utility scrutinized
    another's control rooms and records. The pre-TMI culture of complacency
    gave way to mandated vigilance. No U.S. commercial reactor has had a
    significant INES-level event since.
  ],
  sections: (
    // -- Background --
    [
      The 1979 partial meltdown at Three Mile Island exposed not just a
      plant-level failure but an industry with no shared mechanism for
      learning. The Kemeny Commission traced the accident in part to a
      pervasive "mindset" of complacency, in which each utility operated
      alone and no institution carried lessons from one plant to the rest.
      The structural problem sat above any single control room: a lesson
      learned at one plant had no path to the others, so the same latent
      failure could surface repeatedly across an industry that never
      compared notes.#cn()
    ],
    // -- The Intervention --
    [
      Within months of the Kemeny report, the utilities founded the
      Institute of Nuclear Power Operations. Its premise was that an
      accident anywhere threatened everyone's license to operate. INPO set
      training and certification standards for operators and supervisors,
      and in 1985 the National Academy for Nuclear Training began
      accrediting each facility's programs. The shared-exposure premise was
      what gave a body with no statutory power its teeth — every utility had
      a direct stake in every other utility's competence, because one
      failure could end the whole industry's license to operate.#cn()
    ],
    // -- How It Worked --
    [
      INPO's load-bearing mechanism was honest peer review: teams of
      operators from one utility examined another's procedures, control
      rooms, and incident records, reporting candidly because every utility
      was, in the title of one history, a hostage of the others. Funded by
      the utilities it evaluated and holding no statutory authority, INPO
      depended on shared catastrophic exposure to make its findings stick.
      Peer review by working operators rather than distant regulators also
      meant the examiners knew what to look for and the findings carried the
      weight of professional judgment, not just rule compliance.#cn()
    ],
    // -- The Evidence --
    [
      The post-TMI culture shifted from smugness to mandated vigilance, and
      U.S. commercial reactors have recorded no significant INES-level
      event since INPO's founding. Industry performance indicators tracked
      by INPO and its international counterpart WANO improved steadily and
      broadly across the fleet. The broad, steady improvement across the
      whole fleet — not just the strongest plants — is the signature of a
      learning mechanism working as designed: the laggards were pulled up by
      the same peer-review architecture that held the leaders to standard.#cn()
    ],
    // -- What Transferred --
    [
      INPO is the strongest evidence in any domain that capability
      engineering can be undertaken at the level of an entire industry
      rather than a single organization. Its enabling conditions — shared
      catastrophic exposure, regulatory legitimacy, and an honest
      peer-review architecture — recur wherever one operator's failure can
      damage every operator, and it informed the founding of WANO after
      Chernobyl. That the model crossed national borders to WANO is itself
      evidence that the design is portable: the enabling conditions, not the
      particular American institution, are what make the mechanism work.#cn()
    ],
  ),
  beats: (
    "Three Mile Island exposed an industry where lessons at one plant never reached others",
    "Utilities founded INPO within months on the premise one accident threatened everyone's license",
    "Honest peer review by working operators gave a non-statutory body its enforcement weight",
    "No significant INES-level event since founding; fleet-wide performance indicators improved broadly across the industry",
    "Shared exposure, regulatory legitimacy, and peer review crossed borders to WANO after Chernobyl",
  ),
  references: (
    [Rees, J. (1994), _Hostages of Each Other: The Transformation of Nuclear Safety since Three Mile Island_ — INPO's design and the "hostages" premise (paraphrased).],
    [_Report of the President's Commission on the Accident at Three Mile Island_ (Kemeny Commission, 1979) — the pre-TMI culture.],
    [Nuclear Energy Institute, "Lessons from the 1979 Accident at Three Mile Island"; National Academy for Nuclear Training — accreditation and peer evaluation.],
    [World Nuclear Association — Three Mile Island Accident; INPO/WANO performance indicators.],
    [Marsh (2019), "INPO and the Transformation of Nuclear Safety Culture."],
  ),
  quote: [Every utility recognized that an accident at any single plant would affect every operator's license to operate.],
  quote-source: "Paraphrasing the institutional analysis in Rees, Hostages of Each Other, 1994",
  le-insight: [
    INPO is the strongest evidence in any domain that capability
    engineering can be undertaken at the level of an *industry*, not just
    an organization. The conditions that made it possible — shared
    catastrophic exposure, regulatory legitimacy, an honest peer-review
    architecture — appear wherever a single failure can damage every
    operator.
  ],
  lens-approach: [
    LENS uses INPO in LEN 8 as the canonical example of industry-level
    learning: students identify the structural conditions in their own
    domain that would permit (or block) an INPO-equivalent and design the
    peer-review architecture required. LEN 1 uses the founding moment —
    nine months after TMI — to discuss the *speed* a credible response to
    catastrophe demands.
  ],
  literature-items: (
    [Rees (1994), _Hostages of Each Other_],
    [Weick & Sutcliffe, _Managing the Unexpected_ (2007)],
  ),
  reflection-list: (
    [What is the equivalent of "an accident at any single plant affects every operator" in your domain? If the answer is "nothing," what does that tell you?],
    [INPO was stood up in nine months. Pick a current cross-organizational capability problem and write the nine-month deliverable that would constitute a credible response.],
    [INPO held no statutory authority yet made its findings stick through shared catastrophic exposure and peer review. Design the non-statutory mechanism that could enforce a standard in your domain, and name the shared stake that would give it teeth.],
  ),
  approaches: (
    during: (
      [Found the body on shared catastrophic exposure — make explicit that one operator's failure threatens every operator's license — so members have a direct stake in each other's competence.],
      [Set common training, certification, and accreditation standards across the industry rather than leaving each organization to learn alone.],
      [Staff peer review with working operators, not distant regulators, so examiners know what to look for and findings carry professional weight beyond rule compliance.],
    ),
    after: (
      [Track fleet-wide performance indicators and confirm the laggards are being pulled up, not just the leaders held to standard — the signature of a learning mechanism working.],
      [Sustain candid peer review by keeping the body funded by and accountable to its members, so the honest examination that makes it effective does not erode into formality.],
      [Export the enabling conditions rather than the institution when scaling (as INPO informed WANO), adapting the shared-exposure-plus-peer-review design to each new context.],
    ),
  ),
  courses: ("LEN 1", "LEN 8", "LEN 3",),
  scale: "big",
  induced-anchor: "6.1",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-5",
)

// ---- Case 173 — tylenol-recall ----
#case(
  number: 173,
  slug: "tylenol-recall",
  title: "Tylenol Recall",
  year: "1982",
  domains-list: ("healthcare", "industrial"),
  modes-code: "GN",
  impact: "Foundational U.S. corporate crisis-management case; produced tamper-evident packaging regulation and modern recall practice",
  diagram: dgm.dgm-stat(
    "31M",
    "bottles recalled · ~$100M cost",
    micro: "the pre-committed institutional credo became operational under stress",
    caption: "Tylenol — values pre-committed in writing, executed under crisis",
  ),
  kind: "intervention",
  summary: [
    In 1982, seven people in the Chicago area died after taking Tylenol
    capsules laced with potassium cyanide. Not knowing who was responsible
    or how widespread the tampering was, Johnson & Johnson recalled every
    Tylenol product nationwide — 31 million bottles, at a cost of roughly
    \$100 million — suspended advertising, and engaged openly with the FBI
    and FDA. The response was unprecedented in U.S. corporate practice, and
    it was a direct application of the J&J Credo, written in 1943, which
    had pre-specified that the company's first responsibility was to its
    customers. The reform that followed reshaped consumer packaging
    worldwide — tamper-evident seals and blister packs — and the FDA issued
    tamper-resistant-packaging rules within months. Tylenol recovered its
    market share within a year.
  ],
  sections: (
    // -- Background --
    [
      Johnson & Johnson's corporate Credo, written in 1943, pre-specified
      that the company's first responsibility was to the patients and
      consumers who used its products, ahead of shareholders. For four
      decades it was a statement of values; in 1982 it became an
      operational decision rule under extreme pressure. The ordering was
      explicit — customers ahead of shareholders — which is precisely the
      ranking that crisis pressure inverts, so committing to it in advance
      pre-decided the hardest trade-off before it had to be faced.#cn()
    ],
    // -- The Intervention --
    [
      After seven people in the Chicago area died from Tylenol capsules
      laced with potassium cyanide, and with the source and scope of the
      tampering unknown, Johnson & Johnson recalled every Tylenol product
      nationwide — about 31 million bottles, at a cost near \$100 million —
      suspended all advertising, and engaged publicly with the FBI and FDA
      rather than minimizing exposure. Recalling nationwide despite the
      tampering being known only in Chicago was the decisive choice — it
      treated the unknown scope as a reason to protect every customer rather
      than as room to limit the company's own exposure.#cn()
    ],
    // -- How It Worked --
    [
      The load-bearing element was a commitment pre-committed in writing.
      Because the Credo had already decided, decades earlier, that the
      customer came first, the 1982 leadership did not have to improvise an
      ethical calculus under crisis — it executed a pre-made decision. CEO
      James Burke later credited the Credo with making clear "exactly what
      we were all about" the moment the deaths occurred. Pre-commitment
      worked because it moved the decision out of the moment of maximum
      pressure — when fear and legal caution push hardest toward
      minimization — and into a calmer time when the right ordering could be
      set down without that distortion.#cn()
    ],
    // -- The Evidence --
    [
      The response, unprecedented in U.S. corporate practice, preserved
      public trust: Tylenol recovered its market share within a year
      despite the enormous short-term cost. The case became the canonical
      positive example in business education of crisis response driven by
      capability commitment rather than legal minimization. The market
      recovery is what makes the case persuasive rather than merely
      admirable — the \$100 million spent protecting customers was repaid in
      the trust that brought them back, so the pre-committed choice proved
      sound on its own terms.#cn()
    ],
    // -- What Transferred --
    [
      The reform reshaped consumer-product packaging worldwide —
      tamper-evident seals, blister packs, and caplet forms became standard
      — and the FDA promulgated tamper-resistant-packaging regulations
      within months. The deeper transfer is the principle that values must
      be pre-committed in writing to be operational under stress, not
      invented in the moment. The packaging reform and the decision-rule
      principle are the two layers of the transfer — one a physical
      safeguard against the specific threat, the other an institutional
      safeguard against the improvisation that crisis invites.#cn()
    ],
  ),
  beats: (
    "The 1943 Credo pre-specified customers ahead of shareholders, ranking the trade-off crisis pressure inverts",
    "J&J recalled 31 million bottles nationwide and engaged openly with regulators despite localized tampering",
    "Pre-committed values moved the hardest decision out of the moment of maximum pressure",
    "Market share recovered within a year; trust repaid the hundred million spent protecting customers",
    "Tamper-evident packaging became standard and pre-committed values emerged as the deeper institutional principle",
  ),
  references: (
    [Kaplan, T. (2014), _The Tylenol Crisis_ — the recall and corporate response.],
    [James Burke (J&J CEO), in _Lasting Leadership_ (Wharton) — the Credo quote.],
    [Greyser, S., _Johnson & Johnson: The Tylenol Tragedy_ (HBS case, 1992) — market recovery and crisis management.],
    [FDA Final Rule on Tamper-Resistant Packaging (1982) — the packaging reform.],
    [Edmondson, A. (2018), _The Fearless Organization_ — pre-committed values under stress.],
  ),
  quote: [The Credo is all about the consumer. When those seven deaths occurred, the Credo made it very clear at that point exactly what we were all about.],
  quote-source: "James Burke (Johnson & Johnson CEO), quoted in Lasting Leadership (Wharton)",
  le-insight: [
    Tylenol is the canonical positive case for institutional response
    to crisis. The capability that was load-bearing was the
    pre-specified institutional commitment in the Credo. The crisis
    decision had been made decades earlier; in 1982 it was executed.
    The case is the strongest evidence in the business-ethics dataset
    that values must be pre-committed in writing to be operational
    under stress.
  ],
  lens-approach: [
    LENS uses Tylenol in LEN 7 as the foundational positive case for
    institutional governance under crisis and in LEN 10 (capstone) as a
    worked example of pre-committed capability that executed under
    operational pressure.
  ],
  literature-items: (
    [Kaplan (2014), _The Tylenol Crisis_],
    [Edmondson (2018), _The Fearless Organization_],
    [Greyser, HBS case studies],
  ),
  reflection-list: (
    [What is your institution's equivalent of the J&J Credo, and is it operational under crisis or aspirational?],
    [Pre-commitment is hard to enforce later. Design the institutional architecture that makes a Tylenol-style response the only available option in the worst case.],
    [J&J recalled nationwide while the tampering was known only in Chicago, treating unknown scope as a reason to protect everyone. Identify a decision in your domain where uncertainty currently licenses minimizing exposure, and write the pre-committed rule that would flip it toward protection instead.],
  ),
  approaches: (
    during: (
      [Pre-commit the hardest trade-off in writing before the crisis — rank customer safety ahead of shareholder exposure — so leadership executes a pre-made decision rather than improvising under pressure.],
      [Set the rule in a calm period when fear and legal caution cannot distort the ordering, since those forces push hardest exactly when the decision must be made.],
      [Make the commitment concrete enough to act on — a nationwide recall, open engagement with regulators — so unknown scope becomes a reason to protect everyone rather than room to limit exposure.],
    ),
    after: (
      [Pair the institutional decision rule with a physical safeguard against the specific threat (tamper-evident packaging) so the response addresses both the improvisation problem and the vulnerability.],
      [Treat the preserved trust and market recovery as the measure that the pre-committed choice was sound, not merely admirable, and document it to defend the principle internally.],
      [Embed the commitment durably enough that it survives leadership turnover, so the next crisis meets the same pre-decided rule rather than a fresh improvisation.],
    ),
  ),
  courses: ("LEN 10", "LEN 7", "LEN 6",),
  scale: "big",
  induced-anchor: "4.4",
  lens-anchor: "D5/PT3",
  clo-anchor: "CLO-5",
)

// ---- Case 174 — ciras-confidential-incident-reporting ----
#case(
  number: 174,
  slug: "ciras-confidential-incident-reporting",
  title: "CIRAS — Confidential Incident Reporting for UK Rail",
  year: "1996 – present",
  domains-list: ("rail transport", "safety reporting", "safety culture"),
  modes-code: "GKN",
  impact: "Between 2008 and 2012 the UK rail Confidential Incident Reporting and Analysis System received 2,228 reports — 45% led to tangible safety improvements and about 33% contained important safety information (program self-report); directly influenced a confidential reporting system in the US",
  kind: "intervention",
  scale: "big",
  evidence-source: "peer-reviewed",
  induced-anchor: "4.2",
  lens-anchor: "D5/PT2",
  clo-anchor: "CLO-5",
  summary: [
    CIRAS began as a 1995–1997 ScotRail pilot — a structured channel
    for rail workers to report hazards and near-misses confidentially,
    insulated from the employer's disciplinary process. After the
    Ladbroke Grove crash in 1999, the program was mandated across UK
    mainline rail in 2000; in 2008 it became an independent unit
    within the Rail Safety and Standards Board. The published record
    states that between 2008 and 2012 CIRAS received 2,228 reports,
    of which the operating program reports 45% led to tangible safety
    improvements and about 33% contained important safety
    information. The program directly influenced the design of a
    confidential reporting system in the United States. The
    interview-based method surfaces motive and intent — the *why*
    behind a near-miss — that company databases miss precisely
    because those databases are tied to discipline. The honest hedge
    that survives into the case: the 45%-led-to-improvement figure is
    self-reported by the operating program, not independently
    audited. The case is the non-aviation companion to ASRS / CRM in
    v1 (Cases 117 + 45), keeping the
    non-punitive-reporting-with-credible-commitment competency from
    resting entirely on aviation evidence.
  ],
  sections: (
    [
      Confidential incident reporting as a safety-culture
      intervention rests on a specific structural argument: the
      richest information about a near-miss — the operator's intent,
      the team's local pressures, the workaround that almost worked
      — is exactly the information that an employer-controlled
      reporting channel cannot collect, because reporters with
      anything to lose will not put it there. The aviation
      experience (ASRS, CRM; v1 Cases 117 and 119) establishes the
      pattern at the canonical safety-culture scale. CIRAS is the
      same pattern, in a different industry, with the credible
      commitment supplied differently — and the corpus needs the
      non-aviation evidence.#cn()
    ],
    [
      CIRAS began in 1995–1997 as a ScotRail pilot. The structural
      design was the interview, not the form: trained interviewers
      took reports from rail workers, anonymized them, and surfaced
      patterns to the operating companies. The credible commitment
      that made the channel safe to use was not just confidentiality
      — it was institutional independence from the employer's
      disciplinary process. After the Ladbroke Grove crash in
      October 1999 (31 deaths, the accident that defined the
      decade's UK rail-safety reform), CIRAS was mandated across UK
      mainline rail in 2000. In 2008 it became an independent unit
      within the Rail Safety and Standards Board (RSSB), with the
      independence from employer discipline written into its
      operating structure.#cn()
    ],
    [
      The published record on outcomes is what the case rests on.
      Davies et al. (_Cognition, Technology & Work_) describe the
      method and its yield. The operating program reports that
      between 2008 and 2012, CIRAS received 2,228 reports, of which
      45% led to tangible safety improvements and approximately 33%
      contained important safety information that fed back into
      operating practice. The program's design has directly
      influenced the construction of a confidential reporting
      system in the United States. The interview-based method
      surfaces motive and intent in a way that incident-database
      schemas tied to discipline cannot.#cn()
    ],
    [
      The honest hedge has to survive. The 45%-led-to-improvement
      figure is self-reported by the operating program — CIRAS
      itself characterizes its outputs, and there is not yet an
      independent audit of that classification. The peer-reviewed
      literature on CIRAS describes the method and the
      institutional design, and reports the program-supplied
      figures rather than independently validating them. The case
      is teachable on the evidence of the institutional design and
      the published method; the operating outcome statistics are
      the strongest current claim, and the editor and downstream
      readers should treat them as program self-report rather than
      audited finding.#cn()
    ],
    [
      What CIRAS adds to the corpus is non-aviation depth in the
      non-punitive-reporting-with-credible-commitment competency.
      The mechanism (a structured confidential channel) paired with
      the credible commitment (independence from the employer's
      disciplinary process, written into operating structure) is the
      cultural half of capability that the aviation cases also
      teach. Drafted together, ASRS (Case 119), CRM/CAST (Case 117),
      and CIRAS (this case) show that the structural form is
      transferable across high-consequence operational industries —
      and that the credible commitment, not the channel alone, is
      what makes the reporting safe to use.
    ],
  ),
  beats: (
    "ScotRail pilot 1995–1997 — interview-based confidential reporting; insulated from employer disciplinary process",
    "Ladbroke Grove crash 1999 (31 deaths); CIRAS mandated across UK mainline rail in 2000",
    "Independent unit within RSSB from 2008; the independence is the credible commitment, written into operating structure",
    "Operating program reports 2,228 reports 2008–2012, 45% led to tangible safety improvements (program self-report)",
    "Non-aviation depth for the C4 competency; same structural form as ASRS/CRM (Cases 119, 117)",
  ),
  approaches: (
    during: (
      [Design the credible commitment first: institutional independence from the employer's disciplinary process, written into operating structure, not relying on goodwill that can be withdrawn.],
      [Choose the reporting method (interview, not just form) for the information class you want to surface — motive and intent — that form-based incident databases tied to discipline cannot collect.],
      [Anchor the program's authority in a sector-wide forcing event (Ladbroke Grove for rail; in other domains, the analog) so the mandatory-adoption decision rides on the safety crisis the program is built to address.],
    ),
    after: (
      [Report operating outcome statistics with their evidence tier: program self-report vs. independently audited. Treating the 45% figure as audited overstates the evidence; treating it as untested under-states the program's institutional credibility.],
      [Commission an independent audit of the program's classification of its own reports at a sustainable cadence — five years is a reasonable interval — so the operating record builds toward audited evidence over time.],
      [Carry the structural lesson across domains: ASRS, CRM, CIRAS — the cultural half of capability is the credible commitment, not the channel alone.],
    ),
  ),
  references: (
    [Davies, Wright, Courtney, & Reid, "Confidential Incident Reporting on the UK Railways: The CIRAS System," _Cognition, Technology & Work_, doi:10.1007/PL00011494.],
    [Rail Safety and Standards Board (RSSB), CIRAS program documentation 2008 – present — operating-program publications.],
    [University of Strathclyde, CIRAS impact case study — the operating-program-self-report on outcomes between 2008 and 2012.],
    [Ladbroke Grove Rail Inquiry (Cullen, 2001), final report — the regulatory forcing event for national mandate.],
  ),
  quote: [The 45%-led-to-improvement figure is the operating program's self-report. The institutional design is the audited finding.],
  quote-source: "Editors' synthesis of Davies et al. and the Strathclyde impact case study.",
  le-insight: [
    CIRAS is the non-aviation companion to ASRS and CRM in
    the corpus. The pattern — confidential channel paired with
    credible commitment (institutional independence from
    discipline) — works in rail as it does in aviation. The
    operating outcome statistics are program self-report and
    deserve their tier acknowledgement; the institutional
    design is the audited finding.
  ],
  lens-approach: [
    CIRAS is the non-aviation pairing-mechanism case
    (induced 4.2; LENS D5/PT2). LENS uses it in Domain 5
    (Navigating Sociotechnical Constraints) for the
    credible-commitment design — independence written into
    operating structure — and in Domain 4 (Test and
    Evaluation) for the CLO *Judgment under inadequate
    evidence* on the operating self-report tier. Pair with
    ASRS (Case 119) and CRM/CAST (Case 117) as the
    cross-industry C4 set, and with the WHO Surgical
    Checklist (Case 23) at the mandatory-mechanism layer.
  ],
  literature-items: (
    [Davies et al., _Cognition, Technology & Work_],
    [RSSB CIRAS program documentation],
    [University of Strathclyde, CIRAS impact case study],
  ),
  reflection-list: (
    [Identify a high-consequence operational domain in your context where confidential incident reporting is absent or weak. What is the credible-commitment design that would make the channel safe to use — and is the institutional independence written into operating structure, or relying on goodwill?],
    [Specify the information class your reporting program is built to surface: form-based incident counts, or interview-based motive and intent. The choice of method follows the information class, and they answer different questions.],
    [The 45%-led-to-improvement figure is program self-report. Design the independent-audit cadence that would convert the operating record into audited evidence over time, without compromising the confidentiality the channel depends on.],
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8"),
)
