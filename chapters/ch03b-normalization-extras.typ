// ============================================================
// Chapter 3 — Normalization of Deviance (extras)
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 56,
  title: "Texas City BP Refinery Explosion",
  year: "2005",
  domains-list: ("energy", "industrial"),
  modes-code: "NTKG",
  impact: "15 killed, 180 injured at BP's Texas City refinery; CSB found systemic safety-culture decay",
  diagram: dgm.dgm-compare(
    "personal\nsafety",
    "best in class",
    "process\nsafety",
    "drifting",
    framing: "the measurement system was blind in the dimension that killed people",
    caption: "Texas City — the wrong measurement, reported as a win",
  ),
  body: [
    A startup overfilled a distillation tower because the operators were
    working from instruments that had been malfunctioning for years.
    Vapor accumulated, found an ignition source — an idling pickup
    truck — and exploded. Fifteen contractors in temporary trailers
    parked next to a process unit were killed instantly. The U.S.
    Chemical Safety and Hazard Investigation Board (CSB) found
    accumulated safety-culture decay, deferred maintenance, broken
    instruments tolerated as routine, and a corporate cost-cutting
    program that had been celebrated internally for the savings it
    produced.

    The CSB's Texas City report became the most influential CSB report
    in the agency's history. It introduced the concept of *process
    safety* — distinct from personal safety — to U.S. industrial
    regulation. Personal-safety metrics at BP Texas City had been
    among the best in the industry. Process-safety metrics, had anyone
    been measuring them, would have shown the opposite.

    The case is the canonical evidence that the wrong measurement is
    worse than no measurement.
  ],
  quote: [Process-safety hazards can produce major accidents even when personal-safety performance is excellent.],
  quote-source: "Paraphrasing the CSB Texas City Final Investigation Report and the Baker Panel, 2007",
  sources-list: (
    [CSB Investigation Report 2005-04-I-TX, _Refinery Explosion and Fire_ (2007)],
    [Baker Panel Report on BP North American Refineries (2007)],
    [Hopkins, _Failure to Learn: The BP Texas City Refinery Disaster_ (2008)],
  ),
  le-insight: [
    Texas City is the foundational evidence that organizations can be
    measuring the wrong thing and reporting excellent performance while
    their actual capability gap widens. Personal-safety metrics had no
    information about process-safety state. The signal regime was
    blind in the dimension that killed people.
  ],
  lens-approach: [
    LENS uses Texas City in LEN 2 as the canonical wrong-measurement
    case and in LEN 7 for the governance failure that allowed years of
    cost-cutting to be reported as wins. Studio projects design the
    process-safety measurement deliverable.
  ],
  literature-items: (
    [CSB Texas City Report (2007)],
    [Hopkins (2008), _Failure to Learn_],
    [Reason (1997), _Managing the Risks of Organizational Accidents_],
  ),
  reflection-list: (
    [Identify a "personal safety vs. process safety" equivalent in your domain. What capability gap is invisible to the metric your institution currently reports?],
    [Design the process-safety dashboard that BP Texas City's executives should have been receiving in 2003.],
  ),
  courses: ("LEN 2", "LEN 7"),
)

