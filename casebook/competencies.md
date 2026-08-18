# Learning-engineering competencies (grounded in the casebook)

> **Numbering note (July 2026).** Case numbers in this document were re-keyed to the First Edition topical numbering (Cases 1–205, seven parts) during the July 2026 editorial pass; the parenthetical names are the stable identifiers. The pass also added six K-12 cases (60 Houston EVAAS, 61 Science of Reading / Sold a Story, 62 Gates Intensive Partnerships / MET, 63 LAUSD iPad / CCTP, 64 Newark / The Prize, 95 PBIS Implementation Fidelity) to the sub-competency lists they anchor; the induction itself (thresholds, clusters) is unchanged from the v1 read. The disaster prevention/relief expansion (July 2026) added five more: 167 Hurricane Katrina / FEMA, 170 West Africa Ebola response, 171 Hurricane Maria logistics (all 1.1 — engineered vs. stated requirements), 178 UN Cluster Approach (6.1), and 179 JHU COVID Dashboard (2.1). Two ambiguous numeric cross-references in the cluster-2 preamble were resolved to named cases.

*The eight competencies below were **induced** from the first 100 cases of the Capability Matters casebook. That is the derivation, and it is historical. What the framework now rests on is broader and differently shaped: the corpus stands at **191 active cases**, and the framework is **supported by** and **validated against** that corpus rather than re-derived from it. Saying the framework is "induced from the casebook" overstates the relationship — the induction ran on the v1 hundred and has not been re-run. Failures (n=89) show what's missing; interventions (n=75) show what works; frontier cases (n=27) show what the discipline is being asked to specify next.*

> **What the `Cases:` lines are.** Under each sub-competency they name the cases that best establish it — evidence offered, not coverage claimed. They are not an index. A case's `induced-anchor` in the casebook will frequently not appear in the list for that sub-competency: 66 of the 190 anchored active cases are listed under their own anchor, and the lists were never maintained as an exhaustive concordance. A case missing from a list is not a mis-anchored case, and the two should not be reconciled mechanically.

## What this framework rests on — and what it doesn't

**The v1 sampling bias was real, was named here, and has since been substantially closed. This section is retained because the induction still carries the shape of its origin.**

The v1 casebook was shaped by what gets documented in public. It over-sampled catastrophic, news-visible failures from defense, aviation, healthcare, finance, and high-stakes ed-tech, and under-sampled the everyday, study- and program-scale work that fills most of a learning engineer's actual practice. That sampling bias propagated into the clusters below, which were induced from those hundred cases and have not been re-induced since.

Specifically, three competencies are read most narrowly because of it:

- **Competency 2 (Evidence architecture)** is induced almost entirely from institution-deceives-itself cases at the Wells Fargo / VA / BP scale. The everyday version of the same competency — *did this micro-intervention actually move the learner, and how do you know* — is barely represented.
- **Competency 5 (Governance architecture)** is induced from catastrophic-scale governance failures. The routine forms — IRB-grade study protocols, change-control for instructional content, disclosure of instructor effects, vendor-data agreements — are barely represented.
- **Competency 8 (Equity and construct definition)** plays out most often at study- and program-scale (a cohort effect in a single-district pilot, a construct-validity drift across raters). Those rarely make the news, so the competency is named mostly from its loudest instances.

