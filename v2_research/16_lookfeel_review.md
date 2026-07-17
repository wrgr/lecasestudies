# Look-and-Feel & Consistency Review — Non-Case Front/Back Matter

*Capability Matters: A Casebook.* Read-only review of the non-case materials. Scope: title, introduction, howto, matrix, domain-index, course-index, references, editors, overview-frontmatter. The 202 case entries were **not** reviewed.

Build state at review time: `book.typ` (digital) compiles clean, **855 pp** (v2 cases are wired in). `overview.typ` = 115 pp, `overview-half.typ` = 219 pp (one non-fatal "Suspects object is wrong type" warning in the overview build — cosmetic, PDF produced). Note: CLAUDE.md task 3 claims overview = 559/952 pp; the current builds are far smaller, so the overview `<caseinfo>` contents list is rendering but the page counts in CLAUDE.md are stale (informational, not a front-matter defect).

Method: rendered front matter (pp. 1–32), the five-competency spread (pp. 16–17), and back matter (domain index p. 819, course index p. 827, references p. 851, editors p. 855), plus the overview-half editors page (p. 219). Cross-checked names/numbers against `lens_program/1_*`, `lens_program/2_*`, `competencies.md`, and CLAUDE.md.

---

## Summary of findings by severity

- **Accuracy errors (stale case count): 8**
- **Consistency gaps: 6**
- **Look-and-feel polish: 4**

The five competency names, taglines, the per-pillar secondary LEO line, and the "five in one breath" capstone all render correctly and read cleanly. The dominant problem is **stale "one hundred cases" claims** now that the book carries 202 cases, plus **two back-matter indexes (matrix, domain) that only cover cases 1–100.**

---

## Top 5 most important fixes

1. **Matrix and domain-index cover only cases 1–100** — the book now has 202. These two hand-coded indexes are silently incomplete (gap, not error in what they show). Decide: extend both to 202, or relabel as "the founding hundred / Volume I cases" and add a v2 companion index.
2. **"One hundred cases" / "the hundred cases" stated as the book's total in ≥8 places** (howto, introduction ×4, matrix title, domain-index ×2, overview-frontmatter ×3). All now wrong. Update to 202, or qualify.
3. **Per-course case counts are stale everywhere they appear as fixed numbers** (introduction §IX "~21 … ~49"; overview-frontmatter "The ten LENS courses" len-rows). The *dynamic* course index already shows LEN 1 = 36 cases, contradicting the intro's "~21." Either regenerate the counts against 202 cases or change to dynamic/round language.
4. **matrix.typ footnote uses informal course short-names** ("LEN 1 Foundations · LEN 10 Studio · LEN 5 Capability Analysis") that diverge from the canonical names used correctly in howto.typ and the course index. Align to canonical.
5. **LEO-4 secondary-domain label mismatch** in the introduction's five-competency block ("Context and Domain Fluency · LEO-4") vs. the canonical rename to "Navigating Sociotechnical Constraints." (The canonical docs are themselves internally split on this — see finding C5 — so confirm with program owner, but the printed competency name and its formal-domain subtitle currently disagree on what LEO-4's domain is called.)

---

## ACCURACY ERRORS — stale case count

### A1. howto.typ — "one hundred real incidents"
- **Location:** `frontmatter/howto.typ:22`
- **Severity:** accuracy-error
- **Recommendation:** Replace "This book collects one hundred real incidents" with the true count (202), or with count-agnostic language: "This book collects more than two hundred real incidents…". Rendered on book p. 27.

### A2. introduction.typ — "Part I … organizes one hundred cases"
- **Location:** `frontmatter/introduction.typ:1285`
- **Severity:** accuracy-error
- **Recommendation:** Update "organizes one hundred cases under six recurring patterns" to the v2 total (or "organizes the cases"). Note: Part I as written is the *v1* failure-modes structure; v2 cases extend the corpus, so confirm whether the six-pattern framing still describes the whole book or just Part I.

