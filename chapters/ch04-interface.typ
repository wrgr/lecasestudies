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
  epigraph-source: "U.S. Naval Proceedings, 2018",
)

#case(
  number: 18,
  title: "USS Vincennes & Iran Air Flight 655",
  year: "1988",
  domains-list: ("defense",),
  modes-code: "HT",
  impact: "290 civilians killed — the deadliest shootdown of a commercial airliner by a military force",
  diagram: dgm.dgm-vincennes,
  body: [
    In the closing weeks of the Iran-Iraq War, during a surface engagement
    with Iranian patrol boats, the USS Vincennes misidentified Iran Air
    Flight 655 — a civilian Airbus A300 climbing on a scheduled commercial
    route — as a descending hostile F-14. The cruiser fired two
    surface-to-air missiles. Two hundred ninety civilians died.

    The Aegis combat system did not malfunction. The radar data correctly
    showed an aircraft ascending. Five different crew members in the
    Combat Information Center independently believed the aircraft was
    *descending.* The formal U.S. Navy inquiry attributed the tragedy to
    "human error under extreme stress" — to confirmation bias, to "stress
    and unconscious distortion of data." Operators interpreted all
    indications through the lens of a presumed hostile act because the
    framing arrived before the data did.

    The Naval Proceedings retrospective in 2018 placed the case at the
    center of the human-AI teaming conversation: the most advanced combat
    system afloat failed because the interface between the system and
    its operators did not support correct performance under operational
    stress.
  ],
  quote: [The shootdown of Flight 655 ... reveals lessons for technology adoption and its use in stressful situations.],
  quote-source: "U.S. Naval Proceedings, 2018",
  sources-list: (
    [Fogarty Investigation Report on the Vincennes Incident (1988)],
    [U.S. Naval Proceedings retrospective (2018)],
    [Cummings, "Human Supervisory Control of Weapon Systems" (MIT)],
    [Britannica, Iran Air Flight 655],
  ),
  le-insight: [
    Vincennes is the canonical case for human-AI teaming under stress.
    The system did not lie. The operators did not act in bad faith. The
    interface and the operational framing combined to make a particular
    misreading not just possible but likely. Correct performance was
    possible in principle and unsustainable in practice — and that gap
    is the engineering problem.
  ],
  lens-approach: [
    LENS uses Vincennes in LEN 8 as the foundational case for human-AI
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
  ),
  courses: ("LEN 5", "LEN 8"),
)

#case(
  number: 25,
  title: "EHR / CPOE Implementation",
  year: "2005 – present",
  domains-list: ("healthcare",),
  modes-code: "HDG",
  impact: "$40B federal investment; documented increase in pediatric ICU mortality post-CPOE; ongoing usability harm at scale",
  diagram: dgm.dgm-ehr,
  body: [
    The HITECH Act of 2009 invested approximately forty billion dollars to
    accelerate Electronic Health Record adoption. Adoption surged.
    Computerized Provider Order Entry — CPOE — was deployed widely. So
    were new categories of harm. Han et al. (2005) found that deploying
    CPOE in a pediatric ICU was associated with *increased* mortality:
    the system disrupted established workflows and introduced new error
    pathways at the moment of greatest acuity.

    A University of Utah study across one hundred twelve hospitals found
    that "poor usability of EHRs is the number one complaint of doctors,
    nurses, pharmacists, and most health care professionals" and that
    user experience strongly correlated with safety performance. A
    patient's cancer treatment was delayed by years because a default
    setting surfaced an old normal Pap result instead of a recent
    abnormal one. A baby died from a drug overdose caused by a
    transcription error that an automated alert would have caught had it
    been activated.

    The systems were built to administrative and billing specifications,
    not to clinical workflow or human-factors specifications. There is
    still no regulatory framework to monitor EHR system safety.
  ],
  quote: [While a primary goal of EHR implementation is the reduction of medical errors, reports of new types of errors directly related to EHR implementation that can compromise quality of care and patient safety have emerged.],
  quote-source: "Sittig & Singh, NCBI/PMC, 2013",
  sources-list: (
    [Han et al., "Unexpected Increased Mortality After Implementation of a Commercially Sold CPOE System," _Pediatrics_ (2005)],
    [University of Utah / Leapfrog Group EHR safety study (2023)],
    [AMA / Pew / MedStar EHR Usability Report (2018)],
    [AHRQ Patient Safety Network, EHR-related harm cases],
  ),
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
    Design-Out and Interface failure under governance opacity, in LEN 8
    as a human-AI teaming problem (alert fatigue, default surfacing), and
    in LEN 10 as a computational systems problem (the alerting
    architecture itself is a learnable model).
  ],
  literature-items: (
    [Sittig & Singh (2013), Safety-related EHR risks],
    [AMA / Pew / MedStar (2018), _EHR Usability and Patient Safety_],
    [Wachter, _The Digital Doctor_ (2015)],
  ),
  reflection-list: (
    [What is the equivalent system in your domain that was designed for one specification and deployed against another? How would you measure the harm?],
    [Design the regulatory architecture that would surface EHR safety harms at scale. Be specific about signal, threshold, and authority.],
  ),
  courses: ("LEN 7", "LEN 8", "LEN 10"),
)

#case(
  number: 29,
  title: "Uber ATG / Tempe Fatality",
  year: "2018",
  domains-list: ("autonomous",),
  modes-code: "TNGH",
  impact: "One pedestrian killed — the first fatality involving a self-driving vehicle striking a pedestrian",
  diagram: dgm.dgm-uber,
  body: [
    A modified Volvo SUV operating in autonomous mode struck and killed
    Elaine Herzberg as she crossed a road at night in Tempe, Arizona.
    The probable cause, per NTSB, was the safety operator's failure to
    monitor the road — she was watching television on her phone. But
    NTSB placed heavy blame on Uber's systemic failures. The company
    "did not adequately recognize the risk of automation complacency and
    develop effective countermeasures." Training was inadequate; the
    company did not enforce its own anti-cell-phone policy. The system
    was programmed *not* to apply emergency braking when a crash was
    considered unavoidable — a design decision that removed the
    automated safety backstop. The system also could not classify an
    object as a pedestrian unless it was near a crosswalk.

    NTSB board members stressed automation complacency is cross-domain:
    "most every industry has some level of automation and it often
    presents problems. Repeatedly, humans tend to tune out when tasked
    with monitoring automated systems that work well most of the time."

    The human role was designed as passive surveillance, with no
    capability infrastructure to make that role performable.
  ],
  quote: [Repeatedly, humans tend to tune out when tasked with monitoring automated systems that work well most of the time.],
  quote-source: "NTSB Member Robert Sumwalt, 2019",
  sources-list: (
    [NTSB Highway Accident Report HAR-19/03 (2019)],
    [Consumer Reports coverage of the Tempe investigation],
    [BBC News, Uber ATG and the Herzberg case],
  ),
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
    LENS treats this case in LEN 8 as the live exemplar of monitoring as
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
  ),
  courses: ("LEN 8",),
)
