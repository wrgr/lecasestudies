// ============================================================
// Part IV — Defense & National Security · What Fails (Chapter 7)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part IV — Defense & National Security",
  number: "7",
  title: "Defense & National Security — What Fails",
  subtitle: "When the capability the mission requires goes unspecified at the point of contact.",
  epigraph: [The system was fielded. The operator's task was not.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Case 124 — uss-fitzgerald-and-uss-john-s-mccain ----
#case(
  number: 124,
  slug: "uss-fitzgerald-and-uss-john-s-mccain",
  title: "USS Fitzgerald & USS John S. McCain",
  year: "2017",
  domains-list: ("defense",),
  modes-code: "TKN",
  impact: "17 sailors killed in two avoidable destroyer collisions in the Western Pacific within nine weeks",
  diagram: dgm.dgm-fitzgerald,
  kind: "failure",
  summary: [
    In the summer of 2017 two U.S. Navy destroyers of the forward-deployed
    Seventh Fleet collided with merchant ships nine weeks apart, killing
    seventeen sailors — seven on the _Fitzgerald_, ten on the _John S.
    McCain_. Their crews' seamanship, navigation, and console skills had
    eroded under a decade of relentless operational tempo and the self-study
    "training" that replaced the in-person school the Navy cut in 2003.
    Investigations by the Navy and the NTSB judged both collisions avoidable
    and traced them to insufficient training and weak oversight; on the
    McCain, a confusing touch-screen helm let a watch team believe it had
    lost steering it never actually lost. The case is this book's canonical
    training gap: stated readiness and real readiness diverged for years, and
    the system could no longer see the difference.
  ],
  sections: (
    // -- Background --
    [
      The destroyers belonged to the forward-deployed Seventh Fleet in Japan,
      kept at the fleet's highest tempo — where training was the first thing
      spent. Unlike home-ported ships, which rotate through a dedicated
      work-up cycle before deploying, the forward-deployed force was expected
      to be continuously available, so there was rarely a quiet stretch in
      which to recover a lapsed qualification. In 2003 the Navy replaced its
      in-person Surface Warfare Officers School course with self-study
      CD-ROMs — "SWOS in a Box" — sending newly commissioned officers
      directly to their ships to learn the trade as time and the ship's
      qualified watchstanders allowed.#cn() The change was framed as a
      cost-saving modernization; in practice it transferred junior-officer
      education from the schoolhouse to the bridge at the moment the
      operational tempo on those bridges left the least slack to absorb it.
      By 2017 the GAO found 37% of the Japan-based ships' warfare
      certifications — including basic seamanship — expired, a fivefold rise
      since 2015, with the lapses routinely waived rather than fixed.#cn()
    ],
    // -- What Happened --
    [
      On 17 June 2017 the Fitzgerald, the give-way vessel in a busy shipping
      channel, took no early action and was struck by the container ship ACX
      Crystal off the coast of Japan; the sea poured into a berthing
      compartment where the crew slept, and seven sailors drowned before they
      could escape.#cn() The NTSB later described a bridge team that had
      lost track of converging traffic on a clear night, and an officer of
      the deck whose qualifications and recency on the very procedures the
      situation demanded had lapsed under the waiver regime. Nine weeks
      later the John S. McCain collided with the tanker Alnic MC near
      Singapore, killing ten: while shifting throttle control between
      consoles, a watchstander unknowingly handed off steering to another
      station, the ship turned across the strait's traffic, and no one on
      the bridge understood the touch-screen helm well enough to recognize
      what had happened.#cn() For more than a minute the bridge team
      believed the ship had lost steering it had never lost — a
      misdiagnosis the interface invited and the training had not equipped
      anyone to overturn.
    ],
    // -- The Investigation --
    [
      The Navy's Comprehensive Review (2017) judged both collisions
      avoidable, citing failures in basic seamanship, navigation, and
      operating the ships' own equipment.#cn() The NTSB found the McCain's
      probable cause to be a lack of Navy oversight that produced
      insufficient training and inadequate bridge procedures,#cn() and
      faulted the design of the touch-screen helm, installed to modernize
      the bridge, whose blending of steering and throttle made an
      unintended transfer of control easy to trigger and hard to notice —
      a trap waiting for an under-trained crew. The companion Strategic
      Readiness Review, commissioned by the Secretary of the Navy and led
      by retired Admiral Gary Roughead and Michael Bayer, reached further into the
      institution: a decade of "can-do" responses to mounting demand had
      eroded the manning, certification, and maintenance margins the
      surface force was built on, and the readiness reports senior leaders
      relied on had stopped reflecting the conditions on the ships.#cn()
      Watchbills and crew-day logs gathered after the collisions showed
      watchstanders routinely averaging fewer than five hours of sleep on
      patrol — a finding the NTSB folded into its causal chain.
    ],
    // -- The Capability Gap --
    [
      The gap was invisible from inside. The Strategic Readiness Review
      described risks that "accumulated over time and did so insidiously,"
      the system no longer able to see that the processes meant to surface
      shortfalls had themselves failed.#cn() Each individual waiver was
      locally defensible — a deadline met, a deployment kept — but in
      aggregate they hollowed out the force while every readiness dashboard
      still reported green. Stated and actual readiness had diverged for a
      decade; the cost arrived as seventeen lives, not a failed inspection.
      Two collisions, nine weeks apart, ruled out the comforting reading
      that one was an outlier: Fitzgerald taught that an under-trained
      bridge team could fail at the most basic give-way rules, and McCain
      taught that an unfamiliar interface could be the precipitating
      mechanism through which the same gap reached the hull. The pair, not
      either case alone, made the diagnosis structural rather than
      individual.
    ],
    // -- Aftermath & Reform --
    [
      The reforms were the deepest in a generation: the in-person officer
      pipeline was rebuilt as a multi-phase Basic Division Officer Course,
      reinstating classroom and simulator instruction the 2003 CD-ROM model
      had displaced; a Ready-for-Sea Assessment and a Naval Surface Group
      Western Pacific stood up to give forward-deployed units the
      independent certification cycle home-ported ships already had;
      circadian watchbills were adopted fleet-wide to fight fatigue; and
      the touch-screen helm was slated for replacement by a conventional
      wheel and throttle across the destroyer fleet.#cn() Each change
      conceded that the training and the interface had been real
      requirements all along — and that trading them for tempo had only
      moved the cost onto two ships full of people.#cn()
    ],
  ),
  beats: (
    "Forward-deployed Seventh Fleet at peak tempo; in-person SWOS school replaced by self-study CD-ROMs in 2003",
    "Fitzgerald struck by ACX Crystal off Japan; McCain collided with Alnic MC near Singapore",
    "Navy and NTSB judged both avoidable, citing training shortfalls and a confusing touch-screen helm design",
    "Waivers stacked while readiness dashboards stayed green; stated and actual readiness diverged for a decade",
    "In-person pipeline rebuilt, Ready-for-Sea Assessment stood up, touch-screen helm slated for conventional replacement",
  ),
  references: (
    [T. C. Miller, M. Faturechi & R. Rotella, #link("https://features.propublica.org/navy-accidents/us-navy-crashes-japan-cause-mccain/")["Years of Warnings, Then Death and Disaster,"] _ProPublica_ (2019) — the 2003 SWOS-in-a-Box shift.],
    [GAO, _Navy Readiness_, #link("https://www.gao.gov/products/gao-17-809t")[GAO-17-809T] (Sept. 2017) — 37% of Japan-based warfare certifications expired by June 2017.],
    [NTSB, _Collision between USS Fitzgerald and MV ACX Crystal_, #link("https://www.ntsb.gov/investigations/AccidentReports/Reports/MAR2002.pdf")[NTSB/MAR-20/02] (2020), DCA17PM018.],
    [NTSB, _Collision between USS John S. McCain and Tanker Alnic MC_, #link("https://www.ntsb.gov/investigations/AccidentReports/Reports/MAR1901.pdf")[NTSB/MAR-19/01] (2019), DCA17PM029.],
    [U.S. Navy, _Comprehensive Review of Recent Surface Force Incidents_ (Nov. 2017) — both collisions judged avoidable.],
    [NTSB/MAR-19/01 (2019) — probable cause: insufficient training and inadequate bridge procedures from a lack of Navy oversight.],
    [R. Rotella et al., #link("https://features.propublica.org/navy-uss-mccain-crash/navy-installed-touch-screen-steering-ten-sailors-paid-with-their-lives/")["The Navy Installed Touch-Screen Steering Systems to Save Money,"] _ProPublica_ (2019).],
    [U.S. Navy, _Strategic Readiness Review_ (Dec. 2017) — risks that "accumulated over time and did so insidiously."],
    [U.S. Navy corrective actions (2017); NTSB/MAR-19/01 recommendations; #link("https://news.usni.org/2020/09/03/ntsb-unexplained-course-change-was-a-critical-error-in-fatal-uss-fitzgerald-collision")[USNI News] (2017–2020).],
    [Surface Warfare Officers School Command, Basic Division Officer Course curriculum and the post-2017 return to in-person instruction; Naval Surface Group Western Pacific stand-up (2019) as the forward-readiness certification authority.],
    [NTSB/MAR-19/01 (2019) — watchstander fatigue findings, including average sleep hours and the touch-screen helm misdiagnosis sequence.],
  ),
  quote: [The risks that were taken in the Western Pacific accumulated over time and did so insidiously.],
  quote-source: "U.S. Navy Strategic Readiness Review, 2017",
  le-insight: [
    Fitzgerald/McCain is the canonical Training Gap case because the gap
    was invisible from inside the system. Operational tempo and self-study
    "training" combined to produce a fleet whose stated readiness and
    actual readiness diverged for more than a decade. The two collisions
    nine weeks apart converted what could have been read as an outlier into
    a structural diagnosis: an under-trained bridge team failing the most
    basic give-way rules, and an unfamiliar interface that made the same
    gap reach the hull. Seven sailors died on Fitzgerald; ten on McCain.
    The cost of the divergence was paid in lives long after it could have
    been measured in dollars or inspections.
  ],
  lens-approach: [
    Fitzgerald/McCain is the worked example of induced sub-competency 1.1
    (engineered vs. stated requirements) and the LENS D1/PT3 pairing —
    Systems Analysis applied to the capability-engineering problem of
    underway watchstanding. Students reconstruct the capability
    requirements from operational analysis, then design the evidence
    architecture (LENS D3) that would have surfaced the gap before the
    collisions and the sociotechnical reforms (LENS D4) that would keep
    waivers from quietly hollowing the requirement out. The case pairs
    with Three Mile Island (Case 166) as the
    failure that engineered durable industry reform through INPO. CLO
    mapping: CLO-1 (Systems Analysis) primary, CLO-5 (Sociotechnical
    Constraints) for the waiver-and-reporting institutional dynamics.
  ],
  literature-items: (
    [GAO-17-809T, _Navy Readiness_ (2017)],
    [Rasmussen (1997), "Risk management in a dynamic society"],
    [Snook, _Friendly Fire_ (2000)],
  ),
  reflection-list: (
    [The Navy replaced classroom and simulator instruction with CD-ROM self-study in 2003. What measurement would have detected the capability shortfall before 2017?],
    [The Strategic Readiness Review found the readiness-reporting system had itself stopped working. Design a capability-evidence pipeline that would not normalize its own gaps.],
    [Identify a capability in your organization that is certified by completion (a checked box) rather than demonstrated performance. What measure would convert it to evidence — and who would hold the authority to act on a red signal?],
  ),
  approaches: (
    during: (
      [Specify watchstanding proficiency as a measured deliverable — define the competency, instrument it, and gate qualification on demonstrated skill rather than sea time.],
      [Keep human-factors review in the procurement loop: validate that any interface change (e.g., the bridge console) is tested against operator performance before it is fielded.],
      [Design the readiness signal to report demonstrated capability, not self-attested course completion.],
    ),
    after: (
      [Audit the gap between reported and actual readiness with independent assessment (the Ready-for-Sea model) — with authority to pull a unit offline.],
      [Protect training time against operational tempo so the capability cannot erode silently when schedules tighten.],
      [Track leading indicators — qualification currency, near-miss reports — so divergence is visible before it is paid for in lives.],
    ),
  ),
  courses: ("LEN 1", "LEN 5", "LEN 8", "LEN 3",),
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "1.1",
  lens-anchor: "D1/PT3",  // alternate framing adopted: training-design lens (the operator-licensing reforms) over institution-building (INPO); INPO retained as paired-case context in lens-approach,  // alternate framing adopted: institutional-learning lens over systems-analysis; preserves D1/PT3 as a defensible secondary,
  clo-anchor: "CLO-1, CLO-5",
)

// ---- Case 125 — marine-corps-training-in-the-indopacom ----
#case(
  number: 125,
  slug: "marine-corps-training-in-the-indopacom",
  title: "Marine Corps Training in the INDOPACOM AOR",
  year: "ongoing",
  domains-list: ("defense",),
  modes-code: "TK",
  impact: "Structural readiness gap in DoD's stated top-priority theater",
  diagram: dgm.dgm-indopacom,
  kind: "failure",
  summary: [
    The 2022 National Defense Strategy names the Indo-Pacific the Pentagon's
    priority theater and China its "pacing challenge" — yet the theater so
    designated has among the least mature live-training infrastructure in
    the force. For nearly a decade the U.S. Marine Corps has been unable to
    meet its training requirements at Indo-Pacific ranges, papering over the
    gap with rotations back to U.S. ranges, virtual substitutes, and
    multinational exercises pressed into proxy duty. In May 2024 the GAO
    documented the decade-long shortfall and urged the Corps to analyze its
    unmet requirements and build a remediation plan. The case is this book's
    live, ongoing counterpart to its historical failures: a fully
    recognized, repeatedly documented capability gap that declared priority
    has not closed, because engineered priority — ranges, basing, certified
    units — is slow and expensive.
  ],
  sections: (
    // -- Background --
    [
      The 2022 National Defense Strategy names the Indo-Pacific the priority
      theater and China the "pacing challenge."#cn() Set against that is an
      awkward fact: the theater so designated has among the least mature
      live-training infrastructure in the force — the place called most
      important is, where forces can actually rehearse, one of the least
      built out, so the strategy's top priority and the physical means to
      prepare for it point in opposite directions, a contradiction the
      briefings do not resolve.#cn()
    ],
    // -- What Happened --
    [
      The failure is a condition, not an event. For nearly a decade the
      Marine Corps has been unable to meet its training requirements at
      Indo-Pacific ranges, papering over the shortfall with rotations back
      to U.S. ranges, virtual substitutes, and multinational exercises
      pressed into proxy duty. The workarounds keep units partially trained;
      the structural gap does not close, because each substitute buys a
      single cycle of readiness without building the ranges, basing, or
      instrumented airspace that would let the theater train its own force —
      treating a permanent shortfall as a series of temporary ones.#cn()
    ],
    // -- The Investigation --
    [
      In May 2024 the Government Accountability Office documented the unmet
      requirements, the decade over which they had gone unmet, and the
      workarounds standing in for the real thing, and recommended the Corps
      formally analyze its unmet requirements and build a remediation plan
      for Indo-Pacific ranges; the Department partially agreed.#cn() It was not the
      first warning — GAO has pressed the same readiness recommendations for
      years, and flagged the gap between overseas training and readiness
      reporting two decades ago, so the 2024 finding documents not a fresh
      discovery but the durability of a shortfall that survived repeated
      diagnosis, concurrence, and the passage of time without being
      engineered away.#cn()
    ],
    // -- The Capability Gap --
    [
      What makes INDOPACOM diagnostic is the inverse correlation between
      stated and engineered priority. A theater can be named the pacing
      challenge in every briefing while its training infrastructure stays
      short for ten years, because capability follows where construction and
      dollars flow, not where strategy points. Declared priority is cheap;
      engineered priority — ranges, instrumented airspace, basing, certified
      units — is slow and expensive, and the gap between them is the real
      measure of intent. A strategy document can be rewritten in a season; a
      range complex takes years of construction and budget, so the decade-long
      persistence of the shortfall says more about resourcing than any
      reassertion of priority could.
    ],
    // -- Aftermath & Reform --
    [
      The reform remains mostly prospective: the GAO recommendations were
      open as of 2024, an analysis and a funded remediation plan still to
      come.#cn() Whether the gap closes will be decided not by another
      strategy document but by whether the recommendation becomes programmed
      ranges, dollars, and schedule — converting a concurrence on paper into
      construction and certified units that a future review could actually
      measure. It sits at the front of this book as the live counterpart to
      its historical failures — a gap fully recognized, repeatedly
      documented, and still not engineered away.
    ],
  ),
  beats: (
    "Strategy names the Indo-Pacific top priority while its live-training infrastructure remains among the least mature",
    "Marine Corps papered over unmet range requirements with rotations, virtual substitutes, and multinational exercises",
    "GAO documented decade-long unmet requirements in 2024; the Department partially agreed, echoing diagnoses pressed for years",
    "Declared priority is cheap; engineered priority follows where construction and dollars actually flow",
    "GAO recommendations remain open; closure depends on programmed ranges, dollars, and schedule, not another document",
  ),
  references: (
    [_2022 National Defense Strategy of the United States of America_ (U.S. Department of Defense, 2022) — the Indo-Pacific as priority theater and China as the "pacing challenge."],
    [U.S. Government Accountability Office, _Military Readiness: Actions Needed for DOD to Address Challenges across the Air, Sea, Ground, and Space Domains_, #link("https://www.gao.gov/assets/gao-24-107463.pdf")[GAO-24-107463] (May 2024) — the least-mature training infrastructure in the priority theater.],
    [GAO-24-107463 (2024) — the Marine Corps unable to meet INDOPACOM training requirements for nearly a decade, and the CONUS-rotation, virtual, and multinational-exercise workarounds.],
    [GAO-24-107463 (2024) — recommendation that the Marine Corps analyze unmet training requirements and develop a remediation plan for Indo-Pacific ranges; DoD partial agreement.],
    [GAO, _Military Readiness_ testimony before the Senate Armed Services Committee (D. C. Maurer) — the sustained pattern of readiness recommendations; see also GAO-02-525, _Military Training: Limitations Exist Overseas but Are Not Reflected in Readiness Reporting_ (2002).],
    [GAO-24-107463 (2024) — recommendation status (open as of 2024); the gap not yet remediated.],
  ),
  quote: [Without meeting these requirements, the Marine Corps cannot ensure that its forces will be ready for combat.],
  quote-source: "Paraphrasing GAO-24-107463, Military Readiness, 2024",
  le-insight: [
    INDOPACOM illustrates the difference between declared priority and
    engineered priority. A theater designated as DoD's pacing challenge
    while the training infrastructure to operate in it remains
    structurally short is not a resourcing oversight — it is a capability
    architecture failure. Capability follows where resources actually
    flow, not where briefings name as critical.
  ],
  lens-approach: [
    LENS uses INDOPACOM in LEN 5 to teach the gap between stated
    requirements and engineered requirements, and in LEN 8 to examine the
    organizational dynamics that allow declared priorities to coexist with
    unfunded capability gaps for a decade. The case is also a live test
    for any student's claim about how to engineer cross-service capability
    at scale.
  ],
  literature-items: (
    [GAO-24-107463 and predecessor reports],
    [Fixsen et al. (2005), _Implementation Research_],
    [Rasmussen (1997), "Risk management in a dynamic society"],
  ),
  reflection-list: (
    [In your domain, what is the gap between *declared* priority and *engineered* priority? How would you measure it?],
    [Construct the capability requirements artifact for a theater you do not currently operate in. What would it cost, and who would sign for it?],
    [GAO documented this shortfall for years, the Department partially agreed, and the gap stayed open. Design the accountability mechanism that would convert a concurrence into programmed dollars and schedule, with a signal that fires when the plan slips.],
  ),
  approaches: (
    during: (
      [Tie any declared-priority designation to a funded engineering plan — ranges, basing, instrumented airspace, certified units — so strategy and resourcing cannot diverge unnoticed.],
      [Treat live-training infrastructure for a priority theater as a programmed deliverable with schedule and budget, not a workaround filled by rotations and exercises.],
      [Define the capability requirement for the theater explicitly, so the gap between what is needed and what is built is visible at the point of decision.],
    ),
    after: (
      [Audit declared versus engineered priority annually — measure where construction and dollars actually flowed against where strategy named as critical.],
      [Track recommendation status to closure with an authority that can escalate when a concurrence does not become programmed work.],
      [Monitor whether substitute training (rotations, virtual, multinational) is masking a structural shortfall rather than retiring it.],
    ),
  ),
  courses: ("LEN 5", "LEN 8"),
  scale: "big",
  induced-anchor: "1.1",
  lens-anchor: "D1/PT1",
  clo-anchor: "CLO-1",
  evidence-source: "investigation",
)

// ---- Case 126 — f-35-sustainment-and-maintainer-shortage ----
#case(
  number: 126,
  slug: "f-35-sustainment-and-maintainer-shortage",
  title: "F-35 Sustainment & Maintainer Shortage",
  year: "ongoing",
  domains-list: ("defense",),
  modes-code: "TKD",
  impact: "Fleet mission-capable rate about 55% (March 2023), far short of program goals; lifecycle cost exceeds $1.7T, with ~$1.3T in operating and support; maintainer, technical-data, and depot shortfalls are the binding readiness constraint (GAO-23-105341)",
  diagram: dgm.dgm-f35,
  kind: "failure",
  summary: [
    The F-35 is the most expensive weapons program in history — roughly
    2,500 jets planned and a lifecycle cost above \$1.7 trillion, about
    \$1.3 trillion of it in operating and support. The hard part was never
    the airplane but keeping a global fleet ready, and that half has lagged
    from the start. As of March 2023 the fleet's mission-capable rate was
    about 55%, far short of goal, with more than 10,000 components in
    the repair queue and depots behind schedule. GAO traced the shortfall to
    maintainer shortages, the military's lack of access to technical data,
    and contractor dependency, and urged a full reassessment of the
    sustainment strategy. It is the book's cleanest case of a platform
    fielded faster than the capability infrastructure to sustain it.
  ],
  sections: (
    // -- Background --
    [
      The F-35 is the most expensive weapons program in history: the Pentagon
      plans to buy nearly 2,500, at a lifecycle cost exceeding \$1.7 trillion
      — roughly \$1.3 trillion of it not the aircraft but the decades of
      operating and sustaining them.#cn() The flyaway jet is the finite part;
      keeping a global fleet ready — maintainers, technical data, depots — is
      the open-ended part, and the part that lagged, because the cost that
      dominates the program is not buying the aircraft but the decades of
      sustaining them, the very work that received the least attention as the
      jets rolled off the line.
    ],
    // -- What Happened --
    [
      The failure is a standing condition. As of March 2023 the fleet's
      mission-capable rate was about 55%, far short of goal; more
      than 10,000 components waited in the repair queue, and the depots
      averaged about 72 days per repair while still behind schedule in
      standing up the capacity to do the work at all — a backlog and a
      turnaround time that compound, since parts stuck in the queue keep jets
      grounded and the under-built depots cannot clear the queue fast enough
      to recover the mission-capable rate.#cn()
    ],
    // -- The Investigation --
    [
      GAO's September 2023 review was bluntly titled: the Department and
      services *need to reassess the future sustainment strategy*. It traced
      the shortfall to maintainer shortages, the military's lack of access to
      the technical data needed to do its own repairs, and the resulting
      dependence on the prime contractor.#cn() None of it was new — GAO has
      repeated the same diagnosis year after year, through a troubled
      logistics-software backbone and slow progress, even as procurement
      continued and readiness stayed flat, so the program kept buying more
      jets it could not fully sustain while the same three shortfalls were
      named in review after review without being closed.#cn()
    ],
    // -- The Capability Gap --
    [
      The F-35 is the cleanest modern case of a platform fielded faster than
      the capability infrastructure to sustain it. Aircraft arrived on
      schedule; the maintainers, technical data, and depots were treated as
      follow-on costs rather than deliverables that had to field with the
      jets. The hardest part is the data: much of what is needed to repair
      the aircraft stayed controlled by the contractor, so the services
      cannot freely write procedures, qualify depots, or compete the work,
      which locks the fleet into a single source for the knowledge needed to
      keep it flying — merely expensive in peacetime, dangerous in war, when
      a contractor-dependent sustainment chain is exactly the kind of
      bottleneck an adversary would seek to exploit.#cn()
    ],
    // -- Aftermath & Reform --
    [
      GAO urged a full reassessment of the sustainment strategy — government
      access to technical data, depot capacity, and a maintainer pipeline —
      rather than more patching.#cn() Those recommendations remain a work in
      progress, with later reviews showing costs still rising and readiness
      still below goal. The F-35 sits in this book as the live argument for
      treating capability infrastructure — people, data, the means to sustain
      them — as a fielding gate, not an afterthought. The bill for skipping
      that gate does not disappear; it compounds, arriving as grounded jets,
      a swelling repair queue, and a sustainment chain the services cannot
      control rather than as a line item caught early enough to fix cheaply.
    ],
  ),
  beats: (
    "Most expensive program in history; most of its lifecycle cost is decades of sustainment work",
    "Fleet ran at half goal with over 10,000 components queued and depots still behind schedule",
    "GAO traced shortfall to maintainer shortages, lack of access to technical data, and contractor dependency",
    "Aircraft fielded faster than maintainers and data; contractor controls knowledge needed to keep jets flying",
    "GAO urged full sustainment reassessment; costs still rising and fleet readiness still below program goals",
  ),
  references: (
    [U.S. Government Accountability Office, _F-35 Aircraft: DOD and the Military Services Need to Reassess the Future Sustainment Strategy_, #link("https://www.gao.gov/products/gao-23-105341")[GAO-23-105341] (Sept. 2023) — ~2,500 planned aircraft and a lifecycle cost exceeding \$1.7 trillion, ~\$1.3 trillion of it in operating and support.],
    [GAO-23-105341 (2023) — ~55% fleet mission-capable rate (March 2023); over 10,000 components awaiting repair; ~72-day average depot turnaround; depot stand-up behind schedule.],
    [GAO-23-105341 (2023) — sustainment shortfall traced to maintainer shortages, lack of military access to technical data, and contractor dependency.],
    [GAO, _F-35 Sustainment: DOD Faces Several Uncertainties…_, #link("https://www.gao.gov/assets/gao-22-105995.pdf")[GAO-22-105995] (2022), and the broader GAO F-35 series — the recurring, year-over-year diagnosis.],
    [GAO-23-105341 (2023) — recommendation that DOD reassess the future sustainment strategy.],
    [GAO, _F-35 Sustainment: Costs Continue to Rise While Planned Use and Availability Have Decreased_, #link("https://www.gao.gov/assets/d24106703.pdf")[GAO-24-106703] (2024) — costs rising while readiness stays below goal.],
  ),
  quote: [Organizational-level maintenance has been affected by a number of issues, including a lack of technical data and training.],
  quote-source: "Paraphrasing GAO-23-105341, F-35 Aircraft, 2023",
  le-insight: [
    F-35 is the live, current example of fielding a platform faster than
    its capability infrastructure can be built. The aircraft is the easy
    part; the maintainers are the hard part. A decade of program
    schedules treated maintainer training as a follow-on cost, not a
    fielding gate. The fleet is now operating at half of its design
    readiness, and the program of record is more than a trillion dollars
    over its 2018 estimate.
  ],
  lens-approach: [
    LENS treats the F-35 in LEN 5 as the canonical case of *Capability-
    System Misalignment at Transition*, the program's first canonical
    problem type. Students design the capability infrastructure that
    should have accompanied each lot of aircraft delivered, including the
    training pipeline, technical-data deliverables, and depot
    establishment.
  ],
  literature-items: (
    [GAO F-35 series, 2014–present],
    [Fixsen et al. (2005), _Implementation Research_],
    [Augustine, _Augustine's Laws_ (1986)],
  ),
  reflection-list: (
    [Pick a current technology platform in your domain. Estimate the capability infrastructure that must field with it. What happens if half of that infrastructure is years behind the hardware?],
    [The F-35 program treated maintainer training as follow-on cost. Design a fielding gate that would prevent that decision being available to a future program manager.],
    [Much of the data needed to repair the F-35 stayed controlled by the contractor, foreclosing the government's ability to compete or qualify the work. For a platform in your domain, what data rights would you make a contractual deliverable up front, and how would you verify they were actually delivered?],
  ),
  approaches: (
    during: (
      [Make sustainment infrastructure — maintainers, technical data, depot capacity — a contractual deliverable that fields with each lot of aircraft, not a follow-on cost.],
      [Secure government rights to the technical data needed to write procedures, qualify depots, and compete the work, so the fleet is not locked to a single source.],
      [Gate fielding on demonstrated sustainment capacity, not just aircraft delivery, so readiness is engineered alongside the platform.],
    ),
    after: (
      [Audit the mission-capable rate against repair-queue depth and depot turnaround, and act when the backlog signals a structural, not transient, shortfall.],
      [Track recurring GAO-style diagnoses to closure, refusing to let procurement outpace the sustainment fixes named year after year.],
      [Monitor contractor dependency as a wartime risk, and sustain a government maintainer pipeline and depot capacity that can hold under pressure.],
    ),
  ),
  courses: ("LEN 5", "LEN 8", "LEN 3",),
  scale: "big",
  induced-anchor: "1.4",
  lens-anchor: "D1/PT1",
  clo-anchor: "CLO-1",
  evidence-source: "investigation",
)

// ---- Case 127 — military-fratricide-desert-storm-to ----
#case(
  number: 127,
  slug: "military-fratricide-desert-storm-to",
  title: "Military Fratricide — Desert Storm to Afghanistan",
  year: "1991 – 2014",
  domains-list: ("defense",),
  modes-code: "THK",
  impact: "24% of U.S. KIA in Desert Storm from friendly fire (35 of 146) — well above the historical baseline",
  diagram: dgm.dgm-fratricide,
  kind: "failure",
  summary: [
    Friendly fire killed an unusual share of coalition forces in the 1991
    Gulf War: 35 of 146 U.S. combat deaths (24%) and 72 of 467
    wounded (15%). (The often-cited "2% historical baseline"
    from Shrader's 1982 study is contested — later estimates run nearer
    10–15%, and Shrader stepped back from it.) Post-war reviews
    blamed the chaos of combat, weak situational awareness and fire-control
    discipline, and combat-identification failures — and noted the military
    lacked a shared record to even study its own pattern. Fratricide is the
    failure of several systems to integrate; despite a generation of
    combat-ID investment, recurrences in Afghanistan and after show the rate
    never fell to a confidently low level, because integration is the
    hardest property to engineer by program.
  ],
  sections: (
    // -- Background --
    [
      Friendly fire is as old as war, but its true rate is hard to pin down.
      The most-cited estimate, from Charles Shrader's 1982 study _Amicicide_,
      put it under 2% of battle casualties — a figure later analysts
      challenged as far too low (nearer 10–15%), and one Shrader
      himself stepped back from. The disputed baseline mattered because it
      became the yardstick against which a modern war would be measured — and
      a yardstick set too low makes any later rate look like a catastrophe.#cn()
    ],
    // -- What Happened --
    [
      The 1991 Gulf War made the question grim and concrete: of 146 U.S.
      service members killed in action, 35 — about 24% — died by
      friendly fire, and 72 of 467 wounded (15%) were hit by their own
      side.#cn() An A-10 strike on U.S. LAV-25s near Khafji killed seven
      Marines; an A-10 attack on British Warrior vehicles killed nine —
      each an aircraft firing on friendly vehicles it had failed to identify,
      the recurring shape of the problem. Whatever the true baseline, a
      quarter of American combat deaths from one's own forces could not be
      waved off as the ordinary friction of battle.#cn()
    ],
    // -- The Investigation --
    [
      Post-war reviews converged on familiar causes: the chaos of combat,
      inadequate situational awareness, weak adherence to fire-control
      measures, and combat-identification failures.#cn() One finding cut
      deeper — the military lacked a comprehensive, shared record of
      fratricide incidents, so it could not study its own pattern, separate
      training failures from doctrine or equipment, or tell whether a fix was
      working. Without a common database, every incident was investigated in
      isolation and the aggregate signal that might have driven reform never
      formed. The capability to *learn* was itself missing, a second-order
      gap beneath the first.#cn()
    ],
    // -- The Capability Gap --
    [
      Fratricide is not one problem but the failure of several systems to
      integrate — situational awareness, fire-control discipline, combat
      identification, joint coordination — each the subject of dedicated
      programs, yet the rate never fell to anything negligible. In
      Afghanistan a satellite-guided strike went wrong after a controller's
      device reset its coordinates, and in 2014 a B-1's targeting pod could
      not detect the infrared strobes marking U.S. troops, killing five. Each
      contributor was worked on; the integration *across* them — which is
      what actually keeps friendly forces from killing each other — is the
      hardest thing to engineer by program, because no single office owns it
      and no single procurement can deliver it — and it is where the
      capability kept failing.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The response was a generation of combat-identification investment:
      better IFF systems, blue-force-tracking networks, and changes to
      fire-control doctrine and training. The improvements were real, yet
      fratricide never dropped to a confidently low, stable rate, and even
      measuring it remained contested.#cn() That is the lesson: where
      capability is an emergent property of many systems working together, no
      single program closes the gap — improving each contributor in isolation
      still leaves the integration between them unaddressed — and progress
      has to be measured against an honest baseline rather than a convenient
      one.
    ],
  ),
  beats: (
    "Shrader's contested under-2% baseline became the yardstick that made any later rate look catastrophic",
    "A quarter of U.S. KIA died to friendly fire; A-10s struck Marines and British Warriors",
    "Reviews cited combat chaos, weak awareness, fire-control lapses, and the absence of a shared incident database",
    "Fratricide is integration across many systems; no single office owns what keeps the rate down",
    "Better IFF and blue-force tracking followed, yet rates never settled at a confidently low level",
  ),
  references: (
    [C. R. Shrader, _Amicicide: The Problem of Friendly Fire in Modern War_ (U.S. Army Combat Studies Institute, 1982) — the under-2% estimate from 269 incidents, a baseline later challenged as too low (with estimates nearer 10–15%).],
    [#link("https://www.usni.org/magazines/proceedings/1994/june/friendly-fire-facts-myths-and-misperceptions")["Friendly Fire: Facts, Myths and Misperceptions," _U.S. Naval Institute Proceedings_ (June 1994)] — Desert Storm: 35 of 146 KIA (24%) and 72 of 467 wounded (15%) by friendly fire; critique of the 2% "historical norm."],
    [Khafji and Warrior fratricide incidents (Feb. 1991) — see USNI _Proceedings_ (1994) and #link("https://time.com/archive/6718429/gulf-war-they-didnt-have-to-die/")[Time, "They Didn't Have to Die"]. _(Per-incident casualty figures vary across sources; see AUDIT.)_],
    [U.S. GAO, _Operation Desert Storm_ fratricide investigations — Apache incident (OSI-93-4) and Army fratricide investigation (OSI-95-10) — causes and the Army's reviews.],
    [Post-war combat-identification reviews — leading causes (situational awareness, fire-control measures, combat ID) and the absence of a comprehensive incident database. _(Synthesized from secondary analyses; see AUDIT.)_],
    [Later-conflict recurrences (2001 coordinate-reset strike; 2014 B-1 infrared-strobe strike) and S. Snook, _Friendly Fire_ (Princeton Univ. Press, 2000) on the 1994 Black Hawk shootdown — the systems-integration archetype.],
    ["IFF Update: Stalled Again," _U.S. Naval Institute Proceedings_ (June 1994) — the combat-identification and identification-friend-or-foe programs pursued after Desert Storm, and how slowly they matured.],
  ),
  quote: [The lack of a comprehensive and accessible automated database prevented thorough examination of the problem.],
  quote-source: "Paraphrasing post–Desert Storm fratricide reviews, c. 1993",
  le-insight: [
    Fratricide is a multi-decade capability problem that resists single-
    intervention solutions. Each of the contributing causes — situational
    awareness, fire-control discipline, combat identification, joint
    coordination — has been the subject of dedicated programs. The rate
    persists because the integration across the contributors is itself
    the capability, and integration is the hardest property to engineer
    by program.
  ],
  lens-approach: [
    LENS uses fratricide in LEN 5 to teach systems-of-systems capability
    analysis and in LEN 2 to introduce combat identification as a
    Human-AI Teaming problem (operators rely on automated IFF systems
    whose limitations are not in their training). LEN 8 examines why
    decades of awareness have not produced a sustained reduction.
  ],
  literature-items: (
    [Shrader, _Amicicide_ (1982)],
    [Snook, _Friendly Fire_ (2000) on Black Hawk shootdown over Iraq],
    [Joint and Coalition Operations Analysis literature],
  ),
  reflection-list: (
    [Identify a capability problem in your domain that has been the subject of repeated programs without sustained improvement. What is the integration gap that the programs do not address?],
    [Design a measurement system that would distinguish a temporary improvement in fratricide rate from a structural one.],
    [The military lacked a shared incident database, so it could not study its own pattern. Identify a recurring harm in your domain that is investigated case-by-case but never aggregated, and design the shared record that would let the pattern become visible.],
  ),
  approaches: (
    during: (
      [Treat combat identification as a systems-of-systems requirement with a single owner for the integration, not as separate IFF, situational-awareness, and fire-control programs.],
      [Build a comprehensive, shared incident database from the outset so the pattern across events can be studied and fixes tested against it.],
      [Design fire-control discipline and identification into joint coordination, so the integration that prevents fratricide is engineered rather than left emergent.],
    ),
    after: (
      [Audit the friendly-fire rate against an honest baseline, distinguishing a temporary dip from a structural reduction before crediting any program.],
      [Monitor each contributor and the integration across them, since improving components in isolation can leave the joint failure mode untouched.],
      [Sustain the learning channel so later-conflict recurrences feed back into doctrine and training rather than being investigated in isolation.],
    ),
  ),
  courses: ("LEN 5", "LEN 2", "LEN 8"),
  scale: "big",
  induced-anchor: "1.3",
  lens-anchor: "D1/PT1",
  clo-anchor: "CLO-1",
  evidence-source: "investigation",
)

// ---- Case 128 — operation-eagle-claw ----
#case(
  number: 128,
  slug: "operation-eagle-claw",
  title: "Operation Eagle Claw",
  year: "1980",
  domains-list: ("defense",),
  modes-code: "TK",
  impact: "8 servicemembers killed in Iran; mission to rescue 53 American hostages aborted; catalyst for the founding of U.S. Special Operations Command",
  diagram: dgm.dgm-ring(
    "Eagle\nClaw",
    ("Army", "Navy", "Marines", "Air Force", "CIA"),
    framing: "five organizations · no joint command · no shared training",
    caption: "the absence of an institution that could own the mission",
  ),
  kind: "failure",
  summary: [
    The April 1980 mission to rescue fifty-three American hostages held at
    the U.S. embassy in Tehran was aborted at a desert staging point when
    three of eight helicopters were lost to mechanical and weather
    problems. During the withdrawal a helicopter collided with a refueling
    C-130, killing eight servicemembers; the hostages remained captive for
    another nine months. The Holloway Commission found the operation had
    been assembled ad hoc: each service contributed its own units,
    equipment, and command relationships, the aircrews had not trained
    together, and there was no standing joint special-operations command
    to own the mission. The capability had to be improvised, and the
    improvisation failed. Eagle Claw catalyzed the creation of JSOC, the
    Goldwater-Nichols reforms, and ultimately U.S. Special Operations Command.
  ],
  sections: (
    // -- Background --
    [
      In November 1979, Iranian revolutionaries seized the U.S. embassy
      in Tehran and took more than sixty Americans hostage; fifty-three remained by April 1980. After months of
      failed diplomacy, the Carter administration authorized a military
      rescue. No standing joint special-operations command existed to
      plan or execute it; the force had to be assembled from units drawn
      separately from the Army, Navy, Marines, and Air Force — each bringing
      its own equipment, procedures, and chain of command to a mission that
      demanded they act as one, with no institution whose job it was to make
      them cohere before the night of the raid.#cn()
    ],
    // -- What Happened --
    [
      On 24 April 1980, the mission staged at a remote site code-named
      Desert One. Three of the eight RH-53 helicopters were disabled by
      a dust storm and mechanical failure, dropping the force below the
      minimum needed; the commander aborted. During the withdrawal a
      helicopter collided with a C-130 tanker, and the resulting fire
      killed eight servicemembers. The mission failed before reaching
      Tehran — undone not by enemy action but by attrition and a chaotic
      withdrawal among aircraft and crews that had never operated together,
      the predictable cost of integration improvised under pressure rather
      than built and rehearsed in advance.#cn()
    ],
    // -- The Investigation --
    [
      The Holloway Special Operations Review Group identified the
      operation's "ad hoc-ery" as central: each service contributed its
      own units, equipment, command relationships, and communications;
      the aircrews had not trained together as a unit; the RH-53D had
      been selected partly for a minesweeping cover story rather than for
      fitness for a desert rescue. There was no standing organization to
      own the mission end to end — no single authority responsible for the
      force's training, equipment fit, and command architecture as a whole,
      so each gap was someone's problem in part and no one's in full.#cn()
    ],
    // -- The Capability Gap --
    [
      Each service was competent inside its own boundary. The capability
      that did not exist was the integration across them — a joint
      command, a common communications architecture, and a force that had
      trained together. That integration had to be improvised for a
      single high-stakes mission, and the improvisation could not hold —
      because cross-service cohesion is not summoned on demand but accrued
      through standing structure and repeated joint training, neither of
      which existed when the order came.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Eagle Claw produced the Holloway Commission, the creation of the
      Joint Special Operations Command in 1980, and — alongside the 1983
      Beirut bombing and the Grenada invasion — the impetus for the
      Goldwater-Nichols Act of 1986 and the Nunn-Cohen Amendment
      establishing U.S. Special Operations Command in 1987. The reform
      built the institution the mission had needed and not had — converting a
      capability that had been improvised once and failed into a standing
      command with its own forces, training, and authority, so the next
      mission would inherit cohesion rather than assemble it from scratch.#cn()
    ],
  ),
  beats: (
    "No standing joint command existed; the rescue force was drawn ad hoc from four services",
    "Three RH-53s failed at Desert One; on withdrawal a helicopter struck a C-130 killing eight",
    "Holloway named ad hoc assembly, untrained aircrews, and a cover story driven aircraft choice",
    "Each service was competent in its lane; cross-service integration as a deliverable did not exist",
    "Reform built JSOC, Goldwater Nichols in 1986, and USSOCOM in 1987 as standing joint capability",
  ),
  references: (
    [Holloway Special Operations Review Group, _Rescue Mission Report_ (1980) — the ad-hoc assembly and equipment choices (paraphrased).],
    [Holloway Commission (1980) — the Desert One sequence and the helicopter–C-130 collision.],
    [Goldwater-Nichols Department of Defense Reorganization Act of 1986, Pub. L. 99-433.],
    [Nunn-Cohen Amendment (1986), establishing U.S. Special Operations Command (1987).],
    [Locher, J. (2002), _Victory on the Potomac_ — the reform arc from Desert One to Goldwater-Nichols.],
  ),
  quote: [The mission was ad hoc — assembled from units, equipment, and command relationships that had never operated together.],
  quote-source: "Paraphrasing the Holloway Special Operations Review Group, 1980",
  le-insight: [
    Eagle Claw is the canonical case in U.S. defense for the absence of
    institutionalized cross-service capability. Each service was
    competent inside its own boundary; the integration across them did
    not exist as a deliverable — until the reform that followed built
    the institution the mission had needed and not had.
  ],
  lens-approach: [
    LENS uses Eagle Claw in LEN 5 as a worked case for cross-
    organizational capability requirements and in LEN 8 for the
    institutional reform that followed; it pairs with INPO (Case 175) as
    the defense analog of failure-driven institution building. The
    seven-year arc to Goldwater-Nichols (1986) and USSOCOM (1987) is
    itself a measurement: the institutional response time when the fix
    requires statutory action.
  ],
  literature-items: (
    [Locher (2002), _Victory on the Potomac_],
    [Holloway Commission report (1980)],
  ),
  reflection-list: (
    [Where in your domain does a cross-organizational capability exist on paper but not in practice? What would force its institutionalization?],
    [Eagle Claw produced USSOCOM and Goldwater-Nichols six years later. Sketch the institutional design that an equivalent failure in your domain would force into existence.],
    [The Holloway Commission named the mission's ad-hoc-ery as the diagnosis. What standing capability — institution, command, training pipeline — does your domain currently lack that an Eagle-Claw-class failure would force into existence?],
  ),
  approaches: (
    during: (
      [Stand up a single command that owns the cross-organizational mission end to end — its force, equipment fit, communications, and training — rather than assembling it per mission.],
      [Require the contributing units to train together as one force on a common communications architecture before they are committed.],
      [Select equipment for fitness to the actual mission, not for a convenient cover story or parent-service availability.],
    ),
    after: (
      [Audit whether a cross-organizational capability that exists on paper has ever actually operated as one force, and treat the absence of joint reps as an unfilled gap.],
      [Sustain the standing institution and its training pipeline so the next mission inherits cohesion rather than improvising it.],
      [Monitor for the recurrence of ad-hoc assembly, since the conditions that produced Desert One reappear whenever no single authority owns the joint mission.],
    ),
  ),
  courses: ("LEN 5", "LEN 8"),
  scale: "big",
  induced-anchor: "1.3",
  lens-anchor: "D1/PT1",
  clo-anchor: "CLO-1",
)

// ---- Case 129 — patriot-missile-dhahran ----
#case(
  number: 129,
  slug: "patriot-missile-dhahran",
  title: "Patriot Missile / Dhahran",
  year: "1991",
  domains-list: ("defense",),
  modes-code: "DHK",
  impact: "28 U.S. soldiers killed in their barracks; roughly 100 wounded",
  diagram: dgm.dgm-patriot,
  kind: "failure",
  summary: [
    On 25 February 1991 a Scud missile struck a U.S. barracks in Dhahran,
    Saudi Arabia, killing 28 soldiers and wounding about a hundred; the
    Patriot battery defending the area never engaged it. Designed for short
    engagements against Soviet aircraft in Europe, the Patriot tracked time
    in a register whose tiny rounding error grew with every hour of uptime.
    After about a hundred hours of continuous operation the Gulf War
    demanded, the radar's range gate was off by a third of a second — enough
    to look in the wrong place. Israeli operators had flagged the drift two
    weeks earlier, and a patch reached Dhahran the day after the strike. The
    capability to hold accuracy under sustained use was assumed away at
    design time, and no one carried that assumption forward when the mission
    changed.
  ],
  sections: (
    // -- Background --
    [
      The Patriot was built to defend Western Europe against Soviet aircraft
      in engagements of minutes — switched on, fired, switched off, then moved
      before it could be targeted. In the 1991 Gulf War it was doing something
      else: defending fixed sites in Saudi Arabia against ballistic missiles,
      in batteries left running continuously for more than a hundred hours
      because the threat came without warning and could not be scheduled. The
      mismatch between the original concept of operations and the new use was
      real, and invisible to the operators, because no one had told them the
      machine had been built around an assumption they were now violating.#cn()
    ],
    // -- What Happened --
    [
      The system tracked time in a 24-bit fixed-point register, and a tiny
      rounding error — invisible in any short engagement — accumulated with
      every hour of uptime. After about a hundred hours the timing was off by
      roughly a third of a second, which seems negligible until it is
      multiplied by a ballistic missile's speed: enough for the radar's range
      gate to look in the wrong place and reject the real track as noise. On
      25 February 1991 an incoming Scud arrived where the Patriot was no
      longer searching, passed unengaged, and struck a barracks in Dhahran,
      killing twenty-eight soldiers of the 14th Quartermaster Detachment and
      wounding about a hundred.#cn()
    ],
    // -- The Investigation --
    [
      The drift was not unknown: Israeli operators had flagged it two weeks
      earlier from their own sustained use, and engineers had a patch already
      in hand — which reached Dhahran the day after the strike, too late to
      matter.#cn() The only field mitigation was an advisory to reboot after
      "very long" run times, never defining "very long," so a crew could obey
      the instruction to the letter and still drift into the danger band. The
      General Accounting Office found the Army had simply presumed no one would
      run a battery continuously for so long, and so never treated the
      accumulating error as a hazard worth specifying or warning against.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability to hold accuracy under sustained operation was never
      built in, because the original concept of operations did not require
      it — a defensible omission for the system as first imagined, fighting in
      short bursts and moving on. The failure came when the concept changed
      and the assumption did not travel with it. Nothing carried the design's
      hidden premise forward to the soldiers in Dhahran; no artifact, briefing,
      or warning told them "this system was built assuming you would turn it
      off." The system did not malfunction — it did exactly what it was built
      to do; the transition between operating contexts did, with nothing in
      place to catch the broken premise.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The patch was distributed and concrete reboot intervals defined in place
      of the vague advisory, and the defect — a fixed-point truncation error
      growing without bound as uptime increased — became a staple of
      numerical-analysis and software-engineering teaching.#cn() The harder
      lesson is the one this chapter turns on: a capability quietly assumed
      away at design time does not announce itself when the context shifts. It
      waits, intact and invisible, until the day the assumption is wrong — and
      by then the people relying on the system have no way to know the ground
      has moved beneath them, because the premise was never written where they
      could read it.
    ],
  ),
  beats: (
    "Built for short European engagements; Gulf War demanded continuous fixed-site operation",
    "Fixed-point time error grew with uptime; Scud passed unengaged, 28 killed",
    "Israeli warning preceded strike by weeks; patch arrived one day late",
    "Original concept did not require sustained accuracy; assumption never traveled with redeployment",
    "Patch distributed, reboot intervals defined; canonical lesson about assumptions outliving their context",
  ),
  references: (
    [U.S. General Accounting Office, _Patriot Missile Defense: Software Problem Led to System Failure at Dhahran, Saudi Arabia_, GAO/IMTEC-92-26 (1992) — the design-context mismatch and continuous-operation use.],
    [R. Skeel, "Roundoff Error and the Patriot Missile," _SIAM News_ 25(4): 11 (1992) — the 24-bit fixed-point time truncation and the ~0.34-second range-gate drift after ~100 hours.],
    [GAO/IMTEC-92-26 (1992) — the prior Israeli warning, the software patch arriving in Dhahran on 26 February (the day after the strike), and the 28 killed.],
    [GAO/IMTEC-92-26 (1992) — the vague "very long run time" advisory and the Army's presumption that batteries would not be run continuously for such periods (quoted).],
    [M. Barr / Barr Group, "An Update on the Patriot Missile Software Problem" — an engineering post-mortem of the accumulated-truncation defect.],
    [GAO/IMTEC-92-26 (1992) and Skeel (1992) — the design assumption that failed to travel across the change in operational context, and the case's teaching legacy.],
  ),
  quote: [Army officials presumed that the users would not continuously run the batteries for such extended periods.],
  quote-source: "GAO/IMTEC-92-26, 1992",
  le-insight: [
    Patriot is the canonical Designed-Out case from defense. The capability
    to maintain accuracy under sustained operation was omitted because the
    original concept of operations did not anticipate it. When the concept
    changed, the assumption did not travel. The system did not fail; the
    transition from one operational context to another did, and there was
    no capability infrastructure to catch it.
  ],
  lens-approach: [
    LENS treats Patriot as the textbook example of *Capability Degradation
    Under System Change*. LEN 5 methods require operators of any
    transitioning system to have current capability-relevant documentation
    specifying what assumptions of the original design have changed. LEN 8
    examines how organizational knowledge about design constraints travels
    from engineering to operations — and why, here, it arrived a day late.
  ],
  literature-items: (
    [Skeel, "Roundoff Error and the Patriot Missile," _SIAM News_ (1992)],
    [Reason, _Human Error_ (1990) — swiss-cheese model],
    [Fixsen et al. (2005), _Implementation Research_],
  ),
  reflection-list: (
    [The Patriot's design assumed short engagements. What assumption in a current system you work with would become lethal if the operational context shifted, and how would operators learn of the shift?],
    [Construct the capability-transition artifact that should have accompanied the redeployment of Patriot batteries from Europe to Saudi Arabia. What would it have said, and who would have signed it?],
    [The field advisory said to reboot after "very long" run times without defining the term. Rewrite a vague operational instruction in your domain into a specific, testable limit, and name the design data the limit must be derived from.],
  ),
  approaches: (
    during: (
      [Make every load-bearing design assumption — here, that the system would be cycled off — an explicit, recorded requirement so a later change of use cannot silently violate it.],
      [Bound numerical error over the full intended operating envelope, including run times far beyond the original concept, rather than only the durations first imagined.],
      [Design the system to detect and bound its own accumulating drift, degrading or warning before the error reaches a magnitude that defeats the mission.],
    ),
    after: (
      [Issue concrete, testable operating limits — exact reboot intervals, not "very long" — derived from the design data and propagated to every crew.],
      [Establish a path for field reports of anomalous behavior, like the Israeli warning, to reach engineering and trigger fleet-wide action faster than a patch can lose a race with the threat.],
      [Require a capability-transition review whenever a system is redeployed to a new concept of operations, surfacing which original assumptions the new mission breaks.],
    ),
  ),
  courses: ("LEN 5", "LEN 8", "LEN 9", "LEN 6",),
  scale: "big",
  induced-anchor: "1.2",
  lens-anchor: "D1/PT1",
  clo-anchor: "CLO-1",
  evidence-source: "investigation",
)

// ---- Case 130 — uss-vincennes-and-iran-air-flight-655 ----
#case(
  number: 130,
  slug: "uss-vincennes-and-iran-air-flight-655",
  title: "USS Vincennes & Iran Air Flight 655",
  year: "1988",
  domains-list: ("defense",),
  modes-code: "HT",
  impact: "290 civilians killed — one of the deadliest shootdowns of a commercial airliner by a military force; precipitating case for Aegis CIC display and decision-aid doctrine reform, and a central reference in the human-AI teaming literature",
  diagram: dgm.dgm-vincennes,
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "3.3",
  lens-anchor: "D3/PT6",
  clo-anchor: "CLO-3",
  summary: [
    On 3 July 1988, during a surface skirmish with Iranian gunboats in the
    Persian Gulf, the USS Vincennes shot down Iran Air Flight 655 — a
    civilian Airbus A300 climbing on a scheduled route — killing all 290
    aboard, one of the deadliest airliner shootdowns by a military force. The
    Aegis combat system worked: its radar correctly showed the aircraft
    ascending on the published civilian-traffic corridor. Yet operators
    in the Combat Information Center, primed by a simultaneous surface
    fight to expect a hostile inbound, tagged the contact as a military
    F-14 — from an IFF Mode II squawk mis-correlated from an aircraft at Bandar
    Abbas, not the airliner, which squawked only civilian Mode III — and,
    misreading its closing range as a descent, fired. The Fogarty Report (DoD, 1988) attributed the
    tragedy to human error under extreme stress — confirmation bias,
    "scenario fulfillment," and the unconscious distortion of data — not
    equipment failure. The 1992 Newsweek "Sea of Lies"
    investigation and a 2018 US Naval Institute _Proceedings_
    retrospective reopened both the operational record and the
    interface-design lessons. Vincennes is the book's foundational
    human-AI-teaming case: the most advanced surface combatant afloat
    failed because its CIC interface and the operational framing made the
    correct reading possible in principle and unsustainable in practice
    under combat stress.
  ],
  sections: (
    // -- Background --
    [
      In the closing weeks of the Iran-Iraq War, US warships patrolled a
      tense Persian Gulf where civilian airliners and hostile military
      aircraft shared the same crowded sky. The USS Vincennes, a
      Ticonderoga-class cruiser with the Navy's most advanced Aegis
      combat system, was in a surface fight with Iranian gunboats — itself
      a contested engagement that the later Newsweek "Sea of Lies"
      investigation argued had taken the ship into Iranian territorial
      waters — when an aircraft took off from Bandar Abbas, an airfield
      used by both civil and military traffic.#cn() The dual-use field
      meant a single track could be either threat or scheduled flight,
      so the crew's reading of the contact carried the whole burden of
      identification — and the Combat Information Center was already
      managing divided attention against the surface engagement and
      against an interface whose track display did not directly show
      altitude trend, the kind of conditions under which a wrong call
      becomes far easier to make than a right one.
    ],
    // -- What Happened --
    [
      The aircraft was Iran Air Flight 655, a civilian Airbus A300
      climbing through 12,000 feet on its scheduled route to Dubai. The
      Vincennes' crew identified it as a descending, hostile F-14 and
      fired two SM-2 surface-to-air missiles; all 290 people aboard,
      including 66 children, were killed — one of the deadliest shootdowns of a
      commercial airliner by a military force.#cn() An ascending airliner
      and a diving attack jet are opposite behaviors, yet the crew
      converged on the second while the Aegis radar reported the first.
      The engagement consumed only seven minutes from radar detection to
      launch, collapsing identification, IFF interrogation, and decision
      into a window too narrow for anyone to slow down and reconcile the
      contradiction.
    ],
    // -- The Investigation --
    [
      The Aegis SPY-1A radar had not malfunctioned: it correctly showed
      the aircraft ascending. The IFF interrogation system added a
      structural confusion of its own: the Vincennes' IFF returns
      reflected both the airliner's Mode III civilian transponder and,
      apparently, a Mode II military code from another aircraft on the
      ground at Bandar Abbas — a mode-confusion failure that left the
      crew with ambiguous identification at the worst possible
      moment.#cn() The Fogarty Report (Rear Adm. William Fogarty, DoD,
      August 1988) attributed the tragedy to human error under extreme
      stress — confirmation bias and the "stress and unconscious
      distortion of data" — naming "scenario fulfillment" as the
      psychological mechanism by which operators read every indication
      through the lens of a presumed hostile attack. An inexperienced operator misread the range as a descent and others
      in the CIC accepted it rather than checking,#cn()
      a shared error that is more damning than a single misread because
      it shows the interface offered no cross-check strong enough to
      break a wrong reading once the team had settled into it. The
      framing arrived before the data did, so each new return was fitted
      to the expected threat rather than weighed against it.#cn()
    ],
    // -- The Capability Gap --
    [
      The system did not lie, and the operators did not act in bad
      faith. The interface and the operational framing combined to make
      a particular misreading not merely possible but likely. Correct
      performance was possible in principle and unsustainable in
      practice — and the gap between those two is the engineering
      problem. An Aegis CIC display that surfaced altitude as a numeric
      readout but not as a trend, that gave equal weight to civilian and
      military IFF returns under mode confusion, and that offered no
      mandatory disconfirmation step before weapons release, had not
      been designed for the stress it would actually meet. The burden of
      overriding a presumed hostile attack was left entirely to the
      operator's discipline, exactly when combat had stripped that
      discipline of the time and calm it needed to work.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The Navy's post-incident response included revised tactical
      doctrine for civilian-traffic deconfliction in the Gulf, updated
      Aegis training scenarios that explicitly rehearsed the
      scenario-fulfillment failure mode, and changes to the CIC display
      sequence and crew procedures around IFF interpretation under mode
      confusion. The case has remained a standing reference in the
      human-AI-teaming literature: a 2018 _US Naval Proceedings_
      retrospective placed it at the heart of how operators should be
      teamed with automated decision aids under stress, and the
      situation-awareness, naturalistic-decision-making, and
      automation-trust literatures (Klein, Endsley, Cummings) treat it
      as the canonical worked example.#cn() Its lesson is that interface
      design is a capability deliverable, not an aesthetic one — and that
      the most advanced system afloat is only as good as the human
      reading it under fire. The retrospective reframed the loss not as
      a one-off error but as a predictable outcome of teaming a person
      with a decision aid that displayed truth without defending it, a
      pattern that recurs wherever automation is fast and the human is
      the last check.
    ],
  ),
  beats: (
    "Aegis cruiser fought Iranian gunboats near a dual-use airfield in the crowded Persian Gulf",
    "Crew tagged an ascending Airbus as a diving F-14 — a mis-correlated IFF squawk plus a range-read-as-altitude error — and fired; all 290 died",
    "Aegis radar was correct; an operator misread the closing range as a descent and others in the CIC accepted it under presumed-hostile framing",
    "Interface left burden of overriding expectation to operators stripped of time by combat",
    "Naval retrospective reframed loss as predictable teaming failure of unguarded decision aids",
  ),
  references: (
    [Rear Adm. W. Fogarty, _Formal Investigation into the Circumstances Surrounding the Downing of Iran Air Flight 655_ (US Navy, August 1988) — the engagement, the IFF mode-confusion findings, and the 290 deaths.],
    [Fogarty report (1988) — the Aegis SPY-1A radar functioned; the aircraft was ascending while the crew perceived a descent; "scenario fulfillment" as the psychological mechanism.],
    [Fogarty report (1988) — "human error under extreme stress," confirmation bias, and "unconscious distortion of data" (quoted); shared-error finding across CIC operators.],
    [J. Barry & R. Charles, "Sea of Lies," _Newsweek_ (July 13, 1992) — contemporaneous reinvestigation of the operational record, including the disputed account of Vincennes' position relative to Iranian territorial waters.],
    [#link("https://www.usni.org/magazines/proceedings/")[US Naval Institute _Proceedings_] retrospective on the Vincennes incident (2018) — the human-AI-teaming reframing and the standing case-study role.],
    [M. L. Cummings, "Human Supervisory Control of Weapon Systems" (MIT) — interface design and automation under time pressure as the engineering frame for the case.],
    [G. Klein, _Sources of Power_ (1998); M. Endsley, "Toward a Theory of Situation Awareness" (1995) — the naturalistic-decision-making and situation-awareness literatures that treat Vincennes as the canonical worked example.],
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
    Vincennes is the foundational mode-and-state-transparency case
    under combat stress (induced 3.3; LENS D2/PT6 human-AI teaming).
    LENS uses it in Domain 2 (Iterative Development; CLO-2) for
    interface-as-deliverable: a CIC display tested against the worst
    case it would actually meet — confirmation bias during a
    simultaneous surface engagement — not against the calm of
    acceptance testing. LENS uses it in Domain 3 (Human-System Collaboration
    Adaptation; CLO-3) for the human-AI teaming problem itself: a
    decision aid that displays truth without defending it predictably
    fails wherever automation is fast and the human is the last check.
    The case sits at the heart of the program's argument that
    interface design is a capability deliverable, not an aesthetic
    one. Pair with EHR/CPOE (Case 2) at the
    interface-built-to-wrong-specification layer.
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

// ---- Case 131 — stanislav-petrov-1983-false-alert ----
#case(
  number: 131,
  slug: "stanislav-petrov-1983-false-alert",
  title: "Stanislav Petrov / 1983 False Alert",
  year: "1983",
  domains-list: ("defense",),
  modes-code: "HT",
  impact: "Soviet early-warning system reported five incoming U.S. ICBMs; Lt. Col. Petrov correctly assessed the signal as false; retaliation averted",
  diagram: dgm.dgm-compare(
    "system",
    "5 ICBMs",
    "operator",
    "false alarm",
    framing: "the human in the loop was the recoverability of an automation failure",
    caption: "Petrov, 1983 — Human-AI Teaming at the highest possible stakes",
  ),
  kind: "failure",
  summary: [
    On the night of 26 September 1983 the Soviet Oko early-warning system
    reported five U.S. intercontinental missiles inbound. The duty officer,
    Lt. Col. Stanislav Petrov, judged it a false alarm — a real first strike
    would involve hundreds of missiles, not five — and reported it as such
    rather than up the launch-decision chain. He was right: sunlight glinting
    off high-altitude clouds had fooled the satellite's infrared sensors.
    Petrov's judgment is widely credited with averting nuclear war. The case
    is the book's strongest positive evidence for human-in-the-loop
    capability: the automation failed in a mode its designers never
    anticipated, and a person with contextual judgment and the latitude to
    override it was the recoverability the system had. Keeping humans in some
    loops is not nostalgia — it is capability engineering.
  ],
  sections: (
    // -- Background --
    [
      Soviet nuclear command rested partly on Oko, a satellite early-warning
      system meant to detect U.S. missile launches and feed a
      launch-on-warning posture. The duty officer at the Serpukhov-15 bunker
      was responsible for verifying any alert and passing it up the chain.#cn()
      A launch-on-warning posture compresses the time between detection and
      decision to almost nothing, so the duty officer's verification was not
      a formality but the single human checkpoint standing between a satellite
      reading and the machinery of retaliation.
    ],
    // -- What Happened --
    [
      On the night of 26 September 1983 Oko reported a U.S. intercontinental
      ballistic missile launch — then, minutes later, four more, for five in
      all. Lt. Col. Stanislav Petrov, the duty officer, assessed the signal
      as a false alarm — a genuine first strike, he reasoned, would involve
      hundreds of missiles, not five — and reported it as such. He was
      correct.#cn() The reasoning that saved the situation came from outside
      the system entirely: Oko could report what it saw, but it could not weigh
      five launches against the doctrine of a real first strike, and that
      mismatch between the alert and the strategic picture was exactly the
      judgment the machine had no way to make.
    ],
    // -- The Investigation --
    [
      The cause was an unanticipated automation failure: sunlight reflecting
      off high-altitude clouds at a particular geometry had fooled the Oko
      satellite's infrared sensors into reading launches that were not
      there.#cn() It was a failure of the rarest kind — a benign natural
      phenomenon the sensors had never been designed to discount — which is
      precisely why no automated check existed to catch it. Later investigation identified the satellite-geometry
      failure mode and modified the algorithm; the scenario is now
      permanently archived in early-warning training as the canonical false
      positive, a permanent reminder that the system's worst error was one
      it could not have flagged for itself.#cn()
    ],
    // -- The Capability Gap --
    [
      The automation had failed in a mode its designers had not imagined, and
      no automated check could catch it. What caught it was a human with the
      contextual judgment to weigh the alert against what a real attack would
      look like, and the institutional latitude to override the system rather
      than simply relay it. Petrov's "funny feeling" was a career's worth of
      judgment doing the work the automation could not — and crucially, the
      chain of command had left him room to act on it rather than forcing him
      to pass the alert upward unfiltered, so the recoverability lived as much
      in the authority structure as in the man.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Petrov's decision is widely credited with averting nuclear war, and the
      case is permanently studied in command-and-control training.#cn()
      Preserving the episode in training is itself a design choice: it keeps
      the failure mode and the human override alive as institutional memory,
      so the lesson does not erode the way the original sensor's blind spot
      had. It is
      the book's strongest argument that retaining a human in some loops is
      capability engineering, not nostalgia: the human role is the
      recoverability of an automation failure the designers did not
      anticipate — which is exactly why fully automating a strategic decision
      removes the one element that can catch the unimagined error.
    ],
  ),
  beats: (
    "Soviet Oko satellite system fed launch-on-warning posture; duty officer was the single verification checkpoint",
    "Oko reported five inbound U.S. ICBMs; Petrov judged it false because a real strike means hundreds",
    "Sunlight on high-altitude clouds at particular geometry fooled infrared sensors; algorithm later modified",
    "No automated check could catch unimagined mode; human contextual judgment plus override authority saved it",
    "Decision credited with averting nuclear war; case preserved in training as argument for human-in-loop",
  ),
  references: (
    [D. Hoffman, _The Dead Hand: The Cold War Arms Race and Its Dangerous Legacy_ (2009) — the Oko system and Soviet launch-on-warning posture.],
    [Accounts of the 26 Sept. 1983 incident (Hoffman; Petrov interviews) — the five-missile alert and Petrov's assessment.],
    [Investigations of the Oko incident (incl. V. Aksenov, 2004) — sunlight-on-clouds satellite geometry as the false-positive cause.],
    [The subsequent Oko algorithm modification and the incident's use in early-warning training.],
    [S. Petrov, interview, _The Washington Post_ (1999) — "a funny feeling in my gut" (quoted).],
    [S. Sagan, _The Limits of Safety_ (1993); M. L. Cummings (2017) — automation in critical decisions and human-in-the-loop.],
  ),
  quote: [I had a funny feeling in my gut.],
  quote-source: "Stanislav Petrov, quoted in The Washington Post, 1999",
  le-insight: [
    Petrov is the canonical positive case for human-in-the-loop nuclear
    command-and-control. The automation failed in a mode its designers
    had not anticipated. The human's contextual judgment was the
    backstop that allowed the failure to be recovered before it became
    catastrophic. The case is the strongest argument in this book that
    the design choice to retain humans in some loops is not nostalgia
    but capability engineering.
  ],
  lens-approach: [
    LENS uses Petrov in LEN 2 as the positive Human-AI Teaming case at
    the highest possible stakes: the human role is the recoverability
    of an automation failure that the designers did not anticipate.
    The case anchors arguments against full-automation of strategic
    decisions.
  ],
  literature-items: (
    [Hoffman (2009), _The Dead Hand_],
    [Sagan, _The Limits of Safety_ (1993)],
    [Cummings (2017) on automation in critical decision systems],
  ),
  reflection-list: (
    [Identify an automated system in your domain where retaining a human-in-the-loop is genuinely capability-engineering rather than ceremonial. How would you tell the difference?],
    [Petrov's "funny feeling" was contextual judgment built across a career. Design the training that produces it deliberately.],
    [Petrov's recoverability lived as much in his latitude to override as in his judgment. Map an automated decision in your domain where the operator has the knowledge to catch a failure but lacks the authority to act on it — and redesign the authority structure.],
  ),
  approaches: (
    during: (
      [Where automation feeds an irreversible decision, design the human role to be a genuine override — with the context, judgment cues, and authority to refuse a faulty alert, not merely relay it.],
      [Give operators a strategic picture against which to weigh an alert, so an anomalous signal can be tested against what a real event would look like.],
      [Treat unimagined failure modes as a design assumption: keep a human in the loop precisely where no automated check can cover the unanticipated.],
    ),
    after: (
      [When a failure mode surfaces, modify the algorithm and archive the scenario in training so the lesson persists as institutional memory.],
      [Audit whether human-in-the-loop roles still carry real override authority over time, or have decayed into ceremonial relays.],
      [Preserve and refresh the contextual judgment override depends on through deliberate training, so the capability does not erode between rare events.],
    ),
  ),
  courses: ("LEN 2",),
  scale: "big",
  induced-anchor: "3.4",
  lens-anchor: "D3/PT6",
  clo-anchor: "CLO-3",
)

// ---- Case 132 — f-22-obogs-hypoxia-the-sustainment-era ----
#case(
  number: 132,
  slug: "f-22-obogs-hypoxia-the-sustainment-era",
  title: "F-22 OBOGS Hypoxia — The Sustainment-Era Instrumentation Gap",
  year: "2008 – 2012",
  domains-list: ("aviation", "defense", "human factors"),
  modes-code: "HKN",
  impact: "Between 2008 and 2012 USAF F-22 Raptor pilots reported a cluster of physiological events consistent with hypoxia; one fatal accident (Capt. Jeffrey Haney, Nov 2010) was attributed in part to operator response to a bleed-air shutoff; the fleet was stood down in 2011, and the USAF Scientific Advisory Board found no single root cause but a contributing oxygen-delivery issue rooted in the On-Board Oxygen Generation System (OBOGS) and associated equipment",
  kind: "failure",
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "2.4",
  lens-anchor: "D4/PT5",
  clo-anchor: "CLO-4, CLO-3",
  summary: [
    Between 2008 and 2012 the USAF accumulated a cluster of F-22
    Raptor "physiological events" — pilot reports consistent with
    hypoxia, often with persistent post-flight symptoms (chronic
    cough, disorientation). One fatal class-A accident in November
    2010 (Capt. Jeffrey Haney) was attributed in part to operator
    response after a bleed-air shutoff. In May 2011 the USAF stood
    the fleet down for several months. The USAF Scientific Advisory
    Board's investigation, with NASA contribution, found *no single
    root cause* — the load-bearing finding of the case. The set of
    contributing factors included the On-Board Oxygen Generation
    System (OBOGS) and its associated equipment (regulators, hoses,
    upper-pressure-garment vest), aircrew flight equipment fit,
    and the absence of in-cockpit physiological monitoring that
    would have permitted earlier detection. The case is the
    canonical recent instance of a sustainment-era failure whose
    diagnosis was protracted because the system as fielded had no
    instrumentation of the variable that mattered — pilot blood
    oxygenation — and the failure mode therefore had to be
    inferred from pilot self-report and incident clustering.
  ],
  sections: (
    [
      The F-22 Raptor entered operational service in 2005. Like
      most modern fighters it uses an On-Board Oxygen Generation
      System (OBOGS) rather than carrying liquid oxygen — a
      molecular sieve separates oxygen from engine bleed air to
      supply the pilot's breathing mask. Beginning in 2008, USAF
      Raptor pilots reported a cluster of "physiological events":
      symptoms consistent with hypoxia during flight, often with
      persistent post-flight effects — chronic cough,
      disorientation, exercise intolerance. The cluster did not
      conform to a single platform or sortie profile, and the
      reports accumulated faster than the diagnostic process
      could resolve them.#cn()
    ],
    [
      The forcing event was the loss of Capt. Jeffrey Haney and
      his aircraft in November 2010 over Alaska. The Air Force
      Accident Investigation Board found that a bleed-air leak
      had triggered an automatic bleed-air shutoff, which in
      turn cut OBOGS supply, and that the accident sequence
      involved pilot response under conditions consistent with
      hypoxia. The board's findings were contested by the
      pilot's family and reviewers; what the accident
      crystallized was that the platform's response to an OBOGS
      cutoff placed an unreasonable burden on pilot recognition
      and reaction in a window the platform did not instrument.
      In May 2011 the USAF stood the entire F-22 fleet down for
      several months pending investigation.#cn()
    ],
    [
      The USAF Scientific Advisory Board investigation, with
      participation from NASA's review of the hypoxia incidents,
      reported the load-bearing finding the case turns on: there
      was *no single root cause*. The contributing factors
      included the OBOGS system and its associated equipment
      (regulators, hose configurations, the upper-pressure
      garment vest that under some conditions inhibited normal
      breathing), aircrew flight-equipment fit issues, and the
      absence of in-cockpit physiological monitoring. The
      investigation made several corrective recommendations —
      including modifications to the upper-pressure garment,
      changes to OBOGS components, and the addition of
      physiological monitoring during flight — and the symptom
      reporting decreased substantially in the period after
      implementation.#cn()
    ],
    [
      What makes this a sustainment-era case rather than a
      design-era one is the instrumentation gap. The F-22 as
      fielded had no in-cockpit measurement of the pilot's
      oxygenation or of the actual gas composition reaching the
      mask. The variable that mattered most for the failure mode
      — was the pilot getting enough oxygen? — had to be
      inferred from pilot self-report after the fact. The
      diagnostic process took years partly because the
      population of events had to be characterized statistically
      from a noisy reporting channel, and partly because the
      multi-cause structure of the failure made any single
      intervention only partially testable against the
      population.#cn()
    ],
    [
      The hedge survives into the case verbatim. The USAF SAB
      explicitly declined to identify a single root cause, and
      the corrective actions were a bundle: garment modification,
      OBOGS component changes, training emphasis on hypoxia
      recognition, and the long-overdue addition of
      physiological monitoring. Symptom reports decreased after
      the bundle was implemented, but the attribution of the
      decline to any single component within the bundle is not
      possible from the available evidence. The case teaches the
      sustainment-instrumentation-gap form: a high-performance
      platform fielded without measurement of the
      operator-physiology variable that determines whether the
      mission can be completed, and a diagnostic process forced
      to work from self-report and clustering because the
      platform did not surface the data.
    ],
  ),
  beats: (
    "F-22 physiological-event cluster 2008–2012; symptoms consistent with hypoxia, often with persistent post-flight effects",
    "Capt. Haney fatal accident Nov 2010 — bleed-air shutoff cut OBOGS supply; AIB findings contested but the burden on pilot recognition is clear",
    "USAF fleet stood down May 2011; USAF SAB and NASA review",
    "Load-bearing finding: no single root cause; contributing factors include OBOGS, upper-pressure-garment vest, aircrew equipment fit, absence of in-cockpit physiological monitoring",
    "Symptom reports decreased after bundle of corrections; attribution to any single component not possible from available evidence",
  ),
  approaches: (
    during: (
      [Instrument the operator-physiology variable that determines mission completion before fielding a high-performance platform. The F-22 OBOGS case is the worked example of the cost of fielding without it: years of self-report-based diagnosis and one fatality.],
      [When a failure-event cluster does not conform to a single platform or sortie profile, treat the absence of a single root cause as a finding, not as a failure of the investigation. The bundle of contributing factors is the diagnosis.],
      [Design the platform's automatic responses (e.g., bleed-air shutoff) with the pilot's recognition window in mind; an automatic action that cuts a life-critical supply has to be paired with cueing the pilot can act on in time.],
    ),
    after: (
      [Implement the corrective actions as a bundle — garment modification, OBOGS components, training, physiological monitoring — and report the population-level outcome decline as bundle evidence, not as evidence about any single component.],
      [Carry the "no single root cause" hedge into program communication; the multi-cause structure is the case's teaching point and the basis for the sustainment-instrumentation argument.],
      [Treat the F-22 OBOGS experience as a fielded-platform sustainment lesson for subsequent platforms (e.g., F-35) — the analogous instrumentation question should be answered before the cluster appears, not after.],
    ),
  ),
  references: (
    [USAF Scientific Advisory Board (2012), "Aircraft Oxygen Generation Study" — final report on F-22 physiological-event investigation.],
    [NASA Engineering and Safety Center (2012), report contributing to the F-22 hypoxia review.],
    [USAF Accident Investigation Board (2011), Capt. Jeffrey Haney F-22 accident report (Nov 2010).],
    [GAO-12-789 (2012), "Actions Needed to Establish Effective Oversight of F-22 Pilot Physiological Issues" — congressional record.],
  ),
  quote: [The variable that mattered most — was the pilot getting enough oxygen? — was the variable the platform did not measure.],
  quote-source: "Editors' synthesis of the USAF SAB and NASA reviews.",
  le-insight: [
    F-22 OBOGS is the canonical recent sustainment-instrumentation-
    gap case. A high-performance platform was fielded without
    in-cockpit measurement of pilot oxygenation, the diagnostic
    process took years against a noisy self-report channel, and
    the corrective action was an irreducibly multi-cause bundle.
    The "no single root cause" finding is the case.
  ],
  lens-approach: [
    F-22 OBOGS is the aerospace instrumentation-gap case
    (induced 2.4; LENS D4/PT5). LENS uses it in Domain 4
    (Test and Evaluation) for the no-single-root-cause finding
    and the bundle-of-corrections evaluation problem, and in
    Domain 3 (Human-System Collaboration) for the operator
    burden when an automatic action cuts a life-critical
    supply. Pair with Case 108 (EVA-23) as the human-
    spaceflight instrumentation-gap companion and with
    Case 27 (anesthesia monitoring) at the cue/alert-as-
    capability layer.
  ],
  literature-items: (
    [USAF SAB (2012), Aircraft Oxygen Generation Study],
    [NASA ESC (2012), F-22 hypoxia review contribution],
    [GAO-12-789 (2012), F-22 pilot physiological issues],
  ),
  reflection-list: (
    [Identify a fielded high-performance platform in your domain where the variable that determines mission completion is not directly measured. What is the analog of in-cockpit physiological monitoring, and what would it cost to add at sustainment vs. having designed it in?],
    [Specify what your program would treat as "no single root cause" — the irreducibly multi-factor finding — and how you would report bundle-of-corrections evidence rather than overstating attribution to any single change.],
    [The F-22 cluster appeared in 2008 and stand-down came in 2011. What signal-detection threshold would your program use on a noisy self-report channel to act earlier on a population-level pattern?],
  ),
  courses: ("LEN 3", "LEN 5", "LEN 7"),
)

// ---- Case 133 — mark-14-torpedo-failures ----
#case(
  number: 133,
  slug: "mark-14-torpedo-failures",
  title: "Mark 14 Torpedo Failures",
  year: "1941 – 1943",
  domains-list: ("defense",),
  modes-code: "TKG",
  impact: "Persistent torpedo failures across the first ~20 months of the Pacific War; resolved only after fleet-level testing forced acknowledgment of the defects",
  diagram: dgm.dgm-cascade(
    ("magnetic exploder fails",
     "contact pin bends on direct hit",
     "torpedo runs deep",
     "BuOrd: \"the weapon is fine\""),
    outcome: "submariners forced to use a weapon their bureau refused to repair",
    caption: "Mark 14 — multiple defects, single institutional refusal",
  ),
  kind: "failure",
  summary: [
    The U.S. Navy entered World War II with the Mark 14 torpedo, so
    expensive that the Bureau of Ordnance had effectively forbidden
    live testing in peacetime. Through 1942 submarine crews reported
    torpedoes running deep, failing to detonate, or exploding
    prematurely; the Bureau insisted the weapon was sound and blamed
    the operators. It took about twenty months and the personal intervention
    of Admiral Charles Lockwood — who ordered fleet-level live-fire
    tests — to confirm three separate defects: the torpedo ran about
    ten feet too deep, its magnetic exploder fired erratically, and its
    contact pin crushed on a square hit. The fixes were simple once the
    defects were acknowledged. The binding constraint was institutional:
    a bureau insulated from the operators who knew the weapon did not work.
  ],
  sections: (
    // -- Background --
    [
      The Mark 14 was the U.S. Navy's standard submarine torpedo at the
      start of the Pacific War. It had been so expensive to test that
      the Bureau of Ordnance had effectively forbidden live trials in
      the 1930s; the weapon went to war essentially unproven against
      realistic conditions, so the very decision meant to conserve a scarce
      and costly weapon guaranteed that its defects would first be discovered
      in combat, by the crews who could least afford them to surface there.#cn()
    ],
    // -- What Happened --
    [
      From early 1942, submarine crews reported a litany of failures:
      torpedoes that ran far below their set depth, magnetic exploders
      that detonated prematurely or not at all, and contact firing pins
      that crushed on a direct hit. The Bureau of Ordnance insisted the
      weapon worked and attributed the misses to crew error; captains
      who reported failures risked their careers — an arrangement that turned
      every field report into a self-accusation and so suppressed the very
      evidence that would have isolated the defects the Bureau refused to
      acknowledge.#cn()
    ],
    // -- The Investigation --
    [
      It took about twenty months and the intervention of Admiral Charles
      Lockwood, commander of the Pacific submarine force, who ordered
      fleet-level testing. A live-fire trial — and the USS Tinosa's
      July 1943 attack on the Tonan Maru, in which eleven torpedoes struck
      the stopped ship squarely and failed to detonate — forced the issue.
      The tests confirmed the
      torpedo ran about ten feet too deep, that the Mark 6 magnetic
      exploder failed routinely, and that the contact pin buckled on
      perpendicular impact — three independent defects that had been masking
      one another at sea, which is why a fleet commander's controlled trial,
      not another combat patrol, was finally able to separate and prove them.#cn()
    ],
    // -- The Capability Gap --
    [
      The defects were real and separate, but the binding constraint was
      institutional. The capability that was missing was not at the
      front; it was a channel by which the bureau that owned the weapon
      could be made to hear what the boats already knew. The fixes —
      recalibrating depth, deactivating the magnetic exploder, redesigning
      the contact pin — were small. The refusal to believe the operators
      was the expensive part, measured not in engineering hours but in the
      months of patrols and the targets that escaped while a bureau defended
      a verdict the boats had already disproven.#cn()
    ],
    // -- Aftermath & Reform --
    [
      By late 1943 the three defects were corrected and the Mark 14
      became an effective weapon for the rest of the war. The episode
      entered U.S. Navy institutional history as the canonical case of a
      procurement bureau insulated from operator feedback, and is cited
      in modern organizational-learning literature on the cost of
      suppressing field reports — a reminder that the structure that decides
      whose evidence counts is itself a capability, and that its absence can
      cost more than any single technical defect it conceals.#cn()
    ],
  ),
  beats: (
    "The Bureau of Ordnance had effectively forbidden live trials, so the Mark 14 went to war unproven",
    "Submarine crews reported deep runs, premature detonations, and crushed contact pins from early 1942",
    "Lockwood ordered fleet tests; Tinosa's eleven duds on a stopped target finally separated the three defects",
    "The binding gap was a channel by which the bureau could be made to hear what the boats already knew",
    "By late 1943 the three defects were corrected; the episode became the canonical insulated bureau case",
  ),
  references: (
    [Blair, C. (1975), _Silent Victory: The U.S. Submarine War Against Japan_ — operator reports and the Bureau's resistance (paraphrased).],
    [Rowland, B. & Boyd, W. (1953), _U.S. Navy Bureau of Ordnance in World War II_ — testing policy and the three defects.],
    [Blair (1975) — the USS Tinosa's July 1943 attack (eleven consecutive duds on a stopped target) and Lockwood's fleet-level testing.],
    [Naval History and Heritage Command, Mark 14 torpedo files — depth error, Mark 6 magnetic exploder, contact-pin failure.],
    [Edmondson, A. (2018), _The Fearless Organization_ — suppression of field reports as an organizational-learning failure.],
  ),
  quote: [The Bureau certified the weapon; field reports of failure were treated as evidence of operator error.],
  quote-source: "Paraphrasing Blair, Silent Victory, 1975",
  le-insight: [
    The Mark 14 is the canonical Navy case for the institutional refusal
    to believe operator feedback. The capability that was missing was
    not at the front. It was at the bureau that owned the weapon. The
    cost of the refusal was paid by the submariners forced to use it
    until the bureau yielded. The eventual fixes — re-setting depth
    calibration, replacing the magnetic exploder, redesigning the
    contact pin — were technical and small. The reform was
    institutional and slow. The capability that had to be built was
    the channel by which the bureau could be made to hear what the
    boats already knew.
  ],
  lens-approach: [
    LENS uses the Mark 14 in LEN 7 as a governance failure case and in
    LEN 8 as an organizational-learning case in which the operators had
    the diagnosis and the institution lacked the structure to receive
    it. Studio projects (LEN 10) examine what the equivalent
    operator-to-institution feedback channel should look like.
  ],
  literature-items: (
    [Blair (1975), _Silent Victory_],
    [Rowland & Boyd (1953)],
    [Edmondson (2018), _The Fearless Organization_],
  ),
  reflection-list: (
    [Identify a system in your domain whose owners are institutionally insulated from the operators using it. What feedback would they refuse to hear, and what would it cost?],
    [Design the operator-feedback channel that the U.S. Navy Bureau of Ordnance should have had in 1941. Who signs, who receives, what triggers action?],
    [The USS Tinosa fired a string of torpedoes that struck a stopped ship and failed to detonate before the bureau accepted the diagnosis. What is the operator-evidence threshold in your domain that would force the equivalent institutional acknowledgment — and how would you make sure it is reached before the cost is paid?],
  ),
  approaches: (
    during: (
      [Require realistic live testing before fielding, even for scarce and costly items, so defects surface in trials rather than in combat.],
      [Build an operator-feedback channel into the weapon's ownership from the start, with a path that does not put the reporter's career at risk.],
      [Separate the authority that certifies a system from the authority that investigates its field failures, so a bureau cannot judge its own product.],
    ),
    after: (
      [Audit field reports for suppressed or career-risking signals, and treat a pattern of "operator error" verdicts as a warning to test the system, not the crew.],
      [Empower an operational commander to order controlled trials when field reports conflict with the owner's certification.],
      [Sustain the feedback channel so multiple masking defects can be separated and proven before the cost compounds.],
    ),
  ),
  courses: ("LEN 10", "LEN 7", "LEN 8"),
  scale: "big",
  induced-anchor: "6.2",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-5",
)

// ---- Case 134 — v-22-osprey ----
#case(
  number: 134,
  slug: "v-22-osprey",
  title: "V-22 Osprey",
  year: "1991 – present",
  domains-list: ("defense",),
  modes-code: "THN",
  impact: "~65 killed across ~17 hull-loss accidents since 1991; serious-mishap rate above comparable fleets (GAO-26-108905, 2025); some fixes stretch to the 2030s",
  diagram: dgm.dgm-osprey,
  kind: "failure",
  summary: [
    The V-22 Osprey — the tiltrotor flown by the Marines, Air Force, and
    Navy — has had about 17 hull-loss accidents and roughly 65 fatalities
    since 1991, including 19 Marines in a single 2000 test crash and 8
    airmen off Yakushima, Japan, in 2023. The Yakushima crash traced to
    cracks in a transmission gear (a flaw in the X-53 steel alloy) and a
    pilot's decision to keep flying through warnings. In December 2025, GAO
    and a NAVAIR review found the V-22's joint program office had failed for
    years to assess and address mounting safety risks, that serious-mishap
    rates exceeded comparable fleets, and that some fixes stretch toward
    2034. The Osprey is the steady-state form of normalization of deviance:
    a documented, reviewed shortfall accepted as the cost of flying the
    airframe.
  ],
  sections: (
    // -- Background --
    [
      The V-22 Osprey tilts its rotors to take off like a helicopter and
      cruise like a turboprop — an ambitious capability shared awkwardly
      across three services and a joint program office. Since development
      began in the 1980s it has suffered about 17 hull-loss accidents and
      roughly 65 fatalities, including 19 Marines in a single crash during
      2000 testing.#cn() The same configuration that makes the tiltrotor
      uniquely useful makes it uniquely demanding to sustain, and the joint
      arrangement diffused ownership of that burden across three services that
      each carried the airframe but none of which fully owned its safety
      trajectory.
    ],
    // -- What Happened --
    [
      On 29 November 2023 a CV-22B broke up off Yakushima, Japan, killing
      all eight airmen aboard. The Air Force traced it to cracks in a
      transmission gear — rooted in metallic inclusions in the X-53 steel
      alloy used for the gears — and to the pilot's decision to keep flying
      despite warnings to land. The crash grounded Osprey fleets worldwide
      for months.#cn() The materiel flaw and the human decision to press on
      through warnings were the same paired factors earlier reviews had named,
      so Yakushima read less as a novel failure than as one more draw from a
      pattern the program had already characterized but not closed.
    ],
    // -- The Investigation --
    [
      In December 2025 the Government Accountability Office and a NAVAIR
      review reported together that the joint program office had failed for
      years to adequately assess and address mounting safety risks, even as
      service members died.#cn() Serious-mishap rates generally exceeded
      those of comparable Navy and Air Force fixed- and rotary-wing fleets
      from FY2015 to FY2024 and spiked in 2023–2024; a gearbox flaw dating to
      2006 was not evaluated until 2024, and full fixes for some issues are
      not expected until the 2030s.#cn() An eighteen-year gap between a
      gearbox flaw arising and its being evaluated is the timescale of
      normalization made literal: the deviation persisted long enough to
      become the airframe's accepted background condition rather than an open
      defect demanding action.
    ],
    // -- The Capability Gap --
    [
      The V-22 is the steady-state form of normalization of deviance. The
      shortfall is not unknown — it has been documented across successive
      reviews — but the system built to remediate it has accepted its own
      incompleteness as the cost of operating the airframe. Each crash
      carries a familiar set of factors (materiel failure, human error, weak
      coordination across the three services), and each is followed by
      adjustments that do not converge.#cn() Convergence is the missing
      property: three services adjusting in parallel, none holding final
      authority over the whole, produce motion without resolution, so the
      mishap rate stays elevated while every individual response looks
      reasonable on its own terms.
    ],
    // -- Aftermath & Reform --
    [
      Groundings, gear-inspection regimes, and a redesign program have
      followed, with full fixes for some gearbox issues stretching toward
      2034. The case is instructive precisely because the problem is
      recognized: a known, reviewed capability gap can persist for decades
      when each incident is treated as an isolated event rather than a sample
      from a distribution the program keeps drawing from.#cn() Fixes that
      stretch toward 2034 mean the airframe will keep flying for years inside
      a margin already judged worse than comparable fleets — the program in
      effect electing to operate the distribution it has been told it is
      drawing fatalities from.
    ],
  ),
  beats: (
    "Tiltrotor shared awkwardly across three services has logged seventeen hull losses since 1991",
    "Yakushima crash killed eight after gear cracks and a pilot pressing through warnings",
    "GAO and NAVAIR found years of unaddressed risk, elevated mishap rates, eighteen-year gearbox lag",
    "Documented shortfall persists because parallel service adjustments never converge on resolution",
    "Groundings and redesigns continue while full gearbox fixes stretch toward 2034",
  ),
  references: (
    [#link("https://en.wikipedia.org/wiki/Accidents_and_incidents_involving_the_V-22_Osprey")[Compiled V-22 accident record] — ~17 hull losses and ~65 fatalities since 1991, including the 2000 Marana test crash (19 Marines).],
    [U.S. Air Force Accident Investigation Board findings, via #link("https://news.usni.org/2024/08/02/investigation-into-2023-u-s-air-force-cv-22b-osprey-crash-off-japan")[USNI News] (Aug. 2024) — the 29 Nov. 2023 Yakushima CV-22B crash: transmission-gear cracks (X-53 inclusions) and continued flight despite warnings.],
    [U.S. GAO, _Osprey Aircraft: Additional Oversight and Information Sharing Would Improve Safety Efforts_, #link("https://files.gao.gov/reports/GAO-26-108905/index.html")[GAO-26-108905] (Dec. 2025) — the joint program office's failure to assess and address risks.],
    [GAO-26-108905 (2025) — serious-mishap rates exceeding comparable Navy/Air Force fleets (FY2015–FY2024); the 2006 gearbox flaw evaluated only in 2024; fixes into the 2030s.],
    [NAVAIR independent review of the V-22 (Dec. 2025) — materiel and cross-service-coordination factors and unresolved catastrophic parts issues.],
    [#link("https://news.usni.org/2025/12/12/navy-and-gao-reports-v-22-osprey-program")[USNI News, V-22 program coverage] (2024–2025).],
  ),
  quote: [Materiel failure and human-error factors were the most frequently cited causal factors in serious Osprey accidents.],
  quote-source: "Paraphrasing the NAVAIR Independent Review of the V-22, 2025",
  le-insight: [
    V-22 demonstrates the steady-state version of normalization of
    deviance: a platform whose shortfall has been documented, reviewed,
    and acted on across multiple administrations without producing
    sustained improvement. The capability gap has itself been normalized.
    Each incident is treated as an event rather than as a sample from a
    distribution the program continues to draw from.
  ],
  lens-approach: [
    LENS treats V-22 in LEN 5 as a multi-service capability-coordination
    problem and in LEN 8 as a study in long-cycle organizational
    learning failure. Students design the evidence system that would
    distinguish a true reduction in mishap rate from the natural
    variation of a chronically marginal platform.
  ],
  literature-items: (
    [Rasmussen (1997), "Risk management in a dynamic society"],
    [Weick, "Organizational Culture as a Source of High Reliability" (1987)],
    [Snook, _Friendly Fire_ (2000)],
  ),
  reflection-list: (
    [Identify a platform or process in your domain that has been operating in a documented shortfall for years. What measurement would have to change for the shortfall to become unacceptable?],
    [The V-22's three services do not converge on remediation. Design the governance structure that would force convergence.],
    [A gearbox flaw went eighteen years between arising and being evaluated. What mechanism in your domain converts a long-tolerated defect back into an open item that demands action?],
  ),
  approaches: (
    during: (
      [Assign one accountable owner for the airframe's safety trajectory rather than diffusing it across three services with no final authority.],
      [Treat each known materiel flaw as an open defect on a clock, so a problem like the gearbox cannot quietly become accepted background condition.],
      [Define an absolute mishap-rate threshold against comparable fleets that triggers mandatory action, not merely review.],
    ),
    after: (
      [Aggregate incidents as samples from one distribution, not isolated events, so the elevated rate itself becomes the thing being managed.],
      [Audit whether parallel service-level adjustments are actually converging on a lower rate, and escalate when they are not.],
      [Gate continued operation on remediation progress, so fixes stretching toward 2034 do not silently license years of degraded margin.],
    ),
  ),
  courses: ("LEN 5", "LEN 8", "LEN 3",),
  scale: "big",
  induced-anchor: "7.4",
  lens-anchor: "D5/PT4",
  clo-anchor: "CLO-5",
  evidence-source: "investigation",
)

// ---- Case 135 — 9-11-intelligence-sharing-failures ----
#case(
  number: 135,
  slug: "9-11-intelligence-sharing-failures",
  title: "9/11 Intelligence Sharing Failures",
  year: "1996 – 2001",
  domains-list: ("defense", "gov"),
  modes-code: "GK",
  impact: "2,977 killed; the 9/11 Commission found systemic intelligence-sharing failures across the U.S. government",
  diagram: dgm.dgm-ring(
    "?",
    ("CIA", "FBI", "NSA", "INS", "State", "FAA"),
    framing: "no institution responsible for the integration as a deliverable",
    caption: "9/11 — cross-agency information sharing as missing architecture",
  ),
  kind: "failure",
  summary: [
    The September 11, 2001 attacks, which killed 2,977 people, were
    enabled in part by intelligence the U.S. government already held but
    never integrated. The CIA knew, from a January 2000 meeting in Kuala
    Lumpur, that two future hijackers had entered the country; it did not
    tell the FBI. The FBI separately flagged suspicious flight-training
    activity in Phoenix and Minneapolis in 2001, but that information was
    never aggregated. Visa issuance, immigration tracking, and
    watch-listing were each run by a different agency, and the handoffs
    between them depended on individual initiative that no institution
    required. The 9/11 Commission called it a "failure of imagination" — a
    framing critics say understates the structural gap. The reform that
    followed built the cross-agency architecture, the ODNI and the NCTC,
    that had not existed.
  ],
  sections: (
    // -- Background --
    [
      By 2001, U.S. counterterrorism depended on many agencies — CIA, FBI,
      NSA, State, INS, FAA — each holding a piece of the picture. No
      institution was responsible for integrating those pieces; cross-agency
      information sharing depended on individuals choosing to pass
      information along rather than on any architecture that required it.
      Each agency's incentives, classification rules, and turf reinforced the
      boundary, so the natural tendency was to hold information rather than to
      push it across a line no one was charged with bridging.#cn()
    ],
    // -- What Happened --
    [
      On 11 September 2001, nineteen hijackers seized four aircraft and
      killed 2,977 people. In the months and years before, the warning
      signs had been distributed across the government: the CIA tracked two
      future hijackers from a January 2000 meeting in Kuala Lumpur but did
      not watch-list them or notify the FBI; FBI field offices flagged
      suspicious flight-training activity in Phoenix and Minneapolis; none
      of it was aggregated into a single picture. Any one fragment looked
      minor in isolation; only assembled would they have shown the shape of
      the plot, and assembly was exactly the function no one performed.#cn()
    ],
    // -- The Investigation --
    [
      The 9/11 Commission and the earlier Congressional Joint Inquiry
      documented specific failures of information sharing across the FBI,
      CIA, and NSA. The Commission famously concluded that "the most
      important failure was one of imagination" — a framing later
      criticized as understating the structural nature of the gap, which
      was less a lack of imagination than an absence of any institution
      responsible for integration. The distinction matters for the remedy: a
      failure of imagination invites exhortation to think harder, while a
      structural gap demands an institution be built to close it.#cn()
    ],
    // -- The Capability Gap --
    [
      The intelligence sharing did not happen because no institution owned
      it as a deliverable. Each agency was competent inside its own
      boundary; the integration across boundaries existed nowhere as a
      required function. The missing capability was an architecture —
      shared watch-lists, mandated handoffs, a body responsible for fusing
      the picture — rather than more raw collection. The government did not
      lack data; it lacked the connective tissue to turn data held in many
      places into a single picture anyone was accountable for assembling.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The Intelligence Reform and Terrorism Prevention Act of 2004 created
      the Office of the Director of National Intelligence and the National
      Counterterrorism Center, and fusion centers followed — the
      institutional architecture for cross-agency information sharing that
      had not previously existed. By creating bodies whose explicit mandate
      was integration, the reform converted information sharing from an act
      of individual initiative into a required function someone owned. The
      case is foundational in U.S. national-security policy for treating
      cross-agency capability as an engineerable institutional deliverable.#cn()
    ],
  ),
  beats: (
    "Multiple agencies held pieces; no institution owned integration as a required architectural function",
    "CIA tracked future hijackers from Kuala Lumpur; FBI flagged flight training; none aggregated",
    "9/11 Commission and Joint Inquiry documented specific sharing failures across FBI, CIA, NSA",
    "Architecture was missing; shared watch-lists, mandated handoffs, and a fusion body existed nowhere",
    "2004 Intelligence Reform Act created ODNI and NCTC, building integration as institutional deliverable",
  ),
  references: (
    [National Commission on Terrorist Attacks Upon the United States, _The 9/11 Commission Report_ (2004) — the quoted "failure of imagination" and the specific sharing failures.],
    [_9/11 Commission Report_ (2004) — the Kuala Lumpur tracking and the Phoenix/Minneapolis flagging.],
    [_Joint Inquiry into Intelligence Community Activities Before and After September 11, 2001_ (2002) — cross-agency information-sharing failures.],
    [Zegart, A. (2007), _Spying Blind_ — structural-organizational analysis of the failures.],
    [Intelligence Reform and Terrorism Prevention Act of 2004 — creation of the ODNI and NCTC.],
  ),
  quote: [The most important failure was one of imagination.],
  quote-source: "The 9/11 Commission Report, 2004",
  le-insight: [
    9/11 is the foundational U.S. case for cross-agency information-
    sharing as an engineering deliverable. The architecture had not
    been built. The reform built it. The cost of the missing
    architecture was paid in 2001. The discipline LENS represents is
    the kind of work that, applied across the U.S. intelligence
    community in the 1990s, would have produced the architecture
    earlier.
  ],
  lens-approach: [
    LENS uses 9/11 in LEN 8 as the foundational case for cross-
    organizational capability and in LEN 7 for the governance
    architecture of multi-agency systems. Studio projects compare
    9/11 with Eagle Claw (Case 128) as institutional-architecture
    failures of different kinds.
  ],
  literature-items: (
    [9/11 Commission Report (2004)],
    [Zegart, _Spying Blind_ (2007)],
    [Posner, _Preventing Surprise Attacks_ (2005)],
  ),
  reflection-list: (
    [Identify a cross-organizational information flow in your domain that depends on individual initiative rather than institutional architecture. What is the foreseeable failure mode?],
    [Design the institutional deliverable that would have produced ODNI-level information sharing across U.S. intelligence agencies in the 1990s.],
    [The Commission called it a "failure of imagination"; critics called it a structural gap. Take a near-miss in your domain and argue which framing fits — and show how the remedy differs depending on which you choose.],
  ),
  approaches: (
    during: (
      [Assign integration as an explicit deliverable owned by a named body, so the function does not depend on individuals choosing to pass information across a boundary.],
      [Engineer mandated handoffs and shared watch-lists into the architecture, making cross-agency sharing a required function rather than an act of initiative.],
      [Design for fusion of fragments that look minor in isolation, so the system is built to assemble the picture no single holder can see.],
    ),
    after: (
      [Audit cross-boundary information flows for reliance on individual initiative, and treat any flow that depends on goodwill as an unowned failure mode.],
      [Monitor whether the integrating body actually receives and fuses what the component agencies hold, rather than assuming the mandate guarantees the practice.],
      [Sustain the integration architecture against the agency incentives, classification rules, and turf that pull information back behind boundaries over time.],
    ),
  ),
  courses: ("LEN 7", "LEN 8", "LEN 3",),
  scale: "big",
  induced-anchor: "5.3",
  lens-anchor: "D5/PT1",
  clo-anchor: "CLO-5",
)
