// ============================================================
// CAPABILITY MATTERS — Casebook
// Theme: mode flags, page geometry, palette, typography sizes.
//
// All mode/trim/color decisions live here so book.typ and the
// content modules can stay declarative.
// ============================================================

// ---- Build mode resolution ----
//
//   print    — 8 × 10 in, GRAYSCALE, white paper, 3 mm bleed. Production
//              interior for Lulu (8 × 10) cream stock.
//   digital  — 8 × 10 in, color, full-page cream backdrop. Screen / PDF
//              edition. (default)
//   proof    — the grayscale print page centered on an 8.5 × 11 US Letter
//              sheet with an 8 × 10 trim outline + corner crop marks, so
//              it can be printed at 100% on any office printer to review
//              exactly what the print edition will trim to.
//   proof-digital — the proof carrier in COLOR: the digital edition's
//              8 × 10 page (cream backdrop painted on the trim block)
//              centered on US Letter at 100%, so the color edition can
//              be printed on 8.5 × 11 with reasonable margins while text
//              size and layout stay exactly those of the 8 × 10 book.
#let mode = sys.inputs.at("mode", default: "digital")

// Edition split: "full" — every case (the complete standalone edition,
// the default); "main" — the printed main volume (cases in
// lib/selection.typ); "supplement" — the complement of the main volume
// (everything the printed volume omits). The "supplement" partition no
// longer ships as its own PDF — those cases reach readers through the
// complete standalone edition — but the value is retained because the
// matrix uses it to mark (°) which cases fall outside the printed cut.
// Skipped cases still emit <caseinfo> metadata so the matrix and indexes
// always cover the whole corpus.
#let edition = sys.inputs.at("edition", default: "full")

#let is-print   = mode == "print"
#let is-digital = mode == "digital"
// Both proof modes share the Letter-carrier geometry; only "proof" is
// grayscale (it proxies the print edition), "proof-digital" keeps color.
#let is-proof-digital = mode == "proof-digital"
#let is-proof   = mode == "proof" or is-proof-digital

#let grayscale      = is-print or mode == "proof"
#let cream-backdrop = is-digital

// ---- Trim, bleed & proof carrier ----
//
// One trim everywhere: 8 × 10 in (203.2 × 254 mm).
//   print   — page = trim + 3 mm bleed on four sides (Lulu).
//   digital — page = trim, no bleed.
//   proof   — page = US Letter (215.9 × 279.4 mm); the 8 × 10 page is
//             centered on it at 100% via the carrier inset below, so the
//             live text area is identical to print and proof line- and
//             page-breaks match the print edition exactly.
#let trim-w = 203.2mm
#let trim-h = 254mm
#let bleed  = if is-print { 3mm } else { 0mm }

#let _letter-w = 215.9mm
#let _letter-h = 279.4mm
#let carrier-x = if is-proof { (_letter-w - trim-w) / 2 } else { 0mm }  // 6.35 mm
#let carrier-y = if is-proof { (_letter-h - trim-h) / 2 } else { 0mm }  // 12.7 mm

#let page-w = if is-proof { _letter-w } else { trim-w + 2 * bleed }
#let page-h = if is-proof { _letter-h } else { trim-h + 2 * bleed }

// Margins measured from the 8 × 10 trim edge. Single column; the inner
// (binding) margin runs a little wider than the outer.
//   inner 26 / outer 22 / top 20 / bottom 24 mm
//   → content width ~155 mm at 10.5 pt (~80-character measure)
#let m-inner  = 26mm
#let m-outer  = 22mm
#let m-top    = 20mm
#let m-bottom = 24mm

// ---- Typography sizes ----
//
// One 8 × 10 set across all three editions (the print/digital/proof
// modes differ only in color and carrier, not in measure or type
// size, so proof pagination matches print exactly).
//   body-size: main case-body sans size
//   title-size: case title (serif)
//   impact-size: 'Impact' line under the title
//   lens-size: LE Insight / LENS Approach body
//   pullquote-size: pull quote serif
//   reflection-size: reflection-question body
//   sources-size: sources + literature + per-case references list
#let body-size       = 10.5pt
#let title-size      = 28pt
#let impact-size     = 11pt
#let lens-size       = 9pt
#let pullquote-size  = 13pt
#let pullquote-src   = 7.5pt
#let reflection-size = 9.5pt
#let reflection-num  = 11pt
#let sources-size    = 7.5pt
#let body-leading    = 0.55em
#let body-spacing    = 0.64em

