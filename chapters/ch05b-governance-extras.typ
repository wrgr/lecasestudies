// ============================================================
// Chapter 5 — Governance Failures (extras)
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#case(
  number: 68,
  title: "UK Post Office Horizon Scandal",
  year: "1999 – 2015",
  domains-list: ("tech", "gov"),
  modes-code: "GHK",
  impact: "~900 sub-postmasters wrongfully prosecuted; many imprisoned; documented suicides; described as the most widespread miscarriage of justice in UK history",
  diagram: dgm.dgm-stat(
    "900",
    "wrongful prosecutions across 20+ years",
    micro: "\"the computer said so\" was an institutionally sufficient basis for conviction",
    caption: "Horizon — institutional deference to an algorithm known to be flawed",
  ),
  body: [
    The Post Office's Horizon IT system, developed by Fujitsu and
    deployed in 1999, produced systematic accounting errors in sub-
    postmasters' branch ledgers. The Post Office prosecuted hundreds
    of sub-postmasters for theft and false accounting on the basis of
    these errors, refusing for two decades to accept that the system
    itself was at fault. Internal Post Office and Fujitsu documents,
    later released through litigation, showed that engineers had known
    about software bugs throughout the period.

    By the time the Court of Appeal began quashing convictions in
    2021, sub-postmasters had served prison sentences, lost homes, and
    been driven to bankruptcy and suicide. The Williams Inquiry, which
    began in 2020 and continues, has documented one of the most
    extensively evidenced institutional cover-ups in UK history.

    The capability gap was at the regulator, the prosecutor, and the
    courts: each accepted Fujitsu's representation that Horizon was
    reliable, despite documentation to the contrary, because no
    institutional actor had the standing or expertise to challenge it.
    The case is the strongest available evidence that "the computer
    said so" is a governance hazard.
  ],
  quote: [A number of senior, and not so senior, employees of the Post Office knew, or at the very least should have known, that Legacy Horizon was capable of error.],
  quote-source: "Sir Wyn Williams, Post Office Horizon IT Inquiry, Volume 1, 2024",
  sources-list: (
    [Post Office Horizon IT Inquiry hearings and exhibits (2020–)],
    [_Hamilton & Others v. Post Office Limited_ (2021)],
    [Wallis, _The Great Post Office Scandal_ (2021)],
  ),
  le-insight: [
    Horizon is the canonical case for institutional deference to
    automated systems whose internal evidence was already known to be
    flawed. The capability gap was at every layer that took the
    software's output as authoritative — including the courts.
    "The computer said so" became, for two decades, an
    institutionally sufficient basis for criminal prosecution.
  ],
  lens-approach: [
    LENS uses Horizon in LEN 7 as the canonical example of
    institutional deference to algorithmic output and in LEN 8 for the
    most extensive multi-decade automation-bias case in the dataset.
    Studio projects examine what evidentiary architecture would
    require *interrogating* automated output before acting on it.
  ],
  literature-items: (
    [Wallis (2021), _The Great Post Office Scandal_],
    [Post Office Horizon IT Inquiry hearings],
    [Cummings (2017), automation bias literature],
  ),
  reflection-list: (
    [Identify a decision in your domain currently made on the strength of "the computer said so." What evidentiary architecture should sit beside the output?],
    [Design the institutional check that would have made Horizon's reliability subject to genuine challenge in 2005.],
  ),
  courses: ("LEN 7", "LEN 8"),
)