### A3. introduction.typ — "The one hundred cases in this volume are mapped…"
- **Location:** `frontmatter/introduction.typ:1341`
- **Severity:** accuracy-error
- **Recommendation:** Replace "The one hundred cases in this volume" with the correct count or "The cases in this volume."

### A4. introduction.typ — "The hundred cases that follow…"
- **Location:** `frontmatter/introduction.typ:55`
- **Severity:** accuracy-error
- **Recommendation:** "the hundred cases that follow" → "the cases that follow" (count-agnostic is cleanest here).

### A5. matrix.typ — title + comment
- **Location:** `frontmatter/matrix.typ:51` (display heading "One hundred cases at a glance"), `:2` and `:4` (source comments "all 100 cases" / "no 1–50 / 51–100 split")
- **Severity:** accuracy-error
- **Recommendation:** The *matrix itself only lists 1–100* (see C1). If the matrix is intentionally the Volume-I index, retitle to make that explicit ("The founding hundred at a glance"). If it should cover the whole book, it must be extended to 202 and the heading updated. Rendered on book p. 30.

### A6. domain-index.typ — heading prose "the hundred cases"
- **Location:** `backmatter/domain-index.typ:29` ("reorganises the hundred cases by primary domain"), and intro/comments `:2`, `:7`
- **Severity:** accuracy-error
- **Recommendation:** Same decision as A5/C1. Update the count claim once the coverage question is resolved.

### A7. overview-frontmatter.typ — "One hundred cases, three movements" + "*one hundred* documented cases"
- **Location:** `overview-frontmatter.typ:70` (heading), `:73–76` (body), `:199` ("The hundred cases"), `:31` (cover blurb "one hundred real cases")
- **Severity:** accuracy-error
- **Recommendation:** Update all four to the true count. The overview's dynamic contents list (`:203`) renders whatever `<caseinfo>` is queried, so the heading should match the actual corpus the overview ships.

### A8. introduction.typ §IX + overview-frontmatter "ten LENS courses" — stale per-course counts
- **Location:** `frontmatter/introduction.typ:1345–1360` ("LEN 7, ~49 cases … LEN 1, ~21 cases … LEN 9, ~10 … LEN 10, ~19 … LEN 3, ~18 … LEN 6, ~13"); `overview-frontmatter.typ:176–185` (len-row counts ~21/~23/~18/~31/~36/~13/~49/~45/~10/~19)
- **Severity:** accuracy-error
- **Recommendation:** These are v1-era counts. The live course index already shows LEN 1 = **36** cases (book p. 827), directly contradicting "~21." Regenerate all ten counts against the 202-case corpus, or replace the fixed numbers with the dynamic query result / round qualitative language ("most heavily represented," "thinnest"). The *diagnostic narrative* built on these counts (governance/knowledge-transfer richest, computational thinnest) should be re-checked against the new distribution before it ships as a claim.

---

## CONSISTENCY GAPS

### C1. Matrix and domain-index are static and stop at case 100; course-index is dynamic and covers 202
- **Location:** `frontmatter/matrix.typ` (hand-coded `entry(...)` calls 1–100), `backmatter/domain-index.typ` (hand-coded `ix(...)` calls 1–100); contrast `backmatter/course-index.typ` (queries `<caseinfo>`, auto-covers all 202)
- **Severity:** consistency-gap (the single most consequential one)
- **Recommendation:** A reader who finds a v2 case in the course index but cannot find it in the matrix or domain index will read it as an omission. Three options: (a) extend both hand-coded indexes to 202 (substantial, error-prone hand-editing); (b) convert both to `<caseinfo>`-driven like the course index (best long-term — the metadata already carries number, title, year, modes, and domains); (c) explicitly scope them as "Volume I / the founding hundred" and add a short note pointing v2 readers to the (dynamic) course index. Option (b) is the structurally clean fix and removes the stale-count problem at the source.