#case(
  number: 57,
  title: "Davis-Besse Reactor Head Corrosion",
  year: "2002",
  domains-list: ("energy",),
  modes-code: "NKG",
  impact: "Football-sized cavity discovered in the reactor pressure-vessel head; near-miss; ~$600M recovery and extended outage",
  diagram: dgm.dgm-stat(
    "1/4″",
    "of stainless cladding remained",
    micro: "between a 6-inch corrosion cavity and reactor coolant at 2,200 psi",
    caption: "Davis-Besse — the post-TMI near-miss",
  ),
  body: [
    During refueling at the Davis-Besse nuclear plant in Ohio, workers
    discovered a cavity in the reactor pressure vessel head about the
    size of a football, eaten through six inches of carbon steel by
    boric acid leaking from a cracked nozzle. Only a quarter-inch of
    stainless-steel cladding remained between the cavity and reactor
    coolant at 2,200 psi. A breach would have produced a loss-of-coolant
    accident potentially worse than Three Mile Island.

    The boric acid leakage had been observable for years. Inspections
    had been deferred. The plant operator had successfully lobbied the
    NRC to delay a mandatory inspection that would have caught the
    corrosion months earlier. The NRC's Office of Inspector General
    found that the regulator had accepted the operator's economic
    arguments over its own safety judgment.

    Davis-Besse is the canonical post-TMI near-miss case in U.S.
    commercial nuclear power. INPO and the NRC restructured significant
    portions of their inspection regimes in response.
  ],
  quote: [The NRC's actions were not adequate to ensure that safety would not be compromised.],
  quote-source: "NRC Office of Inspector General, 2003",
  sources-list: (
    [NRC OIG, Davis-Besse Lessons Learned Report (2003)],
    [Lochbaum et al. (Union of Concerned Scientists) analysis (2002)],
    [Government Accountability Office, GAO-04-415],
  ),
  le-insight: [
    Davis-Besse is the case for how regulator-operator dynamics can
    erode the capability of an industry that had previously
    demonstrated, through INPO, that it knew how to engineer safety.
    Regulatory capture is a capability failure at the institutional
    layer above operations.
  ],
  lens-approach: [
    LENS uses Davis-Besse in LEN 7 to study regulatory-capture
    dynamics and in LEN 9 to compare with INPO's earlier success. The
    case is a reminder that institutional capability requires sustained
    re-engineering.
  ],
  literature-items: (
    [NRC OIG Davis-Besse report (2003)],
    [Lochbaum (UCS) analyses],
    [Rees (1994), _Hostages of Each Other_],
  ),
  reflection-list: (
    [Identify a regulator-operator relationship in your domain in which the regulator may be at risk of accepting the operator's economic argument over its own safety judgment. What signal would surface it?],
    [Design the institutional control that would prevent a Davis-Besse-style deferral from being granted.],
  ),
  courses: ("LEN 7", "LEN 9"),
)

#case(
  number: 58,
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
  body: [
    Patients at Stafford Hospital in England were left in their own
    excrement, denied food and water, given the wrong medication or
    none at all. Mortality was substantially above expected. The
    Foundation Trust had been pursuing — and had achieved — financial
    targets that depended on staffing cuts. The Healthcare Commission
    investigated. The Department of Health did not. The local trust
    board, which was supposed to be the safety conscience, was instead
    the principal architect of the staffing decisions that produced the
    harm.

    The Francis Inquiry's final report ran to two thousand pages and
    made two hundred ninety recommendations. It identified the gap
    between the trust's reported performance and the patients' actual
    experience as the structural problem: every governance layer above
    the ward had received reports that the hospital was meeting its
    targets. None of those reports were checked against what was
    happening to patients.

    Mid Staffs is the strongest case in the dataset for the harm
    produced when measurement and reality diverge over years.
  ],
  quote: [The system as a whole failed in its most essential duty — to protect patients from unacceptable risks of harm.],
  quote-source: "Robert Francis QC, Report of the Mid Staffordshire NHS Foundation Trust Public Inquiry, 2013",
  sources-list: (
    [Francis QC, R. (2013), _Report of the Mid Staffordshire NHS Foundation Trust Public Inquiry_],
    [Healthcare Commission Investigation (2009)],
    [Berwick, D., _A Promise to Learn — A Commitment to Act_ (2013)],
  ),
  le-insight: [
    Mid Staffordshire is the British analog of the VA wait-time scandal
    (Case 32). Measurement and reality diverged over years; every layer
    of governance above the operating environment was acting on the
    measurement; patients paid the cost of the divergence. The Francis
    Inquiry recommendations changed how the NHS thinks about patient
    safety as an institutional capability.
  ],
  lens-approach: [
    LENS uses Mid Staffs in LEN 2 for the divergence-of-measurement
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
  ),
  courses: ("LEN 2", "LEN 7"),
)