#case(
  number: 69,
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
  body: [
    Theranos claimed to have developed a blood-testing platform that
    could perform hundreds of laboratory tests from a finger-stick
    drop of blood. The platform did not work. Internal data showed
    accuracy far below what the company represented to investors,
    partners, and patients. To preserve the appearance of a working
    product, Theranos ran most patient samples on conventional
    commercial analyzers and reported the results as though they had
    come from its proprietary device.

    The capability gap was at the FDA-CLIA boundary: the regulatory
    architecture that governs laboratory testing did not match the
    architecture of the company's product claims. Theranos exploited
    the gap deliberately. The board, the investors, and the
    pharmacy-partner Walgreens did not have the technical depth to
    challenge the claims. The journalist John Carreyrou did.

    Elizabeth Holmes was convicted on multiple counts of wire fraud in
    2022. The case is canonical in U.S. business education for
    fraud-as-product-strategy and in healthcare regulation for the
    governance gap that allowed unvalidated clinical tests to reach
    patients.
  ],
  quote: [The company misrepresented to investors, regulators, and ultimately patients the accuracy of its blood-testing technology.],
  quote-source: "U.S. v. Holmes, indictment, 2018",
  sources-list: (
    [_United States v. Elizabeth Holmes_ (N.D. Cal. 2018–2022)],
    [Carreyrou, _Bad Blood_ (2018)],
    [CMS revocation of Theranos CLIA certificate (2016)],
  ),
  le-insight: [
    Theranos is the canonical case for fraud exploiting the seam
    between two regulatory regimes. The FDA had not approved the
    device; CLIA accepted the laboratory operation. Neither layer had
    the capability to validate the claims independently. The
    capability gap was at the regulatory architecture.
  ],
  lens-approach: [
    LENS uses Theranos in LEN 7 for the regulatory-seam failure and
    in LEN 2 for the measurement-validation gap. The case demonstrates
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
  ),
  courses: ("LEN 2", "LEN 7"),
)

#case(
  number: 70,
  title: "Wells Fargo Fake Accounts",
  year: "2011 – 2016",
  domains-list: ("tech", "gov"),
  modes-code: "GN",
  impact: "~3.5 million unauthorized accounts opened; ~$3B in penalties; CEO resigned; the Federal Reserve capped the bank's assets",
  diagram: dgm.dgm-stat(
    "3.5M",
    "unauthorized accounts",
    micro: "the incentive architecture made misconduct rational for the front line",
    caption: "Wells Fargo — the measurement system produced the behavior the institution then prosecuted",
  ),
  body: [
    Wells Fargo employees opened approximately three and a half million
    unauthorized customer accounts to meet aggressive sales quotas.
    The behavior was widespread, longstanding, and visible to internal
    risk and compliance functions for years. The institutional
    response was to discipline individual employees as bad apples and
    leave the incentive structure intact. The incentive structure was
    the actual cause: a sales-target architecture that made it
    impossible for most employees to meet quota by ethical means.

    The CFPB action in 2016 was the first major public consequence.
    Subsequent enforcement actions and the Federal Reserve's
    unprecedented asset cap have constrained the bank's growth for
    years. The Wells Fargo case is the canonical example in U.S.
    banking of an institutional incentive structure that produced
    systematic misconduct at the front line, while the institution
    insisted the misconduct was individual.

    The capability gap was the governance failure to recognize that
    the measurement system being used to manage employees was driving
    the behavior the institution claimed to deplore.
  ],
  quote: [Wells Fargo's sales practices were a foreseeable consequence of its incentive compensation structure.],
  quote-source: "OCC Consent Order, Wells Fargo, 2016",
  sources-list: (
    [CFPB Consent Order against Wells Fargo (2016)],
    [OCC Consent Order (2016)],
    [Independent Directors of Wells Fargo, Sales Practices Investigation Report (2017)],
  ),
  le-insight: [
    Wells Fargo is the strongest available evidence that incentive
    architecture is a capability-engineering deliverable. The
    measurement system used to manage employees produced the behavior
    the institution then prosecuted. The gap was not at the front
    line. It was at the governance layer that had designed the
    incentives.
  ],
  lens-approach: [
    LENS uses Wells Fargo in LEN 2 as a measurement-gaming case and
    in LEN 7 for the corporate-governance dynamics that allow such
    incentives to persist for years. Studio projects redesign the
    incentive architecture.
  ],
  literature-items: (
    [Independent Directors Report (2017)],
    [Tirole (2010), corporate-governance theory],
    [Edmondson (2018), _The Fearless Organization_],
  ),
  reflection-list: (
    [Identify a measurement system in your organization that is currently producing the behavior the organization claims to deplore. What is the gap between the measurement and the goal?],
    [Design the incentive architecture for a bank's branch sales force that does not produce a Wells-Fargo-equivalent failure.],
  ),
  courses: ("LEN 2", "LEN 7"),
)

#case(
  number: 71,
  title: "Volkswagen Dieselgate",
  year: "2015",
  domains-list: ("industrial", "gov"),
  modes-code: "DG",
  impact: "~11 million vehicles equipped with defeat-device software; $33B+ in penalties and remediation; multiple criminal convictions",
  diagram: dgm.dgm-compare(
    "test bench",
    "compliant",
    "real world",
    "up to 40×",
    framing: "the protocol operated in a regime the vehicle could detect",
    caption: "Dieselgate — engineered evasion of a measurement system",
  ),
  body: [
    Volkswagen engineers designed software for diesel emissions-control
    systems that detected when the vehicle was on a regulatory test
    bench and turned on full emissions controls only during the test.
    On the road, the controls were largely disabled, producing
    emissions up to forty times the regulatory limit. The deception
    operated across millions of vehicles for years. It was discovered
    not by the regulator but by a small university research team in
    West Virginia comparing real-world to lab measurements.

    Internal documents showed the defeat device had been authorized
    inside Volkswagen's engineering hierarchy as a deliberate response
    to a regulatory standard the engineering team did not believe it
    could meet within the platform's cost constraints. The decision
    was not made by a rogue engineer. It was made institutionally.

    Dieselgate is the canonical case in industrial regulation for
    organized manufacturer evasion of an environmental standard
    through software. The reform that followed produced real-world
    emissions testing as a regulatory requirement in the EU.
  ],
  quote: [The defeat device was the product of a long-standing institutional decision to evade emissions standards.],
  quote-source: "Paraphrasing the U.S. Department of Justice Plea Agreement with Volkswagen AG, 2017",
  sources-list: (
    [U.S. Department of Justice Plea Agreement with Volkswagen AG (2017)],
    [EPA Notice of Violation (2015)],
    [Ewing, _Faster, Higher, Farther: The Volkswagen Scandal_ (2017)],
  ),
  le-insight: [
    Dieselgate is the canonical case for institutionally engineered
    evasion of a measurement system. The capability gap was at the
    regulator's test protocol: it operated in a regime the vehicle
    could detect. The reform — real-world emissions testing — was a
    capability deliverable upgrade at the regulator's instrument
    boundary.
  ],
  lens-approach: [
    LENS uses Dieselgate in LEN 2 as the canonical case for
    measurement-system evasion and in LEN 7 for the corporate-
    governance dynamics of engineered fraud. The reform pattern
    parallels Takata (Case 52).
  ],
  literature-items: (
    [Ewing (2017), _Faster, Higher, Farther_],
    [EPA technical reports on real-world emissions testing],
    [Carson, _Silent Spring_ (1962) — regulatory-capacity comparison],
  ),
  reflection-list: (
    [Identify a measurement protocol in your domain that operates in a regime detectable by the entity being measured. What is the evasion potential?],
    [Design the upgrade to a regulatory test protocol that makes Dieselgate-style evasion structurally infeasible.],
  ),
  courses: ("LEN 2", "LEN 7"),
)

