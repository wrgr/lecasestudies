# Capability Matters: A Casebook — Pass 8 (Supplemental): Weaker-Evidence Candidates

> **Status (June 2026):** ACCEPTED for inclusion in v2 drafting. All 21 candidates (v2-901 .. v2-921) join the build list and are tracked alongside the verified candidates in `02_*`. Each carries an explicit `evidence-flag` that must render under the case title with the standing "future validation ongoing" language. The candidates do **not** fold into the peer-reviewed/investigation tier — they remain a flagged tier in print.


*Supplemental case-discovery pass. The primary v2 sweep (~77 verified candidates in `02_complete_case_list_build_reference.md`) closed at peer-reviewed and investigation-grade sourcing. This pass deliberately reaches into journalism-tier reporting, preprints, practice-synthesis writeups, dissertations, and internal post-mortems summarized in public talks — but **only** where the candidate fills a named thin spot the primary sweep could not cover.*

**Evidence discipline.** Every candidate below carries an explicit `evidence-flag` declaring its tier. Every write-up includes the verbatim phrase "future validation ongoing." That phrase must travel into the printed case if the candidate is drafted — it is the colophon-grade honesty signal that tells the reader where the sourcing stops being investigation-grade. This is non-negotiable.

**Anchors.** Three anchor systems per candidate: induced competency (1–8 / 32) from `competencies.md`; canonical LENS (Domain 1–5 / Problem Type 1–6) from `lens_program/1_LENS_Five_Competencies.md`; and LEO mapping (LEO-1–5, plus the four NEW LEOs proposed in `v2_research/01_*`).

**Numbering.** Continues from v2-901 to keep the supplemental scope visible at a glance.

**Priority gaps targeted.** (1) Non-education physical-safety C5 governance success; (2) corporate/workforce L&D specifics beyond Kirkpatrick/Blume; (3) C3 interface/role redesign successes at journal/conference scale; (4) C7 system-aging / transition successes at small tier; (5) cases from outside US/UK/EU; (6) first-person Practice Flywheel candidates already published.

---

## Gap 1 — Non-education physical-safety C5 governance success

### v2-901 — Waymo's published safety case framework as a governance-objection dissolver
- year: 2023 (white paper) / 2025 (independent third-party audit)
- scale: big
- proposed-kind: intervention (governance-overcame-objection)
- proposed-anchor (induced): 5.1 — Stakeholder trust and consent as preconditions; alternate 5.4 — Change-control and disclosure as governance artifacts
- LENS mapping: Domain 4 (Context / sociotechnical constraints), Domain 5 (Emerging Systems); Problem Type 6 (Human-AI teaming)
- LEO anchor: LEO-4 (sociotechnical integration); LEO-5 (machine teaming); [NEW] LEO — Delegation with revocation
- alternate anchors: induced 5.4; LENS D1 (systems analysis of the safety case as artifact)
- evidence-source: practitioner / program-report
- evidence-flag: **practice-synthesis-tier** (Waymo white paper + Montreal AI Ethics Institute analysis; the third-party audits published Nov 2025 push some elements toward investigation-tier but the synthesis itself is practitioner-authored)
- citation: Waymo, "A Blueprint for AV Safety: Waymo's Toolkit For Building a Credible Safety Case," 2023 (whitepaper); Waymo, "Independent Audits of Waymo's Safety Case and Remote Assistance Programs," Nov 2025; Montreal AI Ethics Institute summary, 2023
- domains: autonomous vehicles, transportation safety, public-sector governance
- capability question: When a deploying organization is asked to satisfy a governance objection it cannot satisfy by sharing trade secrets, can it instead engineer an artifact (a structured safety case, third-party audited) that dissolves the objection without disclosing the contested data?
- what happened / what worked / what's open: In 2022 a California court let Waymo withhold trade-secret-laden safety details from a public DMV disclosure, leaving regulators and the public with a credibility gap. Waymo's response was to publish a structured **safety case framework**: a top-down argument with claims, sub-claims, and the evidence types each rests on, accompanied by published performance data and (in November 2025) the first independent third-party audits of both the safety case and the remote-assistance program. The objection — "you are asking us to trust an opaque system" — was answered not by disclosure but by engineering the legitimacy artifact: a falsifiable argument structure third parties could audit, with the audit reports themselves disclosed. This is the OU-pattern (governance objection dissolved by better design) transposed from education to physical-safety AV. What's open: whether the audit cadence, scope, and auditor independence will hold up under post-deployment failure, and whether the regulatory community accepts the safety-case-plus-audit posture as a substitute for the disclosure it originally demanded. Future validation ongoing.
- why this fits the proposed anchor: The objection was governance-as-trust; the response was a designed artifact (structured argument + audit) rather than a defense of opacity. That is the exact pattern the v2 sweep flagged as missing from the physical-safety domain.
- evidence-tier note: Practitioner whitepaper plus a 2025 third-party audit; not peer-reviewed safety-engineering analysis. Future validation ongoing.
- which named gap: **Gap 1** — non-education physical-safety C5 governance success.

### v2-902 — Cruise's failure as the foil (partial disclosure case)
- year: 2023
- scale: big
- proposed-kind: failure
- proposed-anchor (induced): 5.4 — Change-control and disclosure as governance artifacts; alternate 5.1
- LENS mapping: Domain 4; Problem Type 6
- LEO anchor: LEO-4; [NEW] LEO — Delegation with revocation
- evidence-source: journalism + program-report (DMV order is investigation-grade; mechanism reconstructed from journalism)
- evidence-flag: **journalism-tier** (DMV order published; supporting reconstruction relies on TechCrunch, NBC News, SF Standard, Mission Local; the underlying Cruise internal post-mortem is referenced in public statements but not fully public)
- citation: California DMV Order of Suspension, 24 Oct 2023; NBC News and TechCrunch reporting, Oct 2023; SF Standard reporting, Oct 2023
- domains: autonomous vehicles, regulatory governance, incident disclosure
- capability question: When a deployed autonomous system causes harm, does the institution's disclosure posture determine whether deployment continues?
- what happened / what worked / what's open: On 2 Oct 2023 a Cruise robotaxi struck a pedestrian who had been hit and propelled into its path by a human driver. The AV came to a stop, then performed a pullover maneuver that dragged the pedestrian roughly 20 feet at ~7 mph before stopping again. Cruise initially shared video of the initial stop but did not disclose the subsequent movement; the DMV learned of it from another agency and obtained the fuller video weeks later. On 24 Oct the DMV suspended Cruise's driverless deployment and testing permits, citing misrepresentation of safety-relevant information. The case is the explicit contrast to v2-901: the same regulatory regime, the same delegation problem, the opposite governance choice — partial disclosure as the load-bearing failure mode, not the underlying collision. Future validation ongoing on the long-run regulatory consequences.
- why this fits the proposed anchor: Disclosure-as-governance-artifact is the v1 inBloom/Summit pattern surfacing again in physical safety; pairs directly with v2-901.
- evidence-tier note: The DMV's published order is investigation-grade; the partial-disclosure mechanism is reconstructed from contemporaneous journalism. Future validation ongoing.
- which named gap: **Gap 1** (as the foil) — pairs with v2-901 to teach C5 in physical safety.