// ---- Typography (font stacks) ----
#let serif = ("Instrument Serif", "EB Garamond", "Georgia")
#let sans  = ("DM Sans", "Inter", "Helvetica")

// ---- Palette ----
//
// Print is grayscale on Lulu B&W interior. The color palette below is
// chosen so each pair that ever needs to be distinguished also reads
// correctly when reduced to grayscale (concrete L* targets noted on
// each color). The grayscale palette uses those targets directly so
// the production PDF is true grayscale.
//
// Where color carries meaning (diagrams), shape and stroke pattern
// (solid / dashed / dotted, circle / square / outline-only) carry
// the same information so the distinction survives a B&W print.

// -- Color palette --
#let _navy-c       = rgb("#0A1628")  // L* ~10
#let _navy-mid-c   = rgb("#1F2A44")  // L* ~16
#let _teal-c       = rgb("#1A8A7D")  // L* ~32
#let _teal-light-c = rgb("#2CC4B3")  // L* ~68
#let _gold-c       = rgb("#D4A843")  // L* ~58
#let _gold-light-c = rgb("#E8C96A")  // L* ~68
#let _cream-c      = rgb("#F5F0E8")  // L* ~94
#let _cream-dim-c  = rgb("#E8E2D6")  // L* ~88
#let _text-dark-c  = rgb("#0A1628")
#let _text-muted-c = rgb("#5A6A85")
#let _rule-soft-c  = rgb("#D8D2C4")

// -- Grayscale palette (matched to L* targets above) --
#let _navy-g       = rgb("#1A1A1A")
#let _navy-mid-g   = rgb("#2D2D2D")
#let _teal-g       = rgb("#525252")
#let _teal-light-g = rgb("#ADADAD")
#let _gold-g       = rgb("#7A7A7A")  // pulled darker than #999 so the gold accents stay readable on white
#let _gold-light-g = rgb("#B0B0B0")
#let _cream-g      = rgb("#FFFFFF")
#let _cream-dim-g  = rgb("#E8E8E8")
#let _text-dark-g  = rgb("#1A1A1A")
#let _text-muted-g = rgb("#666666")
#let _rule-soft-g  = rgb("#C8C8C8")

#let navy       = if grayscale { _navy-g }       else { _navy-c }
#let navy-mid   = if grayscale { _navy-mid-g }   else { _navy-mid-c }
#let teal       = if grayscale { _teal-g }       else { _teal-c }
#let teal-light = if grayscale { _teal-light-g } else { _teal-light-c }
#let gold       = if grayscale { _gold-g }       else { _gold-c }
#let gold-light = if grayscale { _gold-light-g } else { _gold-light-c }
#let cream      = if grayscale { _cream-g }      else { _cream-c }
#let cream-dim  = if grayscale { _cream-dim-g }  else { _cream-dim-c }
#let text-dark  = if grayscale { _text-dark-g }  else { _text-dark-c }
#let text-muted = if grayscale { _text-muted-g } else { _text-muted-c }
#let rule-soft  = if grayscale { _rule-soft-g }  else { _rule-soft-c }

// ---- Diagram palette ----
//
// Diagrams get their own tokens because they had none: every colour in
// lib/diagrams.typ was a hard-coded rgb() literal, so the 93 diagram
// placements bypassed the grayscale switch above entirely. In the printed
// interior the old gold (#D4A843) and teal (#2CC4B3) flattened to grey 170
// and 162 — eight levels apart out of 255 — so every colour distinction the
// diagrams drew was invisible on paper.
//
// The palette is light-ground editorial: near-black ink for the primary
// series, a single burnt-orange accent for the second, and no dark panel
// fills. One accent, not two, so nothing depends on telling two hues apart.
// The grayscale variants are *chosen for separation*, not inherited from the
// colours' own luma — that inheritance is what failed before.