#case(
  number: 72,
  title: "Cambridge Analytica / Facebook",
  year: "2014 – 2018",
  domains-list: ("tech",),
  modes-code: "G",
  impact: "~87 million Facebook profiles harvested without informed consent; FTC $5B penalty; foundational data-governance reform",
  diagram: dgm.dgm-stat(
    "87M",
    "profiles · 270K quiz-takers",
    micro: "the Graph API contract assumed benevolent developer intent",
    caption: "Cambridge Analytica — design assumption as load-bearing capability",
  ),
  body: [
    A researcher at Cambridge University built a personality-quiz app
    that, by virtue of Facebook's then-permissive Graph API, collected
    not only quiz-takers' profile data but their friends' data as
    well. The harvested dataset of approximately eighty-seven million
    profiles was sold to Cambridge Analytica, which used the data for
    political-campaign micro-targeting work in multiple national
    elections.

    Facebook's permission architecture had been designed to allow
    third-party apps to deliver social experiences. The architecture
    was tested against ordinary use cases. It had not been red-teamed
    against systematic data harvesting. The capability gap was at the
    governance layer of Facebook's platform: the API contract assumed
    benevolent developer intent.

    The case catalyzed the EU's General Data Protection Regulation
    (already underway, but accelerated), the California Consumer
    Privacy Act, and the FTC consent decree under which Facebook
    operates today.
  ],
  quote: [Facebook gave developers access to far more user data than was necessary for the apps they built.],
  quote-source: "Paraphrasing the U.S. FTC Order, In the Matter of Facebook Inc., 2019",
  sources-list: (
    [FTC, In the Matter of Facebook Inc., Consent Order (2019)],
    [UK Information Commissioner's Office Report on Cambridge Analytica (2018)],
    [Cadwalladr & Graham-Harrison, _Guardian_ investigation (2018)],
  ),
  le-insight: [
    Cambridge Analytica is the canonical case for platform-governance
    failure: an API contract that assumed benevolent intent and was
    not engineered against systematic abuse. The capability gap was
    not technical. The architecture worked exactly as designed; the
    design assumption was wrong.
  ],
  lens-approach: [
    LENS uses Cambridge Analytica in LEN 7 as the foundational case
    for platform governance and data ethics, and in LEN 1 to teach
    that "design assumption" is a load-bearing capability deliverable.
  ],
  literature-items: (
    [Zuboff (2019), _The Age of Surveillance Capitalism_],
    [Wylie (2019), _Mindf*ck_],
    [Nissenbaum (2010), _Privacy in Context_],
  ),
  reflection-list: (
    [Identify an API or interface in your domain whose contract assumes benevolent intent. What is the systematic-abuse case it was not red-teamed against?],
    [Design the platform-governance deliverable that should accompany the launch of a new third-party developer API.],
  ),
  courses: ("LEN 1", "LEN 7"),
)