### v2-903 — CPUC AV passenger-service permit conditions as a designed-objection-dissolver
- year: 2020–2024 (rolling program)
- scale: big
- proposed-kind: intervention
- proposed-anchor (induced): 5.1 — Stakeholder trust and consent; 5.3 — Cross-regime governance seams (DMV / CPUC)
- LENS mapping: Domain 4; Problem Type 6
- LEO anchor: LEO-4; LEO-5
- evidence-source: program-report
- evidence-flag: **practice-synthesis-tier** (CPUC program documents and decisions; no single peer-reviewed analysis yet)
- citation: CPUC, "Autonomous Vehicle Passenger Service Programs," program page and Aug 2024 application guidance; CPUC permit decisions for Cruise and Waymo
- domains: autonomous vehicles, public-utility governance, accessibility
- capability question: Can a regulator dissolve a governance objection (safety + equity) by writing the conditions into the permit rather than blocking deployment?
- what happened / what worked / what's open: The California Public Utilities Commission established an AV passenger-service permit framework whose conditions are explicitly designed to address common objections: time-of-day limits, weather restrictions, fleet caps, geographic carve-outs, and a required Passenger Safety Plan that documents how driverless service will handle riders with limited mobility, vision impairments, or other disabilities. The 2024 update strengthened DMV authority to impose targeted operational restrictions for safety. The pattern: rather than treat the governance objection as a binary (deploy / don't), the CPUC made the objection itself a design parameter the deployer must satisfy. The Cruise suspension (v2-902) shows the regime can revoke; the Waymo continuation shows it can permit conditionally. Future validation ongoing on whether the equity-of-service goals (disabled and disadvantaged-community access) materialize in measured ridership outcomes.
- why this fits the proposed anchor: It is the structural complement to v2-901 — the regulator-side artifact that makes the deployer-side safety case operative.
- evidence-tier note: Program-report sourcing; no independent peer-reviewed evaluation of the program's outcomes yet. Future validation ongoing.
- which named gap: **Gap 1** — non-education physical-safety C5 governance success.

---

## Gap 2 — Corporate / workforce L&D specifics (beyond Kirkpatrick/Blume)

### v2-904 — Brinkerhoff Success Case Method as a corporate L&D evaluation pattern
- year: 2005 (canonical paper); ongoing
- scale: small
- proposed-kind: intervention (methodological)
- proposed-anchor (induced): 2.1 — Measuring the failure mode you care about; 2.3 — Closed-loop evidence linked to intervention
- LENS mapping: Domain 3 (Measurement); Problem Type 5
- LEO anchor: LEO-3; LEO-2 (iterative development by way of evaluation feedback)
- evidence-source: peer-reviewed (the method) + practitioner (its corporate application)
- evidence-flag: **practice-synthesis-tier** (the method is peer-reviewed; the corporate deployments at named firms — Cargill, Ford, Merck, World Bank, ICRC — are documented in practitioner channels, not in peer-reviewed evaluations)
- citation: Brinkerhoff, R. O., "The Success Case Method: A Strategic Evaluation Approach to Increasing the Value and Effect of Training," *Advances in Developing Human Resources* 7(1):86–101, 2005, DOI 10.1177/1523422304272172; Brinkerhoff Evaluation Institute deployment list (Cargill, Ford, Merck, World Bank, International Red Cross)
- domains: corporate L&D, training evaluation, workforce development
- capability question: When ROI-style evaluation of corporate training is intractable, can structured extreme-case sampling (most-successful and least-successful learners) substitute as decision-grade evidence?
- what happened / what worked / what's open: The Success Case Method (SCM) deliberately samples the tails of a training program's outcome distribution: identify the highest- and lowest-impact participants, study them in detail, and reconstruct the system conditions that made the program work for some and fail for others. Brinkerhoff's argument is that average-effect statistics flatter most programs and tell L&D nothing actionable; the extreme cases reveal whether the program ever produces meaningful work-performance change and what the surrounding system has to provide for transfer to happen. The method is in active corporate use at named firms but the per-firm impact data sit in practitioner channels (case-study writeups, conference talks) rather than peer-reviewed evaluation literature. It is the practical complement to v2-806 (the Blume transfer meta-analysis): Blume names what predicts transfer at population scale; SCM is the per-program instrument that operationalizes the prediction. Future validation ongoing as more firms publish their SCM outcome data.
- why this fits the proposed anchor: Direct fit to 2.1/2.3 — it is a corporate-scale instance of "measure the failure mode you care about, link it to an intervention path." The chain-of-evidence problem (v2-805) names the gap; SCM is a deployed answer.
- evidence-tier note: The method is peer-reviewed; the firm-level deployments rest on practitioner sourcing. Future validation ongoing.
- which named gap: **Gap 2** — corporate L&D specifics.

### v2-905 — Brinkerhoff High-Impact Learning System (HILS) as a multi-firm pattern
- year: 2003 (method) / ongoing (firm-level deployments)
- scale: small (program-tier)
- proposed-kind: intervention
- proposed-anchor (induced): 2.4 — Implementation plans that address adoption and sustainment; LENS-side amended LEO-2 (narrating the design iteration)
- LENS mapping: Domain 2 (Learning Engineering Design); Problem Type 4
- LEO anchor: LEO-2; [NEW] LEO — Judgment under inadequate evidence (corporate L&D rarely has full evidence on transfer, must decide anyway)
- evidence-source: practitioner
- evidence-flag: **practice-synthesis-tier** (Brinkerhoff and colleagues authoring; corporate deployments referenced in practitioner literature)
- citation: Brinkerhoff & Apking, *High Impact Learning*, 2001; Watershed LRS and L-TEN summaries of HILS deployment patterns
- domains: corporate L&D, performance consulting, learning transfer
- capability question: Can the corporate training pipeline be reorganized so that the *work environment* is engineered alongside the training event, given Blume's finding that environment is the decisive transfer variable?
- what happened / what worked / what's open: HILS reframes L&D as a system spanning pre-training (line-manager alignment, work-context preparation), the event itself, and post-training (supervisor support, on-the-job practice opportunities). The design principle is that the training event alone explains a small fraction of transfer variance; the surrounding work environment dominates. This is the operational consequence of v2-806 (Blume) translated into a deployable program model. Corporate deployments report transfer rates rising from the 10–20% baseline cited in the L&D literature to substantially higher figures, but the per-firm numbers live in vendor whitepapers and conference talks rather than peer-reviewed audits. Future validation ongoing.
- why this fits the proposed anchor: It is a documented practice pattern that names the environment-as-intervention move — directly responsive to the v2 framework's claim that capability lives at the operator/system interface, not in the individual.
- evidence-tier note: Practitioner authoring; corporate effect sizes are self-reported. Future validation ongoing.
- which named gap: **Gap 2** — corporate L&D specifics.

