// ============================================================
// Chapter 8 — additional paired-intervention cases
// (Chapter divider lives in ch08-paired-interventions.typ;
//  this file just appends more cases to that chapter.)
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 13,
  title: "WHO Surgical Safety Checklist",
  year: "2008 – present",
  domains-list: ("healthcare",),
  modes-code: "TN",
  impact: "Death rate 1.5% → 0.8%; complications down >33%; adopted by the majority of surgical providers worldwide",
  diagram: dgm.dgm-who,
  kind: "intervention",
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
      passed silently into the operation.#cn()
    ],
    // -- The Intervention --
    [
      In 2008, the WHO and a Harvard team led by Atul Gawande introduced a
      single-page, nineteen-item Surgical Safety Checklist applied at three
      critical junctures: before anesthesia, before skin incision, and
      before the patient leaves the operating room. The team piloted it
      across eight hospitals in eight countries spanning very different
      economic and operational conditions. Testing the same artifact from
      Toronto to Tanzania was deliberate — it had to work in settings with
      vastly different resources to demonstrate that the gain came from the
      forced pause itself, not from any one system's wealth.#cn()
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
      carried into the incision.#cn()
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
      the intervention rather than the setting.#cn()
    ],
    // -- What Transferred --
    [
      A 2014 Ontario population study found no statistically significant
      mortality reduction after province-wide mandated adoption — a result
      that did not refute the checklist so much as illustrate its
      dependence on implementation fidelity. Where a mandate replaced
      genuine authorization of the pause, the measured effect attenuated,
      making the checklist a paired lesson in both minimal-artifact design
      and the limits of mere compliance. The contrast between the pilot and
      the mandated rollout is the lesson: when the pause was genuinely used
      it worked, and when it became a box to check before proceeding the
      same paper produced nothing.#cn()
    ],
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
    LENS uses the WHO checklist in LEN 10 (capstone) as the canonical
    end-to-end design exemplar: a problem identified, a minimal
    artifact prototyped, a multi-site pilot, a measurement regime, and
    global scale-out. LEN 4 examines the measurement architecture that
    made the effect provable.
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

