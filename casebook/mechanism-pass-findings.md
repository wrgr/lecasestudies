# Mechanism pass — findings ledger (August 2026)

Status: **triage complete, no source edits applied.** Nothing here has been written into
`chapters/`. This is the work-list, with each item marked by how much confidence it carries.

## What was run

All **191 active cases**, one pass each, against `prompts/mechanism-pass.md` (32 reviewers,
6 cases each). The pass asks the question the July 2026 critical-accuracy pass did not:
*is the reading right?* — as distinct from *is it true?*

Then a **refutation gate**: 24 high-severity findings sampled at random and given to
adversarial reviewers instructed to kill them, defaulting to "unproven" when torn.

### Method limits — read these before acting on anything below

1. **No web verification.** Reviewers worked from the case text plus model knowledge.
   1,023 findings carry `NEEDS-SOURCE`. They are leads, not conclusions.
2. **Zero CLEAN verdicts across 191 cases.** That is not credible. It is direct evidence
   the reviewers over-fired, and it is why the refutation gate exists.
3. **"REFUTED" means defensible, not false.** The gate asks whether a competent editor
   could justify the current text. That is the right bar for changing a printed book.

## Headline numbers

| | |
|---|---|
| Cases reviewed | 191 |
| Raw findings logged | 1,091 |
| Logged high-severity | 247 |
| High-severity sampled and adversarially reviewed | 24 |
| **Confirmed at high severity** | **6 of 24 — 25%** |
| Downgraded (real, lower severity) | 7 of 24 — 29% |
| Refuted (text defensible) | 9 of 24 — 38% |
| Unproven (needs a source) | 2 of 24 — 8% |

**Projected genuine high-severity defects: roughly 60 of the 247 logged.** Another ~70 are
real at medium severity. Treat the 1,091 as a lead list whose top quartile is real.

### What predicts a finding surviving

Findings confirm when they can be settled **inside the case** — one field contradicting
another, or a matter of documented record. They fail when they need an external fact or
turn on emphasis. Every confirmed finding below is of the first kind.

## Confirmed defects (survived adversarial review)

| Case | Defect |
|---|---|
| 96 AeroPerú 603 | Asserts *"Every cockpit indicator depended on the same physical sensor."* The case's own narrative records ground-proximity warnings; GPWS terrain modes run off the radio altimeter, not the blocked static ports. An independent channel existed, worked, and was disbelieved in a warning flood — a better capability lesson than the one taught. Also wrong in the diagram caption and `le-insight`. |
| 97 Boeing 737 MAX | `summary` says both crews *"had never heard of it."* True of Lion Air; false of Ethiopian 302, which flew four months after Boeing's OMB and FAA Emergency AD 2018-23-51, and which ran the stab-trim cutout. The body already restricts the claim correctly — the summary loses the distinction. Thesis survives the correction. |
| 109 Colgan 3407 | *"The airline and the hiring pipeline knew the training history; the regulator did not."* Backwards: the checkride disapprovals were FAA-held and PRIA did not give hiring carriers access. The case's own aftermath describes the PRD as regulator→carrier plumbing. The whole case is about which direction data failed to flow. |
| 137 Rickover / nuclear navy | *"The internal comparison controls for nearly everything… leaving the training philosophy itself as the variable that diverged."* Accession screening and Naval Reactors' unified technical authority co-diverged with training philosophy. Restated unhedged in `beats`, which is what licenses importing the training model alone. |
| 141 DARPA Digital Tutor | `evidence-source: "peer-reviewed"` where the case's own prose four times identifies an IDA FFRDC report delivered to the programme sponsor. The corpus vocabulary has `program-report` for exactly this. Propagates to the validation-audit tracker. |
| 155 Toyota Andon Cord | The case that prompted the pass. Folk mechanism in `impact` (fixed-position stop, not "authority to stop the line"); an unsourced isolation claim; no evidence tier despite resting on practitioner books; unsourced "85% resolved in 60 seconds" in the diagram. |

## Corpus-level findings — each verified by script, not sampled

1. **The compression layer carries claims the body retracts.** 8 of 191 cases hedge
   repeatedly in the narrative against an unhedged `impact:` line — 030, 032, 040, 018,
   072, 075, 093, 175. Worst: **175 (INPO)** claims *"No INES-level event at U.S.
   commercial reactors post-INPO"* while **160 (Davis-Besse)**, in the same book, describes
   a football-sized cavity in a reactor head. INES Level 3. Other fields of 175 say "no
   *significant* INES-level event"; `impact` drops the qualifier.
   This is the Andon defect's real shape: not a Toyota problem, a **field-level** one.
   `impact` and `le-insight` are what the study prompt hands a tutor.

2. **The folk Andon reading is load-bearing in the induced framework.**
   `competencies.md` §4 is titled *"Pairing mechanism with authorization (the cultural
   half)"*; §4.1 is *"Frontline authority to halt or escalate"*; the preamble reads
   *"a cord with a worker who can stop the line (Case 155)… Cases that imported the
   artifact without the authorization… under-delivered."* **Fixing Case 155 alone leaves
   the framework asserting the corrected claim as an induced finding.**

3. **One safety improvement is booked three times.** Case 117 (CRM/CAST) takes the whole
   *"83% reduction in U.S. commercial aviation fatality risk (1998–2008)"* in its `impact`;
   120 (EGPWS/TAWS) takes the CFIT collapse of the same era; 123 (FSF task forces) takes the
   industry response to the same problem. None cross-references the others.
   Note 123 already carries the correct discipline — *"isolating the task-force contribution
   overstates"* — so the corpus contains its own model for the fix.