The second bias v1 carried was the thinness of its *intervention* cases: 16 of 100, with two competencies — Interface and role design (C3) and Capability under system change (C7) — described entirely by what their failure looks like. The v2 sweep was commissioned to close exactly this, under binding floors in *each* scale tier (`big` for v1's catastrophic/news-visible shape; `small` for journal/conference/program-scale evidence): at least 15 cases and at least 30% intervention cases per tier.

**Measured against the live corpus (August 2026), both floors are met.**

| Tier | Cases | Interventions | Failures | Frontier |
|---|---:|---:|---:|---:|
| `big` | 145 | 44 (30%) | 86 | 15 |
| `small` | 46 | 31 (67%) | 3 | 12 |
| **total** | **191** | **75 (39%)** | **89** | **27** |

The `big` tier clears the 30% floor by a single case, so it is met, not comfortably met — a decision to quarantine or add one big-tier case moves it. What has changed since v1 is the balance, not the induction: the clusters and thresholds below are still the v1 read. Read the framework accordingly — it is a set of clusters induced from a high-stakes-failure sample and since supported by a corpus with a very different intervention balance. A re-induction against all 191 cases is a live question, and it could move the 8/32 structure; it has not been run.

## Method

The induction was run once, on the v1 hundred, and is reported here as it was performed. I read the LENS-approach and summary fields for all 100 cases, set aside the LEN 1–10 course tags and the T/D/N/H/G/K modes as seed categories, and instead listed the recurring capability demand that each case names. I then clustered those demands inductively: a candidate top-level competency was retained only if at least ten distinct cases demanded it, and a sub-competency only if at least three distinct cases established it. Where a candidate cluster slimmed below threshold, I either dropped it or merged it into an adjacent cluster (e.g., "construct definition" merged into the equity sub-cluster; "cross-domain transfer" merged into knowledge & adoption). The eight competencies below survived this pruning. The optional crosswalk at the end observes how the induced clusters relate to the modes T/D/N/H/G/K and to LEN 1–10 — purely as observation, not as anchor.

## Summary table

| # | Competency | Sub-competencies | Cases (n) |
|---|---|---|---|
| 1 | Capability requirements specification under operational reality | Engineered vs. stated requirements; Capability envelope at the edge of training; Cross-organization and joint-service requirements; Requirements as a sustainment deliverable | 26 |
| 2 | Evidence architecture the institution cannot deceive itself with | Measuring the failure mode you care about; Protecting the measurement from gaming; Closed-loop evidence linked to intervention; Post-deployment surveillance and disconfirmation | 27 |
| 3 | Interface and role design at the human–automation boundary | Cue and alert design as a capability deliverable; Monitoring as an unsupportable role; Mode and state transparency under stress; Recoverability from automation failure | 20 |
| 4 | Pairing mechanism with authorization — and the response that makes it real | Frontline authority to signal, and a response obliged to arrive; Non-punitive reporting with credible commitment; Authority gradient and team-coordination redesign; Pre-committed institutional response | 13 |
| 5 | Governance architecture for deployment: consent, oversight, accountability | Stakeholder trust and consent as preconditions; Human-in-the-loop for consequential decisions; Cross-regime and platform governance seams; Change-control and disclosure as governance artifacts | 24 |
| 6 | Cross-organization and cross-time knowledge transfer | Industry-level institution building after catastrophe; Operator-to-institution feedback channels; Sustaining tacit capability across generations; Cross-domain adaptation of proven interventions | 20 |
| 7 | Capability under system change, transition, and aging assumptions | Re-verifying inherited designs in new envelopes; Deployment and reuse as verification events; Legacy assets aging past their oversight regime; Multi-layer drift and cumulative inadequacy | 16 |
| 8 | Equity and construct definition as design commitments | Choosing the construct (what gets predicted, what counts); Demographic stratification of validation and outcomes; Designing predictions to trigger support, not gatekeeping; Surfacing bias through governance, not just technique | 13 |

## 1. Capability requirements specification under operational reality

The recurring demand is to derive what the work actually requires from operational analysis — and to make that specification falsifiable against outcomes — rather than inheriting the requirements implied by the contract, the schedule, or the prior platform. Cases that fail here mistake stated readiness for real readiness (Case 124, USS Fitzgerald) or engineer human capability out of the loop to avoid the cost of sustaining it (Case 97, 737 MAX). The intervention cases (Atlas Air 3591, Case 110; Davis-Besse, Case 160) show what the deliverable looks like when it is actually produced.

### 1.1 Engineered vs. stated requirements

Distinguish the readiness an organization declares from the readiness the engineered system can actually produce — and treat the gap itself as the analyst's primary artifact. Cases here either failed because nobody owned that gap or succeeded by making the gap visible and fundable.
Cases: 124 (USS Fitzgerald & McCain), 125 (INDOPACOM Marine training), 140 (Navy Surface Warfare Reform), 126 (F-35 Sustainment), 137 (U.S. Nuclear Navy / Rickover), 139 (GIFT adoption gap), 167 (Hurricane Katrina / FEMA), 170 (West Africa Ebola response), 171 (Hurricane Maria logistics).

### 1.2 Capability envelope at the edge of training

Specify the operational envelope separately from the trained envelope, and design for the boundary between them — particularly transitions out of automated or normal-regime operation. The recurring failure is that training covered the routine and not the edge.
Cases: 102 (Air France 447), 103 (Kegworth), 105 (Helios 522), 96 (AeroPerú 603), 106 (TransAsia 235), 107 (Eastern 401).

### 1.3 Cross-organization and joint-service requirements

When a capability spans services, agencies, or contractors, no single party owns the integrated requirement, and the interface between them becomes the load-bearing artifact. The recurring failure is that each party did its piece correctly while the whole did not work.
Cases: 128 (Operation Eagle Claw), 98 (Mars Climate Orbiter), 113 (Boeing Starliner), 135 (9/11 Intelligence Sharing). (Military Fratricide moved to 3.3 — the load-bearing lesson is combat-ID trust in automated identification, not the joint-service requirement layer, which remains a secondary.)

### 1.4 Requirements as a sustainment deliverable

Capability requirements are not satisfied at fielding; they must be continuously specified for the maintainer pipeline, the technical-data pathway, the depot, and the operator population. The recurring failure is fielding a platform faster than the infrastructure to sustain it.
Cases: 134 (V-22 Osprey), 126 (F-35 Sustainment), 113 (Boeing Starliner), 62 (Gates Intensive Partnerships / MET). (USS Vincennes cross-listing dropped — nothing in the case is a sustainment deliverable; its true home is 3.3, mode/state transparency under stress.)

## 2. Evidence architecture the institution cannot deceive itself with

Across the dataset the most consistent failure is not the absence of measurement but the presence of the wrong measurement, gamed measurement, or measurement that the institution operating the instrument also controls. The competency is to design instruments that surface the harm they exist to detect (Upper Big Branch, Case 162; Texas City, Case 161) and that resist the incentive to make them lie (VA wait times, Case 7; Volkswagen Dieselgate, Case 149). Interventions (CRM & CAST, Case 117; Keystone ICU, Case 19; ASRS, Case 119; Bristol, Case 24) show what the deliverable looks like when it is built right.

### 2.1 Measuring the failure mode you care about

The construct measured must be the construct that produces harm, not the construct that is easy to count. Personal-safety vs. process-safety (Texas City), death certificates vs. medical error (Case 8), and aggregate revenue vs. account legitimacy (Wells Fargo) are the canonical inversions.
Cases: 8 (Medical Errors), 161 (Texas City BP), 4 (Mid Staffordshire), 148 (Wells Fargo), 150 (LIBOR), 24 (Bristol Heart Babies), 60 (Houston EVAAS), 179 (JHU COVID Dashboard).

### 2.2 Protecting the measurement from gaming

When the institution being measured controls the instrument, the instrument will be gamed. The competency is to specify independence, audit, and the boundary between operator and inspector, and to treat measurement-gaming as a foreseeable design load rather than a moral aberration.
Cases: 7 (VA Wait Times), 162 (Upper Big Branch), 148 (Wells Fargo), 149 (Volkswagen Dieselgate), 150 (LIBOR), 51 (Atlanta Public Schools Cheating).

### 2.3 Closed-loop evidence linked to intervention

The instrument is paired with an intervention path; signal without a path to redesign is not learning. The interventions that worked all paired a measurement with a specific authorized action — the checklist that stops surgery, the CAST analysis that funds a fix, the ASRS report that adjusts a procedure.
Cases: 117 (CRM & CAST), 23 (WHO Surgical Checklist), 19 (Keystone ICU), 140 (Navy SWO Reform), 80 (Georgia State University), 67 (Cognitive Tutor), 119 (ASRS), 95 (PBIS Implementation Fidelity).

### 2.4 Post-deployment surveillance and disconfirmation

Capability evidence has to keep coming in after launch, including the capacity to absorb a disconfirming result. The recurring failure is to treat clearance, certification, or pilot results as the end of the evidence pipeline rather than the start.
Cases: 45 (Tennessee Pre-K), 110 (Atlas Air 3591), 147 (Takata), 9 (Vioxx), 35 (Radiology AI Miscalibration).

## 3. Interface and role design at the human–automation boundary

A recurring pattern is that the most advanced system available failed at the seam between the automation and the operator: cues carried two meanings (Helios), the failure was silent (Northeast Blackout), or the human was kept in a monitoring role that humans cannot actually perform (Uber ATG, Tesla Autopilot). The discipline must treat the interface as a capability deliverable and the role as something engineered, not assumed. Petrov (Case 131) is the positive existence proof: keeping a human in some loops is itself capability engineering.

### 3.1 Cue and alert design as a capability deliverable

A cue that means two things, an alert that fires when no one is listening, or an interface that does not signal which state the system is in shifts the diagnostic burden onto the operator at the worst moment. The competency is to specify cue uniqueness, alert prioritization, and mode salience as deliverables of the design.
Cases: 1 (Therac-25), 2 (EHR/CPOE), 105 (Helios 522), 96 (AeroPerú 603), 107 (Eastern 401).

### 3.2 Monitoring as an unsupportable role

Passive monitoring of capable automation degrades attention in ways the literature has long documented; deploying systems that depend on it without engineering the role is foreseeably hazardous. The competency is to either redesign the role so it is performable or to make the case for not retaining it.
Cases: 183 (Uber ATG / Tempe), 191 (Robodebt), 146 (Northeast Blackout), 184 (UK Post Office Horizon), 195 (Tesla Autopilot).

### 3.3 Mode and state transparency under stress

When the human is most loaded — combat, system reconfiguration, an evolving fault — the interface must make the system's mode and state legible without further cognitive cost. The recurring failure is that the operator's mental model and the system's actual state diverged silently.
Cases: 124 (USS McCain helm), 130 (USS Vincennes), 129 (Patriot/Dhahran), 127 (Military Fratricide), 104 (Asiana 214), 172 (CrowdStrike).

### 3.4 Recoverability from automation failure

The human is the recoverability of automation failures the designers did not anticipate; specifying that role — its training, its authority, its information — is itself the deliverable. Failures here designed the human out (Air France 447, Case 102; Uber ATG, Case 183); the positive case (Case 131) shows what it looks like when the role is kept and supported.
Cases: 97 (737 MAX), 102 (Air France 447), 191 (Robodebt), 146 (Northeast Blackout), 131 (Stanislav Petrov), 22 (ChatGPT in Healthcare).

## 4. Pairing mechanism with authorization — and the response that makes it real

The dataset's strongest interventions all pair a cheap artifact with a response the institution has committed to in advance: a checklist with a nurse who can stop the procedure (Case 19), a cord that calls a team leader staffed to come (Case 155), a reporting form with a sanction waiver within specified limits (Case 119), a recall decision with a pre-committed credo (Case 176). The artifact is the cheap half. The committed response is the expensive half, and it is the half imitators leave out.

This cluster was originally named for "the cultural half," and that half is real and load-bearing: a channel people do not trust is a channel they do not use, and no amount of hardware substitutes for that. What the name does not do is transfer. An importer told that the missing ingredient is *culture* has nothing to build, fund, or refuse — which is why the artifact keeps being copied without the thing that makes it work.

So the cluster now names both halves, and insists the cultural commitment be stated in the form it actually takes. Toyota's andon is the clearest instance and the most misread: pulling the cord does not stop the line. Under the fixed-position stop system it lights the board and calls the team leader, and the line halts only if the problem outlives the work cycle — so the first rung of the escalation was engineered to cost the person who pulls it almost nothing. The no-blame norm is not asserted there; it is demonstrated, every time help arrives instead of blame. That is culture *and* engineering, and neither half works alone.

Where the artifact was copied and under-delivered (American andon installations; checklists in Ontario), the conditions that were missing are nameable: a responder ratio with deliberate slack, buffers thin enough that a defect cannot be hidden downstream, employment security so that surfacing a problem is not self-harm, and standardized work to compare the anomaly against. Each of those is a line item someone can approve or refuse, and each is also how the cultural commitment becomes visible rather than declared. The competency is to specify both — the commitment and the conditions that evidence it — rather than to name one and hope for the other.

### 4.1 Frontline authority to signal, and a response obliged to arrive

The lowest-ranking person who can see the problem must be able to raise it at negligible cost to themselves, and something must be structurally obliged to answer. Authority to *halt* is one form of this and the rarest; the commoner and more transferable form is authority to *summon*, with the halt as the automatic consequence when the summons goes unanswered. The recurring intervention is to engineer both halves and to treat the absence of either as a defect: an artifact with no staffed responder behind it is a doorbell, and a staffed responder people do not trust enough to call is an idle desk.
Cases: 19 (Keystone ICU), 155 (Toyota Andon Cord), 133 (Mark 14 Torpedo), 131 (Stanislav Petrov).

### 4.2 Non-punitive reporting with credible commitment

Honest reporting of incidents and near-misses requires that the institution credibly commit not to punish the report itself. The ASRS architecture — confidentiality plus immunity within specified limits — is the canonical worked example; failures (Mark 14, VA, UBB) show what happens when the channel is missing or compromised.
Cases: 7 (VA Wait Times), 133 (Mark 14 Torpedo), 162 (Upper Big Branch), 119 (ASRS).

### 4.3 Authority gradient and team-coordination redesign

Where the cockpit, the OR, or the control room concentrates authority in one role, errors visible to others may never reach the decision. The intervention is to redesign the team's communication and authority structure deliberately, including adaptation across cultural contexts.
Cases: 117 (CRM & CAST), 118 (Korean Air), 39 (TeamSTEPPS), 122 (Singapore Airlines).

### 4.4 Pre-committed institutional response

The strongest crisis interventions were pre-committed before the crisis arrived: J&J's credo was written in 1943 and executed in 1982; INPO's structure was designed for catastrophe before the next one occurred. The competency is to specify, fund, and rehearse the institutional response as a deliverable.
Cases: 175 (INPO), 176 (Tylenol Recall), 204 (Cruise Robotaxi).

## 5. Governance architecture for deployment: consent, oversight, accountability

A working technology can fail entirely on its governance: inBloom's data infrastructure was technically sound and died of consent failure; Summit Learning had a defensible pedagogy and died of deployment governance; Cruise's robotaxi technology produced one injury and its partial-disclosure response ended the program. The competency is to engineer the governance artifacts — stakeholder trust, oversight, the response posture — alongside the tool and before deployment, not as a remediation when something goes wrong.

### 5.1 Stakeholder trust and consent as preconditions

In domains with non-consenting populations — students, patients, citizens — the consent framework and the public-facing evidence summary are load-bearing structure, not optional features. The recurring failure is technocratic deployment that assumed technical soundness would generate its own legitimacy.
Cases: 53 (inBloom), 54 (Summit Learning), 45 (Tennessee Pre-K), 188 (Cambridge Analytica), 63 (LAUSD iPad / CCTP), 64 (Newark / The Prize).

### 5.2 Human-in-the-loop for consequential decisions

Automated decision systems that allocate benefits, liberty, or care require deliverable-grade accountability artifacts — appeal paths, human review, the lawful basis — before deployment. Failures here designed the human out of the loop entirely; the positive case (GSU) used the prediction to trigger more human support, not to gatekeep.
Cases: 191 (Robodebt), 80 (Georgia State University), 184 (UK Post Office Horizon), 187 (COMPAS), 197 (Predictive Policing).

### 5.3 Cross-regime and platform governance seams

Where regulatory regimes meet (FDA vs. CLIA, securities vs. consumer protection), platforms span jurisdictions, or APIs assume benevolent use, the seam itself is a governance artifact that someone must own. The recurring failure is fraud or harm exploiting the gap between regimes.
Cases: 2 (EHR/CPOE), 10 (Theranos), 188 (Cambridge Analytica), 193 (Madoff/SEC), 35 (Radiology AI Miscalibration).

### 5.4 Change-control and disclosure as governance artifacts

A change to a load-bearing element — a connection detail, a part number, a content update — must trigger a documented review by someone with the authority and information to catch the consequence. Disclosure of harm, when it occurs, is itself part of the deployment artifact.
Cases: 151 (GM Ignition Switch), 172 (CrowdStrike), 152 (TSB Bank Migration), 158 (Hyatt Regency Walkway), 204 (Cruise Robotaxi).

## 6. Cross-organization and cross-time knowledge transfer

Many cases turn on the question of whether what one part of the system already knew ever reached the part that needed it: the Davis-Besse near-miss the U.S. nuclear fleet did not absorb before TMI; the FBI Phoenix memo the rest of government never integrated before 9/11; the Israeli Patriot drift report that reached Dhahran a day late; the Saturn V manufacturing knowledge that walked out with the workforce. The discipline must engineer the transfer architecture explicitly — across organizations, across generations, and across domains.

### 6.1 Industry-level institution building after catastrophe

A single operator cannot engineer the safety of a whole industry alone; the discipline must build the cross-organization institutions that distribute the cost of capability — peer review, mutual accreditation, joint commands. INPO, USDS, USSOCOM, CSB, and ODNI all originate as institutional answers to catastrophes the prior architecture could not absorb.
Cases: 166 (Three Mile Island), 180 (Healthcare.gov / USDS), 175 (INPO), 159 (Bhopal / CSB), 39 (TeamSTEPPS), 109 (Colgan Air 3407), 128 (Operation Eagle Claw), 135 (9/11 Intelligence Sharing), 178 (UN Cluster Approach).

### 6.2 Operator-to-institution feedback channels

The operators with the diagnostic information often have no structural channel to escalate it; the institution insulated from them rejects the diagnosis. The competency is to engineer the channel — the structure, the standing, the obligation to act — so the diagnosis reaches the decision.
Cases: 7 (VA Wait Times), 133 (Mark 14 Torpedo), 160 (Davis-Besse), 119 (ASRS).

### 6.3 Sustaining tacit capability across generations

Documentation is not the capability; the practical knowledge of how to build, operate, and maintain a system lives in the workforce, and is lost when the workforce retires without overlap. The competency is to engineer apprenticeship, retention, and the deliberate transfer of tacit knowledge as part of the program plan.
Cases: 137 (U.S. Nuclear Navy / Rickover), 7 (VA Wait Times), 112 (NASA Saturn V Documentation), 113 (Boeing Starliner).

### 6.4 Cross-domain adaptation of proven interventions

Healthcare absorbed CRM as TeamSTEPPS; healthcare ICUs absorbed checklists as Keystone; nuclear took aviation-style debriefing. Each successful translation required adapting the intervention's mechanism and its authorization to the receiving domain — and resisting the temptation to import only the artifact.
Cases: 117 (CRM & CAST), 118 (Korean Air), 155 (Toyota Andon Cord), 39 (TeamSTEPPS), 13 (Implementation Science 17-Year Gap), 61 (Science of Reading / Sold a Story).

## 7. Capability under system change, transition, and aging assumptions

A repeated pattern is that the original design carried an assumption — about uptime, about the operating envelope, about the climate, about who would use the system — that no one carried forward when the conditions changed. Patriot was built for short Cold-War engagements (Case 129); Ariane 5 reused Ariane 4's narrower trajectory code (Case 101); Kegworth's crew flew the engine layout of last week's airframe (Case 103); PG&E's lines were built for a wetter California (Case 165). The competency is to make assumption migration an engineered event with a deliverable.

### 7.1 Re-verifying inherited designs in new envelopes

When software, hardware, or procedures cross into a system with a different operating envelope, the prior verification does not carry over; re-verification is the deliverable. The recurring failure is treating reuse as risk-free.
Cases: 97 (737 MAX), 129 (Patriot/Dhahran), 103 (Kegworth), 101 (Ariane 5).

### 7.2 Deployment and reuse as verification events

A code push, a content update, or a migration weekend is not an administrative event but a verification event; the pipeline that does not treat it as such will fail catastrophically when something edge-case fires. Knight Capital, CrowdStrike, and TSB are the canonical worked examples.
Cases: 143 (Knight Capital), 172 (CrowdStrike), 152 (TSB Bank Migration).

### 7.3 Legacy assets aging past their oversight regime

Infrastructure built for one set of operating conditions — a wetter climate, a different fault model, a peacetime gas-storage cadence — eventually outlives the inspection regime that was sized to it. The competency is to specify the assumption-migration review as a recurring obligation, not a one-time engineering act.
Cases: 165 (Camp Fire / PG&E).

### 7.4 Multi-layer drift and cumulative inadequacy

A cascade of marginal-but-tolerable conditions across multiple defense layers eventually aligns into catastrophe — each layer reported as acceptable in isolation, none monitored as a system. The competency is to instrument and analyze the multi-layer state rather than the per-layer signal.
Cases: 163 (Deepwater Horizon), 111 (Challenger & Columbia), 134 (V-22 Osprey), 159 (Bhopal), 164 (Grenfell Tower), 168 (Sago Mine), 169 (Fukushima Daiichi), 153 (Equifax).

## 8. Equity and construct definition as design commitments

The dataset's algorithmic-deployment cases turn on a single recurring observation: the choice of what to predict, who counts as "at-risk," what counts as recidivism, or what "crime" the historical data records is itself the load-bearing design decision — not a downstream operational concern. inBloom failed not on bias but on consent (Case 53); Ofqual failed because the construct it standardized encoded existing inequality (Case 49); PredPol failed because it predicted enforcement, not crime (Case 202); Georgia State succeeded because it built equity in from the start as a primary outcome (Case 80). The competency is to treat equity and construct definition as design commitments measurable at deployment, not modules added at audit.

### 8.1 Choosing the construct (what gets predicted, what counts)

The unit of measurement is a capability decision with equity consequences: where police have enforced is not where crime has occurred; appointment-list compliance is not access; recidivism is a definition before it is a prediction. The competency is to interrogate the construct before the model.
Cases: 7 (VA Wait Times), 49 (UK A-Level Algorithm), 46 (Educational Predictive Analytics), 187 (COMPAS), 197 (Predictive Policing).

### 8.2 Demographic stratification of validation and outcomes

Aggregate validation accuracy can hide concentrated harm to under-represented groups; the competency is to require stratified validation and post-deployment outcome monitoring as routine deliverables. The failure pattern is FDA clearance, regulator approval, or vendor self-report based on aggregate metrics that did not stratify.
Cases: 49 (UK A-Level Algorithm), 46 (Educational Predictive Analytics), 187 (COMPAS), 35 (Radiology AI Miscalibration).

### 8.3 Designing predictions to trigger support, not gatekeeping

When a predictive system is built to allocate help rather than to allocate scarcity, equity gaps are easier to close; when the same prediction is used to gatekeep, the bias is amplified into the allocation. Georgia State is the positive existence proof.
Cases: 191 (Robodebt), 46 (Educational Predictive Analytics), 80 (Georgia State University), 184 (UK Post Office Horizon).

### 8.4 Surfacing bias through governance, not just technique

Bias-detection technique is necessary but insufficient; the question of which fairness criterion is satisfied (and which is sacrificed) is a governance decision that must be made by an accountable party, not by a model vendor's default. COMPAS is the case where the technical impossibility result was already known, and the governance question was who decided.
Cases: 53 (inBloom), 51 (Atlanta Public Schools), 187 (COMPAS), 197 (Predictive Policing), 36 (AlphaFold).

## Crosswalk note (optional)

The induced clusters relate to the modes T/D/N/H/G/K but do not align cleanly with any single mode. Competency 1 (requirements specification) is mostly T (training-gap) cases but draws on D (designed-out) where the requirement was deliberately removed (737 MAX, Case 97). Competency 2 (evidence architecture) cuts across N (normalization) and G (governance) and is the central translation of K (knowledge) into instruments. Competency 3 (interface and roles) maps most directly onto H, but always paired with D (the safeguard removed) or T (the role not trained). Competency 4 (mechanism + authorization) is the N+G pair that the dataset most rewards. Competency 5 (governance architecture) is mostly G with H sub-cluster 5.2. Competency 6 (knowledge transfer) is K, with G as the architecture that carries K. Competency 7 (change and aging) is the under-named cluster behind many D and N failures. Competency 8 (equity and construct) cuts across G and K and is the cluster that the frontier cases most demand the discipline name.

Against the LEN 1–10 curriculum, the induced competencies cover the same ground but with different cuts. LEN 5 (Capability Analysis) maps closely to induced Competency 1 plus the systems-of-systems portions of 6 and 7. LEN 4 (Evidence) maps closely to Competency 2 and to sub-cluster 8.2. LEN 2 (Human–AI Teaming) maps closely to Competency 3 and to sub-cluster 5.2. LEN 7 (Governance) maps to Competency 5 plus the cross-cutting governance sub-clusters in 6 and 8. LEN 8 (Organizational Learning) maps to Competency 6 plus Competency 7. Competency 4 (mechanism + authorization) and Competency 8 (equity as design commitment) are the two clusters this induction names most distinctly that do not map to a single LEN course; both surface as a recurring demand across multiple courses' cases, which suggests they may be cross-cutting threads of the discipline rather than course-level topics.

## Sourcing

Case numbers refer to `chapters/*.typ` under the First Edition numbering (1–205; 191 active, 14 quarantined). Definitions and patterns are paraphrased from each case's `lens-approach` and `summary` fields. The clusters and the thresholds that produced them come from the v1 hundred; the `Cases:` lines have been extended since to name newer cases that establish a sub-competency, but they were never rebuilt as a complete index.