### v2-906 — Singapore SkillsFuture Movement (national workforce program)
- year: 2015–present
- scale: big (national program) — but with small-tier sub-programs (specific upskilling cohorts evaluated separately) usable for case purposes
- proposed-kind: intervention (with outcome-open elements)
- proposed-anchor (induced): 2.4 — Adoption and sustainment; 6.4 — Cross-domain adaptation
- LENS mapping: Domain 4 (Context/sociotechnical); Domain 2; Problem Type 4
- LEO anchor: LEO-2; LEO-4; [AMENDED] LEO — Collaboration measurement (the program measures across employer-employee-state)
- evidence-source: program-report + peer-reviewed program analyses
- evidence-flag: **practice-synthesis-tier** (SkillsFuture annual reports + ILO and Springer book chapters; per-cohort outcome data are self-reported via the TRAQOM survey)
- citation: SkillsFuture Singapore (SSG), Year-in-Review 2024; MOE parliamentary replies on TRAQOM (2020); ILO report "Investigating an Upskilling Programme in Singapore"; "Future-Skilling the Workforce: SkillsFuture Movement in Singapore," Springer, 2024
- domains: workforce development, national L&D policy, Asia-Pacific
- capability question: Can a state-level workforce-capability program produce measurable transfer to job performance, and does the measurement instrument hold up?
- what happened / what worked / what's open: SkillsFuture pairs individual training credits with employer subsidies, a cross-sector skills framework, and a two-wave outcome survey (TRAQOM, at end-of-course and at six months). Self-reported figures are strong (98% "able to perform better at work"; 93% "course played a pivotal role"; 87% Work-Study Programme graduates employed full-time within six months; a 2018 MTI study found a 5.8% real wage premium for WSQ-trained workers). The TRAQOM design — paired with labor-market data — is one of the most ambitious national L&D measurement instruments deployed at scale. The honest reading: self-report dominates the headline numbers, and the program has not been subjected to a rigorous quasi-experimental external evaluation that would isolate the program's causal effect from labor-market trends. Future validation ongoing.
- why this fits the proposed anchor: It is a non-US national-scale L&D case the sweep needs for both Gap 2 (corporate/workforce L&D) and Gap 5 (non-US/UK/EU evidence).
- evidence-tier note: Program-report and practitioner-synthesis sourcing for the headline outcomes; peer-reviewed work analyzes the policy design more than its causal impact. Future validation ongoing.
- which named gap: **Gap 2** (primary) and **Gap 5** (cross-listed).

### v2-907 — PEPFAR HIV training-modality comparison across 16 Sub-Saharan African countries
- year: 2023 (study) covering pre- and during-COVID program data
- scale: small (study-tier; nested in big program)
- proposed-kind: intervention (mixed outcome)
- proposed-anchor (induced): 2.3 — Closed-loop evidence; 6.4 — Cross-domain adaptation
- LENS mapping: Domain 2; Domain 4; Problem Type 4
- LEO anchor: LEO-2; LEO-3; LEO-4
- evidence-source: peer-reviewed (but study is recent and confirmatory replication is pending)
- evidence-flag: **preprint-tier → published** (the medRxiv version is preprint; the PMC version is journal-published; verify which the editor wants to cite)
- citation: "Comparing in-person, blended and virtual training interventions; a real-world evaluation of HIV capacity building programs in 16 countries in sub-Saharan Africa," medRxiv 2023.02.08.23285641 (preprint) → PMC10365303 (published)
- domains: global health, HIV care, training-modality comparison, Sub-Saharan Africa
- capability question: When pandemic disruption forces a switch from in-person to virtual / blended training delivery, does measured capability gain hold?
- what happened / what worked / what's open: Across 16 PEPFAR-supported Sub-Saharan African countries, the program compared in-person (pre-COVID), virtual, and blended HIV-care training delivery. Across all knowledge domains and self-perceived confidence dimensions, pre/post assessments showed mean increases regardless of modality. The honest framing: the outcome metric is knowledge and self-rated confidence, not job performance change — putting it in Kirkpatrick L1–L2 territory, which v2-805 names as the systemic limitation of corporate L&D evaluation. Even so, the study is one of the few real-world cross-country modality comparisons at meaningful scale. Future validation ongoing on whether the knowledge gains translate to L3 behavior change or L4 patient outcomes.
- why this fits the proposed anchor: It is the L&D-evaluation pattern playing out in global health at multi-country scale — exactly the kind of "small with big policy implications" case the corpus needs.
- evidence-tier note: Peer-reviewed but recent; the L1–L2 limitation is explicit. Future validation ongoing.
- which named gap: **Gap 2** + **Gap 5** (cross-listed).

---

## Gap 3 — C3 interface/role redesign successes at journal/conference scale

### v2-908 — University of Missouri Health Care annual-screening UI redesign + CDS
- year: 2020 (HIMSS case-study publication date approximate)
- scale: small
- proposed-kind: intervention
- proposed-anchor (induced): 3.1 — Cue and alert design as a capability deliverable
- LENS mapping: Domain 3 (Measurement); Problem Type 5; secondary Problem Type 6
- LEO anchor: LEO-3; LEO-1 (systems analysis of the EHR workflow)
- evidence-source: program-report (HIMSS case study) + journal article references
- evidence-flag: **practice-synthesis-tier** (HIMSS case-study format; the underlying quality-improvement project is documented but not in a top-tier journal)
- citation: HIMSS, "Usability Redesign Improves Annual Screening Rates in an Ambulatory Setting," case study (Greater Kansas City HIMSS chapter); University of Missouri Health Care quality-improvement project
- domains: healthcare, EHR usability, clinical decision support
- capability question: Does redesigning an EHR's screening-prompt UI, paired with embedded CDS, measurably move screening rates for guideline-recommended care?
- what happened / what worked / what's open: A multidisciplinary team at the University of Missouri Health Care redesigned the EHR interface used to prompt and perform annual screening (advance directives, depression, falls risk, alcohol/drug misuse), adding CDS to increase visibility and actionability. Post-redesign, the team reported improvements in task time, error rates, System Usability Scale scores, *and* the downstream screening-rate outcomes the project was scoped to move. It is a clean small-tier instance of "cue/alert/interface redesign as a capability deliverable" with both usability metrics and clinical process outcomes — the positive existence proof C3 currently lacks at the small tier. Future validation ongoing on whether the screening-rate gains translate to patient outcomes downstream.
- why this fits the proposed anchor: 3.1 is currently nearly all failures (Therac-25, EHR/CPOE, Helios) and v1 has no small-tier success here. This is the missing positive example.
- evidence-tier note: HIMSS case-study format, not a peer-reviewed journal article. Future validation ongoing.
- which named gap: **Gap 3** — C3 interface/role redesign success at small scale.

