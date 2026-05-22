// ============================================================
// CAPABILITY MATTERS — Casebook
// Theme: mode flags, page geometry, palette, typography sizes.
//
// All mode/trim/color decisions live here so book.typ and the
// content modules can stay declarative.
// ============================================================

// ---- Build mode resolution ----
//
//   screen        — Half Letter, color, cream backdrop. Default; used
//                   for screen reading and design preview.
//   print         — Half Letter, GRAYSCALE, white backdrop. Production
//                   interior for Lulu Half Letter (5.5 × 8.5) cream stock.
//   print-letter  — US Letter, GRAYSCALE, white backdrop. Production
//                   interior for Lulu Letter (8.5 × 11) trim.
//   draft         — US Letter, color, 11pt body. Editorial mark-up
//                   layout, ~2 pages per case.
//   draft-half    — Half Letter, color, 11pt body. Editorial layout at
//                   the trade-book trim, ~4 pages per case.
#let mode = sys.inputs.at("mode", default: "screen")

#let is-print      = mode == "print" or mode == "print-letter"
#let is-draft      = mode == "draft" or mode == "draft-half"
#let is-letter     = mode == "print-letter" or mode == "draft"
#let is-half       = not is-letter
#let grayscale     = is-print
#let cream-backdrop = mode == "screen"

// ---- Trim & bleed ----
//
// Half Letter (5.5 × 8.5 in)  = 139.7 × 215.9 mm — production small trim
// US Letter   (8.5 × 11 in)  = 215.9 × 279.4 mm — production large trim
// Bleed: 3 mm on all four sides for production; 0 for draft (single-sided
// editorial print, no bleed needed).
#let bleed = if is-draft { 0mm } else { 3mm }
#let trim-w = if is-letter { 215.9mm } else { 139.7mm }
#let trim-h = if is-letter { 279.4mm } else { 215.9mm }
#let page-w = trim-w + 2 * bleed
#let page-h = trim-h + 2 * bleed

// Margins measured from the TRIM edge.
//   Half Letter: 16/13/15/17 — content width ~111 mm at 8.5 pt
//   US Letter (production): 22/18/20/22 — content width ~176 mm at 10.5 pt
//   US Letter (draft):      28/18/20/20 — wider inside for 3-hole binder
//   Half Letter (draft):    17/14/16/16 — tighter; 11 pt fits ~58 chars
#let m-inner = {
  if is-draft and is-letter { 28mm }
  else if is-draft and is-half { 17mm }
  else if is-letter { 22mm }
  else { 16mm }
}
#let m-outer = {
  if is-draft and is-letter { 18mm }
  else if is-draft and is-half { 14mm }
  else if is-letter { 18mm }
  else { 13mm }
}
#let m-top = {
  if is-draft and is-letter { 20mm }
  else if is-draft and is-half { 16mm }
  else if is-letter { 20mm }
  else { 15mm }
}
#let m-bottom = {
  if is-draft and is-letter { 20mm }
  else if is-draft and is-half { 16mm }
  else if is-letter { 22mm }
  else { 17mm }
}

// ---- Typography sizes (mode-aware) ----
//
//   body-size: main case-body sans size
//   title-size: case title (serif)
//   impact-size: 'Impact' line under the title
//   lens-size: LE Insight / LENS Approach body
//   pullquote-size: pull quote serif
//   reflection-size: reflection-question body
//   sources-size: sources + literature list
#let body-size       = if is-draft { 11pt }   else if is-letter { 10.5pt } else { 8.5pt }
#let title-size      = if is-draft { 24pt }   else if is-letter { 26pt }   else { 22pt }
#let impact-size     = if is-draft { 10.5pt } else if is-letter { 11pt }   else { 8.5pt }
#let lens-size       = if is-draft { 10.5pt } else if is-letter { 10pt }   else { 8.5pt }
#let pullquote-size  = if is-draft { 13pt }   else if is-letter { 12pt }   else { 10.5pt }
#let pullquote-src   = if is-draft { 8pt }    else if is-letter { 7.5pt }  else { 6.8pt }
#let reflection-size = if is-draft { 10.5pt } else if is-letter { 9.5pt }  else { 8pt }
#let reflection-num  = if is-draft { 12pt }   else if is-letter { 11pt }   else { 10pt }
#let sources-size    = if is-draft { 9pt }    else if is-letter { 8.5pt }  else { 7pt }
#let body-leading    = if is-draft { 0.58em } else if is-letter { 0.55em } else { 0.45em }
#let body-spacing    = if is-draft { 0.68em } else if is-letter { 0.6em }  else { 0.55em }

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