#case(
  number: 59,
  title: "Sago Mine Disaster",
  year: "2006",
  domains-list: ("energy", "industrial"),
  modes-code: "NTK",
  impact: "12 killed in a West Virginia coal-mine explosion; emergency-response failures compounded the initial event; MINER Act of 2006",
  diagram: dgm.dgm-cascade(
    ("seal design", "emergency plan", "self-rescue training", "communications"),
    outcome: "marginal in each dimension; combined inadequacy in the one minute that mattered",
    caption: "Sago — cumulative inadequacy across multiple defenses",
  ),
  body: [
    A lightning strike ignited methane in a sealed area of the Sago
    Mine in West Virginia. The seal failed, the explosion propagated,
    and thirteen miners were trapped. Initial reports — broadcast
    nationally — said twelve had been found alive. The reports were
    wrong; only one had survived. The miscommunication tortured the
    families for hours and exposed an emergency-response architecture
    that had not been engineered to handle the kind of information
    flow a modern news cycle creates.

    The MSHA investigation found the seals had been built to a design
    that did not meet then-current standards, that the mine's emergency
    plan was inadequate, and that miner training in self-rescue had
    not been kept current. The Sago disaster led to the MINER Act of
    2006, which strengthened mine-rescue requirements and required
    refuge chambers underground.

    The case is the modern coal-mining analog of the slow-erosion
    pattern: seals, plans, training, all marginally adequate for
    years, all simultaneously inadequate in the only minute that
    mattered.
  ],
  quote: [The miners faced multiple equipment, training, and emergency-response shortcomings that compounded their initial trapping.],
  quote-source: "Mine Safety and Health Administration, Sago Investigation Report, 2007",
  sources-list: (
    [MSHA, Report of Investigation, Sago Mine (2007)],
    [MINER Act of 2006, Public Law 109-236],
    [West Virginia Sago Investigation report (2006)],
  ),
  le-insight: [
    Sago is the case for the cumulative inadequacy pattern in
    industrial accidents. No single failure caused the disaster. Each
    failure on its own would have been recoverable. The combination
    was not, and the combination had been the operating condition of
    the mine for years.
  ],
  lens-approach: [
    LENS uses Sago in LEN 5 for cumulative-inadequacy analysis and in
    LEN 9 for the legislative-reform arc that followed. Studio projects
    compare Sago and Upper Big Branch (Case 60) as paired cases.
  ],
  literature-items: (
    [MSHA Sago report (2007)],
    [Hopkins, _Failure to Learn_ (2008)],
    [West Virginia governor's independent investigation],
  ),
  reflection-list: (
    [Identify a process in your domain that is marginally adequate across multiple parameters. What is the cumulative failure mode?],
    [Sago produced the MINER Act. What legislative change would your domain require if a Sago-equivalent occurred?],
  ),
  courses: ("LEN 5", "LEN 9"),
)