#case(
  number: 15,
  title: "Navy Surface Warfare Readiness Reform",
  year: "2018 – present",
  domains-list: ("defense",),
  modes-code: "TKN",
  impact: "Tripled ship-driving training hours; 10 pass-or-fail career assessments; Ready-for-Sea Assessments — 3 of 18 forward-deployed ships immediately sidelined",
  diagram: dgm.dgm-navy-reform,
  kind: "intervention",
  summary: [
    After the fatal 2017 Fitzgerald and McCain collisions (Case 1) exposed
    gutted seamanship training, the U.S. Navy overhauled how it builds
    surface-warfare competence. It restored the Surface Warfare Officers
    School from CD-ROM self-study to classroom and simulator instruction,
    stood up Maritime Skills Training Centers on both coasts, created ten
    pass-or-fail career assessments — three of them no-go gates — and
    adopted aviation-style debriefing. New Ready-for-Sea Assessments
    evaluated forward-deployed ships against a deliverable standard; three
    of the first eighteen were immediately sidelined. The structural change
    is real and the investment substantial. What is missing is the third
    half: the GAO has noted the Navy still lacks systematic evaluation of
    whether the reforms work — a live success in structure, with evidence
    of effect still outstanding.
  ],
  sections: (
    // -- Background --
    [
      In 2017, the destroyers USS Fitzgerald and USS John S. McCain
      suffered fatal collisions (Case 1) that investigations traced in part
      to seamanship and navigation training degraded to CD-ROM self-study.
      The Navy faced a clear capability gap: officers were going to sea
      without the hands-on ship-driving competence the job required. The
      diagnosis was unusually unambiguous — two avoidable collisions in one
      year pointing at the same eroded fundamentals — which is what
      converted a long-tolerated shortfall into a mandate for structural
      change.#cn()
    ],
    // -- The Intervention --
    [
      Beginning in 2018, the Navy restored the Surface Warfare Officers
      School from self-study to classroom-plus-simulator instruction,
      established Maritime Skills Training Centers on both coasts, roughly
      tripled ship-driving training hours, and created ten pass-or-fail
      assessments across an officer's career path — three of them no-go
      gates that can halt advancement. The no-go gates were the structural
      teeth: by tying advancement to demonstrated competence rather than
      time served, they made the qualification something the system would
      stop on, not merely something it recorded.#cn()
    ],
    // -- How It Worked --
    [
      The reform paired technical investment — simulators, restored
      curricula, qualification gates — with a cultural change borrowed from
      aviation: structured debriefing and explicit gate ownership. New
      Ready-for-Sea Assessments evaluated forward-deployed ships against a
      deliverable standard rather than a paper one; three of the first
      eighteen ships assessed were immediately sidelined as not ready. That
      a sixth of the first cohort failed against the new standard showed the
      assessment had teeth — it measured actual readiness rather than
      ratifying the green dashboards that had masked the pre-collision gap.#cn()
    ],
    // -- The Evidence --
    [
      Here the case turns instructive. The Government Accountability Office
      has noted that the Navy still lacks systematic evaluation of whether
      the reforms actually improve readiness. The structural intervention
      happened and the investment was large, but decision-grade evidence on
      outcomes is incomplete — the measurement to confirm the effect has
      lagged the change itself. Without an outcome time-series, the Navy
      cannot yet distinguish a real capability gain from activity that looks
      like one, which is the same blindness, in milder form, that let the
      pre-collision gap go unseen.#cn()
    ],
    // -- What Transferred --
    [
      The reform is a live, in-progress success: structural change real,
      evidence of effect outstanding. As a teaching case it argues that
      mature capability engineering must build the measurement
      infrastructure from the start — the time-series that lets an
      institution know whether the capability it bought is materializing —
      rather than treating evaluation as an afterthought. The two halves the
      reform did deliver, technical investment and a cultural change, are
      necessary but not sufficient; the missing third half is the evidence
      regime that would let the Navy prove, not assume, the gap has closed.#cn()
    ],
  ),
  references: (
    [GAO-21-168 (and GAO-20-154), Navy readiness reform — the lack of systematic outcome evaluation (paraphrased).],
    [Readiness Reform Oversight Council, _One-Year Report_ (2019) — restored training, assessments, and gates.],
    [Navy and NTSB reports on the Fitzgerald and McCain collisions (2017–2019) — the training-degradation antecedent.],
    [SWOS Norfolk and San Diego Maritime Skills Training Center documentation — simulators and curriculum.],
    [USNI News reform coverage (2020, 2022) — Ready-for-Sea Assessments and sidelined ships.],
  ),
  quote: [The Navy still lacks systematic evaluation of whether the reforms work.],
  quote-source: "Paraphrasing GAO-21-168 on Navy readiness reform, 2021",
  le-insight: [
    The Navy reform is a paired intervention in progress: technical
    (training restored, simulators procured, assessments created) plus
    cultural (debriefing, gate ownership). What it lacks is the third
    half: evidence that the intervention has worked. LENS treats this
    as a teachable case for what mature capability engineering should
    include from the start — the measurement infrastructure that lets
    the institution know whether its investment is producing the
    capability it bought.
  ],
  lens-approach: [
    LENS uses Navy SWO reform in LEN 10 (capstone) as a worked exercise in
    capability intervention at scale, and in LEN 4 as a case where the
    measurement infrastructure has lagged the intervention. Students
    design the evidence regime that should accompany the reform.
  ],
  literature-items: (
    [GAO Navy readiness series],
    [Naval Postgraduate School theses on SWO training reform],
    [Edmondson, _Teaming_ (2012)],
  ),
  reflection-list: (
    [Navy SWO reform happened without an evidence regime to confirm it worked. Identify a current reform in your domain and the evidence regime that should accompany it.],
    [Design the dashboard the Chief of Naval Operations should have to know whether SWO capability is improving in time-series.],
    [The Ready-for-Sea Assessment sidelined three of the first eighteen ships because it measured readiness against a deliverable standard. Identify a certification in your domain that ratifies rather than tests, and design the gate that would be willing to fail a sixth of its first cohort.],
  ),
  approaches: (
    during: (
      [Pair the technical investment — restored curricula, simulators, training hours — with a cultural change such as structured debriefing and explicit gate ownership, rather than buying tools alone.],
      [Install no-go gates that tie advancement to demonstrated competence, so qualification is something the system will stop on, not merely something it records.],
      [Assess units against a deliverable standard from the first cohort, accepting that a real test will sideline some — that failure rate is the evidence the gate has teeth.],
    ),
    after: (
      [Build the measurement infrastructure from the start — the outcome time-series that lets the institution distinguish a real capability gain from activity that merely looks like one.],
      [Give the senior commander a readiness dashboard that reports demonstrated capability over time, so the same blindness that masked the pre-collision gap cannot recur.],
      [Treat evidence of effect as the third half of the intervention, not an afterthought, so the reform can be proven rather than assumed to have closed the gap.],
    ),
  ),
  courses: ("LEN 4", "LEN 10", "LEN 5"),
)

