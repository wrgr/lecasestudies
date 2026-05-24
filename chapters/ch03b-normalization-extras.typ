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
  kind: "failure",
  summary: [
    On 23 March 2005 a startup at BP's Texas City refinery overfilled a
    distillation tower — operators were working from instruments that had
    malfunctioned for years — and venting hydrocarbon vapor found an
    ignition source and exploded, killing 15 workers in trailers parked
    beside the unit and injuring 180. The Chemical Safety Board found
    accumulated safety-culture decay, deferred maintenance, and a celebrated
    cost-cutting program. Its central finding reshaped U.S. industrial
    safety: BP's *personal*-safety metrics were among the best in the
    industry, while its *process*-safety state — the integrity of the
    hazardous process itself — had been drifting, unmeasured. Texas City is
    the canonical evidence that the wrong measurement, reported as a win, is
    worse than no measurement at all.
  ],
  sections: (
    // -- Background --
    [
      BP's Texas City refinery, one of the largest in the U.S., had absorbed
      years of deferred maintenance and corporate cost-cutting, with
      instruments and alarms tolerated in a degraded state. On the surface it
      looked safe: its personal-injury rates were among the best in the
      industry.#cn() The strong injury numbers actively reassured the
      organization, because the metric the company trusted most was the one
      that carried no information about the degrading instruments and alarms
      on which a safe startup actually depended.
    ],
    // -- What Happened --
    [
      On 23 March 2005, during a unit startup, operators overfilled a
      distillation tower far past its safe level, working from a level
      indicator that had malfunctioned for years and alarms that did not
      sound. Hydrocarbon vapor vented, drifted across the site, found an
      ignition source — an idling truck — and exploded. Fifteen workers in
      temporary trailers parked beside the unit were killed and about 180
      injured.#cn() Every contributor had been tolerated as routine for years
      — the broken indicator, the silent alarms, the trailers parked beside a
      hazardous unit — so the startup was run blind to a danger the site had
      long since stopped seeing.
    ],
    // -- The Investigation --
    [
      The U.S. Chemical Safety Board's investigation became the most
      influential in the agency's history.#cn() It found accumulated
      safety-culture decay, deferred maintenance, broken instruments
      tolerated as routine, trailers sited dangerously close to a hazardous
      unit, and a cost-cutting program celebrated internally — and it drew
      the distinction that would reshape the field: "indicators of personal
      safety are not indicators of process safety."#cn() The Board's force
      came from naming the deeper error as one of measurement: the company
      had not failed to measure but had measured the wrong dimension and then
      trusted the reassuring number it produced.
    ],
    // -- The Capability Gap --
    [
      Texas City is the foundational evidence that an organization can
      measure the wrong thing and report excellent performance while its real
      capability gap widens. Personal-safety metrics — slips, trips,
      recordable injuries — carried no information about the integrity of the
      hazardous process, so the signal regime was blind in the very dimension
      that killed people. The wrong measurement, trusted, is worse than
      none.#cn() A blank dashboard at least invites suspicion; a confident
      green reading on the wrong axis manufactures false assurance, which is
      why the excellent injury record made the process-safety drift harder to
      see rather than easier.
    ],
    // -- Aftermath & Reform --
    [
      The Baker Panel review followed, BP invested heavily in process safety,
      and the process-safety/personal-safety distinction — developed in the
      CCPS literature and codified in OSHA's 1992 process-safety-management
      standard — moved into mainstream U.S. industrial regulation after 2005.
      The case's lasting contribution is a measurement lesson: count the
      thing that can kill you, not the thing that is easy to count.#cn() That
      the distinction had been available in the CCPS literature and the OSHA
      standard before the explosion underscores the point: the knowledge
      existed, but the refinery's reporting had not been built to carry it
      upward where the hazard actually lived.
    ],
  ),
  references: (
    [U.S. Chemical Safety and Hazard Investigation Board, _Refinery Explosion and Fire_, Investigation Report 2005-04-I-TX (2007) — the startup, malfunctioning instruments, and 15 killed / 180 injured.],
    [CSB (2007) — accumulated safety-culture decay, deferred maintenance, and the siting of occupied trailers beside a hazardous unit.],
    [CSB (2007) — "indicators of personal safety are not indicators of process safety" (quoted).],
    [_Report of the BP U.S. Refineries Independent Safety Review Panel_ (the Baker Panel, 2007).],
    [A. Hopkins, _Failure to Learn: The BP Texas City Refinery Disaster_ (CCH, 2008).],
    [OSHA Process Safety Management standard (29 CFR 1910.119, 1992) and the CCPS process-safety literature — the personal-vs-process-safety distinction.],
  ),
  quote: [Indicators of personal safety are not indicators of process safety.],
  quote-source: "U.S. Chemical Safety Board, BP Texas City Final Investigation Report, 2007",
  le-insight: [
    Texas City is the foundational evidence that organizations can be
    measuring the wrong thing and reporting excellent performance while
    their actual capability gap widens. Personal-safety metrics had no
    information about process-safety state. The signal regime was
    blind in the dimension that killed people.
  ],
  lens-approach: [
    LENS uses Texas City in LEN 4 as the canonical wrong-measurement
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
    [A confident green reading on the wrong axis manufactured false assurance. What headline metric in your organization might be reassuring precisely because it measures the wrong dimension?],
  ),
  approaches: (
    during: (
      [Instrument process-safety state directly — barrier integrity, alarm health, instrument validity — rather than inferring safety from personal-injury rates.],
      [Treat degraded instruments and silent alarms as startup-blocking conditions, not routine items to defer past the next run.],
      [Set facility-siting rules that keep occupied trailers away from hazardous units as a design constraint, not a tolerated exception.],
    ),
    after: (
      [Audit whether the headline metric actually carries information about the hazard that can kill, and retire reassuring numbers that do not.],
      [Track deferred maintenance and tolerated-defect counts as process-safety leading indicators reported to executives.],
      [Verify that the process-vs-personal-safety distinction is wired into the reporting chain so it reaches the layer that funds maintenance.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 3",),
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
  kind: "failure",
  summary: [
    During a 2002 refueling outage at the Davis-Besse nuclear plant in Ohio,
    workers found a football-sized cavity eaten through six inches of the
    carbon-steel reactor-vessel head by leaking boric acid, leaving only a
    thin layer of stainless cladding between the cavity and reactor coolant
    at 2,200 psi — a serious near-miss for a loss-of-coolant accident. The
    leakage had been visible for years and inspections deferred; FirstEnergy
    had won an NRC deferral of a mandatory inspection to fit its refueling
    schedule, and the NRC's Inspector General later found the decision had
    weighted economics over safety. Davis-Besse is the canonical
    post-Three-Mile-Island near-miss — evidence that even an industry that
    built INPO to engineer safety can let regulator-operator dynamics erode
    it.
  ],
  sections: (
    // -- Background --
    [
      After Three Mile Island, U.S. commercial nuclear power had built —
      through INPO and a strengthened NRC — a reputation for engineering
      safety as a system. Davis-Besse, a pressurized-water reactor in Ohio,
      operated inside that regime, with a known industry-wide hazard: boric
      acid leaking from cracked nozzles could corrode the carbon-steel
      reactor-vessel head.#cn() The hazard was generic and understood across
      the fleet, which is what makes the case sharp: the danger was not a
      surprise mechanism but a recognized one the post-TMI regime was
      precisely supposed to keep inspected and contained.
    ],
    // -- What Happened --
    [
      During a refueling outage in early 2002, workers found a cavity about
      the size of a football eaten clean through six inches of the
      carbon-steel head, leaving only a thin layer of stainless-steel
      cladding between the corrosion and reactor coolant at 2,200 psi. Had
      the cladding given way, the result would have been a medium-break
      loss-of-coolant accident with a badly degraded safety margin.#cn() The
      thin remaining cladding was the entire distance between routine
      operation and the kind of accident the entire regulatory regime existed
      to prevent — a margin measured in a fraction of an inch of unintended
      material rather than in any engineered barrier.
    ],
    // -- The Investigation --
    [
      The boric-acid leakage had been observable for years, and inspections
      had been deferred. FirstEnergy had requested — and the NRC had granted
      — a deferral of a mandatory inspection (NRC Bulletin 2001-01) so it
      would align with the plant's February 2002 outage.#cn() The NRC's
      Office of Inspector General later found the agency had inappropriately
      weighted the utility's economic arguments over safety — its oversight,
      the OIG concluded, had not been adequate to ensure that safety would
      not be compromised.#cn() The deferral was not a covert lapse but a
      documented decision both parties signed off on, which is the unsettling
      part: the erosion happened through the regulator's normal process, in
      the open, agreed to be safe to wait.
    ],
    // -- The Capability Gap --
    [
      Davis-Besse is a near-miss in the dimension above operations: the
      regulator-operator relationship. The same industry that had shown,
      through INPO, that it knew how to engineer safety let a known corrosion
      mechanism go uninspected because inspecting it was inconvenient and
      expensive. Regulatory capture — the regulator adopting the operator's
      economic frame — is a capability failure at the institutional layer
      above the plant.#cn() The plant's own engineering competence was never
      the missing piece; what failed was the independence of the layer meant
      to overrule a utility's schedule when safety required it, and that layer
      had quietly adopted the schedule as its own.
    ],
    // -- Aftermath & Reform --
    [
      INPO and the NRC restructured significant parts of their inspection
      regimes, and reactor-head inspection requirements were tightened across
      the fleet. The lesson pairs with the book's TMI / INPO arc:
      institutional capability is not built once. It erodes if it is not
      re-engineered — and the erosion is quietest where the regulator and the
      regulated agree it is safe to wait.#cn() Tightening the head-inspection
      requirement across the fleet conceded that a mandatory inspection had
      been a real barrier all along — one the deferral process had been
      allowed to treat as negotiable against a refueling schedule.
    ],
  ),
  references: (
    [U.S. NRC Office of Inspector General, _NRC's Regulation of Davis-Besse Regarding Damage to the Reactor Vessel Head_ (Case No. 02-03S, December 2002) — the post-TMI regulatory regime and oversight failures.],
    [NRC event records and OIG (2002) — the ~6-inch corrosion cavity, the remaining cladding, and the 2,200-psi coolant margin.],
    [NRC Bulletin 2001-01 and the FirstEnergy inspection-deferral decision aligned to the February 2002 outage.],
    [NRC OIG (2002) — economic arguments weighted over safety, and the finding that NRC oversight had not been adequate to ensure safety (paraphrased).],
    [D. Lochbaum / Union of Concerned Scientists analysis (2002); U.S. GAO, GAO-04-415 (2004).],
    [J. V. Rees, _Hostages of Each Other_ (1994) — INPO and the fragility of institutional safety capability.],
  ),
  quote: [The NRC's actions were not adequate to ensure that safety would not be compromised.],
  quote-source: "Paraphrasing the NRC Office of Inspector General Davis-Besse report, 2002",
  le-insight: [
    Davis-Besse is the case for how regulator-operator dynamics can
    erode the capability of an industry that had previously
    demonstrated, through INPO, that it knew how to engineer safety.
    Regulatory capture is a capability failure at the institutional
    layer above operations.
  ],
  lens-approach: [
    LENS uses Davis-Besse in LEN 7 to study regulatory-capture
    dynamics and in LEN 8 to compare with INPO's earlier success. The
    case is a reminder that institutional capability requires sustained
    re-engineering.
  ],
  literature-items: (
    [NRC OIG Davis-Besse report (2002)],
    [Lochbaum (UCS) analyses],
    [Rees (1994), _Hostages of Each Other_],
  ),
  reflection-list: (
    [Identify a regulator-operator relationship in your domain in which the regulator may be at risk of accepting the operator's economic argument over its own safety judgment. What signal would surface it?],
    [Design the institutional control that would prevent a Davis-Besse-style deferral from being granted.],
    [The erosion here happened openly, through the regulator's normal process. What audit would distinguish a defensible deferral from one in which the regulator has quietly adopted the operator's schedule as its own?],
  ),
  approaches: (
    during: (
      [Make safety-critical inspections of known generic hazards non-deferrable, so a mandatory check cannot be traded against a refueling schedule.],
      [Require any deferral decision to be argued on safety margin alone, with the utility's economic case explicitly excluded from the record.],
      [Preserve the independence of the oversight layer so it can overrule an operator's timeline rather than adopt it.],
    ),
    after: (
      [Audit granted deferrals for whether the regulator reasoned from safety or from the operator's economics, and flag drift toward the latter.],
      [Track observable degradation (like boric-acid leakage) against inspection currency, so a known mechanism cannot run uninspected for years.],
      [Re-engineer institutional safety capability on a cadence, treating post-incident regimes like INPO as maintained, not permanent.],
    ),
  ),
  courses: ("LEN 7", "LEN 8"),
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
      Mid Staffs is the British analog of the VA wait-time scandal (Case 32):
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
  references: (
    [R. Francis QC, _Report of the Mid Staffordshire NHS Foundation Trust Public Inquiry_ (2013) — the staffing cuts and Foundation Trust targets.],
    [Healthcare Commission, _Investigation into Mid Staffordshire NHS Foundation Trust_ (2009) — ward conditions and excess mortality.],
    [Francis QC (2013) — the ~2,000-page report and 290 recommendations.],
    [Francis QC (2013) — "the system as a whole failed in its most essential duty — to protect patients from unacceptable risks of harm" (quoted).],
    [D. Berwick, _A Promise to Learn — A Commitment to Act_ (National Advisory Group on the Safety of Patients in England, 2013).],
    [K. Walshe & J. Higgins (2002) on NHS safety governance; cf. the VA wait-time scandal (Case 32).],
  ),
  quote: [The system as a whole failed in its most essential duty — to protect patients from unacceptable risks of harm.],
  quote-source: "Robert Francis QC, Report of the Mid Staffordshire NHS Foundation Trust Public Inquiry, 2013",
  le-insight: [
    Mid Staffordshire is the British analog of the VA wait-time scandal
    (Case 32). Measurement and reality diverged over years; every layer
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
  kind: "failure",
  summary: [
    On 2 January 2006 lightning ignited methane in a sealed area of the Sago
    Mine in West Virginia; the seals failed, the explosion propagated, and
    thirteen miners were trapped behind it. Twelve died of carbon-monoxide
    poisoning over the hours that followed; only one, Randal McCloy Jr.,
    survived. A communications failure briefly told the nation — and the
    families — that twelve had been found alive, when the opposite was true.
    The MSHA investigation found seals built to an inadequate design, an
    inadequate emergency plan, and lapsed self-rescue training — each
    marginal for years, all inadequate together in the one window that
    mattered. Sago drove the MINER Act of 2006, strengthening mine-rescue
    requirements and mandating underground refuge chambers.
  ],
  sections: (
    // -- Background --
    [
      The Sago Mine in West Virginia had sealed off a mined-out area behind
      barriers built to a design that had not kept pace with current
      standards. Its emergency plan and the miners' self-rescue training
      were, like the seals, marginally adequate — good enough on an ordinary
      day, untested against the worst one.#cn() On any ordinary day each of
      these margins was invisible precisely because it was never tested at its
      edge, so the mine could run for years with every defense quietly thin
      and nothing to signal that the thinness was accumulating.
    ],
    // -- What Happened --
    [
      On 2 January 2006 lightning ignited methane in the sealed area. The
      seals failed and the explosion propagated, trapping thirteen miners
      behind it. Over the hours that followed twelve died of carbon-monoxide
      poisoning; only one, Randal McCloy Jr., survived. Compounding the
      tragedy, garbled communications briefly told the nation and the
      families that twelve had been found alive — the opposite of the
      truth.#cn() The hours of carbon-monoxide exposure were exactly the
      window the emergency plan and self-rescue provisions existed to bridge,
      so the marginal defenses failed in the one stretch of time their
      adequacy was supposed to guarantee.
    ],
    // -- The Investigation --
    [
      The Mine Safety and Health Administration found the seals had been
      built to a design that did not meet then-current standards, the mine's
      emergency plan was inadequate, and self-rescue training had not been
      kept current.#cn() The miners "faced multiple equipment, training, and
      emergency-response shortcomings that compounded their initial
      trapping" — no single failure decisive, the combination lethal.#cn()
      That each shortcoming was real but none was solely decisive is the
      finding's whole weight: an investigation looking for one nameable cause
      would have found several survivable ones and missed the lethal way they
      combined.
    ],
    // -- The Capability Gap --
    [
      Sago is the cumulative-inadequacy pattern. Each defense — seal design,
      emergency plan, self-rescue training, communications — was marginally
      adequate for years and recoverable on its own; none was the dramatic,
      nameable cause. They failed together in the only minute that mattered,
      which is exactly how normalization works: a system drifts within
      tolerance on several fronts until the tolerances align.#cn() The hazard
      lived not in any one margin but in their simultaneity, which no
      inspection of a single defense could surface, because each looked
      acceptable on its own and the danger was a property only of the set.
    ],
    // -- Aftermath & Reform --
    [
      Sago drove the federal MINER Act of 2006, which strengthened
      mine-rescue requirements, tightened seal standards, improved
      communications and tracking, and mandated breathable-air refuge
      chambers underground.#cn() The reform addressed the combination rather
      than a single cause — the right response to a failure whose lesson is
      that marginal-everywhere is itself a system-level hazard, even when no
      single margin looks alarming. The refuge-chamber mandate in particular
      conceded that survivable air over those carbon-monoxide hours had to be
      engineered in advance, not left to the chain of marginal defenses that
      failed together at Sago.
    ],
  ),
  references: (
    [U.S. Mine Safety and Health Administration, _Report of Investigation: Sago Mine_ (2007) — the seal design, emergency plan, and self-rescue training.],
    [MSHA (2007) — the explosion sequence: lightning ignition in the sealed area, seal failure, twelve dead and one survivor.],
    [MSHA (2007) — the inadequate seal design, emergency plan, and lapsed self-rescue training.],
    [MSHA (2007) — "multiple equipment, training, and emergency-response shortcomings that compounded their initial trapping" (quoted).],
    [West Virginia state Sago investigation (2006) — the false "twelve alive" miscommunication and the families' ordeal.],
    [Mine Improvement and New Emergency Response (MINER) Act of 2006, Pub. L. 109-236 — refuge chambers and rescue requirements.],
  ),
  quote: [The miners faced multiple equipment, training, and emergency-response shortcomings that compounded their initial trapping.],
  quote-source: "Mine Safety and Health Administration, Sago Investigation Report, 2007",
  le-insight: [
    Sago is the case for the cumulative inadequacy pattern in
    industrial accidents. No single failure caused the disaster. Each
    failure on its own would have been recoverable. The combination
    was not, and the combination had been the operating condition of
    the mine for years.
  ],
  lens-approach: [
    LENS uses Sago in LEN 5 for cumulative-inadequacy analysis and in
    LEN 8 for the legislative-reform arc that followed. Studio projects
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
    [The danger was a property of the set of defenses, not any single one. What assessment in your domain would evaluate defenses jointly rather than one at a time?],
  ),
  approaches: (
    during: (
      [Assess defenses jointly against the worst-case window, since each margin looks acceptable alone and the hazard lives in their simultaneity.],
      [Engineer a guaranteed survivable resource — like breathable air over the rescue window — rather than relying on a chain of marginal provisions.],
      [Keep seal design, emergency plans, and self-rescue training current to standards as a coupled set, not as independently deferred items.],
    ),
    after: (
      [Track how many defenses sit at the margin simultaneously, treating marginal-everywhere as a measurable system-level hazard.],
      [Stress-test the emergency response against the exact window it exists to bridge, so untested margins are exposed before an event.],
      [Investigate near-misses for combined inadequacy, not a single nameable cause, so survivable contributors are not dismissed individually.],
    ),
  ),
  courses: ("LEN 5", "LEN 8"),
)

#case(
  number: 60,
  title: "Upper Big Branch Mine Explosion",
  year: "2010",
  domains-list: ("energy", "industrial"),
  modes-code: "NGK",
  impact: "29 killed in West Virginia coal mine; MSHA found systematic falsification of safety records; first U.S. mining-industry CEO convicted of a federal mine-safety charge (misdemeanor)",
  diagram: dgm.dgm-compare(
    "inspector\nlog",
    "compliant",
    "internal\nlog",
    "actual",
    framing: "two sets of records, sustained for years as institutional practice",
    caption: "Upper Big Branch — measurement engineered against the regulator",
  ),
  kind: "failure",
  summary: [
    On 5 April 2010 coal dust and methane ignited at Massey Energy's Upper
    Big Branch mine in West Virginia, killing 29 miners — the worst U.S.
    mine disaster in forty years. Investigators found Massey had kept two
    sets of records: an internal log of actual conditions and a separate,
    clean log for federal inspectors. Foremen were directed to suppress
    methane readings, disable monitors, and falsify pre-shift examinations —
    not as an aberration but as a stable routine across years and management
    layers. CEO Don Blankenship was convicted of a misdemeanor conspiracy to
    violate mine-safety standards — the first U.S. mining CEO criminally
    convicted on such a charge. Upper Big Branch is the dataset's clearest
    case of a measurement system engineered deliberately to defeat the
    regulator.
  ],
  sections: (
    // -- Background --
    [
      Massey Energy's Upper Big Branch mine in West Virginia operated under
      federal safety rules enforced through inspections and the records the
      mine kept. Massey kept two: an internal log of actual conditions, and a
      separate, clean log maintained for the inspectors.#cn() The enforcement
      regime depended entirely on the records reflecting reality, so a second,
      sanitized set of books did not merely break a rule — it disabled the
      very mechanism by which the regulator was supposed to see the mine at
      all.
    ],
    // -- What Happened --
    [
      On 5 April 2010 accumulated coal dust and methane ignited and tore
      through the mine, killing twenty-nine miners — the worst U.S. coal
      disaster in forty years. The conditions that fed the blast — high
      methane, inadequate ventilation, dust not rendered inert — were the
      very ones the clean, inspector-facing records had been built to
      hide.#cn() The records had done their intended work right up to the
      blast: they kept the conditions that killed twenty-nine men out of the
      regulator's view precisely while those conditions were building toward
      ignition.
    ],
    // -- The Investigation --
    [
      MSHA's investigation and a parallel U.S. Department of Justice probe
      found foremen instructed to suppress methane readings, disable
      monitors, and falsify pre-shift examinations.#cn() Massey CEO Don
      Blankenship was eventually convicted of a misdemeanor count of
      conspiring to willfully violate mine-safety standards — the first U.S.
      mining-industry CEO criminally convicted on a mine-safety charge —
      though acquitted on the felony counts.#cn() That the instructions ran
      down to foremen and the conviction reached up to the CEO marks the
      practice as vertical, not local: the deception was operated at the
      working level and conceived above it, spanning the management layers in
      between.
    ],
    // -- The Capability Gap --
    [
      The dual-records architecture was not the work of a few bad foremen; it
      was a stable institutional practice sustained across years and multiple
      management layers. The capability gap was not in the miners but in the
      executive ranks that designed and operated a measurement system
      specifically to defeat the regulator — which makes it the book's
      clearest case of measurement engineered as deception.#cn() Where other
      cases show measurement drifting or pointed at the wrong dimension, here
      it was deliberately constructed to mislead, so no improvement in the
      regulator's reading of the official records could ever have helped — the
      records were the lie.
    ],
    // -- Aftermath & Reform --
    [
      The case anchors the argument that decision-grade evidence needs
      structural protection from the institution that produces it, when that
      institution has a stake in what the evidence says. Blankenship's
      conviction set a marker for corporate-officer accountability — and left
      open the regulator-side question: what architecture would have detected
      two sets of books before twenty-nine people died?#cn() Holding a CEO
      criminally accountable raised the cost of designing such a system, but
      accountability after the fact is not detection; the unanswered question
      is what independent signal could have exposed the divergence between the
      two logs while the mine was still running.
    ],
  ),
  references: (
    [U.S. MSHA, _Internal Review of MSHA's Actions at Upper Big Branch_ and the accident investigation (2011–2012) — the dual records and the 29 deaths.],
    [Governor's Independent Investigation Panel (J. McAtee, 2011) — mine conditions: methane, ventilation, and coal-dust inerting.],
    [MSHA and U.S. DOJ findings — suppressed methane readings, disabled monitors, and falsified pre-shift examinations.],
    [_United States v. Blankenship_ (S.D.W. Va., 2015–2016) — the misdemeanor conviction and felony acquittals.],
    [H. Berkes / NPR investigative reporting on Massey Energy.],
    [A. Hopkins, _Disastrous Decisions: The Human and Organisational Causes of the Gulf of Mexico Blowout_ (2012) — corporate decision-making and safety (comparative).],
  ),
  quote: [Massey kept two sets of books — one for inspectors, one for itself.],
  quote-source: "Paraphrasing federal investigators, MSHA Upper Big Branch reviews (2011 – 2012)",
  le-insight: [
    Upper Big Branch is the case for deliberately engineered
    measurement deception. The dual-records practice was not error. It
    was capability design — by management, against the regulator. The
    case anchors the LENS argument that decision-grade evidence
    requires structural protection against the institution that
    produces it having a stake in what it reports.
  ],
  lens-approach: [
    LENS uses Upper Big Branch in LEN 4 as the most explicit case for
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
    [Accountability after the fact is not detection. What independent signal could have exposed the divergence between the two logs while the mine was still running?],
  ),
  approaches: (
    during: (
      [Source safety-critical data from monitors the operator cannot disable or edit, so a clean official log cannot be constructed by hand.],
      [Design measurement so the producing institution has no unilateral control over the record the regulator relies on.],
      [Build cross-checks that compare independent streams, making a single sanitized set of books detectably inconsistent.],
    ),
    after: (
      [Establish whistleblower and anomaly-detection channels that can surface a divergence between actual and reported conditions while operations continue.],
      [Audit for the structural conditions that make dual records possible — operator-controlled monitors, no independent verification — not just for violations.],
      [Pair corporate-officer accountability with detection architecture, since raising the cost of deception does not by itself reveal it in time.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
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
  kind: "failure",
  summary: [
    On 11 March 2011 the Tōhoku earthquake and the tsunami it spawned
    overwhelmed TEPCO's Fukushima Daiichi plant: the wave topped the
    seawall, flooded the emergency diesel generators, and cut cooling to the
    reactors. Three of the six cores melted down and hydrogen explosions
    spread radioactive material, displacing some 160,000 people; cleanup is
    projected above \$200 billion. The independent Diet commission (NAIIC),
    chaired by Kiyoshi Kurokawa, called it a disaster "made in Japan" — the
    product of regulatory capture and a culture reluctant to challenge
    utility assumptions; evidence of large historical tsunamis had been
    discussed internally but never forced a change to the seawall. Other
    reviews stressed under-estimated external hazards. Fukushima is the
    post-TMI evidence that safety institutions like INPO must be deliberately
    built, not assumed.
  ],
  sections: (
    // -- Background --
    [
      Fukushima Daiichi sat on Japan's northeast coast, its reactors and
      their backup diesel generators protected by a seawall sized to a
      design-basis tsunami. Evidence of much larger historical waves — back
      to the ninth-century Jōgan event — had been discussed in TEPCO's own
      internal assessments, but no institutional path turned that evidence
      into a higher seawall.#cn() The gap was not in the data but in the
      conversion: the larger-wave evidence lived inside the utility's own
      assessments, where it could be discussed indefinitely without ever
      becoming a binding requirement to raise the wall it implicated.
    ],
    // -- What Happened --
    [
      On 11 March 2011 the Tōhoku earthquake struck and the tsunami that
      followed topped the seawall. The plant lost off-site power; the diesel
      generators meant to keep cooling running were inundated. Cooling
      failed, three of the six reactor cores melted down, and hydrogen
      explosions spread radioactive material across the region. Some 160,000
      people were displaced, and cleanup is projected above \$200 billion.#cn()
      Siting the backup generators where a wave that overtopped the seawall
      would reach them tied the entire cooling chain to that single design
      assumption, so once the wall was topped the loss of cooling followed
      almost mechanically from the layout itself.
    ],
    // -- The Investigation --
    [
      The independent investigation chaired by Kiyoshi Kurokawa for the
      National Diet (NAIIC) called the accident "made in Japan" — the product
      of regulatory capture, deference to authority, and an institutional
      reluctance to challenge utility assumptions.#cn() Other major reviews —
      the Hatamura government commission (2012) and the IAEA Director
      General's report (2015) — emphasized the under-estimation of external
      hazards and defense-in-depth assumptions over the cultural critique;
      the Kurokawa framing is the most-cited but not the only consensus
      reading.#cn() That serious independent reviews diverged on emphasis —
      cultural capture versus under-estimated external hazards — is itself
      part of the record, and the book treats Kurokawa's as the most-cited
      reading rather than the settled one.
    ],
    // -- The Capability Gap --
    [
      Fukushima is the post-TMI case showing that the INPO pattern (Case 16)
      is not self-executing. The U.S. industry built INPO to force operating
      discipline and shared learning; the Japanese industry did not build an
      equivalent with the independence to override a utility's optimistic
      assumptions. The internal tsunami evidence existed; the institutional
      capability to act on it did not.#cn() Evidence without an independent
      body empowered to act on it is inert: the larger-wave assessments could
      be acknowledged and shelved indefinitely because no institution stood
      outside the utility with the standing to convert them into a mandated
      change.
    ],
    // -- Aftermath & Reform --
    [
      The accident drove a restructuring of Japanese nuclear regulation — a
      new, more independent Nuclear Regulation Authority — and a global
      re-examination of external-hazard margins and station-blackout
      protection. Paired with INPO and Davis-Besse, it triangulates the
      book's claim: sustained nuclear-safety capability is an institution
      that must be deliberately built and rebuilt, not a property a competent
      industry simply has.#cn() Creating a more independent regulator after
      the fact conceded the structural diagnosis directly: the missing piece
      had been an authority sitting outside the utility, and the reform was
      precisely to build the independence that the pre-2011 arrangement had
      lacked.
    ],
  ),
  references: (
    [National Diet of Japan Fukushima Nuclear Accident Independent Investigation Commission (NAIIC; K. Kurokawa, chair), _Report_ (2012) — the internal tsunami evidence and the regulatory-capture finding.],
    [NAIIC (2012) — the accident sequence: seawall overtopping, generator inundation, and three core meltdowns.],
    [NAIIC (2012) — the "made in Japan" cultural and regulatory-capture conclusion (quoted).],
    [Investigation Committee on the Accident (Hatamura government commission, 2012); IAEA Director General, _The Fukushima Daiichi Accident_ (2015) — external-hazard under-estimation.],
    [C. Lochbaum, E. Lyman & S. Stranahan, _Fukushima: The Story of a Nuclear Disaster_ (2014).],
    [Y. Funabashi & K. Kitazawa, _Fukushima in Review_ (2012); cf. INPO (Case 16) and Davis-Besse (Case 57).],
  ),
  quote: [What must be admitted — very painfully — is that this was a disaster \"Made in Japan.\"],
  quote-source: "National Diet of Japan Fukushima Nuclear Accident Independent Investigation Commission, 2012",
  le-insight: [
    Fukushima is the post-TMI case that establishes that the INPO
    pattern (Case 16) is not self-executing. The U.S. industry built
    INPO; the Japanese industry did not. The cost of the difference,
    paid in 2011, is the strongest available evidence that capability
    institutions must be deliberately built, not assumed.
  ],
  lens-approach: [
    LENS uses Fukushima in LEN 8 as the cross-cultural comparison to
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
    [The tsunami evidence was discussed but never converted into a binding requirement. What institutional path in your domain turns an acknowledged hazard into a mandated change rather than a shelved assessment?],
  ),
  approaches: (
    during: (
      [Build an institutional path that converts an acknowledged hazard (like the larger-wave evidence) into a binding design requirement, not a discussable assessment.],
      [Site critical backups so a single overtopped barrier cannot disable the whole cooling chain at once.],
      [Establish an oversight body independent of the utility, with standing to override optimistic in-house assumptions about external hazards.],
    ),
    after: (
      [Audit whether internally held hazard evidence has actually driven design changes, treating shelved assessments as an open finding.],
      [Re-examine external-hazard margins on a cadence rather than freezing them at a design-basis figure set once.],
      [Verify that the regulator retains the independence to act, since institutional safety capability erodes if it is assumed rather than rebuilt.],
    ),
  ),
  courses: ("LEN 7", "LEN 8", "LEN 3",),
)

#case(
  number: 62,
  title: "Northeast Blackout",
  year: "2003",
  domains-list: ("energy",),
  modes-code: "HK",
  impact: "50 million people without power across eight U.S. states and Ontario; $6B+ economic loss; FERC Order 693 followed",
  diagram: dgm.dgm-timeline(
    (("tree contact", "12:15"), ("line trips", "—"), ("alarm fails", "silent"), ("operator unaware", "1 hour"), ("cascade", "4:11")),
    emphasis: 2,
    caption: "Northeast Blackout — silent alarm failure absorbed the operator's awareness",
  ),
  kind: "failure",
  summary: [
    On 14 August 2003 a high-voltage transmission line in Ohio sagged into a
    tree and tripped — an event the grid should have absorbed. But
    FirstEnergy's control-room alarm system had been silently failing for
    over an hour, so operators did not know the line was gone. Further lines
    tripped, and a cascade swept across the Eastern Interconnection; within
    minutes 50 million people across eight U.S. states and Ontario lost
    power, at a cost above \$6 billion. The U.S.-Canada task force found
    FirstEnergy lacked situational awareness, its alarm system had failed
    without notice, vegetation management was poor, and the regional
    coordinator could not intervene. The reforms made reliability standards
    mandatory and enforceable (FERC Order 693). The gap sat at the
    automation-operator boundary: a silent failure left operators blind.
  ],
  sections: (
    // -- Background --
    [
      The Eastern Interconnection is built to ride through the loss of a
      single transmission line, and control rooms watch the grid through
      software and alarms. FirstEnergy, the Ohio utility at the center of the
      story, ran a control room whose alarm system had — unknown to anyone —
      been silently failing for over an hour.#cn() The interconnection's
      single-line resilience assumes the operators can see which line is gone;
      a silent alarm broke that assumption at its root, leaving a grid
      designed to tolerate one fault blind to the fault it was tolerating.
    ],
    // -- What Happened --
    [
      On 14 August 2003 a 345 kV line in Ohio sagged into a tree and tripped.
      With the alarms silent, operators did not know the line was gone and so
      did not take the corrective steps that would have contained it. Further
      lines tripped and a cascade swept across the interconnection; within
      minutes 50 million people across eight states and Ontario lost power,
      at a cost above \$6 billion.#cn() The first trip was the routine
      single-line loss the grid was built to absorb; what turned it into a
      cascade was not the tree but the hour in which the operators acted on a
      picture of the grid that no longer matched the grid.
    ],
    // -- The Investigation --
    [
      The U.S.-Canada Power System Outage Task Force found FirstEnergy
      operators "did not have adequate situational awareness," that the alarm
      system had failed without notice, that vegetation management was
      inadequate, and that the regional reliability coordinator lacked the
      authority and information to intervene.#cn() The reforms produced FERC
      Order 693, which for the first time made compliance with reliability
      standards mandatory and enforceable rather than voluntary.#cn() Making
      the standards mandatory addressed the deeper finding that a voluntary
      regime had let vegetation management and operator awareness drift: when
      compliance is optional, the practices that prevent a cascade are exactly
      the ones a cost-pressured utility lets slip.
    ],
    // -- The Capability Gap --
    [
      The gap sat at the boundary between automation and operator. When the
      alarm system stopped doing its job, it did so silently — and the
      operators had no independent signal that they were losing control of
      their grid segment. The missing capability was the meta-monitor: the
      watch on the watchman, the check that tells you when the thing that is
      supposed to tell you has itself stopped.#cn() Silence is the most
      dangerous failure mode because it is indistinguishable from a quiet,
      healthy grid; the operators were not ignoring a warning but trusting an
      absence of warning that the broken system could no longer guarantee.
    ],
    // -- Aftermath & Reform --
    [
      FERC Order 693 and the new mandatory reliability regime — enforced by
      an Electric Reliability Organization with audits and penalties —
      treated grid reliability as a deliverable rather than a best practice.
      The 2003 blackout endures as the canonical case of silent automation
      failure: a system that quits without announcing it, leaving the humans
      nominally in charge with nothing to act on.#cn() Backing the standards
      with audits and penalties conceded that reliability could not be left to
      good intentions: the practices that would have kept the operators
      sighted had to be enforceable obligations, not best practices a utility
      could quietly defer.
    ],
  ),
  references: (
    [U.S.-Canada Power System Outage Task Force, _Final Report on the August 14, 2003 Blackout in the United States and Canada_ (2004) — the tree contact, the silent alarm, and the cascade.],
    [Task Force (2004) — 50 million people affected across eight states and Ontario; the minute-by-minute sequence.],
    [Task Force (2004) — FirstEnergy "did not have adequate situational awareness," plus the vegetation-management and reliability-coordinator findings (quoted).],
    [FERC Order No. 693, _Mandatory Reliability Standards for the Bulk-Power System_ (2007) — enforceable standards.],
    [North American Electric Reliability Council reports (2004) and the creation of the Electric Reliability Organization.],
    [M. R. Endsley (1995), situation-awareness theory — the human-factors frame for silent-automation failure.],
  ),
  quote: [FirstEnergy ... did not have adequate situational awareness of conditions on its system.],
  quote-source: "U.S.-Canada Power System Outage Task Force, Final Report on the August 14 2003 Blackout, April 2004",
  le-insight: [
    The 2003 blackout is the canonical case for silent automation
    failure: a system that stops doing its job without telling its
    operators. The capability that was missing was the meta-monitor —
    the system that watches the monitor. The reform that followed
    treated grid-reliability compliance as a deliverable rather than
    as a best practice.
  ],
  lens-approach: [
    LENS uses the 2003 blackout in LEN 2 as a Human-AI Teaming case
    for silent-automation-failure handling and in LEN 8 for the
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
    [Silence was indistinguishable from a healthy grid. What positive heartbeat signal in your domain would let operators tell a quiet system from a dead one?],
  ),
  approaches: (
    during: (
      [Design monitoring with a positive heartbeat so a silent system is distinguishable from a healthy one, never assuming no alarm means no problem.],
      [Build a meta-monitor that watches the alarm system itself and announces when the watchman has stopped.],
      [Give the regional reliability coordinator the authority and information to intervene across utility boundaries before a cascade forms.],
    ),
    after: (
      [Audit vegetation management and operator situational awareness against enforceable standards, since voluntary practice drifts under cost pressure.],
      [Test alarm and monitoring systems for detectable failure, verifying that an outage of the monitor itself raises an alert.],
      [Back reliability obligations with audits and penalties so the practices that keep operators sighted cannot be quietly deferred.],
    ),
  ),
  courses: ("LEN 2", "LEN 8"),
)