#case(
  number: 60,
  title: "Upper Big Branch Mine Explosion",
  year: "2010",
  domains-list: ("energy", "industrial"),
  modes-code: "NGK",
  impact: "29 killed in West Virginia coal mine; MSHA found systematic falsification of safety records; first CEO criminally convicted on mine-safety charges",
  diagram: dgm.dgm-compare(
    "inspector\nlog",
    "compliant",
    "internal\nlog",
    "actual",
    framing: "two sets of records, sustained for years as institutional practice",
    caption: "Upper Big Branch — measurement engineered against the regulator",
  ),
  body: [
    Coal dust and methane ignited at Massey Energy's Upper Big Branch
    Mine, killing twenty-nine miners — the worst U.S. mine disaster in
    forty years. MSHA's investigation, and a parallel U.S. Department
    of Justice probe, found that Massey had maintained two sets of
    records: an internal log of actual conditions and a separate log
    for MSHA inspectors. Mine foremen were instructed to suppress
    methane readings, to disable monitors, to falsify pre-shift
    examinations. Massey CEO Don Blankenship was eventually convicted
    of conspiring to violate mine safety standards — the first U.S.
    mining-industry CEO to be criminally convicted on safety charges.

    The dual-records architecture was not exceptional behavior. It was
    a stable institutional practice maintained across years and
    multiple management layers. The capability gap was not in the
    miners — it was in the executive ranks that designed and operated
    a measurement system specifically to defeat the regulator.

    Upper Big Branch is the strongest case in U.S. industrial safety
    for criminal accountability of corporate-officer roles in
    capability failure.
  ],
  quote: [Massey kept two sets of books — one for inspectors, one for itself.],
  quote-source: "Paraphrasing federal investigators, MSHA Upper Big Branch reviews (2011 – 2012)",
  sources-list: (
    [MSHA Internal Review of Upper Big Branch (2012)],
    [_United States v. Blankenship_ (S.D.W. Va. 2015)],
    [Berkes, NPR investigative reporting on Massey],
  ),
  le-insight: [
    Upper Big Branch is the case for deliberately engineered
    measurement deception. The dual-records practice was not error. It
    was capability design — by management, against the regulator. The
    case anchors the LENS argument that decision-grade evidence
    requires structural protection against the institution that
    produces it having a stake in what it reports.
  ],
  lens-approach: [
    LENS uses Upper Big Branch in LEN 2 as the most explicit case for
    measurement-system protection and in LEN 7 as a corporate-criminal
    accountability case. Studio projects examine what regulator-side
    architecture would have detected the dual-records system earlier.
  ],
  literature-items: (
    [MSHA UBB Internal Review (2012)],
    [Blankenship trial record],
    [Hopkins (2012), _Disastrous Decisions_],
  ),
  reflection-list: (
    [Where in your domain could two sets of records plausibly be kept? What architectural change would make that impossible?],
    [What does it mean for a measurement system to be "structurally protected" from the institution that produces it?],
  ),
  courses: ("LEN 2", "LEN 7"),
)

#case(
  number: 61,
  title: "Fukushima Daiichi",
  year: "2011",
  domains-list: ("energy",),
  modes-code: "NGK",
  impact: "Three reactor meltdowns following the Tōhoku earthquake and tsunami; ~160,000 people displaced; cleanup projected at $200B+",
  diagram: dgm.dgm-stat(
    "3 of 6",
    "reactors melted down",
    micro: "tsunami exceeded design basis the institutional evidence had already questioned",
    caption: "Fukushima Daiichi — \"made in Japan,\" per the Diet inquiry",
  ),
  body: [
    The Tōhoku earthquake of March 11, 2011, and the tsunami that
    followed, exceeded the design-basis assumptions of TEPCO's Fukushima
    Daiichi nuclear plant. The plant lost off-site power. Its emergency
    diesel generators were inundated by water that came in higher than
    the site's seawall. Cooling was lost. Three reactor cores melted
    down. Hydrogen explosions distributed radioactive material across
    the surrounding region.

    The independent investigation chaired by Kiyoshi Kurokawa identified
    the accident as "made in Japan" — the product of regulatory
    capture, deference to authority, and institutional reluctance to
    challenge utility assumptions. Tsunami evidence going back to the
    ninth century, available to anyone who looked, suggested the
    design-basis assumptions were optimistic. TEPCO's internal
    assessments had reached similar conclusions. The institutional path
    by which those assessments would have changed the seawall did not
    exist.

    Fukushima is the canonical case in the post-TMI era for the
    failure of regulator-utility dynamics under cultural pressure
    against confrontation.
  ],
  quote: [What must be admitted — very painfully — is that this was a disaster \"Made in Japan.\"],
  quote-source: "National Diet of Japan Fukushima Nuclear Accident Independent Investigation Commission, 2012",
  sources-list: (
    [National Diet of Japan Independent Investigation Commission (2012)],
    [IAEA Director General Report on the Fukushima Daiichi Accident (2015)],
    [Lochbaum, Lyman & Stranahan, _Fukushima: The Story of a Nuclear Disaster_ (2014)],
  ),
  le-insight: [
    Fukushima is the post-TMI case that establishes that the INPO
    pattern (Case 16) is not self-executing. The U.S. industry built
    INPO; the Japanese industry did not. The cost of the difference,
    paid in 2011, is the strongest available evidence that capability
    institutions must be deliberately built, not assumed.
  ],
  lens-approach: [
    LENS uses Fukushima in LEN 9 as the cross-cultural comparison to
    INPO and in LEN 7 for the regulator-utility dynamics study. The
    case is paired with INPO and Davis-Besse to triangulate what
    sustained nuclear-safety capability requires.
  ],
  literature-items: (
    [Kurokawa Commission Report (2012)],
    [Lochbaum, Lyman & Stranahan (2014)],
    [Funabashi & Kitazawa (2012), _Fukushima in Review_],
  ),
  reflection-list: (
    [Identify a regulatory regime in your domain whose effectiveness depends on a cultural willingness to challenge authority. What if the culture changes?],
    [INPO is U.S.-specific. Design the structural features that would have to be in place for a comparable institution to function in a different national context.],
  ),
  courses: ("LEN 7", "LEN 9"),
)

