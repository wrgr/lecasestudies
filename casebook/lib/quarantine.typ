// ============================================================
// Quarantine — cases withheld from EVERY build.
//
// A quarantined case renders nothing: no narrative, no LE Lens, and no
// <caseinfo>/<cmeta> metadata — so it is absent from the printed main
// volume, the complete standalone edition, the companion, and from the
// matrix / domain index / references appendix. The case block stays in
// its chapter source and is
// fully recoverable: delete a slug from this list to restore the case.
//
// Editorial basis: the 2026 LENS-alignment audit (see casebook/QUARANTINE.md
// and AUDIT.md). A case is quarantined only when its core lesson is not a
// capability problem (fraud / finance / philanthropy / pure-mechanical
// failure) or when it is redundant with a stronger sibling that teaches the
// same lesson. Slugs are the stable IDs; global numbering keeps its gaps.
// ============================================================

#let quarantine-slugs = (
  "theranos",                                  // 10  — fraud; seam lesson held by Epic Sepsis (5)
  "crisis-point-merit-aid-leveraging-at",      // 56  — higher-ed finance; twin of Engler (55)
  "in-re-2u-securities-class-action",          // 59  — securities-fraud vantage; held by GAO/2U (57)
  "newark-prize-zuckerberg-gift",              // 64  — philanthropy/politics; consent lesson in 53/54
  "boeing-737-rudder-hardovers",               // 99  — pure mechanical; text disavows a capability gap
  "marine-corps-training-in-the-indopacom",    // 125 — resourcing dressed as training; held by 124/126
  "gao-weapon-system-sustainment-reviews",     // 136 — evidence-architecture; held by F-35 (126)/140
  "blackberry-touchscreen-inertia",            // 145 — disruption story; twin of Kodak (144)
  "libor-manipulation",                        // 150 — measurement-gaming trio; held by 148/149
  "hyatt-regency-walkway-collapse",            // 158 — structural-ethics; change-control lesson in 172/161
  "sago-mine-disaster",                        // 168 — cumulative-inadequacy; held by 163/164/159
  "cambridge-analytica-facebook",              // 188 — privacy scandal; self-declared not a capability case
  "care-principles-indigenous-data",           // 202 — normative framework; LEO held by 186/196/201
  "cruise-robotaxi-pedestrian-drag",           // 204 — redundant with Cruise partial-disclosure (190)
)
