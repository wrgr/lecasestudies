// ============================================================
// CAPABILITY MATTERS — Casebook
// Theme: colors, typography, page geometry
// ============================================================

// ---- Palette (capabilitymatters.org; B&W-safe luminance) ----
//
// Print is monochrome on Lulu B&W interior. Colors below are chosen so
// each pair that ever needs to be distinguished also reads correctly when
// reduced to grayscale. Concrete grayscale targets:
//   navy        L*  ~10  (≈ #1A1A1A black)
//   navy-mid    L*  ~16  (≈ #2D2D2D very dark gray)
//   teal        L*  ~32  (≈ #525252 dark mid gray)
//   gold        L*  ~58  (≈ #999999 light mid gray)
//   teal-light  L*  ~68  (≈ #ADADAD)
//   cream-dim   L*  ~88  (≈ #DCDCDC)
//   cream       L*  ~94  (≈ #EEEEEE near white)
//
// Anywhere a color carries meaning, diagrams also vary stroke pattern
// (solid / dashed / dotted) and shape (circle / square / outline-only)
// so the distinction survives a grayscale conversion.

#let navy        = rgb("#0A1628")
#let navy-mid    = rgb("#1F2A44")    // bumped slightly lighter for B&W readability
#let teal        = rgb("#1A8A7D")
#let teal-light  = rgb("#2CC4B3")
#let gold        = rgb("#D4A843")
#let gold-light  = rgb("#E8C96A")
#let cream       = rgb("#F5F0E8")
#let cream-dim   = rgb("#E8E2D6")
#let text-dark   = rgb("#0A1628")
#let text-muted  = rgb("#5A6A85")
#let rule-soft   = rgb("#D8D2C4")

// ---- Typography ----
#let serif = ("Instrument Serif", "EB Garamond", "Georgia")
#let sans  = ("DM Sans", "Inter", "Helvetica")

// ---- Trim & bleed for Lulu Half Letter ("Statement") paperback ----
// Trim: 5.5 × 8.5 in = 139.7 × 215.9 mm. Bleed: 3 mm on all four sides.
// Final PDF page is therefore 145.7 × 221.9 mm.
// (Changed from A5 148 × 210 in May 2026 — half letter paper is
// dramatically cheaper to source for short-run printing.)
#let trim-w   = 139.7mm
#let trim-h   = 215.9mm
#let bleed    = 3mm
#let page-w   = trim-w + 2 * bleed   // 145.7 mm
#let page-h   = trim-h + 2 * bleed   // 221.9 mm

// Margins measured from the TRIM edge, not the bleed edge.
// Tightened slightly for Half Letter trim (was 18/14/16/18 for A5)
// so per-page content width holds at ~111 mm despite the narrower
// page — keeps case bodies inside their 2-page spreads.
#let m-inner  = 16mm
#let m-outer  = 13mm
#let m-top    = 15mm
#let m-bottom = 17mm

// ---- Failure-mode taxonomy ----
#let modes = (
  T: ("Training Gap",                       "Personnel were never taught what they needed to know."),
  D: ("Designed Out",                       "Human capability was deliberately removed from the system."),
  N: ("Normalization of Deviance",          "Known risks were accepted as routine."),
  H: ("Human-System Interface",             "Correct performance was made unreasonably difficult."),
  G: ("Governance & Trust",                "Ethics, accountability, and stakeholder trust were afterthoughts."),
  K: ("Knowledge & Institutional Memory",  "Organizational knowledge degraded or was never captured."),
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
)