4. **The isolating-comparison claim is a recurring sentence shape.** Cases 137 and 155 make
   it near-identically; 181/198 make it as a matched pair across an n=2 comparison
   (BRAIN vs HBP: *"the governance model… was the variable that explained why one program
   survived"*). Counter-models where the book gets it right: 027, 062, 080, 093, 123.

5. **Mechanical, scriptable, low-judgement — APPLIED, see below.**
   Every count in this section was wrong on first pass and was corrected at execution:
   - **57** instances (not 35) of `LEO *<named subobjective>*` mis-tiering a v2 subobjective
     as a top-level LEO, vs 387 correct `LEO-N` refs. The 35 came from a line-based grep;
     22 more were split across a line break. **The same trap that hid finding-5's second
     item hid part of its first item, and I fell into it twice.**
   - **5** retired v2.1 domain labels (not 10) — `Domain 3 (Machine Teaming and Adaptation)`
     ×3, and ×2 naming the LENS competency itself "Human-AI Teaming". The other 5
     "Human-AI Teaming" uses are **legitimate**: `lens_program/2_*.md` sanctions human-AI
     teaming as a *sub-pattern within* LEO-3, and LEN 2 is titled *Human-Machine Teaming*.
     Changing those would have been over-reach.
   - **2** instances (not 3) of the house-banned `however`. The third is *"the per-voxel
     error rate, however low, compounds"* — "no matter how low", not the contrastive
     conjunction the house voice bans.
   - **1** dangling pointer to a quarantined case: 144 (Kodak) said *"Pair directly with
     BlackBerry (the next case)"*; Case 145 is quarantined and emits nothing. The second
     ch5a mention is a general illustration ("an external launch (BlackBerry meeting the
     iPhone)"), not a pointer — left alone. The other 13 quarantined cases are clean.

6. **`competencies.md` has drifted from the corpus.** It still describes itself as induced
   from 100 cases, reports n=72 failures / 16 interventions / 12 frontier, and says two
   competencies have zero intervention cases. The corpus has since roughly doubled. Its
   `Cases:` lines are exemplar lists, never an index — so a case not listed under its
   `induced-anchor` is *not* evidence of mis-anchoring, and six reviewers read it that way.
   Two stale cross-refs in §4: the nurse/checklist example cites Case 129 (Patriot) meaning
   19 (Keystone); the credo example cites 181 (Human Brain Project) meaning 176 (Tylenol).

## Recommended order of work

1. ~~**Scripted, no judgement** — finding 5.~~ **DONE** (August 2026). 57 LEO-tier fixes to
   `subobjective *X* (N.N)` with numbers verified against `lens_program/2_*.md`; 3 domain
   renames to v2.1; 2 LENS-competency names corrected; 2 `however`; 1 dangling pointer
   removed. `check-cases.sh`: **191 converted, 0 failures.**
2. ~~**Six confirmed defects**~~ **DONE** (August 2026). All six verified against primary
   sources first, then rewritten. Case 155 additionally received the `competing-readings`
   and `scope-limit` fields (schema added in `lib/case.typ` / `lib/components.typ`).
3. **Compression-layer audit** — finding 1, eight named cases. Rule: *a summary may
   compress, it may not assert what the body retracts.* **PARTIALLY DONE.**
   - **072 ASSISTments — fixed.** `le-insight` claimed a "pre-specified" heterogeneity
     finding that the same case's `beats` and pull-quote deny. Internal contradiction, no
     external source needed.
   - **175 INPO — fixed, and it was worse than flagged.** `impact:` claimed "No INES-level
     event at U.S. commercial reactors post-INPO". Davis-Besse (2002) was **officially rated
     INES Level 3 by the NRC** and transmitted to the IAEA — the NRC's own memo calls it "the
     most significant rating NRC has made for a reactor since full participation in the INES
     program began" (ML023570266). Not overstated: false. Corrected to the defensible
     structural claim — no INES Level 4-or-above accident since Three Mile Island — with
     Davis-Besse named, the fact that a regulator-mandated inspection rather than peer review
     found it, and a note that no published evaluation isolates INPO's separate contribution.
   - **032 and 093 — NOT changed.** Both were cleared by the adversarial gate. 093's `impact:`
     assigns each figure its own named population and study; 032's caveats are already carried
     across four fields. The script that flagged them is a heuristic; the gate is the authority.
   - **Still open: 018, 030, 040, 075.** Each needs source verification before rewrite.
4. **Editor decisions** — findings 2, 3, 6. These change the framework and the argument,
   not just the prose. Not scriptable, not delegable.
5. **The remaining ~1,000 leads** — only worth mining after 1–4, and only with the
   NEEDS-SOURCE items sourced.

## What this pass did not do

No source edits. No web verification. No `competing-readings` / `scope-limit` schema work —
those fields do not exist in `lib/case.typ` yet, so the contested readings the pass admitted
have nowhere to render. And the tutor prompt is deliberately not written: it ships after the
cases are corrected, since a study prompt only distributes whatever the fields say.

Per-batch detail (19,254 lines) is in the session scratchpad, not committed — it is a lead
list with a 25% confirmation rate, and committing it would give it more standing than it earns.
