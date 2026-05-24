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
  kind: "failure",
  summary: [
    inBloom was a \$100-million, Gates-funded shared data infrastructure for
    U.S. student records — and the technology worked: no bug, no breach, no
    performance failure. What killed it in about fourteen months was
    everything around the technology. It launched without consent
    frameworks, community engagement, transparency about data use, or a way
    for parents to participate in decisions about their children's data.
    Parent-privacy groups organized opposition state by state, and nine
    states withdrew. Analysts read inBloom as the failure of technocratic
    reform — the assumption that technically sound infrastructure generates
    its own legitimacy. It is the purest governance failure in the dataset,
    and the book's clearest argument that in education at scale, stakeholder
    trust and governance are not optional features but load-bearing
    structure.
  ],
  sections: (
    // -- Background --
    [
      inBloom was an ambitious shared data infrastructure for U.S. K-12
      student records, backed by \$100 million from the Gates Foundation,
      hosted on commercial cloud, and built by enterprise engineers. The
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
      engagement on data governance, without transparency about what was
      collected and why, and without any way for parents to participate in
      decisions about their children's data. Each omission read, to a worried
      parent, as a decision made about their child without them in the room.
      Parent groups organized opposition state by state, and nine states —
      among them New York, Louisiana, and Illinois — withdrew as the political
      cost of staying overtook any promised efficiency. Within about fourteen
      months the \$100-million initiative collapsed.#cn()
    ],
    // -- The Investigation --
    [
      Analysts at Data & Society read inBloom as the failure of technocratic
      education reform: the assumption that technically sound infrastructure
      generates its own legitimacy proved catastrophically wrong. Legitimacy,
      on this reading, is earned from the stakeholders a system acts upon, not
      conferred by the quality of its engineering. The technology was never
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
  references: (
    [M. Bulger, P. McCormick & M. Pitcan, _The Legacy of inBloom_, Data & Society Research Institute (2017) — inBloom as a failure of technocratic reform.],
    [Education Week and Hechinger Report coverage of the state withdrawals (2013–2014) — nine states exiting.],
    [Bulger et al. (2017) — governance, not technology, as the cause; "the technology was not the problem."],
    [N. Selwyn, _Distrusting Educational Technology_ (2014); d. boyd & K. Crawford, "Critical Questions for Big Data" (2012).],
    [Parent Coalition for Student Privacy archives and the wave of state student-data-privacy legislation that followed inBloom.],
  ),
  quote: [The technology was not the problem. The governance was the problem.],
  quote-source: "Paraphrasing the analysis in Bulger, McCormick & Pitcan, Data & Society, 2017",
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
      [Treat consent, transparency, and a parent-facing voice as load-bearing requirements gathered before the data store is built, not features bolted on after launch.],
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
)

#case(
  number: 10,
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
      never been validated for: about about 27,000 enrollments through the
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
)