#case(
  number: 23,
  title: "Korean Air Safety Transformation",
  year: "2000 – present",
  domains-list: ("aviation",),
  modes-code: "TN",
  impact: "From industry pariah (16 aircraft written off, 700+ lives lost, 1970–1999) to spotless passenger safety record since 1999",
  diagram: dgm.dgm-korean-air,
  kind: "intervention",
  summary: [
    Between 1970 and 1999, Korean Air had one of the worst safety records
    in commercial aviation — a loss rate roughly seventeen times United's,
    more than 700 lives lost — and after the 1997 Guam crash of Flight 801
    killed 228, the president of South Korea called it "an embarrassment to
    the nation." The NTSB traced root causes to cockpit authority
    gradients: junior officers were culturally unable to challenge a
    captain's errors. In 2000, Korean Air brought in Delta's David
    Greenberg to rebuild flight operations — mandating English as the
    cockpit language, adapting CRM for a high-power-distance culture, and
    bringing in outside consulting from Boeing and Delta. The airline has
    had no fatal passenger accident since, winning the 2006 Phoenix Award.
    Cultural legacy is not destiny when it is deliberately redesigned.
  ],
  sections: (
    // -- Background --
    [
      From 1970 to 1999, Korean Air suffered repeated fatal crashes — a
      loss rate roughly seventeen times United Airlines', with over 700
      lives lost. The NTSB's investigation of the 1997 Guam crash of Flight
      801, which killed 228, identified steep cockpit authority gradients
      as a root cause: junior officers were culturally unable to challenge
      a captain's erroneous decisions in time. The pattern echoed Tenerife's
      lesson but ran deeper, rooted in a national hierarchy the crew carried
      into the cockpit, so the silence in the right seat was not a lapse of
      training but an artifact of how rank was expressed in speech.#cn()
    ],
    // -- The Intervention --
    [
      After foreign carriers suspended code-shares and the FAA downgraded
      South Korea's safety rating, Korean Air in 2000 hired David Greenberg
      from Delta to overhaul flight operations. The interventions were
      deliberate and cultural: mandated English fluency for all pilots, CRM
      training adapted for a high-power-distance setting, external
      consulting from Boeing and Delta, and fleet modernization. The
      external commercial pressure — suspended code-shares and a downgraded
      rating — supplied the leverage to act, turning a cultural problem the
      airline had long lived with into one it could no longer afford to
      ignore.#cn()
    ],
    // -- How It Worked --
    [
      The load-bearing move operated on language. Making English the
      cockpit language stripped out the Korean honorific hierarchy that had
      silenced first officers, because English has no honorifics to enforce
      rank. The CRM adaptation then gave crews an explicit, culturally
      workable protocol for raising concerns — converting deference into
      communication. The choice was elegant precisely because it changed the
      medium rather than asking pilots to override their own culture: with
      no honorifics to encode, the language itself flattened the gradient
      that had absorbed the first officer's warnings.#cn()
    ],
    // -- The Evidence --
    [
      Korean Air has recorded no fatal passenger accident since the reforms
      took hold. Air Transport World recognized the turnaround with its
      2006 Phoenix Award, and the carrier moved from international pariah to
      a safety record indistinguishable from the best global operators. The
      categorical nature of the shift — from a loss rate many times the
      industry's to none — is what makes the case persuasive: the same crews
      and the same national culture produced opposite outcomes once the
      cockpit's communication structure was redesigned.#cn()
    ],
    // -- What Transferred --
    [
      Korean Air is the strongest aviation evidence that cultural legacy is
      not destiny: a specific cultural feature — high power distance in the
      cockpit — was the binding constraint, and once it was redesigned, the
      safety record changed categorically. The case also shows that the
      interface for cultural redesign can itself be engineered, in this
      instance through language. The transferable lesson is to locate the
      single cultural feature that actually binds the capability rather than
      attempting to remake a culture wholesale, then change the medium
      through which that feature operates.#cn()
    ],
  ),
  references: (
    [NTSB, _Aircraft Accident Report: Korean Air Flight 801, Guam_ (2000) — authority gradients as a root cause.],
    [Air Transport World Phoenix Award documentation (2006) — recognition of the turnaround.],
    [Gladwell, M. (2008), _Outliers_ — the Korean Air chapter on power distance and the English-language change.],
    [Helmreich, Wilhelm, Klinect & Merritt (2001) — national culture and CRM adaptation.],
    [Korean Air corporate safety reports — the post-2000 accident-free record.],
  ),
  quote: [Korean Air's record before 2000 was changed by an external intervention into cockpit culture, not by criticism of it.],
  quote-source: "Editors' synthesis of NTSB findings on KAL 801 and the Korean Air transformation",
  le-insight: [
    Korean Air is the strongest aviation evidence that cultural legacy
    is not destiny. A specific cultural feature — high power distance
    in the cockpit — was the binding capability constraint. Once it was
    redesigned, the safety record changed categorically. The
    intervention is also methodologically interesting because it
    operated on language: English became the cockpit language because
    English has no honorifics to enforce. The interface for cultural
    redesign was a linguistic one.
  ],
  lens-approach: [
    LENS uses Korean Air in LEN 8 as the canonical organizational-
    learning case under cultural constraint and in LEN 2 as a CRM-
    extension case for high-power-distance contexts. The case is
    paired in this book with the Toyota Andon Cord (Case 24) as
    cultural intervention success stories.
  ],
  literature-items: (
    [Hofstede, _Cultures and Organizations_ (3rd ed., 2010)],
    [Helmreich, Wilhelm, Klinect & Merritt (2001) on national culture and CRM],
    [Gladwell, _Outliers_ (2008)],
  ),
  reflection-list: (
    [Identify a cultural feature in an institution you work with that constrains capability. Is it engineerable? What would the redesign look like?],
    [Korean Air's intervention operated on language. What surface of culture is engineerable in your domain that you have not yet considered?],
    [Korean Air acted only once suspended code-shares and a downgraded rating made the status quo unaffordable. What external pressure exists in your domain that could supply the leverage to redesign a long-tolerated cultural constraint — and how would you use it?],
  ),
  approaches: (
    during: (
      [Locate the single cultural feature that actually binds the capability — here, high power distance expressed through honorifics — rather than attempting to remake the whole culture.],
      [Change the medium through which that feature operates (making English the cockpit language) so the constraint is removed structurally rather than by asking people to override their own culture.],
      [Pair the structural change with an adapted protocol — CRM tuned for a high-power-distance setting — that gives crews a culturally workable way to raise concerns.],
    ),
    after: (
      [Use external pressure (suspended code-shares, a downgraded rating) as durable leverage to hold the reform in place against any drift back to the prior norm.],
      [Sustain the change with continued outside benchmarking and consulting so the new communication structure is reinforced rather than quietly eroding.],
      [Track the safety record over years to confirm the categorical shift holds, treating a maintained accident-free record as the evidence the redesign took.],
    ),
  ),
  courses: ("LEN 2", "LEN 8"),
)

#case(
  number: 24,
  title: "Toyota Production System / Andon Cord",
  year: "1950s – present",
  domains-list: ("industrial",),
  modes-code: "NG",
  impact: "Front-line authority to stop the line resolves most defects quickly at the source; defect-propagation cost minimized; the system adopted globally",
  diagram: dgm.dgm-andon,
  kind: "intervention",
  summary: [
    The andon cord lets any assembly-line worker stop Toyota's entire
    production line on detecting a defect — handing the lowest-ranking
    person on the floor the power to halt operations worth millions per
    hour. The cord is trivially cheap; the authority it confers is the
    design. The case is decisive for capability engineering because when
    American automakers copied the cord in the 1980s and 1990s, workers
    were too afraid to pull it: the tool was present, the empowerment was
    not. Toyota's system works because it pairs the mechanism with a
    culture of psychological safety, fast supervisor response, no-blame
    problem-solving, and the codified "Five Whys" method. When the line
    stops at Toyota, the team treats it as a learning opportunity. The
    Andon Cord is the manufacturing twin of the Keystone nurse-authority
    intervention (Case 14).
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
      authority (Case 14): same logic, different industry, same
      load-bearing element, and the same failure mode when only the
      artifact is copied. That the identical pattern recurs across
      manufacturing and medicine is what elevates it from a Toyota practice
      to a design principle: wherever the person who sees the problem lacks
      the standing to stop, copying the tool alone reproduces the failure.#cn()
    ],
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
)