// -- Colour --
#let _dgm-ground-c      = rgb("#FFFFFF")
#let _dgm-panel-c       = rgb("#F0EDE6")  // L* ~94
#let _dgm-panel-alt-c   = rgb("#E4DFD4")  // L* ~89
#let _dgm-rule-c        = rgb("#B9B3A4")  // L* ~73
#let _dgm-ink-c         = rgb("#111111")  // L* ~7   — primary series, text
#let _dgm-dim-c         = rgb("#8A8578")  // L* ~55  — muted labels, captions
#let _dgm-accent-c      = rgb("#B8541F")  // L* ~44  — the single accent
#let _dgm-accent-soft-c = rgb("#E0A377")  // L* ~72  — accent for large fills
#let _dgm-onaccent-c    = rgb("#FFFFFF")  // text/knockouts drawn on ink or accent

// -- Grayscale (separation-first: ink 17, accent 110, dim 165) --
#let _dgm-ground-g      = rgb("#FFFFFF")
#let _dgm-panel-g       = rgb("#F0F0F0")
#let _dgm-panel-alt-g   = rgb("#E0E0E0")
#let _dgm-rule-g        = rgb("#B4B4B4")
#let _dgm-ink-g         = rgb("#111111")
#let _dgm-dim-g         = rgb("#A5A5A5")
#let _dgm-accent-g      = rgb("#6E6E6E")
#let _dgm-accent-soft-g = rgb("#BDBDBD")
#let _dgm-onaccent-g    = rgb("#FFFFFF")

#let dgm-ground      = if grayscale { _dgm-ground-g }      else { _dgm-ground-c }
#let dgm-panel       = if grayscale { _dgm-panel-g }       else { _dgm-panel-c }
#let dgm-panel-alt   = if grayscale { _dgm-panel-alt-g }   else { _dgm-panel-alt-c }
#let dgm-rule        = if grayscale { _dgm-rule-g }        else { _dgm-rule-c }
#let dgm-ink         = if grayscale { _dgm-ink-g }         else { _dgm-ink-c }
#let dgm-dim         = if grayscale { _dgm-dim-g }         else { _dgm-dim-c }
#let dgm-accent      = if grayscale { _dgm-accent-g }      else { _dgm-accent-c }
#let dgm-accent-soft = if grayscale { _dgm-accent-soft-g } else { _dgm-accent-soft-c }
#let dgm-onaccent    = if grayscale { _dgm-onaccent-g }    else { _dgm-onaccent-c }

// ---- Disclosure / evidence-tier flag tints ----
//
// Same defect the diagram palette fixes: these two blocks hard-coded their
// tints, so in the grayscale interior they flattened to fills one level apart
// (244 and 245) and were no longer telling the reader which block was which.
// Separated deliberately in both palettes.
#let _flag-coi-fill-c    = rgb("#FFF6E1")
#let _flag-coi-rule-c    = rgb("#D4A843")
#let _flag-tier-fill-c   = rgb("#F1F5FB")
#let _flag-tier-rule-c   = rgb("#5C6E8E")
#let _flag-coi-fill-g    = rgb("#F2F2F2")
#let _flag-coi-rule-g    = rgb("#7A7A7A")
#let _flag-tier-fill-g   = rgb("#E2E2E2")
#let _flag-tier-rule-g   = rgb("#B4B4B4")

#let flag-coi-fill  = if grayscale { _flag-coi-fill-g }  else { _flag-coi-fill-c }
#let flag-coi-rule  = if grayscale { _flag-coi-rule-g }  else { _flag-coi-rule-c }
#let flag-tier-fill = if grayscale { _flag-tier-fill-g } else { _flag-tier-fill-c }
#let flag-tier-rule = if grayscale { _flag-tier-rule-g } else { _flag-tier-rule-c }