#case(
  number: 73,
  title: "Equifax Data Breach",
  year: "2017",
  domains-list: ("tech", "gov"),
  modes-code: "GK",
  impact: "147 million Americans' personal data exposed; CEO resigned; ~$700M settlement; foundational U.S. data-breach case",
  diagram: dgm.dgm-cascade(
    ("patch unapplied (2 months)", "asset inventory incomplete", "monitoring inadequate", "response delayed (75 days)"),
    outcome: "no single failure caused the breach; the combination did",
    caption: "Equifax — cumulative inadequacy in routine cybersecurity work",
  ),
  body: [
    Equifax's online dispute portal was running a version of Apache
    Struts with a known critical vulnerability. A patch had been
    available for two months. Equifax's IT staff had been notified by
    the company's security team that the patch should be applied. The
    patch was not applied. Attackers exploited the vulnerability in
    May 2017 and exfiltrated personally identifying information on
    one hundred forty-seven million Americans over the next two and a
    half months. Equifax did not publicly disclose the breach until
    September.

    The U.S. Senate Permanent Subcommittee on Investigations found
    that Equifax's patching practices were systematically inadequate,
    that the company did not have an asset inventory complete enough
    to know which systems needed the patch, and that the incident-
    response architecture had been treated as a cost center for years.
    The capability gap was at the institutional management of routine
    vulnerability remediation — work that is universally agreed to be
    necessary and routinely deferred.

    The case is the U.S. data-breach analog of Sago (Case 59):
    cumulative inadequacy across multiple parameters that combined
    catastrophically.
  ],
  quote: [Equifax lacked a comprehensive IT asset inventory.],
  quote-source: "U.S. Senate Permanent Subcommittee on Investigations, How Equifax Neglected Cybersecurity, March 2019 (section heading)",
  sources-list: (
    [Senate Permanent Subcommittee on Investigations, _How Equifax Neglected Cybersecurity and Suffered a Devastating Data Breach_ (2019)],
    [Federal Trade Commission Consent Order (2019)],
    [GAO-18-559 Equifax breach analysis (2018)],
  ),
  le-insight: [
    Equifax is the canonical institutional-cybersecurity case for
    cumulative inadequacy in routine work: patching, inventory,
    monitoring, response. Each function was below industry standard.
    None alone produced the breach. The combination was the breach.
  ],
  lens-approach: [
    LENS uses Equifax in LEN 5 for cumulative-inadequacy analysis in
    cybersecurity and in LEN 7 for the institutional dynamics that
    allow routine work to be chronically underfunded.
  ],
  literature-items: (
    [Senate Subcommittee report (2019)],
    [GAO-18-559],
    [Bruce Schneier, _Click Here to Kill Everybody_ (2018)],
  ),
  reflection-list: (
    [Identify a piece of routine work in your domain that is chronically deferred. What is the cumulative-inadequacy threshold?],
    [Equifax did not know which assets ran Struts. Design the asset-inventory deliverable that an organization the size of Equifax should be able to produce on demand.],
  ),
  courses: ("LEN 5", "LEN 7"),
)