### C2. matrix.typ footnote course names diverge from canonical
- **Location:** `frontmatter/matrix.typ:201–206`
- **Severity:** consistency-gap
- **Recommendation:** The footnote reads "LEN 1 Foundations · LEN 4 Evidence & Measurement · LEN 10 Studio · LEN 5 Capability Analysis · LEN 7 Bias, Risk & Governance · LEN 2 Human-AI Teaming · LEN 8 Knowledge Transfer · LEN 9 Computational & AI Methods." Canonical (`lens_program/2_*`) and the howto list use: LEN 1 *Principles of LE for Complex Systems*, LEN 10 *Learning Engineering Project (capstone)*, LEN 5 *Human Capability Analysis and Requirements*. "Foundations" and "Studio" are informal and unique to this footnote. Align to the canonical/howto short forms (or at minimum drop "Foundations"/"Studio," which collide with the F1/F2 "shared LDT foundations" and the LEN 10 "studio" framing elsewhere). Also: the footnote omits LEN 3 and LEN 6 entirely — fine if no case maps to them in the matrix, but inconsistent with presenting a course legend.

### C3. LEO-4 secondary-domain subtitle in the competency block
- **Location:** `frontmatter/introduction.typ:716` ("Context and Domain Fluency · LEO-4")
- **Severity:** consistency-gap
- **Recommendation:** The pillar's printed name is "Navigating Sociotechnical Constraints" (correct, matches canonical). Its grey subtitle reads "Context and Domain Fluency," the *old* formal-domain name. `lens_program/2_*` (line 159–161 and revision note line 589) renames LEO-4's competency domain to "Navigating Sociotechnical Constraints"; only the crosswalk table in `lens_program/1_*` (line 115–121) still says "Context and Domain Fluency." Since the canonical source of record is internally split, confirm with the program owner — but as printed, the pillar name and its own subtitle name the domain two different things, which reads as an error. Recommend subtitle → "Navigating Sociotechnical Constraints · LEO-4" (and flag the `lens_program/1_*` crosswalk to the owner; do not edit `lens_program/`).

### C4. "two-page spread" vs "three-page treatment" vs v2 four-page cases
- **Location:** `frontmatter/howto.typ:35` ("Each case occupies a two-page spread"), `frontmatter/introduction.typ:1325` (same), `overview-frontmatter.typ:109–111` ("The full three-page treatment")
- **Severity:** consistency-gap
- **Recommendation:** The book describes case length three different ways. v1 cases were a 2-page spread; the overview already says "three-page treatment"; and per CLAUDE.md task 4 the v2 cases render as **4-page** units. None of these statements is now uniformly true. Pick one accurate description (e.g., "each case occupies a two- to four-page unit: a narrative followed by a Learning Engineering Lens") and use it identically in howto, introduction, and overview. The "left page tells the story / right page is the Lens" claim is also no longer literally true for the longer v2 cases.

### C5. Anchor systems not surfaced in front matter
- **Location:** front matter generally (howto.typ, introduction.typ §VIII)
- **Severity:** consistency-gap
- **Recommendation:** Cases are now tagged with three anchors (induced 1–8, LENS D-/PT-, LEO) per CLAUDE.md binding rule 4, and the introduction's five-competency block teaches the LENS five and the LEO crosswalk well. But the "how to read this book" / howto pages still describe only the **six failure-mode letters and LEN course codes** as the per-case tagging scheme — they do not tell the reader that v2 cases carry LENS-primary / induced-secondary / LEO anchors in the header. If v2 headers render those anchors (they should), add one short paragraph to howto.typ explaining the three-anchor convention so the printed header is legible to a first-time reader. (If v2 headers do *not* yet render the anchors, that is a case-layer gap outside this review's scope but worth flagging to the editor.)

### C6. overview-frontmatter "six failure modes / three movements" describes the v1 structure only
- **Location:** `overview-frontmatter.typ:78–96` (Part I/II/III), `:139–158` (six modes)
- **Severity:** consistency-gap
- **Recommendation:** The overview front matter presents the book as exactly the v1 three-part / six-mode structure. With 202 cases and the v2 framework revisions (4 new LEOs, amended sub-competencies) now adopted, confirm the overview still describes the shipped book. At minimum the "six categories account for almost *every*… preventable failure" claim (`:82–83`) should be checked against the broader v2 corpus, which deliberately includes small-scale and intervention cases the six-mode taxonomy was not induced from.

