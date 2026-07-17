# Citation & Factual-Veracity Audit — v2 corpus

Date: 2026-06-12. Auditor pass over the editor-flagged citation/veracity items.
Build verified clean after edits: `book.typ` compiles with 0 errors (488 pre-existing
font warnings, unrelated to text). `scripts/check-cases.sh`: 202 cases, 0 failures.

Status legend: **VERIFIED** (real and accurate, no change) · **CORRECTED** (clear
error fixed in source) · **PROPOSED-FIX** (needs editorial judgment, documented; some
applied where compatible) · **COULD-NOT-VERIFY**.

---

## PART 1 — Known CITE-RECHECK cases

### Case 138 — Gándara — STATUS: CORRECTED (substitution applied)
- **Old citation (could not be verified):** Gándara, "Algorithms and student loans: The
  role of predictive targeting in community-college outreach," *Journal of Policy Analysis
  and Management* (JPAM).
- **What I found:** No Gándara JPAM paper on community-college predictive targeting / loan
  outreach exists on the web (Google Scholar surrogates, Wiley JPAM index, author profile
  all negative). The **verified** Gándara paper is: Gándara, Anahideh, Ison, & Picchiarini
  (2024), "Inside the Black Box: Detecting and Mitigating Algorithmic Bias across Racialized
  Groups in College Student-Success Prediction," **AERA Open 10**, doi:10.1177/23328584241258741
  (also arXiv:2301.03784). Real, peer-reviewed, AERA Palmer O. Johnson award context.
  Finding: student-success prediction models are systematically less accurate for Black and
  Hispanic students and overestimate success for white/Asian students; recommends training
  end users and bias mitigation.
- **Compatibility assessment:** The case's *analytic spine* — fairness-as-construct-definition,
  demographic-stratified evaluation (induced C8.2), and the cross-reference to the race-construct
  trio (105/106/107) — is squarely supported by the AERA Open paper. The *loan-outreach /
  intervention-pairing (financial aid vs. information-only)* thread was NOT this paper's content;
  it more closely matches a different, real paper (Athey, Keleher, & Spiess, "Machine Learning
  Who to Nudge," arXiv:2310.08672, *J. Econometrics* 2025 — causal vs. predictive targeting in
  student financial-aid renewal). That thread was a mismatch with the cited author.