#case(
  number: 74,
  title: "Hyatt Regency Walkway Collapse",
  year: "1981",
  domains-list: ("industrial",),
  modes-code: "DG",
  impact: "114 killed and 216 injured in Kansas City when suspended walkways collapsed; foundational U.S. engineering-ethics case",
  diagram: dgm.dgm-compare(
    "as designed",
    "1× load",
    "as built",
    "2× load",
    framing: "a small construction change, accepted without re-analysis",
    caption: "Hyatt Regency — connection detail changed in the field",
  ),
  body: [
    During a tea dance in the atrium of the Kansas City Hyatt Regency,
    two suspended walkways collapsed, killing one hundred fourteen and
    injuring two hundred sixteen — at the time the deadliest structural
    collapse in U.S. history. The walkway connection had been changed
    during construction from the original engineering design (single
    long rods supporting all three walkways) to a two-rod arrangement
    that doubled the load on the upper connection. The change was
    approved by the structural engineer's office without recalculation
    of the load.

    The Missouri Board for Architects, Professional Engineers, and
    Land Surveyors revoked the licenses of the responsible engineers.
    The case is the foundational engineering-ethics case in U.S.
    structural engineering. It is taught to undergraduate engineers
    as the canonical example of how a small change in the construction
    detail, accepted casually, can convert a design that worked into
    one that fails catastrophically.

    The capability gap was at the institutional review of construction
    changes: there was no requirement that a change to a connection
    detail be re-analyzed by the engineer of record.
  ],
  quote: [The change in the rod configuration doubled the load on the connection that failed.],
  quote-source: "Paraphrasing the National Bureau of Standards Investigation, NBSIR 82-2465, 1982",
  sources-list: (
    [National Bureau of Standards, _Investigation of the Kansas City Hyatt Regency Walkways Collapse_ (NBSIR 82-2465, 1982)],
    [Missouri Board for Architects, Professional Engineers, and Land Surveyors disciplinary records (1986)],
    [Pfatteicher (2000), "'The Hyatt Horror': Failure and Responsibility in American Engineering," _J. Performance of Constructed Facilities_ 14(2)],
  ),
  le-insight: [
    The Hyatt Regency case is the canonical engineering-ethics case
    for institutional review of construction changes. The change
    looked small; the load implication was catastrophic. The
    capability gap was at the review process that should have caught
    the doubled load.
  ],
  lens-approach: [
    LENS uses Hyatt Regency in LEN 5 for change-control deliverables
    and in LEN 7 for the engineering-licensure architecture that
    holds the engineer of record accountable. Studio projects examine
    the change-control deliverable.
  ],
  literature-items: (
    [NBS Report (1982)],
    [Pfatteicher (2000), "'The Hyatt Horror,'" _J. Performance of Constructed Facilities_],
    [Petroski, _To Engineer Is Human_ (1985)],
  ),
  reflection-list: (
    [Identify a "small change during construction" pattern in your domain. What is the institutional review that should accompany it?],
    [Design the change-control deliverable that would have surfaced the doubled-load issue at the Hyatt Regency before construction.],
  ),
  courses: ("LEN 5", "LEN 7"),
)