#case(
  number: 17,
  title: "Bhopal",
  year: "1984",
  domains-list: ("industrial",),
  modes-code: "TKNG",
  impact: "≈ 15,000–20,000 killed; ≈ 500,000 injured; worst industrial disaster in history",
  diagram: dgm.dgm-bhopal,
  kind: "failure",
  summary: [
    On the night of 2–3 December 1984, about forty tons of methyl isocyanate
    gas escaped from a Union Carbide pesticide plant in Bhopal, India — the
    worst industrial disaster in history. Thousands died within hours;
    estimates of total deaths run to 15,000–20,000, with roughly half a
    million exposed or injured. Safety systems had been off-line for months,
    the plant was understaffed, and workers were inadequately trained to
    recognize or handle the emergency. Investigators traced the catastrophe
    to operating errors, design flaws, maintenance failures, training
    deficiencies, and cost-cutting that endangered safety. Bhopal catalyzed
    the creation of the U.S. Chemical Safety Board and reshaped
    industrial-safety regulation for decades. It is the largest-magnitude
    capability-and-governance failure on record.
  ],
  sections: (
    // -- Background --
    [
      Union Carbide's pesticide plant in Bhopal, India, stored methyl
      isocyanate (MIC) — an extraordinarily toxic intermediate — in bulk,
      holding a lethal hazard in tanks beside a populated city. By 1984 the
      plant was running under heavy cost pressure: understaffed, with several
      key safety systems out of service for months, and workers inadequately
      trained to handle an MIC emergency or read its warning signs. Each
      economy was individually defensible on a ledger; together they thinned
      every layer of defense the process depended on.#cn()
    ],
    // -- What Happened --
    [
      On the night of 2–3 December 1984, water entered an MIC storage tank
      and triggered a runaway reaction; the safety systems that should have
      contained it were non-operational, so the one event the plant existed to
      prevent met no working barrier on its way out. About forty tons of gas
      vented over the sleeping city. Thousands died within hours; estimates of
      total deaths run to 15,000–20,000, and roughly half a million people
      were exposed or injured — the worst industrial disaster in history, its
      toll set by who happened to be downwind.#cn()
    ],
    // -- The Investigation --
    [
      Investigations found the catastrophe "resulted from operating errors,
      design flaws, maintenance failures, training deficiencies and economy
      measures that endangered safety" — a list with no single villain, which
      is precisely what made it hard to govern.#cn() Human-factors analysis
      placed Bhopal alongside Three Mile Island in its neglect of the human
      element, and the U.S. Chemical Safety Board would later find ineffective
      employee training an underlying cause in nine of its first twenty-three
      chemical-incident investigations — a pattern that traces to Bhopal and
      shows the same gap recurring long after the lesson was available.#cn()
    ],
    // -- The Capability Gap --
    [
      Bhopal is the largest-magnitude capability-and-governance failure on
      record, and a multi-layer one: training, maintenance, design, staffing,
      and oversight had all degraded together, and no layer above the plant
      was accountable for the whole. Because the erosion was spread across
      layers, no single inspection or metric saw it, and each degraded layer
      made the next one matter more. The capability to operate an
      extraordinarily hazardous process safely had been hollowed out by
      cost-cutting, and the governance that should have caught the hollowing
      did not exist to ask whether the whole was still safe.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The disaster reshaped industrial safety worldwide and, in the United
      States, catalyzed the creation of the Chemical Safety Board — an
      INPO-equivalent for industrial chemistry — and the process-safety
      regime that followed, an oversight layer built to own exactly the whole
      that no one had owned at Bhopal.#cn() The book's recurring arc runs
      through Bhopal in its starkest form: a catastrophe forces into being the
      institution the industry should have built before it, at a price no
      institution-building exercise should ever have to cost.
    ],
  ),
  references: (
    [Union Carbide and government investigation reports (1985) — MIC storage, the disabled safety systems, and plant understaffing.],
    [Accounts of the 2–3 Dec. 1984 release — the contested toll (thousands of immediate deaths; 15,000–20,000 total estimates; ~500,000 exposed). _(Figures vary widely across sources; see AUDIT.)_],
    [New York Times investigation (1985) — "operating errors, design flaws, maintenance failures, training deficiencies and economy measures that endangered safety" (quoted).],
    [N. Meshkati, "Human Factors in Large-Scale Technological Systems' Accidents," _Industrial Crisis Quarterly_ (1991); U.S. CSB training-cause pattern.],
    [P. Shrivastava, _Bhopal: Anatomy of a Crisis_ (1992); C. Perrow, _Normal Accidents_ (1984).],
    [The creation of the U.S. Chemical Safety Board and the post-Bhopal process-safety regime.],
  ),
  quote: [Operating errors, design flaws, maintenance failures, training deficiencies and economy measures that endangered safety.],
  quote-source: "New York Times investigation, 1985",
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
    [At Bhopal training, maintenance, design, staffing, and oversight all degraded together while each looked acceptable alone. Whose job in your organization is to judge whether the whole is still safe — and what would they have to see to declare that it is not?],
  ),
  approaches: (
    during: (
      [Treat each safety system, staffing level, and training requirement as a non-negotiable layer of defense, not a cost line available for trimming under pressure.],
      [Assign a single accountable owner for the integrated hazard, so degradation spread across layers cannot fall between everyone's responsibilities.],
      [Require that operators be trained to recognize and respond to the specific emergency the process can produce before the process is run with that hazard in bulk.],
    ),
    after: (
      [Audit the whole defense-in-depth posture together rather than layer by layer, since each degraded barrier silently raises the stakes on the next.],
      [Track how long any safety system stays off-line and gate continued operation on its restoration, treating extended downtime as an unacceptable condition.],
      [Sustain an oversight layer — an INPO- or CSB-equivalent — with authority and reach above the individual plant to own the integrated risk.],
    ),
  ),
  courses: ("LEN 5", "LEN 7", "LEN 3",),
)

