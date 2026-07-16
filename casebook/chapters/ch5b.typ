// ============================================================
// Part V — Industry, Energy & Enterprise Systems · What Works — and the Frontier (Chapter 10)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part V — Industry, Energy & Enterprise Systems",
  number: "10",
  title: "Industry, Energy & Enterprise Systems — What Works — and the Frontier",
  subtitle: "When operations make capability visible on the floor.",
  epigraph: [The cord was there to be pulled, and pulling it was rewarded.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Case 154 — inl-turbine-control-upgrade-low-burden ----
#case(
  number: 154,
  slug: "inl-turbine-control-upgrade-low-burden",
  title: "INL Turbine-Control Upgrade — Low-Burden Cutover as a Human-Factors Finding",
  year: "2014",
  domains-list: ("nuclear power", "control-room modernization", "human factors"),
  modes-code: "GKH",
  impact: "An INL-affiliated study reported that operators were able to use the new digital turbine-control system without extensive additional training or rewriting of operating procedures — i.e., the human-factors verification-and-validation evidence supported a low-burden cutover from the legacy analog control",
  kind: "intervention",
  scale: "small",
  evidence-source: "program-report",
  evidence-flag: "practice-synthesis-tier",
  induced-anchor: "7.1",
  lens-anchor: "D1/PT1",
  clo-anchor: "CLO-1, CLO-4",
  summary: [
    Nuclear-plant control-room modernization is one of the canonical
    C7 problems — legacy analog systems that have to be replaced
    with digital equivalents inside a regulatory regime that demands
    the safety case survive the transition. The Idaho National
    Laboratory's Light Water Reactor Sustainability (LWRS) program
    has produced a body of technical reports and conference papers
    documenting the verification-and-validation work behind specific
    upgrades. The case here is a specific finding: in a study of
    turbine-control-system upgrade work, operators were able to use
    the new digital system without extensive additional training or
    rewriting of operating procedures. The human-factors V\&V
    evidence supported a low-burden cutover. That finding is the
    small-tier complement to the big-tier LWRS program case the
    corpus also tracks: the program produces specific design-V\&V
    case studies, not only program-level claims. The evidence base
    is INL technical reporting and OSTI-hosted conference papers,
    not independent academic evaluation; the tier flag is rendered
    under the title. Future validation will continue on whether the
    low-retraining finding generalizes beyond the studied subsystem
    and holds at multi-plant scale.
  ],
  sections: (
    [
      The nuclear-plant control room is the C7 transition problem
      with the safety-case constraint at the front: the regulator
      and the licensee both need to know that the upgraded
      digital control behaves equivalently to the legacy analog
      under the operating envelopes the safety case covers, and
      that the operator does not lose capability in the cutover.
      The LWRS program at INL exists to produce that evidence
      across the US fleet's modernization needs. The specific
      study here is one of the program's small-tier deliverables:
      a human-factors verification of a turbine-control-system
      upgrade.#cn()
    ],
    [
      The relevant finding the case rests on is that operators
      were able to use the new digital turbine-control system
      without extensive additional training or rewriting of
      operating procedures. That is a substantive
      human-factors-V\&V claim: the cutover did not impose a
      retraining burden on the operator workforce that the
      schedule and the operational logic could not absorb. The
      study is a per-subsystem evaluation rather than a
      whole-control-room finding, and the LWRS program treats
      these small-tier evaluations as the building blocks of the
      larger fleet-modernization safety case.#cn()
    ],
    [
      The case is the small-tier complement to the big-tier LWRS
      program case the corpus also tracks. The big-tier case
      states the program-level claim: that nuclear plants can be
      modernized into digital control rooms with the safety case
      maintained. The small-tier case is the per-subsystem
      evidence that the program-level claim has to rest on — the
      individual design-V\&V deliverables that, in aggregate,
      give the regulator and the licensee a reason to accept the
      modernization. Without the small-tier evidence the
      program-level claim is unfounded; without the program-level
      coordination the small-tier evidence does not roll up.#cn()
    ],
    [
      The evidence-tier flag is load-bearing. The study sits in
      INL technical reporting and OSTI-hosted conference papers,
      not in independent academic evaluation. The
      low-burden-cutover finding is conditional on the specific
      subsystem, plant, and operator population studied; whether
      the finding generalizes to other subsystems in the same
      plant, to other plants in the fleet, or to other digital
      control products is the open question that the LWRS program
      itself acknowledges and continues to study. Future
      validation will continue as the program publishes follow-on
      reports.#cn()
    ],
    [
      What the case adds at the LENS layer is the small-tier
      example of verification-as-deliverable inside a regulated
      transition. The Domain-1 frame applies: the human-factors
      analysis of the operator's task under the digital cutover
      is a systems-analysis artifact that the regulatory regime
      consumes as part of its acceptance decision. The Domain-3
      frame applies because the V\&V evidence is itself the
      measurement instrument the program rests on. The case is a
      paired small-tier companion to Case 116 (Eurocat ATM) and
      sits inside the C7 thread alongside the big-tier failures.
    ],
  ),
  beats: (
    "Nuclear control-room modernization — safety case must survive the analog-to-digital transition",
    "INL LWRS program produces per-subsystem human-factors V&V studies as small-tier deliverables",
    "Turbine-control upgrade study reports low-burden cutover — no extensive retraining or procedure rewrite",
    "Small-tier per-subsystem evidence is the building block of the program-level fleet-modernization claim",
    "Evidence tier: INL technical reporting + OSTI conference papers; generalization to other subsystems open",
  ),
  approaches: (
    during: (
      [Treat each subsystem upgrade as a per-subsystem human-factors V&V deliverable, not as a sub-task of the larger control-room modernization claim.],
      [Specify the operator-task analysis the cutover has to satisfy before the upgrade ships, so the V&V evidence has a target the regulator can audit.],
      [Document the conditioning factors — plant, operator population, subsystem boundary — explicitly, so the generalization question is honestly framed in the report.],
    ),
    after: (
      [Roll the per-subsystem V&V studies into the program-level fleet-modernization safety case deliberately; the program-level claim cannot rest on un-rolled-up small-tier evidence.],
      [Carry the practitioner-tier flag into any downstream citation; the small-tier finding is conditional on the studied subsystem and population.],
      [Track durability of the low-retraining finding under personnel rotation, procedure updates, and subsequent upgrades; the cutover is not finished when the digital system is in service.],
    ),
  ),
  references: (
    [INL / LWRS program (2014), "Human Factors Design, Verification, and Validation for Two Types of Control Room Upgrades at a Nuclear Power Plant," technical report and conference paper (ResearchGate publication 271728006).],
    [Idaho National Laboratory, Light Water Reactor Sustainability Program reports on control-room modernization — series available via OSTI.],
    [Nuclear Regulatory Commission (NUREG-0711), "Human Factors Engineering Program Review Model" — the regulatory framework the V&V deliverables are produced against.],
    [O'Hara et al. (2008), "Human Factors Considerations with Respect to Emerging Technology in Nuclear Power Plants," NUREG/CR-6947 — peer-adjacent framing.],
  ),
  quote: [The program-level claim cannot rest on un-rolled-up small-tier evidence. The per-subsystem V&V is the building block of the modernization safety case.],
  quote-source: "Editors' synthesis of INL LWRS reporting.",
  le-insight: [
    The INL turbine-control finding is a small-tier C7
    verification-as-deliverable case inside the LWRS
    nuclear-modernization program: the human-factors V\&V
    evidence supports a low-burden cutover. Evidence is INL
    technical reporting and OSTI conference papers, not
    independent academic evaluation; the generalization beyond
    the studied subsystem is the open question. Future
    validation ongoing.
  ],
  lens-approach: [
    INL turbine-control upgrade is the C7 small-tier
    transition case (induced 7.1 and 3.1; LENS D1/PT1).
    LENS uses it in Domain 1 (Systems Analysis) for CLO-1 —
    the operator-task analysis under the digital cutover is
    the systems-analysis artifact the regulator consumes —
    and in Domain 4 (Test and Evaluation) for CLO-4, since
    the V\&V evidence is itself the measurement instrument
    the program rests on. Pair with Case 116 (Eurocat) for
    the small-tier C7 thread and with the LWRS big-tier
    program case already in the corpus.
  ],
  literature-items: (
    [INL LWRS turbine-control upgrade study (2014)],
    [NUREG-0711 — Human Factors Engineering Program Review Model],
    [O'Hara et al. (2008), NUREG/CR-6947 — emerging-tech HF considerations],
  ),
  reflection-list: (
    [Identify a control-system upgrade in your context whose cutover burden on the operator is the decisive constraint. What is the per-subsystem V&V deliverable that would settle the burden question, and what is its scope?],
    [Specify the rollup logic from per-subsystem V&V evidence to a program-level modernization claim. The INL pattern teaches because the small-tier studies are the building blocks of a fleet-level claim — what would the equivalent be in your context?],
    [The case is INL technical reporting, not independent academic evaluation. What additional evidence (independent audit, multi-plant replication, durability tracking under personnel rotation) would you require before treating the low-retraining finding as generalizable?],
  ),
  courses: ("LEN 1", "LEN 3", "LEN 6"),
)

// ---- Case 155 — toyota-production-system-andon-cord ----
#case(
  number: 155,
  slug: "toyota-production-system-andon-cord",
  title: "Toyota Production System / Andon Cord",
  year: "1950s – present",
  domains-list: ("industrial",),
  modes-code: "NG",
  impact: "Front-line authority to stop the line resolves most defects quickly at the source; defect-propagation cost minimized; the system adopted globally",
  diagram: dgm.dgm-andon,
  kind: "intervention",
  summary: [
    The andon cord lets any assembly-line worker signal a defect and — if it
    can't be resolved within the work cycle — stop Toyota's entire production
    line, handing the lowest-ranking person on the floor the power to halt
    operations worth millions per hour. The cord is trivially cheap; the authority it confers is the
    design. The case is decisive for capability engineering because when
    American automakers copied the cord in the 1980s and 1990s, workers
    were too afraid to pull it: the tool was present, the empowerment was
    not. Toyota's system works because it pairs the mechanism with a
    culture of psychological safety, fast supervisor response, no-blame
    problem-solving, and the codified "Five Whys" method. When the line
    stops at Toyota, the team treats it as a learning opportunity. The
    Andon Cord is the manufacturing twin of the Keystone nurse-authority
    intervention (Case 19).
  ],
  sections: (
    // -- Background --
    [
      In high-volume manufacturing, a defect that passes undetected
      propagates downstream, multiplying the cost of every later
      correction. Catching problems at the source requires the person who
      sees them — usually the lowest-ranking worker on the line — to be
      able to act, in an environment where stopping a line running at
      millions of dollars per hour is otherwise unthinkable. The economics
      and the authority structure point in opposite directions: the cheapest
      moment to fix a defect is the one at which the person who sees it has
      the least standing to halt production.#cn()
    ],
    // -- The Intervention --
    [
      As part of the Toyota Production System, Toyota installed the andon
      cord: a physical pull-cord that lets any worker signal a problem and,
      if unresolved, stop the entire line. The inversion of authority is
      the entire point — the cord itself costs almost nothing, while the
      protected authority it confers on a front-line worker is the actual
      design. Handing the lowest-ranking person the power to halt operations
      worth millions per hour deliberately resolves the contradiction the
      background poses: it puts the authority to stop exactly where the
      defect is first visible.#cn()
    ],
    // -- How It Worked --
    [
      The cord works because Toyota pairs the mechanism with a cultural
      system: psychological safety, a rapid supervisor-response protocol
      when the cord is pulled, no-blame root-cause analysis, and the
      codified "Five Whys" method. A stop is treated as a learning
      opportunity rather than a failure, so workers actually use it — the
      technical artifact and the protected authority are inseparable. The
      rapid supervisor response is what makes the protection credible in
      practice: a worker who pulls the cord sees help arrive rather than
      blame, so the no-blame norm is demonstrated each time, not just
      asserted.#cn()
    ],
    // -- The Evidence --
    [
      The proof of the pairing is negative as well as positive. When
      American manufacturers copied the andon cord in the 1980s and 1990s,
      workers were too afraid to pull it; the artifact without the
      authority produced nothing. At Toyota, where the authority is
      protected, the great majority of activations are resolved within a
      minute and the system has been sustained and exported for decades. The
      natural experiment is unusually clean — the same physical cord
      produced opposite results across two settings, isolating the protected
      authority, not the hardware, as the variable that mattered.#cn()
    ],
    // -- What Transferred --
    [
      The Andon Cord is the foundational evidence that authority
      interventions and technical artifacts are inseparable — the cord
      means nothing without the protected authority to pull it, and vice
      versa. It is the manufacturing counterpart of the Keystone nurse-stop
      authority (Case 19): same logic, different industry, same
      load-bearing element, and the same failure mode when only the
      artifact is copied. That the identical pattern recurs across
      manufacturing and medicine is what elevates it from a Toyota practice
      to a design principle: wherever the person who sees the problem lacks
      the standing to stop, copying the tool alone reproduces the failure.#cn()
    ],
  ),
  beats: (
    "The cheapest moment to fix a defect is when the seer has least standing to halt",
    "Toyota installed a pull-cord letting any worker signal a problem and stop the line",
    "Mechanism paired with psychological safety, rapid supervisor response, no-blame analysis, and Five Whys",
    "American copies failed because workers feared pulling it; Toyota's protected authority is the variable",
    "Authority interventions and technical artifacts are inseparable; the manufacturing twin of Keystone nurse-stop",
  ),
  references: (
    [Liker, J. (2020), _The Toyota Way_ (2nd ed.) — the andon cord, the cultural pairing, and the American imitation (paraphrased).],
    [Spear, S. & Bowen, H. (1999), "Decoding the DNA of the Toyota Production System," _HBR_ — the response protocol and embedded learning.],
    [Shingo, S. (1989), _A Study of the Toyota Production System_ — the technical mechanism.],
    [Rother, M. (2009), _Toyota Kata_ — the routines that sustain the practice.],
    [Womack & Jones (1996), _Lean Thinking_ — diffusion and the limits of surface imitation.],
  ),
  quote: [When American manufacturers copied the andon cord, workers were too afraid to pull it.],
  quote-source: "Paraphrasing Liker, The Toyota Way (2nd ed., 2020)",
  le-insight: [
    The Andon Cord is the foundational evidence that authority
    interventions and technical artifacts are inseparable. The cord
    means nothing without the protected authority to pull it. The
    protected authority means nothing without the cord to act through.
    The pair is irreducible — and that irreducibility is the LENS
    co-optimization commitment in physical form.
  ],
  lens-approach: [
    LENS uses the Andon Cord in LEN 2 as the foundational example of
    paired technical-cultural intervention, in LEN 8 to discuss
    cross-domain transfer (and why imitation without the cultural half
    fails), and in LEN 10 as a studio exemplar of minimal-artifact
    design.
  ],
  literature-items: (
    [Liker (2020), _The Toyota Way_],
    [Spear & Bowen (1999), HBR],
    [Rother, _Toyota Kata_ (2009)],
  ),
  reflection-list: (
    [Identify a technical artifact in your domain whose effectiveness depends entirely on a protected authority. Is the authority protected, or only declared?],
    [American manufacturers copied the cord without the authority. What is the equivalent surface-level imitation you have observed in your domain, and what was missing?],
    [Toyota's no-blame norm is demonstrated each time help arrives within a minute of a pull rather than blame. Design the visible, repeated response that would prove a protected authority is real in your domain rather than merely written into policy.],
  ),
  approaches: (
    during: (
      [Place the authority to stop exactly where the problem is first visible — with the front-line worker — resolving the contradiction that the cheapest moment to fix a defect is when the seer has the least standing.],
      [Pair the cheap artifact with the protected authority deliberately, recognizing the cord costs almost nothing while the authority it confers is the actual design.],
      [Stand up a rapid supervisor-response protocol so that pulling the cord brings help, not blame, making the no-blame norm credible from the first activation.],
    ),
    after: (
      [Sustain the pairing with no-blame root-cause analysis and a codified method (the Five Whys) so each stop becomes embedded learning rather than a one-off interruption.],
      [Demonstrate the protected authority repeatedly — help arriving within a minute — so the norm is shown each time rather than merely asserted in policy.],
      [When transferring the model, export the protected authority and response culture, not just the artifact, since copying the tool alone reproduces the failure mode.],
    ),
  ),
  courses: ("LEN 10", "LEN 2", "LEN 8"),
  scale: "big",
  induced-anchor: "4.1",
  lens-anchor: "D3/PT3",
  clo-anchor: "CLO-3",
)

// ---- Case 156 — inl-lwrs-control-room-modernization ----
#case(
  number: 156,
  slug: "inl-lwrs-control-room-modernization",
  title: "INL / LWRS Control-Room Modernization — Sustainment Research for an Aging Fleet",
  year: "2010 – present",
  domains-list: ("nuclear engineering", "control-room human factors", "research and development"),
  modes-code: "DHK",
  impact: "The US Department of Energy's Light Water Reactor Sustainability (LWRS) program, executed at Idaho National Laboratory in partnership with utilities, has produced a structured research-and-pilot record for modernizing analog control-room instrumentation in the existing US nuclear fleet — pilot-scale evidence covering hybrid digital/analog operator interfaces, human-factors validation, and qualification pathways for digital instrumentation",
  kind: "intervention",
  scale: "big",
  evidence-source: "program-report",
  induced-anchor: "7.1",
  lens-anchor: "D3/PT4",
  clo-anchor: "CLO-1, CLO-3",
  summary: [
    The US commercial nuclear fleet is dominated by reactors
    originally licensed in the 1970s and 1980s with analog
    instrumentation and control-room layouts of that vintage.
    Aging analog components, vendor obsolescence, and the
    operational case for digital instrumentation make
    modernization a foreseeable sustainment requirement; the
    regulatory environment (Nuclear Regulatory Commission
    Regulatory Guide 1.180, Branch Technical Position 7-19, and
    related guidance) makes the qualification path for digital
    instrumentation deliberately stringent. The US Department of
    Energy's Light Water Reactor Sustainability (LWRS) program,
    executed at Idaho National Laboratory in partnership with US
    utilities, runs the federally-funded research-and-pilot work
    that supports the fleet's modernization decisions. The program
    has produced a structured record covering hybrid digital/
    analog operator interfaces, human-factors validation studies
    in full-scope simulators, and qualification-pathway research
    for safety-related digital instrumentation. The honest hedge
    survives clearly: LWRS observations are pilot-scale, the
    sample of plants that have implemented major modernizations
    is small, and the operational-fleet evidence at scale is
    forward-looking. The case is teachable on the structured
    sustainment-research form — a federally-funded research
    program operating across decades to support an industry's
    aging-fleet decisions — and closes a C7 zero-state in the
    induced framework, paired with Cases 114, 115, 174 as the v2
    aging-system quartet.
  ],
  sections: (
    [
      The US commercial nuclear fleet operates roughly 90 reactors
      originally licensed in the 1970s and 1980s. The control
      rooms of that era were built around analog instrumentation
      — strip-chart recorders, hardwired indicators, control-panel
      meters — designed for the operational envelope and the
      human-factors assumptions of the period. Aging analog
      components, vendor obsolescence, and the operational case
      for digital instrumentation (better diagnostics, lower
      maintenance burden, integration with plant computer systems)
      make modernization a foreseeable sustainment requirement
      across the fleet.#cn()
    ],
    [
      The regulatory environment is deliberately stringent.
      Nuclear Regulatory Commission guidance — Regulatory Guide
      1.180 on electromagnetic and radio-frequency compatibility,
      Branch Technical Position 7-19 on common-cause failure
      analysis for digital instrumentation and control, and the
      broader Standard Review Plan Chapter 7 — sets the
      qualification path for safety-related digital
      instrumentation. The stringency is intentional: digital
      systems can introduce failure modes (common-cause software
      faults, cyber exposure) that analog systems do not, and the
      regulatory regime is designed to keep those failure modes
      bounded as plants modernize.#cn()
    ],
    [
      The US Department of Energy's Light Water Reactor
      Sustainability (LWRS) program is the federally-funded
      research-and-pilot work that supports the fleet's
      modernization decisions. Executed at Idaho National
      Laboratory in partnership with US utilities and EPRI, LWRS
      operates across a multi-decade horizon with annual research-
      report deliverables. The control-room modernization research
      line — including the Human Systems Simulation Laboratory at
      INL with full-scope plant simulators — covers hybrid
      digital/analog operator-interface designs, human-factors
      validation studies, and qualification-pathway research that
      supports utility-level licensing submissions.#cn()
    ],
    [
      The honest hedge has to be visible. LWRS observations are
      pilot-scale: full-scope simulator studies, single-plant
      pilot implementations, and structured human-factors
      experiments with operator participants from utility partners.
      The sample of US plants that have implemented major
      control-room modernizations is small relative to the fleet,
      and the operational-fleet evidence at scale — fleet-wide
      reliability, fleet-wide human-error rate, fleet-wide
      maintenance burden under hybrid digital/analog control rooms
      — is forward-looking rather than retrospective. The program's
      own reports characterize the research at this evidence tier,
      and the case carries the same honesty.#cn()
    ],
    [
      What the case teaches at the LENS framing layer is the
      structured sustainment-research form — a federally-funded
      research program operating across decades in partnership
      with industry and a regulator, producing the
      research-and-pilot record that supports licensing decisions
      on aging-fleet modernization. The form is the
      sustainment-engineering analog of the FAA Aging Aircraft
      Program (Case 114): a long-horizon institutional discipline
      that produces the technical record that aging-fleet
      decisions can rest on. With NextGen/ADS-B (Case 115) and
      Y2K (Case 174), LWRS completes the v2 aging-system quartet
      that closes the C7 zero-state in the induced framework. The
      LWRS instance is where the evidence is most explicitly
      pilot-scale, and the case carries that as the program's
      tier acknowledgement rather than as a weakness to smooth.#cn()
    ],
  ),
  beats: (
    "US commercial nuclear fleet dominated by reactors originally licensed 1970s–80s with analog control-room instrumentation",
    "NRC regulatory environment (RG 1.180, BTP 7-19, SRP Ch. 7) makes the qualification path for safety-related digital I&C deliberately stringent",
    "DOE LWRS program executed at INL in partnership with utilities — federally-funded research-and-pilot work across multi-decade horizon",
    "Research line covers hybrid digital/analog operator interfaces, human-factors validation in full-scope simulators, qualification-pathway research",
    "Hedge preserved: LWRS observations are pilot-scale; operational-fleet evidence at scale is forward-looking; closes C7 zero-state with Cases 114, 115, 174",
  ),
  approaches: (
    during: (
      [Pair the research program with full-scope simulator infrastructure (the INL Human Systems Simulation Laboratory) so the human-factors validation work runs in the operational envelope rather than in abstracted laboratory conditions.],
      [Structure the partnership across federal research (DOE/INL), industry (utilities, EPRI), and regulator (NRC) so the research record is recognized by all three parties — the licensing submissions ultimately rest on that recognition.],
      [Carry the pilot-scale evidence tier honestly in the program's reports; LWRS characterizes its research at that tier, and downstream practitioners reading the work should read it the same way.],
    ),
    after: (
      [Track fleet-scale outcomes as utility implementations proceed: fleet-wide reliability, human-error rate, maintenance burden under modernized control rooms. The forward-looking evidence will accumulate over the next two decades; the program is the institutional carrier of that accumulation.],
      [Carry the LWRS case in pair with FAA Aging Aircraft (Case 114) as the sustainment-engineering analog at multi-decade horizon, and with Y2K (Case 174) and NextGen (Case 115) as the broader aging-system quartet.],
      [Treat the structured-sustainment-research institutional form as the transferable artifact: federal research program plus industry partnership plus regulator engagement, operating across decades to produce the technical record aging-fleet decisions can rest on.],
    ),
  ),
  references: (
    [Idaho National Laboratory, Light Water Reactor Sustainability (LWRS) program annual reports (2010 – present) — primary research-and-pilot record.],
    [Nuclear Regulatory Commission, Regulatory Guide 1.180, "Guidelines for Evaluating Electromagnetic and Radio-Frequency Interference in Safety-Related Instrumentation and Control Systems."],
    [Nuclear Regulatory Commission, Branch Technical Position 7-19, "Guidance for Evaluation of Diversity and Defense-in-Depth in Digital Computer-Based Instrumentation and Control Systems."],
    [O'Hara, Higgins, Brown, Fink, Persensky, Lewis, Kramer, & Szabo (2008), "Human Factors Considerations with Respect to Emerging Technology in Nuclear Power Plants," NUREG/CR-6947 — foundational human-factors backdrop.],
    [Electric Power Research Institute, control-room modernization technical reports — industry-side sustainment record.],
  ),
  quote: [The institutional form is what transfers: federal research program plus industry partnership plus regulator engagement, operating across decades to produce a technical record aging-fleet decisions can rest on.],
  quote-source: "Editors' synthesis of the LWRS annual report series.",
  le-insight: [
    LWRS is the structured sustainment-research case — federally-
    funded research at INL in partnership with utilities and the
    regulator, producing the research-and-pilot record that
    supports aging-fleet modernization decisions across a multi-
    decade horizon. The observations are pilot-scale; the
    operational-fleet evidence at scale is forward-looking. The
    hedge is part of the case.
  ],
  lens-approach: [
    LWRS control-room modernization is the structured
    sustainment-research case (induced 7.1; LENS D3/PT4) —
    Domain 1 for the long-horizon partnership; Domain 5 for the
    federal-research + industry + regulator triple structure;
    Domain 3 for the hybrid digital/analog research line.
    Closes C7 with Cases 114, 115, 174.
  ],
  literature-items: (
    [LWRS annual reports (INL, 2010 – present)],
    [O'Hara et al. (2008), NUREG/CR-6947],
    [NRC BTP 7-19 and RG 1.180],
  ),
  reflection-list: (
    [Identify an aging fleet of long-lived assets in your domain whose modernization decisions rest on research that does not yet exist at fleet scale. What is the analog of a federally-funded research program — institutional partner, industry partner, regulator partner — that could operate across the horizon the decisions actually need?],
    [Specify the full-scope simulator (or equivalent in-envelope test infrastructure) the program would need so its human-factors validation work runs in operational conditions rather than abstracted laboratory ones. What is the cost of building it, and what does its absence mean for the evidence the research produces?],
    [LWRS evidence is pilot-scale and the program reports it as such. Identify a program in your domain whose evidence tier should be acknowledged in its reporting but is not. What institutional discipline keeps the evidence-tier honesty visible — to the program, to industry partners, and to the regulator?],
  ),
  courses: ("LEN 1", "LEN 7", "LEN 8"),
)

// ---- Case 157 — ai-augmented-coding-tools ----
#case(
  number: 157,
  slug: "ai-augmented-coding-tools",
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
  induced-anchor: "5.2",
  lens-anchor: "D3/PT6",
  clo-anchor: "CLO-3",
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
  beats: (
    "AI coding assistants became infrastructure for tens of millions of developers without controls",
    "Productivity gains documented alongside unsettled security findings on AI-generated code quality",
    "Whether developers using these tools are becoming more capable or more dependent",
    "Jagged frontier shows performance degrading just outside competence, where users over-trust output",
    "Longitudinal study and training practice that keeps human skill growing remain unbuilt",
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
    The teaching point is a measurement-design problem, and it is the
    load-bearing one: productivity metrics count output and so cannot
    distinguish a developer whose skill is growing from one whose skill
    is quietly eroding under augmentation. The learning engineer's task
    is to build the instrument that separates those two. The design is a
    longitudinal, tool-removed probe — periodically measure each
    developer on representative tasks with the assistant withheld,
    scoring unaided correctness, debugging, and the ability to judge
    generated code, and track that aided-minus-unaided gap over time. A
    widening gap (rising aided output, flat-or-falling unaided
    competence) reads as skill-atrophy; a narrowing one reads as
    skill-growth. LENS uses this case in LEN 2 (human-AI teaming), in LEN
    8 to build the capability-development instrument itself, and in LEN
    10 (capstone) to have the student design the atrophy-versus-growth
    measurement for an augmented practice in their own domain.
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
  scale: "big",
)