#case(
  number: 27,
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
    healthcare analog of Crew Resource Management (Case 12): an
    evidence-based team-training framework distilled from fifty years of
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
      high-reliability-organization research into clinical practice — fifty
      years of cross-domain evidence adapted for the bedside. Crucially,
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
)

#case(
  number: 28,
  title: "U.S. Nuclear Navy / Rickover Training Model",
  year: "1954 – present",
  domains-list: ("defense",),
  modes-code: "TKN",
  impact: "Zero reactor accidents in 60+ years of U.S. Naval nuclear operations; the most demanding nuclear operator training program in the world",
  diagram: dgm.dgm-rickover,
  kind: "intervention",
  summary: [
    Admiral Hyman Rickover built a training and qualification culture for
    the Naval Nuclear Propulsion Program that has produced zero reactor
    accidents across more than 60 years and thousands of reactor-years of
    operation, often in extreme conditions. Every nuclear-trained sailor
    must pass rigorous qualification to zero-defect standards and
    demonstrate competence in oral examination by senior nuclear-qualified
    officers; the culture demands personal accountability, deep technical
    mastery, and a questioning attitude that obliges operators to challenge
    assumptions, including superiors'. The sharpest contrast in this book
    is internal: the same Navy that ran the nuclear program to this
    standard let surface-warfare training decay to CD-ROMs and paid for it
    at Fitzgerald and McCain (Case 1). Same institution, two philosophies —
    and the choice shows up in the casualty columns.
  ],
  sections: (
    // -- Background --
    [
      In the early 1950s the U.S. Navy set out to put nuclear reactors
      aboard ships and submarines — machines whose failure could be
      catastrophic and irreversible, operated by young sailors far from any
      help. The capability problem was absolute: there was no acceptable
      accident rate, so the human operating system had to be engineered to
      an extraordinary standard from inception. Because a reactor at sea
      could not be evacuated or handed to outside experts, the operators
      themselves had to be the entire margin of safety — a constraint that
      forced training to a level no ordinary program would justify.#cn()
    ],
    // -- The Intervention --
    [
      Admiral Hyman Rickover established a training and qualification regime
      requiring every nuclear-trained officer and enlisted sailor to pass
      demanding programs held to zero-defect standards. Operators must
      demonstrate competence through oral examination by senior
      nuclear-qualified officers, and the program embeds continuous
      re-qualification rather than one-time certification. The oral board
      tested understanding rather than recall, and the continuous
      re-qualification meant competence had to be sustained rather than
      banked once — so the standard governed the operator's whole career,
      not just entry to it.#cn()
    ],
    // -- How It Worked --
    [
      The culture pairs technical mastery with a deliberately engineered
      attitude: personal accountability and a mandatory questioning posture
      in which operators are trained to challenge assumptions, including
      those of superiors. Rickover's premise — that people, not
      organizations or management systems, get things done — made the
      qualification ladder, not paperwork, the load-bearing element of
      safety. The questioning posture is the cultural half of the pair: deep
      technical mastery alone could still defer to a mistaken superior, so
      the obligation to challenge assumptions is what keeps competence from
      being silenced by rank.#cn()
    ],
    // -- The Evidence --
    [
      The result is the longest-running continuous capability-engineering
      record in any high-consequence domain: zero reactor accidents across
      more than six decades and thousands of reactor-years. The cost — the
      qualification ladder, the zero-defect oral boards, the continuous
      re-qualification — is the visible budget-line price of that record.
      The duration is the key evidence: a record sustained across six
      decades and many generations of sailors shows the safety came from the
      engineered system rather than from any one cohort's talent or luck.#cn()
    ],
    // -- What Transferred --
    [
      The cleanest test of the model is internal. The same Navy that
      engineered the nuclear program to this standard let surface-warfare
      training decay to CD-ROM self-study and paid the price at Fitzgerald
      and McCain (Cases 1 and 15). Same institution, same era, opposite
      philosophies, radically different outcomes — the strongest available
      demonstration of capability treated as a system parameter versus
      deferred as a cost. The internal comparison controls for nearly
      everything that usually confounds such claims — one service, one
      manpower system, one budget process — leaving the training philosophy
      itself as the variable that diverged.#cn()
    ],
  ),
  references: (
    [Polmar, N. & Allen, T. (2007), _Rickover: Father of the Nuclear Navy_ — the program and Rickover's philosophy (paraphrased).],
    [Naval Nuclear Propulsion Program documentation (NRC/DOE) — qualification standards and the accident record.],
    [Admiral Hyman G. Rickover, "Doing a Job" (Columbia University commencement address, 1982) — "people, not organizations… get things done" (quoted).],
    [GAO-21-168, comparison of nuclear and surface Navy training — the internal contrast.],
    [Duncan, F. (1990), _Rickover and the Nuclear Navy_ — the qualification culture.],
  ),
  quote: [Human experience shows that people, not organizations or management systems, get things done.],
  quote-source: "Admiral Hyman G. Rickover, \"Doing a Job,\" Columbia University, 1982",
  le-insight: [
    The Nuclear Navy is the longest-running continuous capability-
    engineering program in any high-consequence domain. The choice to
    treat training as a system parameter rather than as a cost center
    has produced sixty-plus years of zero reactor accidents. The
    contrast with the Surface Navy is the cleanest available test of
    what happens when capability is engineered versus when it is
    deferred. The cost of the program — the qualification ladder, the
    oral examinations graded against zero-defect standards, the
    continuous re-qualification — is the price the institution pays
    for the safety record. The choice is visible on the budget line.
  ],
  lens-approach: [
    LENS treats the Rickover model in LEN 8 as the foundational
    organizational-learning case and in LEN 5 as a worked example of
    capability requirements traceable from operational analysis through
    qualification standards. The internal Navy comparison anchors the
    program's core argument about capability as a system parameter.
  ],
  literature-items: (
    [Polmar & Allen (2007), _Rickover_],
    [Duncan, _Rickover and the Nuclear Navy_ (1990)],
    [GAO Navy training-comparison series],
  ),
  reflection-list: (
    [Identify an institution that operates two divisions under different capability philosophies. What does the comparison reveal that neither division could see alone?],
    [Rickover's standard was zero-defect oral examination. What is the equivalent in your domain — and would you survive it?],
    [The Nuclear Navy's safety record is paid for by a durable, visible training budget. What is the equivalent line-item investment in your domain that a comparable safety claim would require — and is it being made?],
  ),
  approaches: (
    during: (
      [Engineer the human operating system to the standard the consequences demand from inception — where there is no acceptable failure rate, make the operators themselves the margin of safety.],
      [Gate qualification on demonstrated understanding through oral examination by senior qualified people, testing comprehension rather than recall.],
      [Pair technical mastery with a mandatory questioning posture so competence is obliged to challenge assumptions, including superiors', rather than be silenced by rank.],
    ),
    after: (
      [Embed continuous re-qualification rather than one-time certification, so competence must be sustained across a career and cannot be banked once and assumed.],
      [Protect the training as a durable, visible budget line, since the qualification ladder and oral boards are the price of the safety record and the first thing tempo will erode.],
      [Sustain the standard across generations of operators, treating a multi-decade record as the evidence the safety comes from the engineered system rather than any one cohort.],
    ),
  ),
  courses: ("LEN 5", "LEN 8", "LEN 3",),
)

#case(
  number: 39,
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
      GSU is the positive counterpart to the algorithmic-harm cases of
      Chapter 5 (A-Level, Robodebt, educational bias). The same technical
      capability — a predictive model — produced an equity gain rather than
      an equity harm because of how it was framed and governed. The case is
      the strongest evidence that construct definition and human-loop
      architecture, not the model itself, determine whether prediction
      helps or harms. Holding the technology constant and varying only the
      design constraint and governance is what isolates the lesson: the same
      predictive capability that harmed in Chapter 5 helped here, so the
      framing and the human loop, not the model, are where intent lives.#cn()
    ],
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
    [What is the difference between GSU's predictive analytics and the algorithmic-bias cases of Chapter 5? Be specific about what makes the GSU implementation work.],
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
)

#case(
  number: 42,
  title: "Cognitive Tutor / Carnegie Learning",
  year: "1990s – present",
  domains-list: ("education",),
  modes-code: "T",
  impact: "Randomized controlled trials showed significant learning gains; RAND study found positive effects on Algebra I achievement; adopted across 3,000+ schools",
  diagram: dgm.dgm-cogtutor,
  kind: "intervention",
  summary: [
    Carnegie Learning's Cognitive Tutor, built from John Anderson's ACT-R
    cognitive architecture at Carnegie Mellon, is the most rigorously
    evaluated intelligent tutoring system in education. It uses Bayesian
    knowledge tracing to model each student's mastery and adapts
    instruction accordingly, and a RAND Corporation evaluation found
    statistically significant positive effects on Algebra I achievement.
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
)