#case(
  number: 75,
  title: "FIU Pedestrian Bridge Collapse",
  year: "2018",
  domains-list: ("industrial",),
  modes-code: "DGN",
  impact: "6 killed in Miami when a pedestrian bridge collapsed during construction; NTSB found systemic design and review failures",
  diagram: dgm.dgm-timeline(
    (("design errors", "—"), ("cracks observed", "days before"), ("\"monitor\"", "classified"), ("collapse", "—")),
    emphasis: 2,
    caption: "FIU — observed cracks classified as not safety-critical",
  ),
  body: [
    The pedestrian bridge over Southwest Eighth Street at Florida
    International University collapsed during construction, killing
    six. The NTSB investigation found that the design had not
    adequately considered the structure's behavior during construction
    sequencing, that visible cracks had been observed and inspected
    before the collapse but had been judged not safety-critical, and
    that the design firm's calculations contained errors that the
    review process had not caught.

    The case is recent enough to be representative of the contemporary
    structural-engineering capability landscape. Modern bridges are
    designed with sophisticated computational tools; the design
    architecture is more capable than at any prior time. The errors
    that produced the collapse were the same errors that have
    produced structural collapses for a century: a load case
    inadequately considered, a review that did not catch the gap, and
    a field observation that was not escalated.

    The bridge had been the subject of a publicity campaign focused
    on the speed of its construction. The schedule was load-bearing
    in the wrong sense.
  ],
  quote: [The probable cause of the collapse was the load and capacity calculation errors made by FIGG Bridge Engineers in its design of the main span truss.],
  quote-source: "NTSB Highway Accident Report HAR-19/02 on the FIU pedestrian bridge, 2019",
  sources-list: (
    [NTSB Highway Accident Report HAR-19/02 (2019)],
    [OSHA Final Report on the FIU Bridge Collapse (2019)],
    [Engineering News-Record coverage of FIU Bridge],
  ),
  le-insight: [
    The FIU bridge is the canonical modern engineering case for
    cumulative review failure. Each layer of review failed in its
    own way. The collapse was not predicted but was predictable. The
    cracks that had been observed were classified as not safety-
    critical because the institutional protocol for "potentially
    significant crack on a new structure" defaulted to "monitor."
  ],
  lens-approach: [
    LENS uses FIU in LEN 5 to teach review-process deliverables and
    in LEN 9 to compare with the Hyatt Regency (Case 74) case from
    forty years earlier — same failure mode, different decade.
  ],
  literature-items: (
    [NTSB HAR-19/02 (2019)],
    [Roddis & Roberts (1997) on engineering-review architecture],
    [Petroski, _To Forgive Design_ (2012)],
  ),
  reflection-list: (
    [The FIU and Hyatt Regency cases are 40 years apart and structurally similar. What has not been engineered in the discipline that would change that?],
    [Design the field-observation escalation protocol that would have brought the FIU cracks to a decision-maker with the authority to halt work.],
  ),
  courses: ("LEN 5", "LEN 9"),
)

#case(
  number: 76,
  title: "Camp Fire / PG&E",
  year: "2018",
  domains-list: ("energy",),
  modes-code: "GNK",
  impact: "85 killed in Paradise, California; deadliest U.S. wildfire in a century; PG&E pleaded guilty to 84 counts of involuntary manslaughter",
  diagram: dgm.dgm-stat(
    "85",
    "killed in Paradise · single transmission hook",
    micro: "infrastructure designed for one climate, operating in another",
    caption: "Camp Fire — capability mismatch under changed conditions",
  ),
  body: [
    A worn hook on a PG&E transmission tower failed and started a
    wildfire under high-wind, drought conditions. The fire moved into
    the town of Paradise faster than the evacuation infrastructure
    could move people out. Eighty-five people died. PG&E later pleaded
    guilty to eighty-four counts of involuntary manslaughter.

    The CalFire investigation and subsequent litigation revealed that
    PG&E had known about the deteriorating condition of its
    transmission infrastructure across the wildfire-risk areas of its
    service territory for years. Maintenance had been deferred to fund
    other corporate priorities. The capability gap was simultaneously
    at the utility's asset-maintenance decisions and at the
    regulatory architecture that had allowed the deferrals to continue.

    The Camp Fire case is the foundational climate-era case for utility
    capability under high-risk wildfire conditions. The reform that
    followed has restructured how California regulates utility
    wildfire-risk planning.
  ],
  quote: [PG&E knew its equipment was failing in high-fire-risk areas and continued operating without remediation.],
  quote-source: "Paraphrasing the Butte County District Attorney's Camp Fire Report, 2020",
  sources-list: (
    [CalFire, _Camp Fire Investigation Report_ (2019)],
    [Butte County District Attorney, Public Report on the Camp Fire (2020)],
    [California Public Utilities Commission Order Instituting Investigation (2019)],
  ),
  le-insight: [
    The Camp Fire is the canonical climate-era case for utility-
    capability failure under changing risk conditions. The
    infrastructure was designed for one set of conditions and
    operated in another. The capability to update operations to match
    actual conditions did not exist as an institutional deliverable.
  ],
  lens-approach: [
    LENS uses the Camp Fire in LEN 7 for utility regulatory governance
    and in LEN 9 for institutional response to changing operating
    conditions. The case is paired with the Northeast Blackout (Case
    62) as utility-capability failures of different kinds.
  ],
  literature-items: (
    [CalFire Camp Fire Investigation Report (2019)],
    [Wuebbles et al. (2017), Climate Science Special Report],
    [California PUC wildfire-mitigation orders (2019–present)],
  ),
  reflection-list: (
    [Identify infrastructure in your domain that was designed for one set of conditions and is now operating in another. What is the capability deliverable to bridge the gap?],
    [Design the regulatory architecture that would prevent a utility from deferring critical wildfire-risk maintenance.],
  ),
  courses: ("LEN 7", "LEN 9"),
)