- **Change applied:** Migrated Case 138 to the AERA Open paper (the CITE-RECHECK comment itself
  proposed this). Updated: title ("Detecting and Mitigating Algorithmic Bias in College
  Student-Success Prediction"), `year` → 2024, `impact`, `summary`, two body sections, the third
  section (reframed "intervention pairing" → the decision-context / end-user-training / mitigation
  point the AERA paper actually makes), `beats`, `references` (now the AERA Open entry with DOI),
  `quote-source`, `le-insight`, `lens-approach`, `literature-items`, and the file header comment.
  Removed the `// CITE-RECHECK:` line. Induced anchor 8.2, LENS D3/PT5, LEOs unchanged — still
  correct.
- **Editor note:** If the editor specifically wants the *intervention-pairing / targeting* teaching
  point (which the original prose leaned on), the right move is to ADD a second reference to
  Athey/Keleher/Spiess (arXiv:2310.08672) as a companion, rather than reverting. I did not add it
  because the case is anchored as a *Gándara* case and one real source is cleaner than two.

### Case 129 — Bateman 1999 EGPWS — STATUS: CORRECTED (venue fixed)
- **Old citation (venue unconfirmed):** Bateman, C.D. (1999), "The Introduction of Enhanced
  Ground-Proximity Warning System (EGPWS) into Civil Aviation Operations Around the World,"
  Flight Safety Foundation *Approach-and-Landing Accident Reduction (ALAR) Task Force*.
- **What I found:** The paper is **real**. Title (lightly normalized): "The Introduction of
  Enhanced Ground Proximity Warning Systems (EGPWS) into Civil Aviation Operations Around the
  World," presented at the **11th Annual European Aviation Safety Seminar (EASS)**, Flight Safety
  Foundation, **pp. 259–274** (cited in the references of arXiv:1803.08067 and elsewhere). Author
  Bateman; year 1999 is consistent with the EASS series cadence. The **"ALAR Task Force"
  attribution was wrong** — that is a separate FSF effort.
- **Change applied:** Corrected the reference venue to "*Proceedings of the 11th Annual European
  Aviation Safety Seminar*, Flight Safety Foundation, pp. 259–274." Updated the matching
  `literature-items` entry. Removed the `// CITE-RECHECK:` line. (The separate, legitimate FSF
  "CFIT / ALAR Task Force reports (1998–2000)" reference in the same case was left as-is — those
  reports do exist and motivated the TAWS mandate.)

---

## PART 2 — "Re-confirm at draft" citations

### Case 110 — Open University 2025 evaluation — STATUS: CORRECTED
- **Old citation:** "Open University (2025), OU Analyse evaluation across 559 teachers and
  14,000+ students — re-confirm citation at draft."
- **What I found:** The real source of the "559 teachers / 14,000+ students / 15 courses" figures
  is **Herodotou, Hlosta, Boroowa, Rienties, Zdrahal, & Mangafa (2019), "Empowering online
  teachers through predictive learning analytics," *British Journal of Educational Technology*
  50(6):3064–3079, doi:10.1111/bjet.12853.** (559 teachers, 189 with OUA access; >14,000 students;
  "average-use" teachers benefited students most — matches the case's claim verbatim.) The year is
  **2019, not 2025.**
- **Change applied:** Replaced the placeholder reference with the full Herodotou et al. (2019) BJET
  citation. Corrected four prose instances of "2025 evaluation" → "2019 evaluation" (summary, a body
  section, beats, le-insight). Left `year: "2014 – 2025"` (defensible as a to-present marker;
  the 2025 endpoint refers to the policy being superseded by a broader Data Ethics Policy).
- **Bonus correction (found while in-file):** The Analytics4Action reference was mis-attributed as
  "Herodotou, Rienties, Boroowa, Zdrahal, Hlosta, & Naydenova (2017), doi:10.5334/jime.394." The
  real paper is **Rienties, Boroowa, Cross, Kubiak, Mayles, & Murphy (2016), "Analytics4Action
  Evaluation Framework...," *JIME* 2016(1):2, doi:10.5334/jime.394.** Wrong authors AND wrong year.
  Corrected the reference and the two prose attributions ("Herodotou et al., JIME 2016" →
  "Rienties et al., JIME 2016"). The prose year (2016) was already right; only the reference entry
  was wrong.

### Case 104 — Coots fintech preprint — STATUS: CORRECTED (real paper found)
- **Old citation:** "Coots et al. (2025), fintech lending fairness audit (preprint, arXiv) —
  citation re-confirm at draft."
- **What I found:** The paper is **REAL and exactly on point** — this was the highest-risk item
  and it resolves cleanly. **Coots, Bartlett, Nyarko, & Goel (2025), "Algorithmic Bias in Lending:
  Evidence from a Fintech Audit," arXiv:2512.20753** (submitted Dec 23 2025, revised Jun 3 2026 —
  consistent with the preprint-tier flag). Audit of ~80,000 personal loans from a major U.S.
  fintech platform; model miscalibration produced disparities; crucially, the paper shows that
  *including* race/gender in underwriting could correct the observed disparities — i.e., controlled
  inclusion beats omission, which is precisely the case's teaching point. Note: co-author **Robert
  Bartlett** is the same Bartlett as the paired big-tier Case 103 — a nice internal consistency.
- **Change applied:** Replaced the placeholder with the full citation (authors, title, arXiv ID,
  one-line finding) in `references` and `literature-items`. The `evidence-flag: preprint-tier`
  render and "future validation ongoing" language were preserved (binding until peer review).
- **Not a veracity problem** after all — the case is built on a real, well-matched paper.

### Case 108 — BRAIN Initiative contestation quotes — STATUS: VERIFIED (citation author corrected)
- **Quotes checked:** Yuste — "...packing the committee with users, rather than tool builders";
  Bargmann — "...sounds like a big central planning project that will take resources away from
  creative work."
- **What I found:** Both quotes are **REAL and correctly attributed.** Source: Emily Underwood,
  "As White House Embraces BRAIN Initiative, Questions Linger," *Science* / ScienceInsider, **April
  3, 2013.** Full Yuste quote: "Neither Bargmann or Newsome are tool builders, so it's a worry that
  they are packing the committee with users, rather than tool builders." Bargmann's was a February
  2013 email to Science. The case's wording is faithful.
- **Change applied:** The case mis-attributed the Science coverage to "**Greenmeier (2013)**" (Larry
  Greenemeier writes for *Scientific American*, not this Science article). Corrected the reference
  to "Underwood (2013), 'As White House Embraces BRAIN Initiative, Questions Linger,' *Science* /
  ScienceInsider (April 3, 2013)." Quotes themselves unchanged — they are accurate.

---

## PART 3 — High-risk DOI / citation spot-checks

All 15 verified via web search (DOI resolution + author/year/venue/volume/page). **No corrections
required — every DOI resolves and every detail is accurate.**

| # | Case | Citation | Status |
|---|------|----------|--------|
| 1 | 101 TREWS | Adams et al. (2022) Nat Med, 10.1038/s41591-022-01894-0 | VERIFIED |
| 2 | 102 Epic Sepsis | Wong et al. (2021) JAMA Intern Med 181(8):1065–1070, 10.1001/jamainternmed.2021.2626 | VERIFIED |
| 3 | 103 Bartlett | (2022) JFE 143(1):30–56, 10.1016/j.jfineco.2021.05.047 | VERIFIED |
| 4 | 105 eGFR | Inker et al. (2021) NEJM 385:1737–1749, 10.1056/NEJMoa2102953; Delgado et al. AJKD 10.1053/j.ajkd.2021.08.003 | VERIFIED (note: Delgado print is AJKD 79, 2022; "2021" = online year) |
| 5 | 106 pulse ox | Sjoding et al. (2020) NEJM 383(25):2477–2478, 10.1056/NEJMc2029240 | VERIFIED (Correspondence, NEJMc prefix correct) |
| 6 | 107 Hoffman | (2016) PNAS 113(16):4296–4301, 10.1073/pnas.1516047113 | VERIFIED |
| 7 | 113 Blume | (2010) J Management 36(4):1065–1105, 10.1177/0149206309352880 | VERIFIED |
| 8 | 131 sterile cockpit | Treloar et al. (2025) World J Surg 49(10):2769–2776, 10.1002/wjs.70074 | VERIFIED (note: study is about surgical **ward rounds**, not OR — confirm Case 131 framing) |
| 9 | 142 BCMA | Thompson et al. (2018) Mayo Clin Proc IQO 2(4):342–351, 10.1016/j.mayocpiqo.2018.09.001 | VERIFIED |
| 10 | 139 Yu/Lee/Kizilcec | (2021) L@S, 10.1145/3430895.3460139 | VERIFIED (title: "Should College Dropout Prediction Models Include Protected Attributes?") |
| 11 | 190 In re 2U | No. 8:19-cv-03455-TDC, D. Md., $37M | VERIFIED ("July 2022" = settlement-notice date; final approval Dec 2022) |
| 12 | 195 COMPAS | Angwin et al. ProPublica 2016; Chouldechova (2017) Big Data 5(2):153–163, 10.1089/big.2016.0047 | VERIFIED |
| 13 | 200 Air Canada | Moffatt v. Air Canada, 2024 BCCRT 149 | VERIFIED |
| 14 | 201 COMPOSER | Boussina et al. (2024) npj Digit Med 7:14, 10.1038/s41746-023-00986-6 | VERIFIED |
| 15 | 202 Wisconsin DEWS | Perdomo et al. FAccT 2025, 10.1145/3715275.3732175 | VERIFIED (title: "Difficult Lessons on Social Prediction from Wisconsin Public Schools"; pp. 2682–2704) |

Three minor framing notes (not citation errors, editor's glance): #4 Delgado online-2021 vs.
print-2022; #8 Treloar is ward-rounds not OR; #11 2U "July 2022" is the notice not the approval date.

---

## Most serious findings (editor decisions)

1. **Case 138 (Gándara) was built on a non-existent JPAM paper.** RESOLVED by substituting the
   real, verified AERA Open (2024) paper and rewriting the loan-outreach/intervention-pairing prose
   to match what that paper actually says (cross-group accuracy disparity in student-success
   prediction). This is the one case whose *framing shifted*: from "algorithmic targeting / loan
   outreach" to "student-success prediction bias." If the editor wants the targeting/nudge teaching
   point preserved, add Athey/Keleher/Spiess (arXiv:2310.08672) as a companion citation — that real
   paper carries the causal-vs-predictive-targeting thread.

2. **Case 104 (Coots) — flagged as a potential fabrication risk — is NOT a problem.** The paper is
   real: Coots, Bartlett, Nyarko, & Goel, "Algorithmic Bias in Lending," arXiv:2512.20753, and its
   finding (controlled inclusion of protected attributes can correct disparities) matches the case's
   teaching point exactly. Citation now supplied in full.

3. **Case 129 (Bateman)** — paper real, but **venue was wrong** (FSF "ALAR Task Force" → actually
   the FSF 11th European Aviation Safety Seminar, pp. 259–274). Corrected.

4. **Case 110 (Open University)** — the headline "559 teachers / 14,000 students" evaluation was
   mis-dated to **2025**; it is actually **Herodotou et al. (2019), BJET**. Additionally the
   Analytics4Action reference had **wrong authors and wrong year** (was "Herodotou et al. 2017";
   correct is **Rienties et al. 2016**). Both corrected.

5. **Case 108 (BRAIN)** — quotes verified accurate, but the Science coverage was mis-attributed to
   "Greenmeier"; corrected to **Underwood (2013), Science/ScienceInsider**.

No fabricated statistics or non-existent studies remain in the audited set. Parts 1–2 produced
5 corrected cases (one with a framing shift the editor should confirm); Part 3 produced 0 citation
corrections (all 15 verified).