### v2-909 — Nursing alert-fatigue redesign quality-improvement project (JAMIA-adjacent QI)
- year: 2024
- scale: small
- proposed-kind: intervention
- proposed-anchor (induced): 3.1 — Cue/alert design; 3.2 — Monitoring as an unsupportable role (alert burden is the monitoring failure made structural)
- LENS mapping: Domain 3; Domain 5 (the CDS is automated decision support); Problem Type 5
- LEO anchor: LEO-3; LEO-5 (oversight of automated output)
- evidence-source: peer-reviewed (the systematic review) + practitioner QI projects
- evidence-flag: **practice-synthesis-tier** (the underlying QI project is published as a brief; the framing rests on the JAMIA systematic review)
- citation: Co et al., "Medication safety alert fatigue may be reduced via interaction design and clinical role tailoring: a systematic review," *JAMIA* 26(10):1141, 2019, DOI 10.1093/jamia/ocz095; "Navigating Alert Fatigue: A Case Study in Electronic Health Record Alert Design Optimization," PubMed 39049299, July 2024; "Addressing Alert Fatigue by Replacing a Burdensome Interruptive Alert with Passive Clinical Decision Support," *Applied Clinical Informatics*, Jan 2024
- domains: healthcare, CDS, EHR design, nursing workflow
- capability question: Can structured redesign of EHR alert behavior — fewer alerts, severity reclassification, interruptive→passive conversion, role-tailoring — reduce alert burden without losing the underlying safety signal?
- what happened / what worked / what's open: A 2024 quality-improvement project addressed nursing EHR alert fatigue by redesigning four high-firing/low-action alerts using mixed methods (quantitative alert-firing analysis, empathy mapping, user feedback). The 2019 JAMIA systematic review aggregates the broader evidence: interaction-design changes and role-tailoring reduce alert burden, and most evaluated optimization studies report alert-rate reduction post-intervention. The 2024 *Applied Clinical Informatics* paper documents the specific maneuver of replacing an interruptive COVID-precautions alert with passive CDS, with dual targets of alert-burden reduction *and* improved precautions-order timing. Together, these supply the C3 small-tier success story for the "monitoring under alert burden" pattern. Future validation ongoing on whether the redesign survives EHR upgrades and personnel rotation.
- why this fits the proposed anchor: 3.2 in v1 is entirely failures (Uber ATG, Robodebt, Northeast Blackout, UK Post Office, Tesla). This is the small-tier intervention that demonstrates the failure mode is redressable by design.
- evidence-tier note: One systematic review is peer-reviewed; the QI projects are practice-tier publications. Future validation ongoing.
- which named gap: **Gap 3** — C3 interface/role redesign success at small scale.

### v2-910 — Hospital-pharmacy technician role redesign (Australian project)
- year: 2016 (project outcomes report)
- scale: small (program-tier)
- proposed-kind: intervention
- proposed-anchor (induced): 3.2 — Role design where monitoring is unsupportable; 4.3 — Authority gradient and team-coordination redesign
- LENS mapping: Domain 4 (Context/sociotechnical); Problem Type 3 (capability requirements definition for the new role)
- LEO anchor: LEO-1; LEO-4
- evidence-source: program-report
- evidence-flag: **practice-synthesis-tier** (Australian hospital pharmacy project report; subsequent peer-reviewed survey research builds on it)
- citation: "Pharmacy Technician and Assistant Role Redesign within Australian Hospitals Project," outcomes report, Nov 2016; Anderson et al., "Perceptions of hospital pharmacists and pharmacy technicians towards expanding roles for hospital pharmacy technicians: a cross-sectional survey," *J. Pharmacy Practice and Research* 2021, DOI 10.1002/jppr.1697
- domains: hospital pharmacy, healthcare workforce, role redesign
- capability question: When the pharmacist role is constrained by dispensing-checking workload, can a role redesign that expands pharmacy-technician scope (final accuracy checking, drugs-of-addiction management, clinical support) free pharmacist capacity without degrading safety?
- what happened / what worked / what's open: The project assessed attitudes and operational outcomes when pharmacy-technician scope was expanded in Australian hospitals. Reported operational outcomes: average prescription turnaround fell from 18.5 to 12.3 minutes, prescriptions per shift rose from 220 to 295, and dispensing errors declined (2.1% → 1.2%) — i.e., the role redesign moved both throughput and the safety metric in the same direction. The 2021 cross-sectional survey extends the evidence base into the workforce-acceptance dimension. Future validation ongoing on long-term safety-outcome durability and whether the pattern generalizes to other healthcare-workforce roles.
- why this fits the proposed anchor: It is a small-tier role-redesign success in healthcare with operationally measurable outcomes — directly responsive to the "C3 small-tier positive examples missing" gap.
- evidence-tier note: Program-report and a subsequent peer-reviewed survey; the operational figures rest on the program's internal measurement, not an independent audit. Future validation ongoing.
- which named gap: **Gap 3** + a **Gap 5** echo (non-US, Australia).

---

## Gap 4 — C7 system-aging / transition successes at small / journal-conference scale