#case(
  number: 20,
  title: "Grenfell Tower",
  year: "2017",
  domains-list: ("industrial",),
  modes-code: "GTKN",
  impact: "72 killed in a residential tower fire in London; decades of regulatory failure",
  diagram: dgm.dgm-grenfell,
  kind: "failure",
  summary: [
    On 14 June 2017 a fire spread up the exterior of Grenfell Tower, a London
    public-housing block, killing 72 people. It raced because the tower had
    been wrapped in combustible aluminium-composite cladding during a
    refurbishment. The public inquiry found the disaster the culmination of
    decades of failure: cladding firms engaged in "systematic dishonesty,"
    marketing combustible materials as safe; regulators and inspectors missed
    effectively banned products across sixteen site visits; and the London
    Fire Brigade, whose "stay put" advice proved fatal, was unprepared for a
    cladding fire whose risks earlier incidents had already shown. The
    failure spanned manufacturers, regulators, inspectors, and responders —
    each contributing a piece, none owning the whole. Grenfell is the book's
    case for capability failure distributed across many hands.
  ],
  sections: (
    // -- Background --
    [
      Grenfell Tower was a 1970s public-housing block in West London,
      refurbished in 2015–16 with new exterior cladding intended to improve
      the building's appearance and efficiency. The cladding chosen used a
      combustible aluminium-composite material — installed despite safety
      experts' cautions that it was unsuitable for a high-rise, a warning that
      sat between the people who issued it and the people who specified the
      panels without ever stopping the decision.#cn()
    ],
    // -- What Happened --
    [
      On 14 June 2017 a kitchen fire broke out and, instead of staying
      contained as a tower's compartment design assumes, climbed the
      building's exterior on the combustible cladding, wrapping the tower in
      flame within minutes and defeating the very principle the building was
      meant to rely on. Residents, following long-standing "stay put" advice
      premised on that containment, remained in their flats as the route to
      safety closed around them; 72 people died.#cn()
    ],
    // -- The Investigation --
    [
      The Grenfell Tower Inquiry found the fire the culmination of decades of
      failure by central government and every body responsible. Cladding
      companies had engaged in "systematic dishonesty," marketing combustible
      products as safe and corrupting the very test data buyers relied on;
      inspectors visited the site sixteen times and none noticed that
      effectively banned materials were in use, so sixteen chances to catch
      the hazard each passed it by.#cn() The London Fire Brigade was
      unprepared: the risks of rapidly developing cladding fires were known
      from prior incidents — Knowsley Heights, Garnock Court, Shepherd's Court
      — but "this knowledge had not informed firefighting policies, practices
      or training," so each near-miss taught no one whose job was to act on
      it.#cn()
    ],
    // -- The Capability Gap --
    [
      Grenfell is the book's strongest evidence that capability failure can
      be distributed across many actors, each contributing a small piece and
      none accountable for the whole. Manufacturer fraud, regulatory capture,
      inspection incompetence, training gaps, and lost institutional memory
      all converged on one building, and because each actor saw only its
      fragment, each could regard its own part as tolerable. The inquiry
      called it a "grey elephant" — a danger known but ignored — and the
      missing capability was anyone owning the integrated risk that everyone
      could see in part but no one held in full.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The inquiry's Phase 2 report (2024) and the government response (2025)
      drove an overhaul of building-safety regulation, cladding remediation,
      and fire-service doctrine — reforms that, between them, tried to assign
      the ownership the original system had left vacant.#cn() Grenfell's
      lesson is the governance one this chapter turns on: when responsibility
      for a known risk is split across dozens of actors, the risk has, in
      effect, no owner — and a system with no owner for its gravest hazard
      will eventually pay for it, in the currency of the people living
      inside it.
    ],
  ),
  references: (
    [Grenfell Tower Inquiry, _Phase 1 Report_ (2019) — the fire's spread up the cladding and the failure of "stay put."],
    [Grenfell Tower Inquiry, _Phase 2 Report_ (2024) — decades of failure and the combustible-cladding decision.],
    [Phase 2 Report (2024) — cladding firms' "systematic dishonesty" and the inspection failures across sixteen visits.],
    [Phase 1 Report (2019) — London Fire Brigade unpreparedness; "this knowledge had not informed firefighting policies, practices or training" (quoted).],
    [UK Government response to the Grenfell Phase 2 report (2025) — building-safety and fire-service reform.],
    [B. Hutter & M. Power (eds.), _Organizational Encounters with Risk_ (2005) — distributed risk ownership.],
  ),
  quote: [This knowledge had not informed firefighting policies, practices or training.],
  quote-source: "Grenfell Tower Inquiry, Phase 1, 2019",
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
    failure case, in LEN 8 to discuss institutional memory of warnings
    across the LFB and other agencies, and in LEN 10 as a studio prompt
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
    [Sixteen inspections, prior fires, and expert cautions each touched a fragment of the Grenfell hazard, yet none assembled it. What mechanism in your domain could gather scattered partial warnings into one picture in front of someone empowered to stop the work?],
  ),
  approaches: (
    during: (
      [Assign one accountable actor to own the building's integrated fire risk end to end, so no hazard can fall into the gaps between manufacturers, inspectors, and responders.],
      [Verify combustible-material claims against independent evidence rather than trusting vendor marketing, treating "systematic dishonesty" as a threat the process must defeat.],
      [Preserve the containment principle the building relies on: gate any cladding choice on whether it keeps a compartment fire from climbing the exterior.],
    ),
    after: (
      [Route every site inspection and near-miss into a shared record so sixteen visits cannot each miss the same banned material in isolation.],
      [Feed prior-incident knowledge into firefighting policy, training, and "stay put" doctrine, so lessons from earlier cladding fires actually change practice.],
      [Sustain a single line of accountability for the integrated hazard through the building's life, not only at refurbishment.],
    ),
  ),
  courses: ("LEN 10", "LEN 7", "LEN 8", "LEN 3",),
)

#case(
  number: 21,
  title: "Summit Learning / Personalized Learning Rollout",
  year: "2014–2019",
  domains-list: ("education",),
  modes-code: "GTK",
  impact: "Personalized-learning platform deployed across ~380 U.S. schools; parent revolts in Brooklyn, Cheshire, McPherson, Kennebunk; multiple districts withdrew within two years",
  diagram: dgm.dgm-inbloom,
  kind: "failure",
  summary: [
    Summit Learning, a personalized-learning platform from Summit Public
    Schools backed by the Chan Zuckerberg Initiative, was offered free to
    U.S. districts from 2015 and reached roughly 380 schools and ~80,000
    students by 2018. By 2019 prominent adopters were withdrawing under
    parent and student pressure — opt-out campaigns in Brooklyn,
    cancellations in Cheshire, Kennebunk, and McPherson — amid walkouts and
    complaints about screen time, disengagement, and data privacy. The
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
      80,000 students, scaling fast on the strength of a free offer and a
      well-funded sponsor. By 2019 its most visible adopters were withdrawing
      under parent and student pressure: Brooklyn's MS 442 ran an organized
      opt-out; districts in Cheshire, Kennebunk, and McPherson cancelled or
      scaled back after parent meetings where the unanswered governance
      questions surfaced all at once. Walkouts and complaints about screen
      time, eye strain, disengagement, and data privacy converged into a
      revolt that was not about the instructional design at all.#cn()
    ],
    // -- The Investigation --
    [
      Press coverage and later analyses located the failure in deployment
      governance, not pedagogy: there was no evaluation framework a district
      could read before adopting, no parent-facing data-handling agreement,
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
      recurs across the ed-tech dataset (inBloom, Case 8): a well-intentioned
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
  references: (
    [#link("https://www.nytimes.com/2019/04/21/technology/silicon-valley-kansas-schools.html")[N. Bowles, "Silicon Valley Came to Kansas Schools. That Started a Rebellion," _New York Times_ (2019)] — the parent revolt.],
    [N. Singer, "The Silicon Valley Billionaires Remaking America's Schools," _New York Times_ (2017) — the CZI/Summit rollout.],
    [B. Herold, Education Week coverage of Summit / CZI implementation (2019) — district adoptions and withdrawals.],
    [A. Watters, "The Stories We Tell About Personalized Learning," _Hack Education_ (2019) — the governance critique.],
    [Chan Zuckerberg Initiative & Summit Learning public program documentation (2015–2019); cf. inBloom (Case 8).],
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
    (Cases 8, 38, 42) and is the educator's-side analog of the
    governance failures in Cases 35 and 36.
  ],
  lens-approach: [
    LENS uses Summit Learning in LEN 7 as the foundational
    consent-and-evidence case for educational technology, and in
    LEN 10 as a studio prompt for the governance artifacts that any
    educational-technology adoption decision should produce: a
    public evidence summary at parent reading level, a data-handling
    agreement at the same resolution, and a documented exit pathway
    that does not depend on the vendor's goodwill. The studio prompt
    extends to a re-adoption pathway — the governance work a withdrawn
    district would have to complete before it could responsibly
    re-adopt the platform without re-triggering the same parental
    objections.
  ],
  literature-items: (
    [Selwyn (2016), _Is Technology Good for Education?_],
    [Watters (2021), _Teaching Machines_],
    [Eubanks (2018), _Automating Inequality_ (governance-pattern analog)],
  ),
  reflection-list: (
    [What is the equivalent of the "free tool, free of governance" pattern in your domain — the offer that bypasses the accountability architecture because it does not yet exist?],
    [Design the parent-reading-level governance artifact that a district should require before adopting an educational-technology platform.],
    [Summit's withdrawals in Brooklyn, Cheshire, Kennebunk, and McPherson were led by parents, not regulators. What is the equivalent local constituency in your domain that institutional accountability has not yet accommodated, and how would they be heard before deployment rather than after?],
    [Summit was offered free, and the absence of a price made the absence of a governance contract easy to overlook. Where in your domain does a "free" or low-friction offer bypass the accountability work that a paid procurement would have forced?],
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
)

#case(
  number: 22,
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
    randomized controlled trial — children admitted by lottery against those
    who applied but didn't enroll. Through kindergarten the pre-K children
    showed the expected gains in literacy and vocabulary. By third grade the
    gains had faded, and by sixth grade the pre-K group did somewhat worse
    than controls on several academic and behavior measures. The unwelcome
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
      something rare in education: a randomized controlled trial, following
      children admitted by lottery against children who applied but did not
      enroll, the kind of design rarely available in a live policy setting.#cn()
    ],
    // -- What Happened --
    [
      Through kindergarten the pre-K children showed the expected gains —
      stronger letter knowledge, vocabulary, early literacy — exactly the
      early result the program had been funded to produce. By third grade the
      gains had faded. By sixth grade, the researchers reported, the pre-K
      children were doing somewhat *worse* than the control group on several
      state academic measures and on teacher-reported behavior — a reversal
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
  references: (
    [#link("https://doi.org/10.1016/j.ecresq.2018.03.005")[M. Lipsey, D. Farran & K. Durkin, "Effects of the Tennessee Pre-Kindergarten Program… Through Third Grade," _Early Childhood Research Quarterly_ 45: 155–176 (2018)] — the RCT and fade-out.],
    [K. Durkin, M. Lipsey, D. Farran & E. Wiesen, "Effects of a Statewide Pre-Kindergarten Program… Through Sixth Grade," _Developmental Psychology_ 58(3): 470–484 (2022) — the sixth-grade reversal (quoted).],
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
    not. Compare to Case 7 (Makary methodology debate) and Case 32
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
)

#case(
  number: 35,
  title: "UK A-Level Algorithm / Ofqual",
  year: "2020",
  domains-list: ("education",),
  modes-code: "GHD",
  impact: "≈ 280,000 A-level entries downgraded; disadvantaged students disproportionately harmed; government U-turn within days",
  diagram: dgm.dgm-alevel,
  kind: "failure",
  summary: [
    When COVID-19 cancelled the UK's 2020 exams, the regulator Ofqual used an
    algorithm to "standardize" teacher-predicted A-level grades against each
    school's historical performance. About 39 percent of grades were adjusted
    downward and roughly 280,000 entries were downgraded; high-achieving
    students at historically low-performing state schools were systematically
    capped by their school's past results, while small-cohort private-school
    students kept their predicted grades. The algorithm encoded existing
    structural inequality and amplified it nationwide in a single day. After
    public outcry — Hannah Fry called it the first time an entire nation felt
    an algorithm's injustice at once — the government withdrew the algorithm
    within days and reverted to teacher assessment. It is the book's clearest
    case of an algorithm deployed without the governance to catch its
    discriminatory effect.
  ],
  sections: (
    // -- Background --
    [
      When COVID-19 cancelled the UK's 2020 exams, the qualifications
      regulator Ofqual needed grades without exams and a defensible way to
      produce them at national scale. Rather than accept teacher-predicted
      grades — which tend to run optimistic — it built an algorithm to
      "standardize" them against each school's historical performance, on the
      logic that a school's past results were the best available anchor for
      its present cohort.#cn()
    ],
    // -- What Happened --
    [
      Roughly 39 percent of A-level grades were adjusted downward from
      teacher assessment — about 280,000 entries — with some dropped two or
      more grades, each one a university place or career path put at risk.
      High-achieving students at historically low-performing state schools
      were systematically capped by their school's past results; small-cohort
      private-school students, by contrast, kept their predicted grades
      because small classes escaped the standardization. The pattern fell
      hardest on those whose individual achievement was hidden inside a school
      average, punishing exactly the students the system claimed to serve.#cn()
    ],
    // -- The Investigation --
    [
      Analysts identified the trap quickly: the algorithm assumed schools
      that had historically underperformed — often for reasons of funding,
      not student capability — would continue to, and used that assumption to
      suppress individual grades, so a student's result was decided partly by
      who had attended their school in prior years. It encoded structural
      inequality and amplified it at national scale in a single release.#cn()
      The mathematician Hannah Fry observed it was "the first time that an
      entire nation has felt the injustice of an algorithm simultaneously," a
      harm whose very visibility forced the reckoning.#cn()
    ],
    // -- The Capability Gap --
    [
      The missing capability was governance: an equity and impact assessment
      that would have surfaced, before deployment, that the model traded
      individual fairness for aggregate calibration and would hit
      disadvantaged cohorts hardest — a tradeoff that was a property of the
      design, not a surprise it sprang. The mathematics was no mystery; what
      was absent was any process with the authority to ask whether the result
      was just before it was applied to hundreds of thousands of students, and
      any appeal route for the students it would harm.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Within days the government withdrew the algorithm and accepted teacher
      predictions, the speed of the reversal matching the speed and visibility
      of the harm, and the episode became a landmark in algorithmic-
      accountability debate and policy.#cn() Its lesson is the chapter's: an
      algorithm that distributes life-shaping outcomes is a governance
      instrument, and deploying one without an equity check and an appeal
      path is a governance failure no amount of statistical sophistication
      redeems — the model can be flawless at the task it was set and still
      unjust in the task that mattered.
    ],
  ),
  references: (
    [MIT Technology Review, "The UK Exam Algorithm Fiasco" (2020) — Ofqual's standardization approach.],
    [University of Bristol Centre for Multilevel Modelling and Ofqual analyses — ~39% downgraded, ~280,000 entries, and the school-prior cap.],
    [Oxford Internet Institute commentary (2020) — the algorithm as encoded structural inequality ("magical thinking").],
    [H. Fry (2020) — "the first time that an entire nation has felt the injustice of an algorithm simultaneously" (quoted).],
    [LSE Impact Blog, "F*ck the Algorithm" (2020) — the student protests and reversal.],
    [The UK government U-turn (August 2020) reverting to centre-assessed (teacher) grades.],
  ),
  quote: [I think it's the first time that an entire nation has felt the injustice of an algorithm simultaneously.],
  quote-source: "Hannah Fry, 2020",
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
    and governance, in LEN 4 as a measurement-instrument case (an
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
    [Ofqual's model traded individual fairness for aggregate calibration, a choice baked into its design. Find a decision system in your domain that makes the same tradeoff implicitly, and name who should hold the authority to ask whether its output is just before it is applied.],
  ),
  approaches: (
    during: (
      [Run an equity and impact assessment before deployment that tests how the model distributes harm across cohorts, not just whether it calibrates in aggregate.],
      [Treat the tradeoff between individual fairness and aggregate calibration as an explicit design decision requiring sign-off, not a buried property of the method.],
      [Build an appeal path for affected individuals into the system from the start, so a person can contest an outcome the model imposed.],
    ),
    after: (
      [Audit live algorithmic decisions for disparate impact on disadvantaged groups, since a model can be statistically sound and socially unjust at once.],
      [Monitor outcomes against the populations the instrument claims to serve, watching for the pattern where high achievers are capped by a group average.],
      [Keep a fast withdrawal-and-revert capability ready, so a system distributing life-shaping outcomes can be pulled when its injustice surfaces.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 9"),
)

#case(
  number: 36,
  title: "Australia Robodebt",
  year: "2016 – 2020",
  domains-list: ("gov",),
  modes-code: "GDH",
  impact: "Roughly 1 million debt notices issued; ~470,000 found wholly or partially unlawful for ~433,000 people; A$1.8B Prygodicz class-action settlement (debts zeroed/refunded plus interest); Royal Commission found \"venality, incompetence and cowardice\"",
  diagram: dgm.dgm-robodebt,
  kind: "failure",
  summary: [
    From 2016 the Australian government automated welfare-debt recovery with
    an income-averaging algorithm that compared welfare records against
    annual tax data spread evenly across the year. That assumption — steady,
    year-round employment — fit only about 7 percent of recipients; the
    rest, with irregular work, were misclassified as overpaid. Roughly a
    million debt notices went out, about 470,000 of them later found wholly
    or partly unlawful, with the burden of proof reversed onto recipients
    and no human review. The scheme was linked to deaths, including
    suicides. A 2023 Royal Commission found it sustained by "venality,
    incompetence and cowardice," and a class action settled for A\$1.8
    billion. Robodebt is the canonical case of full automation deployed
    without a human in the loop and without lawful basis.
  ],
  sections: (
    // -- Background --
    [
      From 2016 the Australian government sought to automate welfare-debt
      recovery, drawn by the promise of recovering money at a fraction of the
      administrative cost. Its Robodebt scheme compared recipients' welfare
      records against annual tax data, averaging income evenly across the year
      to estimate overpayments — and issuing debts on that basis at scale,
      replacing the individual case review the work had previously required.#cn()
    ],
    // -- What Happened --
    [
      The averaging assumed stable, year-round employment, which fit only
      about 7 percent of recipients; the other 93 percent, with irregular
      work, were misclassified as overpaid — so the assumption at the core of
      the method was wrong for almost everyone it touched. Roughly a million
      debt notices were issued, default judgments raised without human review,
      and the burden of proof reversed onto recipients to disprove debts the
      government had invented, demanding records many of the poorest could not
      produce. The scheme was linked to deaths, including by suicide.#cn()
    ],
    // -- The Investigation --
    [
      A 2023 Royal Commission found the scheme unlawful and sustained by
      "venality, incompetence and cowardice," with ministers failing to
      ensure it was lawful before unleashing it on a million people.#cn()
      Analysts noted the algorithm was "comparatively simple" and its harms
      "entirely predictable from the outset" — meaning no technical advance
      was needed to foresee them, only the will to look; about 470,000 debts
      were found wholly or partly unlawful, and a class action settled for
      A\$1.8 billion, with debts zeroed or refunded plus interest, the public
      paying back what the automation had wrongly taken.#cn()
    ],
    // -- The Capability Gap --
    [
      Robodebt is the canonical case of full automation without a human in
      the loop and without lawful basis. The algorithm was not sophisticated
      and the harm was not technical: the scheme survived four years because
      the governance architecture treated automation as an efficiency
      mechanism rather than a decision regime requiring accountability,
      legality, and a path to contest. Calling it "automation" disguised that
      every notice was still a government decision to take money from a
      citizen. Reversing the burden of proof onto the citizen was a governance
      choice, not a coding one, made by people who could have chosen
      otherwise.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The debts were zeroed and refunded, the settlement paid, and the Royal
      Commission's findings referred for further action; "Robodebt" entered
      Australian political memory as a byword for automated administrative
      harm, a label now reached for whenever a new scheme proposes to
      automate a consequential decision.#cn() Its lesson is exact: a
      government decision that takes money from people is a decision, however
      it is computed — and automating it does not relieve the state of the
      duty to make it lawfully, reviewably, and with the burden of proof where
      the law puts it, because the duty attaches to the decision, not to the
      method.
    ],
  ),
  references: (
    [Royal Commission into the Robodebt Scheme, _Final Report_ (2023) — the scheme and its "venality, incompetence and cowardice."],
    [Royal Commission (2023) — the income-averaging mechanism, the ~7%/93% mismatch, the reversed burden of proof, and deaths associated with the scheme.],
    [Royal Commission (2023) — the finding of unlawfulness and ministerial failure ("a costly failure of public administration," quoted).],
    [University of Melbourne / Pursuit analysis (2023) — the algorithm "comparatively simple," harms "entirely predictable," ~470,000 debts unlawful.],
    [_Prygodicz v Commonwealth_ class-action settlement (A\$1.8 billion; debts zeroed/refunded plus interest, 2021).],
    [Blavatnik School of Government (Oxford) case study (2023); IAPP privacy analysis of Robodebt.],
  ),
  quote: [A costly failure of public administration, in both human and economic terms.],
  quote-source: "Royal Commission into the Robodebt Scheme, 2023",
  le-insight: [
    Robodebt is the canonical case of full automation without
    human-in-the-loop and without lawful basis. The algorithm was not
    sophisticated and the harm was not technical: the system survived
    four years because the governance architecture treated automation
    as an efficiency mechanism rather than as a decision regime that
    required accountability.
  ],
  lens-approach: [
    LENS treats Robodebt in LEN 7 as the canonical case for automated
    decision-making without human oversight and in LEN 2 as a Human-AI
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
    [Robodebt's income-averaging assumption fit only about 7 percent of recipients, yet ran for four years. What assumption in an automated process you rely on would be wrong for most of the people it touches — and who is responsible for testing it before deployment?],
  ),
  approaches: (
    during: (
      [Establish lawful basis and confirm it before deployment, treating an automated decision regime as bound by the same legal duties as a human one.],
      [Validate the model's core assumption against the population it will act on, since an averaging rule that fits 7 percent of recipients is a designed-in error.],
      [Keep a human in the loop for consequential decisions and leave the burden of proof where the law puts it, not on the citizen.],
    ),
    after: (
      [Audit issued decisions against ground truth and watch for the predictable harms — wrongful debts, contested notices — that signal a flawed assumption at scale.],
      [Provide an accessible path to contest and review every automated decision, and monitor whether affected people can actually use it.],
      [Track downstream harm, including welfare and safety signals, so a scheme linked to severe consequences is halted rather than left to run for years.],
    ),
  ),
  courses: ("LEN 7", "LEN 2"),
)

#case(
  number: 37,
  title: "Algorithmic Bias in Educational Predictive Analytics",
  year: "ongoing",
  domains-list: ("education",),
  modes-code: "GHD",
  impact: "Predictive \"at-risk\" models show racial calibration bias that can misdirect support away from Black and Latinx students; a large majority of U.S. public colleges now use predictive analytics",
  diagram: dgm.dgm-edbias,
  kind: "failure",
  summary: [
    Most U.S. public colleges now use predictive analytics to flag "at-risk"
    students for early support. Research finds these models carry racial
    calibration bias: they miscalibrate by race in ways that can misclassify
    Black and Latinx students — and so misdirect the very support the
    prediction is meant to trigger. The magnitude depends heavily on how
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
      vanish. A large majority of U.S. public colleges now use some form of
      these models, which makes any bias they carry a quiet, system-wide
      feature of how support is allocated rather than an isolated experiment.#cn()
    ],
    // -- What Happened --
    [
      The intervention is well-intentioned, but research finds the models
      carry racial calibration bias: they miscalibrate by race in ways that
      can misclassify Black and Latinx students relative to their actual
      outcomes — and so misdirect the support the flag is meant to trigger,
      turning a tool built to help into one that can steer help away.
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
      As Baker and Hawn put it, algorithmic bias in education "poses
      significant threats to educational equity, potentially amplifying
      existing social and economic disparities" — and the harm compounds when
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
  references: (
    [Surveys of predictive-analytics adoption in U.S. higher education — a large majority of public colleges now use some form.],
    [K. Bird et al., "Are Algorithms Biased in Education? Exploring Racial Bias in Predicting Community College Student Success," _Journal of Policy Analysis and Management_ 44 (2025), 379–402 — racial calibration bias, ~5× higher at the bottom decile depending on the "at-risk" construct.],
    [D. Gándara, H. Anahideh, M. Ison & L. Picchiarini, "Inside the Black Box: Detecting and Mitigating Algorithmic Bias across Racialized Groups in College Student-Success Prediction," _AERA Open_ (2024) — bias traced to training data encoding historical discrimination.],
    [R. Baker & A. Hawn, "Algorithmic Bias in Education," _International Journal of Artificial Intelligence in Education_ (2021) — "poses significant threats to educational equity…" (quoted).],
    [Analyses of deficit framing and the interpretation of "at-risk" flags by faculty.],
    [Cf. UK A-Level / Ofqual (Case 35); V. Eubanks, _Automating Inequality_ (2018).],
  ),
  quote: [Algorithmic bias in educational systems poses significant threats to educational equity, potentially amplifying existing social and economic disparities.],
  quote-source: "Baker & Hawn, 2021",
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
    (Case 39). LEN 4 examines construct definition as the load-bearing
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
)