// ---- Proof furniture: 8 × 10 trim outline + corner crop marks ----
//
// Painted in the page background when mode=proof so reviewers can see
// exactly where the production book trims on the Letter carrier sheet.
// In every other mode these resolve to `none` and add nothing.
#let _crop-len    = 4mm
#let _crop-gap    = 2mm
#let _crop-stroke = 0.4pt + text-muted
#let _trim-L = carrier-x
#let _trim-R = carrier-x + trim-w
#let _trim-T = carrier-y
#let _trim-B = carrier-y + trim-h

// Trim outline + corner ticks only — no page-backdrop fill. Shared by
// crop-marks (regular pages) and divider-bg (which paints its own navy
// trim block first, and must not have it covered by a backdrop).
#let _trim-marks = if is-proof {
  // trim outline
  place(top + left, dx: _trim-L, dy: _trim-T,
    rect(width: trim-w, height: trim-h, stroke: 0.3pt + rule-soft))
  // horizontal ticks, outboard of the four corners
  place(top + left, dx: _trim-L - _crop-gap - _crop-len, dy: _trim-T, line(length: _crop-len, stroke: _crop-stroke))
  place(top + left, dx: _trim-R + _crop-gap,             dy: _trim-T, line(length: _crop-len, stroke: _crop-stroke))
  place(top + left, dx: _trim-L - _crop-gap - _crop-len, dy: _trim-B, line(length: _crop-len, stroke: _crop-stroke))
  place(top + left, dx: _trim-R + _crop-gap,             dy: _trim-B, line(length: _crop-len, stroke: _crop-stroke))
  // vertical ticks, outboard of the four corners
  place(top + left, dx: _trim-L, dy: _trim-T - _crop-gap - _crop-len, line(length: _crop-len, angle: 90deg, stroke: _crop-stroke))
  place(top + left, dx: _trim-R, dy: _trim-T - _crop-gap - _crop-len, line(length: _crop-len, angle: 90deg, stroke: _crop-stroke))
  place(top + left, dx: _trim-L, dy: _trim-B + _crop-gap,             line(length: _crop-len, angle: 90deg, stroke: _crop-stroke))
  place(top + left, dx: _trim-R, dy: _trim-B + _crop-gap,             line(length: _crop-len, angle: 90deg, stroke: _crop-stroke))
} else { none }

// Both proof modes keep white inside pages — the trim outline shows the
// page boundary without printing a cream backdrop (editor decision,
// July 2026: no cream background on inside pages of the with-cover
// printable editions).
#let crop-marks = _trim-marks

// Chapter-divider fill/background. A full-bleed navy divider can't
// bleed to the Letter edge in proof, so instead paint the 8 × 10 trim
// block on the carrier and keep the trim marks.
#let divider-fill = if is-proof { none } else { navy }
#let divider-bg = if is-proof {
  place(top + left, dx: carrier-x, dy: carrier-y, rect(width: trim-w, height: trim-h, fill: navy))
  _trim-marks
} else { none }

// ---- Who builds the fix: expertise + tools per failure mode ----
//
// Capability engineering is a team sport. Each failure mode calls
// for a particular mix of expertise and a particular set of tools;
// a case's mode codes therefore imply the team that would build the
// fix. These maps drive the per-case "Who Builds This" block so the
// reader sees, case by case, how different expertise contributes —
// and that no one discipline carries the whole job.
//
//   mode-expertise.<code> = the disciplines that address that mode
//   mode-tools.<code>     = representative tools/methods they use
#let mode-expertise = (
  T: "learning science & instructional design",
  D: "systems & human-factors engineering",
  N: "safety science & organizational analysis",
  H: "human factors & interaction design",
  G: "governance, ethics & measurement",
  K: "knowledge management & data engineering",
)
#let mode-tools = (
  T: ("scenario simulation", "competency models"),
  D: ("task analysis", "design prototyping"),
  N: ("incident analysis", "safety dashboards"),
  H: ("usability testing", "cognitive walkthroughs"),
  G: ("governance frameworks", "bias & evidence audits"),
  K: ("knowledge bases", "data pipelines"),
)
// Every team also needs the integrators who hold the picture together.
#let mode-integrators = "domain experts · a learning engineer to integrate the work"