### v2-911 — Eurocat Air Traffic Management System pilot modernization (Thales / ATM)
- year: 2005 (pilot) — initial publication in technical chapter
- scale: small (pilot project within a big system)
- proposed-kind: intervention
- proposed-anchor (induced): 7.1 — Re-verifying inherited designs in new envelopes; 7.2 — Deployment and reuse as verification events
- LENS mapping: Domain 1 (Systems Analysis); Problem Type 1 (Capability-System Misalignment at Transition); Problem Type 2
- LEO anchor: LEO-1; LEO-2
- evidence-source: program-report (chapter in *Information Systems Transformation*, Elsevier 2010)
- evidence-flag: **practice-synthesis-tier** (Elsevier technical chapter from vendor authors; not an independent academic evaluation)
- citation: Reus, Geers, & van Deursen, "Modernization of the Eurocat Air Traffic Management System (EATMS)," in *Information Systems Transformation* (Elsevier, 2010), Chapter 5, DOI link via ScienceDirect
- domains: air traffic management, legacy modernization, software transformation
- capability question: When ATM software in production cannot tolerate a big-bang rewrite, can a pilot-scale automated modernization (architecture-driven, with safety-equivalence evidence) earn customer acceptance of a system-wide migration?
- what happened / what worked / what's open: A 2005 pilot modernized 17,000 lines of code in the Eurocat ATM system, with the deliberate goal of generating safety evidence that the automated transformation was non-distortive of original functionality. That evidence was used to convince customers to accept full architecture-driven modernization with 100% automated code transformation. The "small as gateway to big" pattern is the relevant teaching: the small-tier verification artifact dissolved the customer objection to large-tier change. Future validation ongoing on long-run operational behavior of the modernized system relative to the legacy.
- why this fits the proposed anchor: 7.1 and 7.2 currently sit at big tier (Patriot/Dhahran, Ariane 5, Knight Capital, CrowdStrike, TSB). This is the small-tier intervention companion that shows the verification-as-deliverable principle producing the positive outcome.
- evidence-tier note: Practitioner technical chapter, vendor-authored. Future validation ongoing.
- which named gap: **Gap 4** — C7 small-tier success.

### v2-912 — INL turbine-control-system upgrade usability finding (LWRS-adjacent)
- year: 2014 (technical report / conference paper window)
- scale: small (single-plant study within the LWRS program)
- proposed-kind: intervention
- proposed-anchor (induced): 7.1 — Re-verifying inherited designs; 3.1 — Cue/alert design
- LENS mapping: Domain 1; Domain 3; Problem Type 1; Problem Type 5
- LEO anchor: LEO-1; LEO-3
- evidence-source: program-report (INL technical reports + DOE OSTI conference papers)
- evidence-flag: **practice-synthesis-tier** (INL/OSTI technical chapters; not independent peer-reviewed evaluation)
- citation: INL technical report and conference proceedings on "Human Factors Design, Verification, and Validation for Two Types of Control Room Upgrades at a Nuclear Power Plant" (ResearchGate publication 271728006); related LWRS-program reports and OSTI conference papers
- domains: nuclear power, control-room modernization, human factors
- capability question: When a legacy nuclear-plant turbine-control system is replaced with a digital equivalent, does the human-factors evidence justify deploying with reduced retraining and procedure rewrite?
- what happened / what worked / what's open: A specific INL-affiliated study reported that operators were able to use the new digital turbine control system without extensive additional training or rewriting of operating procedures — i.e., the verification-and-validation evidence supported a low-burden cutover. This is a small-tier complement to the big-tier v2-114 (INL/LWRS control-room modernization), showing that the modernization program produces specific design-V&V case studies, not only program-level claims. Future validation ongoing on whether the low-retraining finding generalizes beyond the studied subsystem and whether it holds at multi-plant scale.
- why this fits the proposed anchor: It is the small-tier transition-verification success the corpus needs in C7.
- evidence-tier note: INL/OSTI technical reporting; not an independent academic evaluation. Future validation ongoing.
- which named gap: **Gap 4** — C7 small-tier success.

### v2-913 — Estonia X-Road continuous-migration governance pattern
- year: 2001 (launch) — present
- scale: big (national) — but with embedded small-tier sub-cases on individual database integrations
- proposed-kind: intervention (with self-critical reflection)
- proposed-anchor (induced): 7.1 — Re-verifying inherited designs; 6.1 — Industry/national institution building
- LENS mapping: Domain 1; Domain 4; Problem Type 1; Problem Type 2
- LEO anchor: LEO-1; LEO-4
- alternate anchors: induced 5.3 (cross-regime governance seams)
- evidence-source: program-report + peer-reviewed analysis
- evidence-flag: **practice-synthesis-tier** (the program is well-documented; the "no-legacy paradox" framing is a self-critical practitioner observation)
- citation: Kalvet et al., "Estonia's Digital Transformation: Mission Mystique and the Hiding Hand," Oxford 2024 (book chapter); "A Historical Analysis on Interoperability in Estonian Data Exchange Architecture," ICEGOV 2021, DOI 10.1145/3494193.3494209; X-Road Global program documentation
- domains: e-government, distributed-data exchange, national IT infrastructure
- capability question: Can a national-IT architecture avoid being trapped by its own success — i.e., can a deliberately-no-legacy program keep its modernization posture as it ages into a 25-year deployment?
- what happened / what worked / what's open: Estonia's X-Road launched as the answer to fragmented government databases; by Dec 2024 it had reached effectively 100% digitalization of government services with sub-five-minute tax filing for >95% of the population. The honest self-criticism in the peer-reviewed analysis: by committing the country to X-Road as the data-exchange layer, Estonia effectively created its own legacy system — the thing its founders set out to avoid. This is the C7 case study no other corpus item teaches: success-as-aging is the failure mode, and the modernization regime must contemplate its own future obsolescence. Future validation ongoing on whether the deliberate generational-replacement plans materialize.
- why this fits the proposed anchor: It is a non-US transition case where the system aged into something new — a positive C7 example that is also honest about how success creates its own aging problem.
- evidence-tier note: Mixed — peer-reviewed analyses available; the self-critical framing rests partly on practitioner reflection. Future validation ongoing.
- which named gap: **Gap 4** + **Gap 5** (cross-listed).

---

## Gap 5 — Cases from outside US/UK/EU