---

## LOOK-AND-FEEL POLISH

### L1. Five-competency block — renders cleanly, no action needed (verification)
- **Location:** `frontmatter/introduction.typ:666–749`, book pp. 16–17
- **Severity:** look-feel-polish (PASS)
- **Finding:** The updated five-pillar names, the new per-pillar grey LEO subtitle line (6.5pt), and the teal-bordered block all fit and read well. The `dgm-five-competencies` diagram on p. 16 renders with the five icons and short labels (Systems Analysis / Iterative Development / Test and Evaluation / Sociotech. Constraints / Machine Teaming) — consistent with canonical. The italic "See the whole system. Build, test, refine…" capstone line (`:747`) matches the canonical "five in one breath" verbatim. No overflow, no orphaned heading. Nothing to change.

### L2. Editor bios — fit one page in both editions (verification)
- **Location:** `backmatter/editors.typ`, book p. 855 and overview-half p. 219
- **Severity:** look-feel-polish (PASS)
- **Finding:** The just-edited bios fit one page cleanly in both the full book (8pt bio, 30mm photos) and the condensed overview-half (7pt bio, 24mm photos). Photos render, the gold-left-border cards are balanced, the closing italic provenance note sits on-page. The five-pillar list in the intro paragraph (`:69`, "Mission Literacy · JHU Ecosystem · Intersectional Expertise · Capability Focus · Flywheel Iteration") matches the introduction's pillar names exactly. Reads well; no overflow. No change needed.

### L3. Intersectional Expertise pillar uses a one-off accent color
- **Location:** `frontmatter/introduction.typ:588` (`fill: rgb("#D26B43")`)
- **Severity:** look-feel-polish
- **Recommendation:** Four of the five pillar eyebrows in the §V block are teal; the "Intersectional Expertise" eyebrow alone is a rust/orange (`#D26B43`) to mark "the distinguishing pillar." This is a deliberate emphasis, but it is the only place that rust appears in the otherwise navy/teal/gold front-matter palette, and it is not part of the documented three-color system. Confirm it is intentional; if kept, consider promoting it to a named theme color so it is reused consistently (e.g., the matching dgm diagram) rather than appearing as a single hardcoded hex.

### L4. Title page edition string vs colophon
- **Location:** `frontmatter/title.typ:61` ("Edition 06.06.2026") and `:104` ("First edition, 2026")
- **Severity:** look-feel-polish
- **Finding/Recommendation:** Title page is otherwise correct — "First Edition 2026" framing is current, editors named correctly, "Learning Engineering for Next-Generation Systems" leader line correct. Minor: the title page shows a precise build-date edition stamp "Edition 06.06.2026" while the colophon says "First edition, 2026." Both are defensible, but a reader sees two different "edition" formats two pages apart. Consider making the title-page stamp read "First Edition · 2026" to match the colophon, and move the build date (if wanted) to the colophon only.

---

## What is correct and should NOT be changed

- Five competency **names, taglines, formal-domain subtitles** (except LEO-4, C3) — verified against `lens_program/1_*`. Correct.
- The "five in one breath" capstone line — verbatim canonical. Correct.
- LEN course **names** in `howto.typ` and the dynamic `course-index.typ` — match canonical (abbreviated forms are fine). Correct. (Only the `matrix.typ` footnote diverges — C2.)
- The six failure-mode letters (T/D/N/H/G/K) and their glosses in howto and overview — internally consistent with each other and with CLAUDE.md binding rule 1's modes-code letters.
- References page — renders cleanly, hanging indents and DOIs intact; no stale case-count language. The standing COI-relevant references (CIRCUIT senior-author disclosure at `references.typ:66`) are preserved.
- Editor bios content and one-page fit — verified in both editions (L2).
- Title page layout, dedication, colophon, legal-notices page — all render clean, no overflow.