#case(
  number: 62,
  title: "Northeast Blackout",
  year: "2003",
  domains-list: ("energy",),
  modes-code: "HK",
  impact: "55 million people without power across eight U.S. states and Ontario; $6B+ economic loss; FERC Order 693 followed",
  diagram: dgm.dgm-timeline(
    (("tree contact", "12:15"), ("line trips", "—"), ("alarm fails", "silent"), ("operator unaware", "1 hour"), ("cascade", "4:11")),
    emphasis: 2,
    caption: "Northeast Blackout — silent alarm failure absorbed the operator's awareness",
  ),
  body: [
    A tree contact in Ohio sagged a 345 kV transmission line into a
    branch and tripped a single transmission asset. Under normal
    conditions, the loss would have been absorbed by the grid. On
    August 14, 2003, FirstEnergy's alarm system had been silently
    failing for over an hour, and its operators were unaware that the
    line had tripped. Subsequent line trips cascaded across the
    Eastern Interconnection. Within minutes, fifty-five million people
    were without power.

    The U.S.-Canada Power System Outage Task Force found that
    FirstEnergy operators did not have the situational awareness to
    detect the developing failure, that the company's alarm system had
    failed without notice, that vegetation management had been
    inadequate, and that the regional reliability coordinator did not
    have the authority or the information to intervene. The reforms
    that followed produced FERC Order 693, which made compliance with
    reliability standards mandatory and enforceable for the first
    time.

    The capability gap was at the boundary between automation and
    operator: when the alarm system failed silently, the operators had
    no other signal that they were losing control of their grid
    segment.
  ],
  quote: [Inadequate situational awareness at FirstEnergy contributed to the cascading failure.],
  quote-source: "Paraphrasing the U.S.-Canada Power System Outage Task Force Final Report, 2004",
  sources-list: (
    [U.S.-Canada Power System Outage Task Force, _Final Report on the August 14, 2003 Blackout_ (2004)],
    [North American Electric Reliability Council reports (2004)],
    [FERC Order No. 693, _Mandatory Reliability Standards_ (2007)],
  ),
  le-insight: [
    The 2003 blackout is the canonical case for silent automation
    failure: a system that stops doing its job without telling its
    operators. The capability that was missing was the meta-monitor —
    the system that watches the monitor. The reform that followed
    treated grid-reliability compliance as a deliverable rather than
    as a best practice.
  ],
  lens-approach: [
    LENS uses the 2003 blackout in LEN 8 as a Human-AI Teaming case
    for silent-automation-failure handling and in LEN 9 for the
    legislative-reform arc that produced enforceable reliability
    standards.
  ],
  literature-items: (
    [U.S.-Canada Outage Task Force Final Report (2004)],
    [Endsley (1995), situation awareness theory],
    [Casner & Hutchins (2019), automation transparency requirements],
  ),
  reflection-list: (
    [Identify an automated monitoring system in your domain whose silent failure would not be detected by its operators. How would they know?],
    [Design the meta-monitor that should have been watching FirstEnergy's alarm system in 2003.],
  ),
  courses: ("LEN 8", "LEN 9"),
)