### v2-914 — India Aadhaar exclusion litigation (Pragya Prasun, 2025)
- year: 2018 (Puttaswamy II) — 2025 (Pragya Prasun)
- scale: big
- proposed-kind: failure → intervention (the system's exclusion failures; the court's remedial framing)
- proposed-anchor (induced): 8.1 — Choosing the construct (what gets predicted, what counts); 5.2 — Human-in-the-loop for consequential decisions
- LENS mapping: Domain 4; Domain 5; Problem Type 6
- LEO anchor: [NEW] LEO — Fairness beyond omission; [NEW] LEO — Delegation with revocation; LEO-4
- evidence-source: investigation (court judgments) + journalism + peer-reviewed analysis
- evidence-flag: **journalism-tier** for the lived-exclusion accounts; the court judgments themselves are investigation-grade
- citation: Supreme Court of India, *Justice K.S. Puttaswamy v. Union of India* (Aadhaar judgment, 2018); *Pragya Prasun & Ors. v. Union of India* (April 2025); IAPP analysis; Access Now reporting; "A Failure to Do No Harm" comparative analysis, PMC5741784
- domains: digital identity, welfare, biometric authentication, India
- capability question: When a biometric authentication system is delegated authority over welfare access at population scale, what happens when the biometrics fail for the people most dependent on the welfare?
- what happened / what worked / what's open: Aadhaar (~1 billion enrolled) was designed to streamline welfare delivery and reduce identity fraud. The Pragya Prasun ruling (2025) declared a fundamental right to inclusive and meaningful digital access, holding that exclusion from welfare based on biometric authentication failure — through no fault of the individual — violates constitutional dignity. Justice Chandrachud's earlier dissent in Puttaswamy II had named the structural risk; the 2025 ruling makes the remedial framing explicit: the system can continue, but alternatives to biometric authentication must be provided. This is a non-US case that supplies the *judicial-correction* of an AI/automated-decision deployment — pairing with the Dutch SyRI case (v2-603) and the UK Post Office Horizon case as the global lineage of "automated welfare systems halted on rights grounds." Future validation ongoing on whether the alternatives-must-be-provided remedy is implemented in practice.
- why this fits the proposed anchor: Non-US, automated-system delegation, governance objection sustained by a court — directly responsive to Gap 5 and a strong companion to SyRI.
- evidence-tier note: Court judgments are investigation-grade; the lived-exclusion sourcing rests on journalism and advocacy reporting. Future validation ongoing.
- which named gap: **Gap 5** — non-US/UK/EU case (India).

### v2-915 — Rwanda mHealth maternal-care community health worker program
- year: 2013–2018 (program); 2019 published evaluation
- scale: small (program/study tier)
- proposed-kind: intervention
- proposed-anchor (induced): 6.4 — Cross-domain adaptation; 4.3 — Authority gradient and team-coordination redesign
- LENS mapping: Domain 4 (Context/sociotechnical); Problem Type 4
- LEO anchor: LEO-2; LEO-4
- evidence-source: peer-reviewed
- evidence-flag: **preprint-tier → published** (the MIT News piece is journalism; the underlying study is peer-reviewed)
- citation: Musabyimana et al., "Effect of a community health worker mHealth monitoring system on uptake of maternal and newborn health services in Rwanda," PMC6429813; MIT News reporting, 2022, on subsequent AI-augmented maternal-care work
- domains: global health, mHealth, maternal health, Rwanda
- capability question: Can mobile-phone-mediated decision support delivered to community health workers measurably move maternal and newborn health service uptake in a low-resource setting?
- what happened / what worked / what's open: A Rwanda mHealth monitoring system equipped community health workers (CHWs) with mobile decision support for maternal and newborn care, including surgical-site infection screening after Cesarean. The evaluation reported increased uptake of maternal and newborn health services tied to the mHealth intervention. The pattern: capability delivered at the periphery of the formal health system, with the technology designed to extend the CHW's diagnostic-and-referral role rather than replace it. Future validation ongoing on long-term outcomes and whether the pattern generalizes across other low-resource settings.
- why this fits the proposed anchor: Non-US, small-tier, capability-extension-to-the-frontline case — pairs naturally with v2-907 (PEPFAR) as the Sub-Saharan African workforce-capability examples the corpus needs.
- evidence-tier note: One peer-reviewed evaluation; the broader impact claims rest partly on practitioner reporting. Future validation ongoing.
- which named gap: **Gap 5** — non-US/UK/EU case (Rwanda).

### v2-916 — South Africa learning analytics in higher education (scoping review)
- year: 2022 (scoping review)
- scale: small (review of a still-emerging research base)
- proposed-kind: frontier
- proposed-anchor (induced): 8.4 — Surfacing bias through governance; 6.4 — Cross-domain adaptation
- LENS mapping: Domain 4; Problem Type 4
- LEO anchor: LEO-3; LEO-4
- evidence-source: peer-reviewed (review)
- evidence-flag: **practice-synthesis-tier** (a scoping review of a still-thin literature; the individual primary studies vary in rigor)
- citation: Prinsloo et al., "Learning Analytics on the African Continent: An Emerging Research Focus and Practice," *Journal of Learning Analytics* and ResearchGate publication 361096718, 2022; complementary South African higher-education studies (Lemmens & Henn 2015 SAAIR; scielo development-of-contextualised-framework, 2020)
- domains: learning analytics, higher education, Africa
- capability question: When learning analytics is imported from US/UK/EU contexts into African higher-education systems, do the analytic constructs travel — and who is positioned to validate them?
- what happened / what worked / what's open: The scoping review found only 15 learning-analytics studies on the African continent at the time of writing, with publication output concentrated in Morocco, South Africa, Nigeria, and Ethiopia. The structural finding: limited LMS access, limited institutional resourcing, and limited African-scholar visibility at SoLAR events — the construct-travel problem the dataset's African-data-privacy case (v2-503) frames in governance terms, here documented in research-base terms. The scoping review is the canonical present-state snapshot; what is missing is the deployed capability cases at study tier. Future validation ongoing as the literature matures.
- why this fits the proposed anchor: Non-US, learning-analytics-specific, frontier case that names what the corpus does not yet have evidence on.
- evidence-tier note: Review of an early-stage research base; the absence of dense primary studies is itself the finding. Future validation ongoing.
- which named gap: **Gap 5** — non-US/UK/EU case (Africa).

