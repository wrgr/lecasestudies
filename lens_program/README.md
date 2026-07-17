# LENS Core Guiding Documents

> **STATUS: doc 1 v2.2 (July 2026 — 3.6 restored); doc 2 v2.4 (July 2026 — high-consequence framing, LEN 1 PLO-4, LEN 2 retitle, v2 subobjective homes).** Source of record: JHU SOE LDT/LENS program documentation; PLO text follows the LDT Program Learning Objectives of record dated 03-06-2025. Versions are tracked inline via a `Change Log` at the bottom of docs 1 and 2; prior prose retrievable from git history (no `legacy/` folder — the canonical file is always the one in this directory). The `.docx` companions for docs 1, 2, and 6 are regenerated from the `.md` as of the v2.4 sync (pandoc default, no reference doc); program-owner round-trip review of the v2.1 through v2.4 changes remains open. Decision records for this batch are in `decisions/`.

The complete, synced set. The five competencies, their names, taglines, and the LEO (LENS Educational Objective — the concentration-level objective tier; see doc 2 §4) crosswalk
are consistent across every document here as of this revision.

1. **LENS_Five_Competencies** — the competency framework of record: five competencies, each with
   formal name, tagline, main objective, and numbered subobjectives (1.1, 3.2, ...). Subobjective
   numbers are stable tags for case studies, course modules, and capstone rubrics.

2. **LENS_Objectives_Course_Mapping** — full program/course documentation: context, structure, the
   six LDT PLOs (verbatim, 03-06-2025 list at subobjective grain), the five LEOs, the PLO ↔ LEO
   support map, course-by-course descriptions with PLO/LEO mappings, coverage matrices, revision
   notes. Under v2.1 numbering, LEO-5 is "Navigating Sociotechnical Constraints." §1 carries the high-consequence-domain framing and the representative seven.

3. **LENS_Editor_Bios** — standalone editor biographies (Gray-Roncal, Diamond), each closing with a
   removable "On LENS" tie that maps the editor to the casebook's five pillars. Delete the two ties
   for a generic bio. Includes an editor's note and verification items.

4. **LENS_LECF_Crosswalk** — maps the five LENS domains against the proposed nine-domain Learning
   Engineering Competency Framework (LECF) for the IEEE ICICLE standards conversation. For Jodi Lis
   and the SIG.

5. **LENS_Summary_and_PrePost_Objectives** — one-page discussion summary (2019 ICICLE paper lineage)
   plus proposed pre/post concentration objectives as observable pairs.

6. **LENS_Recruitment_Email** — two student-solicitation email variants: mission-led (direct to a
   prospective student) and credential-led (network, referrers, list outreach). Send with docs 1 and 2
   attached; casebook excerpt for warm prospects.

7. **syllabi/** — course-tier documents in the JHU SOE `SyllabusTemplate_2026.docx` format. LEN 1 is
   current; LEN 2–10 are not yet regenerated. Syllabi are downstream of docs 1 and 2: a syllabus
   inherits its PLO alignment from doc 2 §4.1 rather than asserting it.

8. **decisions/** — provenance for the v2.2 / v2.4 sync: the tag renumber, the content changes, the
   framing change, and the LEN 1 course record. Working records, not documents of record; docs 1 and
   2 win wherever they disagree.

## Final competency names (v2.1)
Systems Analysis · Iterative Development · **Human-System Collaboration** · Test and Evaluation · Navigating Sociotechnical Constraints.

*(v2.1 reorder + rename: D3 is **Human-System Collaboration** — broadened from the v1 "Machine Teaming and Adaptation" and moved from position 5 to position 3; T&E moved to D4; Sociotechnical Constraints moved to D5. The flywheel reads: see the system → build → integrate humans → measure → deploy.)*

**The v1 → v2.1 remap is a three-cycle, not a swap:** D3 → D4, D4 → D5, D5 → D3. Nothing moves into D3 from D4. (Prior revisions of this file described it as a "D3↔D4 swap, D5→D3"; applied literally that produces a wrong result.) Note also that v1 3.4 maps to **4.5**, not 4.4: v2.1 inserted "judgment under inadequate evidence" at 4.4. A find-and-replace on the domain digit silently retags every communicate-uncertainty objective onto a different competency. Per-location tables: `decisions/03_tag_renumber_v1_to_v21.md`.

## Verify before external use
- "nearly 500 students" figure (now in print); IRB status of the human-cognitive-performance research
  language in Will's bio.
- Recruitment email: August 2026 start, online/part-time, "founding cohort" language, email address,
  and that capabilitymatters.org is live.
- Published casebook (capability-matters-digital.pdf, pp. 16–17) still carries v1 competency names + ordering (the Typst source is already on v2.1); the v2.1 sync ships with the casebook lens-anchor/LEO-anchor field remap (D3↔D4 swap, D5→D3) and the dgm-five-competencies diagram update.

## Open items (drop cleanly if they conflict with the documentation of record)
- Subobjectives 3.4 (communicating uncertainty) and 5.4 (not-yet-fielded systems) are additions
  beyond strict LEO unbundling.
- **Retired at v2.4:** "defense is named as one domain among three, never the primary one." Under the
  high-consequence framing (doc 2 §1) defense is one of a representative seven, so the ratio the
  convention policed is now produced structurally rather than by editorial vigilance.
- Whether PP24181 filed the course titles and the PLO-to-course mapping, or only the program
  objectives and curriculum structure, is open with the program owner. It changes the filing route
  for the v2.4 mapping edits, not their content.
- Syllabi for LEN 2–10 are not yet regenerated: they carry v1 tags, 14-week schedules, and the
  pre-template format. `decisions/03_tag_renumber_v1_to_v21.md` and `decisions/04_content_changes.md`
  specify the work. LEN 1 is done: `syllabi/`.
