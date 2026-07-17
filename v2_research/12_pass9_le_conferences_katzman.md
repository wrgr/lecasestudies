# Capability Matters: A Casebook — Pass 9: LE Conferences + Katzman / Enrollment-Management Cluster

*Focused candidate-discovery pass. The editor flagged two under-covered seams in the v2 corpus: (1) the John Katzman / Princeton Review / 2U / Noodle / enrollment-management / yield-optimization line, and (2) recent learning-engineering conference proceedings (LAK, AIED, EDM, L@S, ICLS/ISLS) and journals (JLA, Computers & Education, JLS, BJET, Cognition Technology & Work) that the prior v2 sweep did not reach. This pass returns 12 candidates: 7 LE-conference candidates and 5 Katzman / enrollment-management candidates. Numbering continues from v2-921; this pass uses v2-922 through v2-933.*

**Anchor systems.** Three per case: induced 1–8 / 32 from `competencies.md`; canonical LENS Domain 1–5 / Problem Type 1–6 from `lens_program/1_LENS_Five_Competencies.md`; LEO mapping including the four NEW LEOs in `v2_research/01_*` (gap attribution; delegation with revocation; judgment under inadequate evidence; fairness beyond omission) and the amended collaboration-measurement LEO.

**COI note.** John Katzman is a collaborator with the editor's home institution (JHU) but not intimately involved. Each Katzman / enrollment-management entry carries a `coi-light` flag — affiliation disclosure similar to JIGSAWS (Case 150), rendered as an affiliation note rather than the standing gold-bordered COI block.

**Evidence discipline.** Every candidate carries an explicit `evidence-source` and, where applicable, an `evidence-flag` declaring its tier. Every flagged entry includes the verbatim phrase *"future validation ongoing"* — that phrase must travel into print if the candidate is drafted.

**Exclusion check performed.** Cross-checked against `02_complete_case_list_build_reference.md` (77 verified candidates) and `11_pass8_weaker_evidence_supplement.md` (21 supplemental). None of the candidates below collide with: v2-115 (Gándara), v2-116 (Yu/Lee/Kizilcec), v2-202 (Purdue Course Signals), v2-501 (Open University ethical-use + OU Analyse — see v2-922 for the distinct teacher-use longitudinal arm), v2-801 (Bartlett lending), v2-802 (Coots fintech fairness), v2-803 (Hoffman pain assessment), v2-804 (Johnson school surveillance), v2-805 (Kirkpatrick), v2-806 (Blume transfer meta), v2-916 (African LA scoping review), or any v1 case. The OU Analyse teacher-use case is treated as a *distinct* candidate from v2-501 because the v2-501 entry covers consent / ethical-use governance; this entry covers the longitudinal evaluation of teacher-PLA usage at multi-cohort scale.

---

## Cluster A — Katzman / Enrollment-Management / OPM / Yield-Optimization

The structural seam: targeted financial-aid distribution and program-management revenue-share arrangements are *capability deployments at population scale* — optimized objects with measurable impact on who attends college, how much they pay, and which programs they're directed toward. The v1 / early-v2 corpus carries Bartlett (lending fairness) and Coots (fintech fairness audit) for the lending pair, Hoffman / pulse-ox / eGFR for the race-construct trio, and Gándara for community-college predictive fairness. The enrollment-management cluster is structurally adjacent but covers *higher-education access pricing* — a distinct deployment surface the corpus has not directly taught.

### v2-922 — Enrollment-Algorithm Yield Optimization Across U.S. Higher Education (Engler / Brookings)
- year: 2021 (Brookings paper); ongoing
- scale: big
- proposed-kind: failure (system functioning as designed produces the failure)
- proposed-anchor (induced): 8.3 — Designing predictions to trigger support, not gatekeeping
- alternate-anchors: 8.1 (Choosing the construct — "willingness to pay" as the optimization target); 8.4 (Surfacing bias through governance, not just technique)
- LENS mapping: Domain 3 (Measurement) + Domain 4 (Context / sociotechnical constraints); Problem Type 5 (Evidence under operational constraint); secondary PT6
- LEO anchor: [NEW] LEO — Fairness beyond omission; [NEW] LEO — Gap attribution; LEO-3
- evidence-source: program-report (Brookings) + journalism + practitioner (vendor case studies)
- evidence-flag: **practice-synthesis-tier** — author hedges named below; vendor data are not auditable
- citation: Engler, A., "Enrollment algorithms are contributing to the crises of higher education," Brookings Institution, 14 Sept 2021, https://www.brookings.edu/articles/enrollment-algorithms-are-contributing-to-the-crises-of-higher-education/
- coi-light: Katzman is a JHU collaborator; affiliation note only (not the vendors named in this case)
- domains: higher education, predictive analytics, access pricing
- capability question: When an institution deploys an algorithm whose explicit optimization target is the minimum scholarship that will still yield enrollment, has the institution delegated a fairness-relevant decision it cannot supervise?
- what happened / what worked / what's open: Engler documents the two-stage architecture of contemporary enrollment-management algorithms — predict each accepted applicant's enrollment probability, then optimize aid offers to maximize either net tuition or yield. He names the vendor landscape: Ruffalo Noel Levitz (~300 institutions), EAB (~150), Rapid Insight (~150), Capture Higher Ed (~100), Othot (30+), Whiteboard Higher Education, Civitas Learning. Vendor case studies report 23.3% yield increases (Univ. of Washington), 33% net tuition increases with a 6-point cut to discount rate (EAB), and 173 additional freshmen without aid-budget increases (Othot). The structural critique: the algorithms "excel at identifying a student's exact willingness to pay," reducing scholarship offers per student and — given cited evidence that $1,000 in extra merit aid raises graduation odds by ~0.9% and unsubsidized loans cut low-income completion by >5% — degrading student-success outcomes downstream. **Hedges Engler names explicitly** (load-bearing, preserve verbatim): (1) "critical details are largely obscured by vendors and colleges"; (2) "it is not clear that this approach is widely in use" — algorithmic optimization vs. manual leveraging is hard to separate; (3) "without auditing specific college data and models, it is impossible to know if this will typically be the case for any specific protected classes"; (4) algorithms "may be" — not definitively are — making existing crises worse. Future validation ongoing.
- why this fits the proposed anchor: 8.3 is precisely about the gatekeeping-vs-support inversion: the prediction here is used to *reduce* the help allocated, not to trigger it. Pairs structurally with Case 39 (Georgia State, the positive existence proof of the support-allocation pattern) as its inverse.
- which named gap: Katzman / enrollment-management cluster — opaque optimization across protected-attribute proxies; merit-aid distribution as a fairness question.
- evidence-tier note: Brookings policy paper drawing on vendor case studies and Engler's analysis. The vendor effect sizes are vendor-reported. Future validation ongoing.