### v2-917 — Japan PMDA AI/SaMD conditional approval pathway
- year: 2014 (PMD Act) — 2019 (PACMP / conditional approval) — present
- scale: big (regulatory regime) — with embedded small-tier per-device approvals
- proposed-kind: intervention (frontier on individual approvals)
- proposed-anchor (induced): 5.3 — Cross-regime governance seams; 5.4 — Change-control as governance artifact
- LENS mapping: Domain 4; Domain 5; Problem Type 6
- LEO anchor: LEO-4; LEO-5; [NEW] LEO — Delegation with revocation
- evidence-source: program-report + peer-reviewed (PMDA SaMD analyses)
- evidence-flag: **preprint-tier** for the most recent systematic analyses (Aoki et al. medRxiv 2025; Aoki et al. 2021 medRxiv → published)
- citation: "Scoping Review of Regulatory Transparency in AI-based Radiology Software: Analysis of PMDA-approved SaMD Products," medRxiv 2025.10.02.25336333; "Regulatory-approved Deep Learning/Machine Learning-Based Medical Devices in Japan as of 2020: A Systematic Review," PMC9931274; "A decade of review in global regulation and research of artificial intelligence medical devices (2015–2025)," PMC12310608
- domains: medical-device regulation, AI/SaMD, Japan
- capability question: When AI/ML medical devices update post-deployment, can a regulator design a pre-approved change-management protocol (PACMP) that preserves oversight without blocking iteration?
- what happened / what worked / what's open: Japan's 2019 PMD Act amendment introduced conditional early approval and the Post-Approval Change Management Protocol (PACMP): a company can submit proposed product-modification plans at initial submission; once approved, subsequent changes within the protocol's scope receive streamlined review. The DASH for SaMD initiative supports faster reviews and earlier application of SaMD. The 2025 scoping review on PMDA-approved AI radiology software documents transparency variability across approvals. This is the non-US regulatory governance case the corpus needs as a contrast to FDA's evolving SaMD policy, and the structural counterpart to the Epic-Sepsis governance gap (v2-602): a regulator deliberately designing change-control as a deliverable rather than defaulting to "approve once, then watch." Future validation ongoing on outcome durability across approved devices.
- why this fits the proposed anchor: Non-US regulatory governance with explicit change-control architecture — directly responsive to Gap 5 and a natural contrast case for the Epic Sepsis pair.
- evidence-tier note: Mixed — the regulatory framework is documented; the per-approval transparency analyses are preprint or recent. Future validation ongoing.
- which named gap: **Gap 5** — non-US/UK/EU case (Japan).

### v2-918 — CARE Principles for Indigenous Data Governance (Australia, NZ, US)
- year: 2019–2020 (CARE principles); ongoing implementation work
- scale: small (movement / governance principles) — with named institutional implementations (e.g., Lowitja Institute, Ngangk Yira)
- proposed-kind: intervention (frontier on operationalization)
- proposed-anchor (induced): 5.1 — Stakeholder trust and consent; 8.4 — Surfacing bias through governance
- LENS mapping: Domain 4; Problem Type 4
- LEO anchor: LEO-4; [NEW] LEO — Fairness beyond omission (CARE goes beyond omission to *positive* sovereignty)
- evidence-source: peer-reviewed (principles) + program-report (implementations)
- evidence-flag: **practice-synthesis-tier** (the principles are published in a peer-reviewed data-science journal; the deployment cases are still emerging)
- citation: Carroll et al., "The CARE Principles for Indigenous Data Governance," *Data Science Journal* 19(1):43, 2020, DOI 10.5334/dsj-2020-043; "Recognising Indigenous data sovereignty and implementing Indigenous data governance at the Ngangk Yira Institute for Change," *The Lowitja Journal*, 2025, DOI 10.1016/j.lowitj.2025.100030 (S2949-8406(25)00030-0)
- domains: data governance, Indigenous data sovereignty, Australia / NZ / US
- capability question: When data governance built around individual privacy meets Indigenous collective rights, can a new governance framework (CARE: Collective Benefit, Authority to Control, Responsibility, Ethics) make the historically-overridden objection operative?
- what happened / what worked / what's open: The CARE principles were developed by Indigenous Data Sovereignty networks in Aotearoa New Zealand, Australia, and the United States, with the explicit purpose of shifting the framing from "consultation under existing data regimes" to "Indigenous Peoples as the data owners and beneficiaries." The Lowitja Journal 2025 documentation of the Ngangk Yira Institute's implementation provides one of the first detailed case studies of operationalization. This is the governance-objection-correct counterpart at the equity layer: not "this system shouldn't deploy" but "this governance regime must be replaced for deployment to be legitimate." Future validation ongoing on multi-institution adoption and outcomes.
- why this fits the proposed anchor: Non-US-centered (the leadership and the named institutions are AU/NZ), construct-definition-as-governance, and a strong companion for the equity-thread cases.
- evidence-tier note: Peer-reviewed principles; emerging implementation literature. Future validation ongoing.
- which named gap: **Gap 5** + an equity-thread companion for the v2 framework revisions.

---

## Gap 6 — First-person Practice Flywheel candidates (already published, for editor citation)

*Per the editor memo (`03_*` section B1), the first-person Practice Flywheel accounts must be **authored, not researched.** What this section flags is published material the editor may want to **cite** alongside the to-be-authored CIRCUIT/ERKS pieces — practitioner reflections in journals or conference proceedings that demonstrate the genre and provide adjacent first-person accounts of capability-building.*

### v2-919 — Reflective-practice journal account (Lutz / "Using a learning journal")
- year: 2006
- scale: small (single-practitioner reflection)
- proposed-kind: intervention (methodological)
- proposed-anchor (induced): 6.3 — Sustaining tacit capability across generations
- LENS mapping: Domain 2 (Learning Engineering Design — the design iteration narrated in first person); the amended LEO-2 (narrate and defend the design iteration)
- LEO anchor: LEO-2 (amended)
- evidence-source: practitioner
- evidence-flag: **practice-synthesis-tier**
- citation: "Using a learning journal to improve professional practice: a journey of personal and professional self-discovery," *Reflective Practice* 7(3), 2006, DOI 10.1080/14623940600837517
- domains: professional development, reflective practice, learning engineering pedagogy
- capability question: Does a structured first-person reflection practice produce evidence of capability development that an external evaluator could not produce?
- what happened / what worked / what's open: The article documents a practitioner's use of a reflective learning journal to surface theories-in-use, including a shift from single-loop to double-loop reflection. It is offered here not as a case the casebook would teach, but as an *exemplar of the genre* the LENS-revised Domain 2 specifies: first-person process narration as a distinct evidence class with its own honesty convention. The editor may want to cite it alongside the commissioned CIRCUIT/ERKS Flywheel accounts to establish the genre's prior art. Future validation ongoing on whether the form scales beyond single-practitioner self-report.
- why this fits the proposed anchor: It is what the v2 sweep flagged as structurally missing: not a case to teach the framework, but an example of the genre the framework now requires.
- evidence-tier note: Single-author reflection in a peer-reviewed reflective-practice journal. Future validation ongoing.
- which named gap: **Gap 6** — published first-person practice account (genre exemplar).

