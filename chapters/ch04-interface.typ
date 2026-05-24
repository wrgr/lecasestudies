// ============================================================
// Chapter 4 — Interface Problem
// "Correct Performance Was Made Impossible"
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#chapter-divider(
  part: "Part I — The Failure Modes",
  number: "4",
  title: "The Interface Problem",
  subtitle: "Correct performance was made impossible.",
  epigraph: [The shootdown of Flight 655 showcases the chaos of combat environments, but it also reveals lessons for technology adoption and its use in stressful situations.],
  epigraph-source: "Paraphrasing U.S. Naval Proceedings retrospective on the Vincennes incident, 2018",
)

#case(
  number: 18,
  title: "USS Vincennes & Iran Air Flight 655",
  year: "1988",
  domains-list: ("defense",),
  modes-code: "HT",
  impact: "290 civilians killed — the deadliest shootdown of a commercial airliner by a military force",
  diagram: dgm.dgm-vincennes,
  kind: "failure",
  summary: [
    On 3 July 1988, during a surface skirmish with Iranian gunboats in the
    Persian Gulf, the USS Vincennes shot down Iran Air Flight 655 — a
    civilian Airbus A300 climbing on a scheduled route — killing all 290
    aboard, the deadliest airliner shootdown by a military force. The Aegis
    combat system worked: its radar correctly showed the aircraft ascending.
    Yet operators in the Combat Information Center, primed to expect a
    hostile attack, read the contact as a descending F-14 and fired. The
    Navy's inquiry attributed the tragedy to human error under extreme
    stress — confirmation bias and the unconscious distortion of data — not
    equipment failure. Vincennes is the book's foundational human-AI-teaming
    case: the most advanced system afloat failed because its interface did
    not support correct performance under combat stress.
  ],
  sections: (
    // -- Background --
    [
      In the closing weeks of the Iran-Iraq War, U.S. warships patrolled a
      tense Persian Gulf where civilian airliners and hostile military
      aircraft shared the same crowded sky. The USS Vincennes, a cruiser
      with the Navy's most advanced Aegis combat system, was in a surface
      fight with Iranian gunboats when an aircraft took off from a nearby
      airfield used by both civil and military traffic.#cn() The dual-use
      field meant a single track could be either threat or scheduled flight,
      so the crew's reading of the contact carried the whole burden of
      identification — and they were already maneuvering hard against the
      gunboats, the kind of divided attention under which a wrong call
      becomes far easier to make than a right one.
    ],
    // -- What Happened --
    [
      The aircraft was Iran Air Flight 655, a civilian Airbus A300 climbing
      on its scheduled route. The Vincennes' crew identified it as a
      descending, hostile F-14 and fired two surface-to-air missiles; all 290
      people aboard were killed — the deadliest shootdown of a commercial
      airliner by a military force.#cn() An ascending airliner and a diving
      attack jet are opposite behaviors, yet the crew converged on the second
      while the radar reported the first; the engagement consumed only minutes,
      collapsing identification, decision, and launch into a window too narrow
      for anyone to slow down and reconcile the contradiction.
    ],
    // -- The Investigation --
    [
      The Aegis system had not malfunctioned: its radar correctly showed the
      aircraft ascending. Yet several crew members in the Combat Information
      Center independently believed it was descending,#cn() a shared error
      that is more damning than a single misread, because it shows the
      interface offered no cross-check strong enough to break a wrong reading
      once the team had settled into it. The Navy's
      Fogarty inquiry attributed the tragedy to human error under extreme
      stress — to confirmation bias and the "stress and unconscious
      distortion of data" — as operators read every indication through the
      lens of a presumed hostile attack, because the framing arrived before
      the data did, so each new return was fitted to the expected threat
      rather than weighed against it.#cn()
    ],
    // -- The Capability Gap --
    [
      The system did not lie, and the operators did not act in bad faith. The
      interface and the operational framing combined to make a particular
      misreading not merely possible but likely. Correct performance was
      possible in principle and unsustainable in practice — and the gap
      between those two is the engineering problem. An interface that
      presents data without guarding against the crew's pre-formed
      expectation has not been designed for the stress it will actually
      meet; the burden of overriding a presumed hostile attack was left
      entirely to the operator's discipline, exactly when combat had stripped
      that discipline of the time and calm it needed to work.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Decades later the case became a central reference in the human-AI-
      teaming conversation: a 2018 Naval Institute retrospective placed it at
      the heart of how operators should be teamed with automated decision
      aids under stress.#cn() Its lesson is that interface design is a
      capability deliverable, not an aesthetic one — and that the most
      advanced system afloat is only as good as the human reading it under
      fire. The retrospective reframed the loss not as a one-off error but as
      a predictable outcome of teaming a person with a decision aid that
      displayed truth without defending it, a pattern that recurs wherever
      automation is fast and the human is the last check.
    ],
  ),
  references: (
    [Rear Adm. W. Fogarty, _Formal Investigation into the Circumstances Surrounding the Downing of Iran Air Flight 655_ (U.S. Navy, 1988) — the engagement and the 290 deaths.],
    [Fogarty report (1988) — the Aegis system functioned; the aircraft was ascending while the crew perceived a descent.],
    [Fogarty report (1988) — "human error under extreme stress," confirmation bias, and "unconscious distortion of data" (quoted).],
    [#link("https://www.usni.org/magazines/proceedings/")[U.S. Naval Institute _Proceedings_] retrospective on the Vincennes incident (2018) — the human-AI-teaming framing.],
    [M. L. Cummings, "Human Supervisory Control of Weapon Systems" (MIT) — interface and automation under time pressure.],
    [G. Klein, _Sources of Power_ (1998); M. Endsley, "Toward a Theory of Situation Awareness" (1995).],
  ),
  quote: [The shootdown of Flight 655 ... reveals lessons for technology adoption and its use in stressful situations.],
  quote-source: "Paraphrasing U.S. Naval Proceedings retrospective on the Vincennes incident, 2018",
  le-insight: [
    Vincennes is the canonical case for human-AI teaming under stress.
    The system did not lie. The operators did not act in bad faith. The
    interface and the operational framing combined to make a particular
    misreading not just possible but likely. Correct performance was
    possible in principle and unsustainable in practice — and that gap
    is the engineering problem.
  ],
  lens-approach: [
    LENS uses Vincennes in LEN 2 as the foundational case for human-AI
    teaming under operational stress, and in LEN 5 to teach the analysis
    of capability requirements in conditions the original interface
    designers never expected. The case sits at the center of the
    program's argument that interface design is a capability deliverable,
    not an aesthetic one.
  ],
  literature-items: (
    [Klein, _Sources of Power_ (1998) on naturalistic decision-making],
    [Endsley, "Toward a Theory of Situation Awareness" (1995)],
    [Woods et al. (1994), _Behind Human Error_],
  ),
  reflection-list: (
    [Identify a high-stress interface in your domain. What framing arrives before the data, and how does it shape what operators see?],
    [Vincennes' operators acted under tunnel vision. Design the procedural intervention that would have forced one of the five to call out the contradiction.],
    [The Aegis radar reported the truth and the crew still read its opposite. What would an interface have to make impossible — not merely visible — to keep a pre-formed expectation from overriding correct data under stress?],
  ),
  approaches: (
    during: (
      [Design the contact display to make ascent-versus-descent unmistakable at a glance, so the cue that contradicts a presumed threat cannot be passed over under time pressure.],
      [Test the interface against the worst case it will actually meet — confirmation bias during a simultaneous surface engagement — not against the calm conditions of acceptance testing.],
      [Build a mandatory disconfirmation step into the engagement sequence so identifying a hostile track requires actively ruling out the civilian one.],
    ),
    after: (
      [Audit live engagements and exercises for cases where the crew's reading diverged from sensor data, treating each as a near-miss that exposes an interface gap.],
      [Train and drill operators specifically on the stress regime — divided attention, presumed-hostile framing — rather than only on nominal track identification.],
      [Track whether decision aids are trusted past their evidence, and feed that signal back into interface and procedure revisions.],
    ),
  ),
  courses: ("LEN 5", "LEN 2"),
)

#case(
  number: 25,
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
      patient-safety variable. Spanning hundreds of institutions, the survey
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
    [The HITECH incentives rewarded adoption rather than usability. Redesign the incentive so that the money is contingent on demonstrated clinical-workflow fit — and identify who would have the authority to withhold it.],
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
)

#case(
  number: 29,
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
)