### v2-923 — Crisis Point: Merit-Aid Leveraging at Public Flagships (Burd / New America)
- year: 2020 (report); 2024 (Burd's edited Harvard Education Press volume)
- scale: big
- proposed-kind: failure
- proposed-anchor (induced): 8.1 — Choosing the construct (what gets predicted, what counts)
- alternate-anchors: 5.4 (Change-control and disclosure as governance artifacts — enrollment management as undisclosed policy shift); 8.4
- LENS mapping: Domain 4 (Context / sociotechnical); secondary Domain 3; Problem Type 5
- LEO anchor: [NEW] LEO — Fairness beyond omission; LEO-4
- evidence-source: program-report (New America) + practitioner (book chapters from journalists and researchers)
- evidence-flag: **practice-synthesis-tier** (Burd 2020 is a New America policy report; the 2024 Harvard Education Press volume is a multi-author practitioner / investigative synthesis)
- citation: Burd, S. J., "Crisis Point: How Enrollment Management and the Merit-Aid Arms Race Are Derailing Public Higher Education," New America, Feb 2020, ERIC ED604970, https://files.eric.ed.gov/fulltext/ED604970.pdf; Burd, S. J. (ed.), *Lifting the Veil on Enrollment Management: How a Powerful Industry Is Limiting Social Mobility in American Higher Education*, Harvard Education Press, 2024, ISBN 9781682538920
- coi-light: Katzman is a JHU collaborator; affiliation note. Burd's volume is independent of Katzman.
- domains: higher education, financial aid policy, social mobility
- capability question: When public flagship universities adopt enrollment-management technique from private competitors, what construct have they substituted for the public mission — and who can see the substitution?
- what happened / what worked / what's open: Burd analyzed federal IPEDS data 2001–2017 on public four-year universities' institutional-aid distribution between need-based and non-need-based ("merit") aid. Headline finding: nearly $32 billion of institutional aid went to students the federal government deems able to pay without aid — about $2 of every $5 of institutional aid. The mechanism: state disinvestment plus the competitive imperative to rise in national rankings pushed publics to adopt enrollment-management practices developed at privates, with the consequence that financially needy students at high-merit-aid schools face *larger* unmet-need gaps. The 2024 Harvard Education Press volume (Burd ed.) extends the documentation across multiple authors — researchers, journalists, industry insiders — into a book-length case. The construct-substitution at the center: the load-bearing institutional metric quietly shifted from "students served" to "net tuition revenue per matriculant," and the disclosure required to surface that shift never happened. Future validation ongoing on whether the post-2020 demographic cliff and OPM-industry collapse force a return.
- why this fits the proposed anchor: 8.1 is the construct-choice anchor. The case is exactly the inversion of v2-208 (eGFR race-coefficient removal as construct-deliberation through governance): here construct-substitution happened *without* a governance process, by competitive pressure plus vendor automation.
- which named gap: Katzman / enrollment-management — merit-aid distribution as fairness question; institutional vs. student welfare.
- evidence-tier note: Burd 2020 is policy-tier analysis of public IPEDS data; the 2024 volume is multi-author synthesis. Future validation ongoing on the causal share attributable to enrollment-management firms versus broader market dynamics.

### v2-924 — GAO OPM Oversight Gap (GAO-22-104463)
- year: 2022
- scale: big
- proposed-kind: failure (regulator naming an oversight gap; remedies pending)
- proposed-anchor (induced): 5.3 — Cross-regime and platform governance seams
- alternate-anchors: 5.2 (Human-in-the-loop for consequential decisions — incentive-compensation rule enforcement); 5.4
- LENS mapping: Domain 4 (Context); Problem Type 6 (Human-AI teaming — where the "AI" is the OPM operating recruiting/marketing under university brand)
- LEO anchor: LEO-4; [NEW] LEO — Delegation with revocation
- evidence-source: investigation (GAO audit)
- evidence-flag: *(none — investigation-grade)*
- citation: U.S. Government Accountability Office, "Higher Education: Education Needs to Strengthen Its Approach to Monitoring Colleges' Arrangements with Online Program Managers," GAO-22-104463, published 5 Apr 2022 / released 5 May 2022, https://www.gao.gov/products/gao-22-104463
- coi-light: Katzman founded 2U, named centrally in the OPM debate but not in this GAO report; affiliation disclosure only
- domains: higher education, regulatory oversight, online education
- capability question: When a university delegates student-recruiting, marketing, and program operation to a contracted vendor that receives a percentage of tuition per recruit, can the regulator detect the incentive-compensation violations the contracting structure foreseeably creates?
- what happened / what worked / what's open: The GAO found that as of July 2021, at least 550 colleges contracted with OPMs to support at least 2,900 academic programs; revenue-share arrangements typically gave the OPM 40–60% of tuition revenue per recruit (some up to 80%). The 1992 Higher Education Act amendments prohibited incentive compensation for student recruiters as a fraud-prevention measure; the Department of Education issued 2011 "bundled-services" guidance that exempted OPMs from the ban when recruiting was bundled with other services. The GAO found that colleges and their auditors lacked clear instructions to detect violations, and ED was not collecting the information it needed to oversee the arrangements. The 2024 Department of Education partial rescission of bundled-services guidance and 2U's July 2024 Chapter 11 bankruptcy ended the policy debate at one boundary; the underlying delegation-and-oversight problem remains for the successor OPMs. Future validation ongoing on whether the post-2024 oversight regime materializes.
- why this fits the proposed anchor: 5.3 is the cross-regime seam. The OPM is a private vendor operating under university brand within a federal regulatory regime designed for university-employee recruiters; the seam is the load-bearing failure surface. Pairs structurally with Case 25 (EHR/CPOE under FDA-vs-CLIA seams) and Case 85 (Madoff at securities-vs-CFPB seams).
- which named gap: Katzman / OPM — institutional-vs-student welfare; opacity across protected-attribute proxies; the OPM as the delegated decision-maker.

### v2-925 — USC × 2U Online MSW: When the Delegation Becomes the Product (Luna v. USC class action)
- year: 2023 (filing); 2024 (USC-2U partnership termination)
- scale: big
- proposed-kind: failure
- proposed-anchor (induced): 5.4 — Change-control and disclosure as governance artifacts
- alternate-anchors: 8.3 (predictions/marketing used to recruit rather than support); 4.4 (Pre-committed institutional response — absent here)
- LENS mapping: Domain 4; Problem Type 6
- LEO anchor: LEO-4; [NEW] LEO — Delegation with revocation
- evidence-source: investigation (court filings) + journalism
- evidence-flag: **journalism-tier** (court complaint is investigation-grade; the predatory-targeting reconstruction rests on the complaint and contemporaneous reporting)
- citation: Stephanie Luna v. University of Southern California, class action complaint filed Los Angeles County Superior Court, May 2023; Higher Ed Dive reporting, May 2023; classaction.org and topclassactions.com summaries; Project on Predatory Student Lending statement on USC-2U partnership termination, 2024
- coi-light: Katzman founded 2U; he had departed by the time of the USC MSW expansion. Affiliation note only.
- domains: higher education, online program management, professional licensure programs
- capability question: When a university delegates near-total program operations (recruiting, "counseling," clinical-placement coordination) to a for-profit vendor while charging on-campus tuition prices (>$100,000) for the delegated program, has the university breached a disclosure obligation to applicants — and to the licensure boards downstream?
- what happened / what worked / what's open: USC's online MSW grew from ~300 students per cohort pre-2010 to >3,000 students per cohort, almost entirely through the 2U partnership. The 2023 class action alleges that USC marketed the online program as the "same" as the residential program while outsourcing recruiting, advising, and clinical placement to 2U employees who carried usc.edu email addresses. Plaintiffs further allege that 2U marketers targeted students of color and veterans with aggressive, deceptive tactics. USC and 2U announced partnership termination on the MSW and other programs in 2024. Open questions: the case is in litigation; the specific causal claim about "predatory targeting" relies on the complaint and reporting, not yet on a fact-finder's ruling. The licensure-board half — what graduates were actually able to do, given clinical-placement quality — has not been independently studied. Future validation ongoing.
- why this fits the proposed anchor: 5.4 is the disclosure-as-deliverable anchor. The case is the v1 inBloom-and-Summit pattern at higher-ed scale: a technically-permissible deployment that died on the disclosure half of governance. Pairs structurally with v2-602 (Epic Sepsis governance gap) and v2-902 (Cruise partial disclosure).
- which named gap: Katzman / 2U lineage; the predatory-marketing thread the Tressie McMillan Cottom *Lower Ed* work names structurally; institutional-vs-student welfare.

### v2-926 — Algorithmic College Admissions: Vendors' Claims vs. Applicants' Perceptions (Pyle & Andalibi, CSCW 2025)
- year: 2025 (CSCW publication)
- scale: small
- proposed-kind: frontier
- proposed-anchor (induced): 8.4 — Surfacing bias through governance, not just technique
- alternate-anchors: 5.1 (Stakeholder trust and consent as preconditions); 8.1
- LENS mapping: Domain 4 (Context / sociotechnical); Domain 5; Problem Type 6
- LEO anchor: LEO-4; [NEW] LEO — Fairness beyond omission; LEO-5
- evidence-source: peer-reviewed (PACMHCI / CSCW)
- evidence-flag: *(none — peer-reviewed)*
- citation: Pyle, C. & Andalibi, N., "Algorithmic College Admissions in the U.S.: Distances Between Vendors' Claims and Applicants' Perceptions," *Proceedings of the ACM on Human-Computer Interaction*, Vol. 9, No. 7, Article CSCW369, Nov 2025, DOI 10.1145/3757550
- coi-light: not Katzman-linked; included in this cluster because it sits at the applicant-side of the enrollment-management deployment
- domains: higher education, algorithmic decision-making, HCI
- capability question: When admissions / enrollment-management vendors deploy algorithmic systems whose claims are pitched to institutional buyers, do the affected applicants share, or even understand, the vendors' framing of benefits and harms?
- what happened / what worked / what's open: Eighteen semi-structured interviews with recent U.S. university applicants, using speculative-design probes, surfaced systematic distances between vendor marketing claims (efficiency, fairness, enhanced fit) and applicants' own perceptions of how algorithmic systems would treat them (opacity, distrust, anticipated discrimination). The study is the small-tier *consent-side* companion to v2-922 (Engler / Brookings) and v2-924 (GAO OPM): the deployment runs across applicants who never consented to and never were informed of the algorithmic layer. The authors' own hedge: 18 interviews is the right N for the speculative-design method but not for prevalence claims; "future validation ongoing" on whether the perceptions generalize across applicant demographics and institution types.
- why this fits the proposed anchor: 8.4 is the governance-rather-than-technique anchor. The contribution is naming whose voice was missing from the deployment decision — not refining the algorithm. Pairs structurally with v2-918 (CARE principles for Indigenous Data Governance) as the consent-side correction.
- which named gap: Katzman / enrollment-management cluster — opacity to the affected population.

---

## Cluster B — LE Conferences and Journals: Cases the v2 Sweep Did Not Reach

### v2-927 — Cognitive Tutor Algebra I at Scale: Year-One Null, Year-Two Positive (Pane et al., RAND 2014)
- year: 2014
- scale: big (multi-state, 147 schools, 18,000+ students)
- proposed-kind: mixed (intervention with honest year-by-year heterogeneity)
- proposed-anchor (induced): 2.3 — Closed-loop evidence linked to intervention
- alternate-anchors: 2.4 (Post-deployment surveillance and disconfirmation); 6.4 (Cross-domain adaptation — Cognitive Tutor is the canonical learning-sciences-to-classroom translation)
- LENS mapping: Domain 2 (Learning Engineering Design); Domain 3 (Measurement); Problem Type 4 (Evidence-based design at scale); secondary Problem Type 5
- LEO anchor: LEO-2; LEO-3; [NEW] LEO — Judgment under inadequate evidence (the policy decision rides on the year-2 finding while the year-1 null is in the same study)
- evidence-source: peer-reviewed
- evidence-flag: *(none)*
- citation: Pane, J. F., Griffin, B. A., McCaffrey, D. F., & Karam, R., "Effectiveness of Cognitive Tutor Algebra I at Scale," *Educational Evaluation and Policy Analysis* 36(2):127–144, 2014, DOI 10.3102/0162373713507480; RAND Addendum WR-1050
- domains: K-12 mathematics, intelligent tutoring, education policy
- capability question: When the most rigorously developed intelligent tutoring system in the field is deployed at scale, does the measured effect arrive on the timeline the marketing implies?
- what happened / what worked / what's open: The RAND team cluster-randomized 147 schools across seven states to continue their current Algebra I curriculum or to adopt Cognitive Tutor Algebra I (CTAI) for two years. Year-one posttest scores: no significant difference between conditions. Year-two posttest scores: CTAI high schools significantly outperformed control schools. The honest reading the authors press: a one-year evaluation would have published a null result; a two-year evaluation surfaced a real effect; both findings were in the same trial. This is the post-deployment-surveillance anchor at small-tier translated into a *design lesson* for evaluation horizons: the timeline of the evaluation is itself a falsifiable design choice. Pairs structurally with v2-202 (Purdue Course Signals reverse-causality) as the methodological-discipline pair, and with v1 Case 42 (Cognitive Tutor) as the direct deeper-evidence-of update.
- why this fits the proposed anchor: 2.3 is closed-loop evidence. The closed loop here ran for two years; closing it at one year would have produced the wrong decision. The "judgment under inadequate evidence" LEO is directly motivated.
- deeper-evidence-of-v1: Case 42 (Cognitive Tutor) — distinct because v1 covers the system; this entry covers the at-scale evaluation and the timeline-of-evidence lesson.

### v2-928 — ASSISTments National Replication: From Math Effect to Long-Term Follow-Through (Roschelle et al., AERJ 2016; Murphy et al., 2020; Heffernan ongoing)
- year: 2016 (initial RCT); 2020 (extension); ongoing follow-through trials
- scale: small (multi-school RCT)
- proposed-kind: intervention
- proposed-anchor (induced): 2.3 — Closed-loop evidence linked to intervention
- alternate-anchors: 6.4 (Cross-domain adaptation — the virtual-training adaptation arm); 8.3 (predictions-to-trigger-support, given the larger effects for lower-performing and minority students)
- LENS mapping: Domain 2; Domain 3; Problem Type 4
- LEO anchor: LEO-2; LEO-3; [NEW] LEO — Gap attribution (the heterogeneous-effect finding attributes a larger share of the gain to lower-performing students)
- evidence-source: peer-reviewed
- evidence-flag: *(none)*
- citation: Roschelle, J., Feng, M., Murphy, R. F., & Mason, C. A., "Online Mathematics Homework Increases Student Achievement," *AERA Open* 2(4):1–12, 2016, DOI 10.1177/2332858416673968; Murphy, R. et al., 2020 follow-up; Arnold Ventures RCT of virtual-training adaptation (ongoing through 8th-grade follow-up)
- domains: K-12 mathematics, homework support, formative assessment
- capability question: Can a research-driven homework-support platform produce an effect that survives the move from a tightly-supervised single-site trial to a multi-state RCT with rural districts and minimal teacher-side change?
- what happened / what worked / what's open: The Roschelle et al. cluster RCT (46 schools, 3,035 students) found that 7th-graders assigned to ASSISTments outperformed controls on end-of-year math, with the largest gains for lower-performing students; minority students benefited more from the intervention. Murphy et al. (2020) reported that the 7th-grade effect persisted into 8th-grade outcomes. A subsequent Arnold Ventures-funded extension tested a lower-cost virtual-training adaptation in predominantly rural areas, with longitudinal follow-through extended through end of 8th grade. The honest framing: ASSISTments is one of the few EdTech tools with replicated multi-state RCT evidence at meaningful effect sizes and with deliberate attention to the heterogeneity that matters most for equity outcomes. Open question: whether the virtual-training adaptation matches the in-person-training arm; whether the effect persists post-grade-8.
- why this fits the proposed anchor: 2.3 is closed-loop evidence. The closed loop here is unusually clean: trial, replication, longitudinal follow-through, adaptation tested. The 8.3 alternate is load-bearing because the *heterogeneous-effect* finding is the equity-relevant fact.
- deeper-evidence-of-v1: Adjacent to but distinct from Case 42 (Cognitive Tutor) and the broader EdTech literature; ASSISTments is structurally different (it augments homework, doesn't replace curriculum) and the evidence base is its own.

### v2-929 — OU Analyse Predictive Learning Analytics: Teacher-Use Longitudinal Evaluation (Herodotou et al., BJET 2019 + LAK 2023 three-year follow-up)
- year: 2019 (initial); 2023 (three-year post-implementation follow-up)
- scale: big (Open University UK; 559 teachers, 14,000+ students at evaluation; 150,000+ students at full deployment)
- proposed-kind: intervention
- proposed-anchor (induced): 3.4 — Communicate evidence honestly to technical and non-technical stakeholders (LENS subobjective; sits closest to induced 5.2 — Human-in-the-loop for consequential decisions)
- alternate-anchors: 2.4 (Post-deployment surveillance and disconfirmation); 6.2 (Operator-to-institution feedback channels)
- LENS mapping: Domain 3 (Measurement); Domain 5; Problem Type 5; secondary Problem Type 6
- LEO anchor: LEO-3; LEO-5; [NEW] LEO — Delegation with revocation (teacher chooses to act on or override the prediction)
- evidence-source: peer-reviewed
- evidence-flag: *(none — the underlying papers are peer-reviewed in BJET and ACM LAK proceedings)*
- citation: Herodotou, C., Hlosta, M., Boroowa, A., Rienties, B., Zdrahal, Z., & Mangafa, C., "Empowering online teachers through predictive learning analytics," *British Journal of Educational Technology* 50(6):3064–3079, 2019, DOI 10.1111/bjet.12853; Herodotou, C. et al., "Predictive Learning Analytics and University Teachers: Usage and perceptions three years post implementation," LAK '23, DOI 10.1145/3576050.3576061; Herodotou et al., "A large-scale implementation of predictive learning analytics in higher education: the teachers' role and perspective," *Educational Technology Research and Development*, 2019, ERIC EJ1227972
- domains: higher education, learning analytics, distance learning
- capability question: When a predictive-analytics dashboard is deployed across an entire distance-learning institution, does teacher use of the dashboard measurably move student outcomes — and does usage stick three years post-implementation?
- what happened / what worked / what's open: Across 9 courses and 559 teachers (189 with OUA access), teachers' engagement with predictive learning analytics was associated with measurable improvements in student performance for the >14,000 students in their cohorts. The 2023 LAK three-years-post follow-up extended the picture into questions of *sustained adoption*: how teachers' use of the predictions stabilized, what fraction continued to act on them, and how perceptions evolved. This is the OU Analyse / Open University story at a different cut than v2-501 — v2-501 covers the consent-and-ethical-use governance frame ("Policy on Ethical Use of Student Data" + Analyse as governed deployment); this candidate covers the *post-deployment teacher-use evaluation* at multi-cohort scale, which v2-501 does not teach. The authors' hedges named: causal attribution to OUA use specifically (vs. teacher selection effects) is bounded; the 2019 study uses propensity-style matching but not RCT randomization across teachers. Future validation ongoing on multi-institution transfer (the system has been licensed beyond the OU; transfer outcomes are not yet in the peer-reviewed literature).
- why this fits the proposed anchor: This is the rare *successful* LE intervention with both deployment scale and longitudinal teacher-use evidence — the C2-positive-spine ballast at a journal-graded evidence tier the corpus needs. Pairs structurally with v2-501 (the same system, governance frame) and v2-202 (Course Signals, the methodologically-failed predecessor in the same problem space).
- deeper-evidence-of: Companion to v2-501; v2-501 carries the governance lesson, this candidate carries the post-deployment teacher-use lesson. The editor may decide to fold both into one expanded OU case or to keep two anchored at the two different LENS-frames.

### v2-930 — The Doer Effect at Scale: From One-Course Causal Claim to Seven-Course Replication (Van Campenhout et al., LAK 2023)
- year: 2023 (LAK paper); 2025 (L@S replication using AI-generated questions); 2025 (LAK non-WEIRD radio/phone extension)
- scale: small (multi-course studies aggregating into a replication corpus)
- proposed-kind: intervention (methodological — the closing of an evidence loop)
- proposed-anchor (induced): 2.3 — Closed-loop evidence linked to intervention
- alternate-anchors: 6.4 (Cross-domain adaptation — the non-WEIRD extension); 1.2 (Capability envelope at the edge of training — the radio/phone arm probes the edge)
- LENS mapping: Domain 2; Domain 3; Problem Type 4
- LEO anchor: LEO-2; LEO-3
- evidence-source: peer-reviewed
- evidence-flag: *(none)*
- citation: Van Campenhout, R., Jerome, B., Dittel, J. S., & Johnson, B. G., "The Doer Effect at Scale: Investigating Correlation and Causation Across Seven Courses," LAK23, DOI 10.1145/3576050.3576103; Van Campenhout et al., "Scaling the Doer Effect: A Replication Analysis Using AI-Generated Questions," L@S '25, DOI 10.1145/3698205.3729545; Butler, D. et al., "Does the Doer Effect Generalize To Non-WEIRD Populations? Toward Analytics in Radio and Phone-Based Learning," LAK '25, DOI 10.1145/3706468.3706505 (also arXiv 2412.20923)
- domains: learning analytics, online learning, mobile/distance learning
- capability question: When a single-course causal finding (doing-vs-reading) is treated as a design principle, what does the replication record show as the principle is taken across courses, AI-generated content, and non-WEIRD delivery modalities?
- what happened / what worked / what's open: The original "doer effect" causal claim (Koedinger et al., LAK 2016) was: students who interact with embedded practice activities learn more than students who only read, even after controlling for prior achievement and engagement, and the effect appears causal. Van Campenhout et al. (2023) replicated this across seven courses with 15.2 million data points, reporting a stable doer-effect signal. The 2025 L@S replication used AI-generated practice questions and reported the effect held with auto-generated content — a meaningful generalization given the rising deployment of LLM-generated practice. The 2025 LAK non-WEIRD extension tested the effect for learners receiving lecture content via community radio and practice via basic mobile phones; the doer-effect relationship was weaker for learners with higher prior educational attainment — the headline non-WEIRD finding the corpus most needs (effect heterogeneity across populations is the *result*, not noise). Future validation ongoing on long-term retention and on transfer beyond the included content domains.
- why this fits the proposed anchor: 2.3 in the most productive sense — the loop is closed by replication, not just by a single trial. The cross-population extension is what makes this a learning-engineering case: the design principle generalizes, but not uniformly, and the heterogeneity itself is teachable.
- which gap: LE-conferences gap — long-term-outcome and cross-population evidence on a deployed design principle.

### v2-931 — Evaluating an AI Tutor for Bias Across Foundation Models (LiveHint AI, AIED 2025)
- year: 2025
- scale: small (lab evaluation of a deployed-in-development product)
- proposed-kind: frontier (failure-mode characterization)
- proposed-anchor (induced): 8.2 — Demographic stratification of validation and outcomes
- alternate-anchors: 8.1 (Choosing the construct — what counts as "fair tutor response"); 8.4
- LENS mapping: Domain 3; Domain 5; Problem Type 6
- LEO anchor: LEO-3; LEO-5; [NEW] LEO — Fairness beyond omission
- evidence-source: peer-reviewed (AIED proceedings)
- evidence-flag: *(none)*
- citation: "Evaluating an AI Tutor for Bias Across Different Foundation Models," AIED 2025, Springer/ACM proceedings, DOI 10.1007/978-3-031-98465-5_43; preprint at https://renzheyu.com/papers/AIED2025_Tutor.pdf
- domains: AI in education, intelligent tutoring, algorithmic fairness
- capability question: When an LLM-based tutor under development is probed with identity-marked student queries (nationality, dialect), do responses differ in tone and detail across identities — and how much does the choice of foundation model drive the differences?
- what happened / what worked / what's open: The study tested LiveHint AI (an LLM-based tutor under development at Carnegie Learning) by repeatedly prompting it with realistic student queries modified to include explicit or implicit statements of identity, then assessing responses for tone, detail, and pedagogical appropriateness. The choice of foundation model materially affected the level of differentiation in responses. The honest framing the authors preserve: this is *not* a deployment bias audit (LiveHint is in development); it is a methods-development paper proposing how foundation-model-level fairness evaluation should be done before deployment. Open question: whether the differentiation patterns documented in lab-style probing match what students encounter in deployed conversations, and whether vendor selection across foundation models will become a routine fairness deliverable. Future validation ongoing.
- why this fits the proposed anchor: 8.2 is demographic-stratified validation. This is the small-tier AI-tutor-equivalent of the v2-209 (pulse oximetry) demographic-stratification lesson translated into the foundation-model-choice variable — the variable that didn't exist when v2-210 (proctoring bias) was studied.
- which gap: LE-conferences gap — equity / fairness study that extends the race-construct trio (Cases 105, 106, 107, 156) without duplicating it; the foundation-model layer is structurally new.

### v2-932 — Improving Student Learning with Hybrid Human-AI Tutoring (LAK 2024 best paper)
- year: 2024
- scale: small (three-study quasi-experiment)
- proposed-kind: intervention
- proposed-anchor (induced): 3.4 — *(LENS subobjective; closest induced is 6.4 — Cross-domain adaptation of proven interventions, in particular the AI-augmentation pattern)*
- proposed-anchor (induced, primary): 6.4 — Cross-domain adaptation of proven interventions
- alternate-anchors: 2.3 (closed-loop evidence); 3.1 (cue/alert design as the AI-augmentation deliverable)
- LENS mapping: Domain 5 (Emerging Systems); Domain 2; Problem Type 6 (Human-AI teaming)
- LEO anchor: LEO-5; LEO-2; [NEW] LEO — Delegation with revocation
- evidence-source: peer-reviewed
- evidence-flag: *(none)*
- citation: Thomas, D. R. et al., "Improving Student Learning with Hybrid Human-AI Tutoring: A Three-Study Quasi-Experimental Investigation," LAK '24, DOI 10.1145/3636555.3636896
- domains: tutoring, hybrid human-AI systems, K-12
- capability question: When AI augmentation is added to human tutoring (not used to replace it), do learning outcomes improve relative to either alone — and what does the human tutor have to be authorized to do for the augmentation to work?
- what happened / what worked / what's open: Three quasi-experimental studies of hybrid human-AI tutoring deployments reported improvements in student learning relative to comparison conditions. The contribution the case carries for the LENS framework: the AI is positioned as augmentation, not delegation; the human tutor retains the authorization to override and re-direct; the measured outcome is student learning, not AI-system fidelity. This is the small-tier intervention-side counterpart to v2-601 (TREWS — the clinician-AI teaming case that worked) translated into education. Open questions: longitudinal effect persistence; whether the design transfers to lower-resource tutoring contexts where human-tutor availability is the binding constraint. Future validation ongoing.
- why this fits the proposed anchor: 6.4 is cross-domain adaptation — taking the human-AI teaming pattern from clinical (TREWS) into tutoring. The Problem-Type-6 anchor for the LENS curriculum is the central teaching, and the [NEW] LEO on delegation-with-revocation is where the case sits cleanly.
- which gap: LE-conferences gap — adaptive-system role redesigns beyond v2-203 BCMA / v2-204 I-PASS (Cases 142, 143).

### v2-933 — Multimodal Learning Analytics Deployment In-the-Wild: A First-Person Lessons-Learned Account (Martinez-Maldonado et al., arXiv / LAK adjacency)
- year: 2023 (arXiv) — published LAK and related venues
- scale: small (multi-deployment retrospective)
- proposed-kind: intervention (frontier; methodological-reflective)
- proposed-anchor (induced): 6.3 — Sustaining tacit capability across generations
- alternate-anchors: 2.2 (LENS amended — narrate and defend the design iteration); 2.4
- LENS mapping: Domain 2 (Learning Engineering Design — explicitly the amended LEO-2 on narrating design iteration); Problem Type 4
- LEO anchor: LEO-2 (amended); LEO-3
- evidence-source: practitioner / preprint
- evidence-flag: **preprint-tier** — the arXiv version is preprint; some sections published in adjacent peer-reviewed work
- citation: Martinez-Maldonado, R. et al., "Lessons Learnt from a Multimodal Learning Analytics Deployment In-the-Wild," arXiv 2303.09099, 2023, https://arxiv.org/pdf/2303.09099 (also published in adjacent LAK and IEEE TLT outlets)
- domains: multimodal learning analytics, classroom deployment, design-based research
- capability question: When a multimodal learning-analytics system (eye-tracking, audio, spatial positioning) is taken from lab to in-the-wild classroom deployment, what does the practitioner team learn that the published findings papers do not contain?
- what happened / what worked / what's open: The paper is structured as a first-person practitioner reflection on lessons from multiple in-the-wild MMLA deployments — what worked, what failed, what the team would have done differently. It is offered here not as a case the casebook would teach as a deployment-result case (the deployment results live in adjacent papers); it is offered as a *genre exemplar* of the published first-person Practice Flywheel account the editor memo (B1) calls for. Pairs structurally with v2-919 (Lutz reflective journal), v2-920 (CBE-LSE reflective-practice primer), and v2-921 (SE work-based reflective-practice longitudinal) as the LE-specific exemplar of the genre the framework now requires. Future validation ongoing — both peer-review pipeline for this specific version and the broader question of whether the genre takes hold in the LE community.
- why this fits the proposed anchor: 6.3 is sustaining tacit capability — the practitioner-knowledge that walks out the door if it isn't narrated. The amended LEO-2 ("narrate and defend the design iteration") is directly motivated by exactly this kind of account.
- which gap: LE-conferences Gap 6 — first-person practitioner reflections / DBR journals as published-first-person Practice Flywheel candidates.

---

## Gaps remaining after Pass 9

Honest accounting of what came back empty or thin in this pass:

- **JLS (Journal of the Learning Sciences) and BJET head-of-list 2024–25 systematic-intervention case.** Searched. The literature is rich in reflective and design papers; what is missing is a *single deployed intervention with both rigorous outcome evidence and an honest hedge* at the JLS/BJET tier that doesn't duplicate ASSISTments / OU Analyse / Cognitive Tutor / I-PASS. Worth a targeted re-pass with a learning-sciences editor in the loop.
- **Cognition Technology & Work** — the brief named this journal explicitly. Searched but did not surface a publication in 2023–25 that fits the gap without colliding with existing v2 cases. The CTW corpus on aviation, ATC, and process-control HF is dense but largely already represented through v1 EGPWS / TCAS / Patriot / Helios and v2 NextGen / glass-cockpit cases. A targeted re-pass focused on healthcare-HF or maritime-HF cases in CTW would be productive.
- **EDM (Educational Data Mining) failure-mode case.** Searched. The 2023–24 EDM literature on knowledge-tracing limitations is methodologically dense but largely *methods-improvement papers* rather than *deployment-failure case studies*. The Coots fintech-fairness case (v2-802) and the Yoder-Himes proctoring case (v2-210) are the closest analogues in the v2 corpus; the EDM-specific deployment failure with auditable sourcing did not surface in this pass.
- **A Katzman-authored or Katzman-co-authored Noodle / 2U *postmortem* with verifiable evidence.** Katzman has written extensively about the OPM industry, including a 2016 essay predicting the unraveling of the revenue-share model, but the Noodle / 2U *internal* postmortem data are practitioner-channel rather than peer-reviewed or investigation-grade. The case can be drafted *around* the Engler / Burd / GAO / USC-2U evidence (above) with Katzman's published critique cited; a stand-alone Katzman-internal case would require either an authored first-person account (parallel to the CIRCUIT/ERKS Flywheel commissions) or a future investigation-grade source.
- **A LAK / AIED / EDM case from outside the US / UK / EU.** The non-WEIRD radio/phone Doer-Effect paper (folded into v2-930) is the closest match. The Pyle & Andalibi CSCW paper (v2-926) is US-applicant-focused. The corpus would benefit from a deployed-and-evaluated LE case in India / Sub-Saharan Africa / Latin America with stronger sourcing than the African-LA scoping review (v2-916) supplies. Worth flagging as a *coverage gap*, not papering over.

These gaps are reported because the brief is explicit that *naming what could not be filled is more valuable than fabricating coverage*.

---

## Summary

- **Total candidates:** 12 (v2-922 through v2-933)
- **By cluster:**
  - Cluster A (Katzman / enrollment-management / OPM / yield-optimization): 5 — v2-922 (Engler/Brookings), v2-923 (Burd/New America + Harvard Ed Press 2024), v2-924 (GAO-22-104463), v2-925 (USC × 2U Luna), v2-926 (Pyle & Andalibi CSCW)
  - Cluster B (LE conferences and journals): 7 — v2-927 (Pane et al. RAND 2014), v2-928 (Roschelle/Murphy ASSISTments), v2-929 (Herodotou OU Analyse teacher-use), v2-930 (Doer Effect replication arc), v2-931 (LiveHint AI bias evaluation, AIED 2025), v2-932 (Hybrid Human-AI Tutoring, LAK 2024), v2-933 (MMLA in-the-wild first-person account)
- **Evidence-tier breakdown:**
  - investigation: 1 (v2-924 GAO)
  - peer-reviewed (no flag): 6 (v2-926 CSCW, v2-927 EEPA/RAND, v2-928 AERA Open, v2-929 BJET + LAK, v2-930 LAK + L@S, v2-931 AIED, v2-932 LAK)
  - journalism-tier: 1 (v2-925 USC × 2U Luna — court complaint investigation-grade + journalism reconstruction of predatory-targeting mechanism)
  - practice-synthesis-tier: 2 (v2-922 Engler/Brookings, v2-923 Burd/New America + Harvard Ed Press)
  - preprint-tier: 1 (v2-933 MMLA arXiv lessons-learned)
- **COI flag (coi-light):** 4 — v2-922, v2-923, v2-924, v2-925 (Katzman / 2U lineage; Katzman is a JHU collaborator). v2-926 is in the cluster but Katzman-independent.
- **Cross-listed across gaps:** v2-922, v2-923, v2-924, v2-925 anchor in induced C8 (equity) and LENS Domain 4 (sociotechnical context); v2-926 anchors in C8 with Domain 4 + Domain 5; v2-927 / v2-928 are C2 (evidence architecture) closed-loop pairs; v2-929 is C5 / Problem Type 5 with the [NEW] delegation-with-revocation LEO; v2-930 is C2.3 with a 6.4 cross-domain alternate; v2-931 is C8.2 demographic-stratification; v2-932 is C6.4 with PT6; v2-933 is the C6.3 / amended-LEO-2 genre exemplar.
- **Priority targets that came back empty or thin:** noted in "Gaps remaining" above — JLS/BJET deployed-intervention case beyond the named four; Cognition Technology & Work case beyond existing aviation coverage; EDM deployment-failure case with auditable sourcing; Katzman-internal Noodle/2U postmortem at investigation tier; non-US-UK-EU LE case at deployment tier.

**Editor handoff:** This pass should not be merged into `02_*`. Treat as a separate candidate tier when triaging to draft / hold / cut, with the in-text tier flag carried into print. The Katzman-cluster `coi-light` flag is binding on v2-922 through v2-925; render as an affiliation note (JIGSAWS-style), not the gold-bordered standing COI block. The Cluster B candidates are journal- and conference-tier evidence the v2 corpus needs to round out LE-conference coverage without recycling what is already drafted.