### v2-920 — CBE—Life Sciences Education primer on reflective practice for STEM educators
- year: 2023
- scale: small (synthesis aimed at practitioner adoption)
- proposed-kind: intervention (methodological synthesis)
- proposed-anchor (induced): 6.4 — Cross-domain adaptation
- LENS mapping: Domain 2; the amended LEO-2
- LEO anchor: LEO-2 (amended)
- evidence-source: peer-reviewed (CBE-LSE is peer-reviewed)
- evidence-flag: **practice-synthesis-tier** (review/primer format)
- citation: "Reflective Practices in Education: A Primer for Practitioners," *CBE—Life Sciences Education*, 2023, DOI 10.1187/cbe.22-07-0148; PMC10228263
- domains: STEM education, professional reflection, faculty development
- capability question: Can the reflective-practice tradition that comes from teaching, nursing, and counseling be adapted into the STEM educator's design-and-improvement workflow?
- what happened / what worked / what's open: The primer synthesizes reflective-practice frameworks (Schön, Brookfield, etc.) for a STEM-faculty audience and supplies adaptation prompts. It is the cross-domain bridge between the educator-reflection literature and the kind of engineering-practice account LENS Domain 2 (amended) is asking for. Useful as a citation companion to the commissioned first-person Flywheel pieces — particularly because the LENS audience overlaps STEM education and engineering practice. Future validation ongoing on STEM-educator adoption.
- why this fits the proposed anchor: It demonstrates that the genre travels — a precondition for asking practitioners in connectomics, defense, or healthcare to produce first-person Flywheel accounts.
- evidence-tier note: Peer-reviewed primer; not an empirical study of outcomes. Future validation ongoing.
- which named gap: **Gap 6** — published first-person/reflective-practice exemplar.

### v2-921 — Software-engineering reflective-practice longitudinal account (work-based learning program)
- year: 2025 (preprint)
- scale: small (one program, longitudinal)
- proposed-kind: frontier
- proposed-anchor (induced): 2.3 — Closed-loop evidence; 6.3 — Sustaining tacit capability
- LENS mapping: Domain 2; Domain 3 (the measurement of reflective development)
- LEO anchor: LEO-2 (amended); LEO-3
- evidence-source: preprint (arXiv)
- evidence-flag: **preprint-tier**
- citation: "The Development of Reflective Practice on a Work-Based Software Engineering Program: A Longitudinal Study," arXiv 2504.20956, 2025
- domains: software engineering education, work-based learning, reflective practice
- capability question: Across a multi-year work-based SE program, does reflective-practice capability itself develop measurably, and what supports its development?
- what happened / what worked / what's open: A longitudinal study of reflective-practice development in a work-based SE program. The relevant signal for LENS: it is one of the few published instruments aimed at measuring the *development of reflective capability* (not just its presence), which is the LENS-revised Domain 2's evaluation problem in miniature. As a preprint, citation requires the explicit tier note. Future validation ongoing — both peer-review pipeline and replication.
- why this fits the proposed anchor: Directly addresses how the proposed amended LEO-2 ("narrate and defend the design iteration") could be assessed across a multi-year program.
- evidence-tier note: arXiv preprint not yet peer-reviewed at the time of this writing. Future validation ongoing.
- which named gap: **Gap 6** — published reflective-practice account from a technical-discipline program.

---

## Gaps remaining after supplemental pass

The supplemental pass has produced **21 candidates** across the six priority gaps. A short, honest accounting of what still came back empty:

- **First-person Practice Flywheel accounts from the LENS-adjacent specific domains** (defense capability engineering, connectomics, ERKS-class efforts). The genre exemplars in Gap 6 (v2-919–921) are reflective-practice papers from adjacent fields, not engineering-practice accounts of the kind the editor memo calls for. These structurally cannot be sourced by research — they must be authored. Recommendation stands: the editor commissions 2–3 from CIRCUIT, an ERKS-class effort, and a LENS-graduate practitioner once the program has them.
- **C3 small-tier role-redesign successes outside healthcare and pharmacy.** v2-908–910 cluster heavily in healthcare. The corpus would benefit from a non-healthcare small-tier role-redesign success — perhaps in field service, manufacturing line work, or trades — but the supplemental sweep did not find one with auditable sourcing at the practice-synthesis tier. Worth a targeted follow-up.
- **C7 small-tier transition successes outside the aviation/nuclear/civic-IT cluster.** v2-911–913 sit in ATM, nuclear, and digital-government. A small-tier transition success in healthcare IT (an EHR migration done well), in defense logistics, or in industrial control-system upgrade was searched for but not surfaced with strong sourcing in this pass.
- **Sub-Saharan African and South Asian failure cases at small tier.** Gap 5 produced positive cases (Rwanda, India litigation, Singapore, Japan) and a frontier case (African LA scoping). What is missing is a documented small-tier *failure* from these regions with strong sourcing — most failure documentation at small tier comes from US/UK/EU regulatory and academic infrastructure. This is itself a finding the corpus should name, not paper over.
- **Pacific Islands / Oceania cases.** Searched; no candidates with documentable institutional sourcing at the supplemental-pass tier. Worth flagging as a known coverage gap rather than filled with weak material.

These gaps are reported here because the brief says explicitly that *naming what could not be filled is more valuable than fabricating coverage.*

---

## Summary

- **Total candidates:** 21 (v2-901 through v2-921)
- **By gap:**
  - Gap 1 (non-edu physical-safety C5 governance): 3 (v2-901, v2-902, v2-903)
  - Gap 2 (corporate / workforce L&D): 4 (v2-904, v2-905, v2-906, v2-907)
  - Gap 3 (C3 interface/role redesign small): 3 (v2-908, v2-909, v2-910)
  - Gap 4 (C7 transition success small): 3 (v2-911, v2-912, v2-913)
  - Gap 5 (non-US/UK/EU): 5 (v2-914, v2-915, v2-916, v2-917, v2-918) — with v2-906 and v2-907 cross-listed
  - Gap 6 (first-person Flywheel candidates): 3 (v2-919, v2-920, v2-921)
- **Cross-listed across gaps:** v2-906 (Gap 2 + 5); v2-907 (Gap 2 + 5); v2-910 (Gap 3 + 5 echo); v2-913 (Gap 4 + 5).
- **Evidence-tier breakdown:**
  - journalism-tier: 2 (v2-902, v2-914)
  - preprint-tier (or preprint→published): 3 (v2-907, v2-915, v2-917, v2-921 — note v2-921 is unambiguously preprint-tier)
  - practice-synthesis-tier: 12 (v2-901, v2-903, v2-904, v2-905, v2-906, v2-908, v2-909, v2-910, v2-911, v2-912, v2-913, v2-916, v2-918, v2-919, v2-920)
- **Every candidate carries the "future validation ongoing" phrase** in its evidence-tier note. That phrase must travel into the printed case, per the editor memo and the brief.
- **Empty gaps named openly** in the section above; not padded.

This supplemental pass should not be merged into `02_*` (the verified primary list). Editor decision: treat as a **separate tier of candidate** when triaging to draft/hold/cut, with the in-text tier flag carried into any printed case.