#case(
  number: 77,
  title: "Texas Grid Freeze",
  year: "2021",
  domains-list: ("energy",),
  modes-code: "GKN",
  impact: "~246 deaths attributed to the February 2021 winter storm; ~$130B in damages; foundational U.S. grid-resilience case",
  diagram: dgm.dgm-timeline(
    (("1989 warning", "—"), ("2011", "—"), ("2014", "—"), ("2021 freeze", "246 dead")),
    emphasis: 3,
    caption: "Texas grid — four warnings across three decades, no winterization mandated",
  ),
  body: [
    A winter storm in February 2021 brought temperatures across Texas
    well below the design assumptions of ERCOT-operated generation and
    transmission infrastructure. Natural-gas wells froze. Generation
    plants tripped offline. Wind turbines were unable to operate.
    Across roughly four days, ERCOT cut power to millions of Texans
    in rolling blackouts that, in many cases, did not roll. Two
    hundred forty-six deaths were attributed to the storm.

    The post-event analyses identified the absence of winterization
    requirements for Texas-grid generators as the proximate capability
    failure. ERCOT had been warned after similar storms in 1989, 2011,
    and 2014 that winterization was inadequate. The Texas regulatory
    architecture had not required winterization because the cost
    would be passed to consumers, and the rare events were judged
    acceptable.

    The Texas Grid Freeze is the foundational case in U.S. grid
    reliability for how a designed-out capability (winterization)
    interacts with a changing climate to produce population-scale
    harm.
  ],
  quote: [Texas generators had been warned across three decades that winterization was inadequate. The warnings did not produce winterization.],
  quote-source: "Paraphrasing the FERC-NERC Joint Inquiry Report on the February 2021 Texas event",
  sources-list: (
    [FERC-NERC Joint Inquiry on the February 2021 Cold Weather Outages (2021)],
    [Public Utility Commission of Texas reports],
    [University of Texas at Austin Energy Institute analyses (2021)],
  ),
  le-insight: [
    The Texas Grid Freeze is the case for designed-out capability under
    changing climate conditions. Winterization was treated as
    optional because the rare event was acceptable. The acceptable
    rate of the rare event changed; the designed-out capability did
    not.
  ],
  lens-approach: [
    LENS uses the Texas Grid Freeze in LEN 7 as a regulatory-governance
    case and in LEN 9 for institutional learning across repeated near-
    misses (1989, 2011, 2014) that did not produce remediation.
  ],
  literature-items: (
    [FERC-NERC Joint Inquiry (2021)],
    [Busby et al. (2021), Energy Institute analyses],
    [PUC Texas reports],
  ),
  reflection-list: (
    [Identify a capability in your domain that has been designed out because the relevant rare event was judged acceptable. Is the rate still acceptable?],
    [The Texas grid was warned four times in three decades. What institutional architecture allows that pattern, and what would change it?],
  ),
  courses: ("LEN 7", "LEN 9"),
)