// ---- Canonical LENS five competencies (v2.1 numbering) ----
// Used by the per-case "Where this case sits" figure to resolve a
// lens-anchor code ("D3/PT5") to its competency name. Problem types
// are canonically numbered only (PT1–PT6), so they render as numbers.
#let lens-domains = (
  "1": "Systems Analysis",
  "2": "Iterative Development",
  "3": "Human-System Collaboration",
  "4": "Test and Evaluation",
  "5": "Navigating Sociotechnical Constraints",
)

// ---- Failure-mode taxonomy ----
#let modes = (
  T: ("Training Gap",                       "Personnel were never taught what they needed to know."),
  D: ("Designed Out",                       "Human capability was deliberately removed from the system."),
  N: ("Normalization of Deviance",          "Known risks were accepted as routine."),
  H: ("Human-System Interface",             "Correct performance was made unreasonably difficult."),
  G: ("Governance & Trust",                "Ethics, accountability, and stakeholder trust were afterthoughts."),
  K: ("Knowledge & Institutional Memory",  "Organizational knowledge degraded or was never captured."),
)

// ---- Case section sets ----
//
// Every case carries the same five-beat structure so the reader can
// move across cases with a stable mental model. The labels adapt to
// the kind of case (a failure, a successful intervention, or a
// frontier/emerging case); the case body supplies one content block
// per beat, in order, and `case()` pairs them with these labels.
#let section-sets = (
  failure:      ("Background", "What Happened", "The Investigation", "The Capability Gap", "Aftermath & Reform"),
  intervention: ("Background", "The Intervention", "How It Worked", "The Evidence", "What Transferred"),
  frontier:     ("The Shift", "What Is Emerging", "The Capability Question", "Early Evidence", "Open Problems"),
)

// ---- Domains ----
#let domains = (
  defense:    ("Defense",            navy-mid),
  aviation:   ("Aviation",           navy-mid),
  space:      ("Space / Aerospace",  navy-mid),
  healthcare: ("Healthcare",         teal),
  energy:     ("Energy",             gold),
  education:  ("Education at Scale", teal),
  gov:        ("Government",         navy-mid),
  industrial: ("Industrial",         gold),
  tech:       ("Technology",         teal),
  autonomous: ("Autonomous Systems", teal),
  // v2 domain keys (added as v2 cases use richer domain vocabulary)
  "clinical AI":             ("Clinical AI",         teal),
  "clinical medicine":       ("Clinical Medicine",   teal),
  "medical devices":         ("Medical Devices",     teal),
  "health equity":           ("Health Equity",       teal),
  "patient safety":          ("Patient Safety",      teal),
  "workforce development":   ("Workforce Dev",       gold),
  "workforce policy":        ("Workforce Policy",    gold),
  "workforce training":      ("Workforce Training",  gold),
  "corporate L&D":           ("Corporate L&D",       gold),
  "finance":                 ("Finance",             navy-mid),
  "fintech":                 ("Fintech",             navy-mid),
  "algorithmic fairness":    ("Algo Fairness",       navy-mid),
  "equity":                  ("Equity",              teal),
  "human-AI teaming":        ("Human-AI Teaming",    teal),
  "ed-tech":                 ("Ed-Tech",             teal),
  "naval engineering":       ("Naval Engineering",   navy-mid),
  "safety certification":    ("Safety Cert",         navy-mid),
  "rail transport":          ("Rail Transport",      navy-mid),
  "pharmaceutical safety":   ("Pharma Safety",       teal),
  "clinical care":           ("Clinical Care",       teal),
  "anesthesiology":          ("Anesthesiology",      teal),
  "neuroscience":            ("Neuroscience",        teal),
  "science policy":          ("Science Policy",      navy-mid),
  "higher education (UK)":   ("Higher Ed (UK)",      teal),
  "learning analytics":      ("Learning Analytics",  teal),
  "data governance":         ("Data Governance",     navy-mid),
  "team science":            ("Team Science",        teal),
)
