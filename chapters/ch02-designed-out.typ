// ============================================================
// Chapter 2 — Designed Out
// "Capability Was Removed to Save Cost"
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm

#chapter-divider(
  part: "Part I — The Failure Modes",
  number: "2",
  title: "Designed Out",
  subtitle: "Capability was removed to save cost.",
  epigraph: [If we emphasize MCAS is a new function there may be greater certification and training impact.],
  epigraph-source: "Boeing internal meeting minutes, 2013",
)

// ---------------- CASE 2: BOEING 737 MAX ----------------

#case(
  number: 2,
  title: "Boeing 737 MAX / MCAS",
  year: "2018 – 2019",
  domains-list: ("aviation",),
  modes-code: "DTH",
  impact: "346 killed across two crashes — Lion Air 610 and Ethiopian Airlines 302",
  diagram: dgm.dgm-737max,
  body: [
    The Maneuvering Characteristics Augmentation System was not in the flight
    manual. It was not in pilot training. The acronym itself was kept out of
    customer-facing materials. Internal meeting minutes recovered by
    Congressional investigators showed Boeing employees planning the omission
    in writing: emphasizing MCAS as a new function would trigger "greater
    certification and training impact." Boeing had reportedly promised
    Southwest Airlines a one-million-dollar rebate per aircraft if the MAX
    did not require simulator training.

    When MCAS misfired on Lion Air Flight 610 in October 2018, the crew had
    no prior knowledge the system existed, no procedure for disabling it, and
    no simulator experience of its failure mode. One hundred eighty-nine
    people died. Five months later Ethiopian Airlines Flight 302 repeated
    the sequence almost exactly. One hundred fifty-seven more.

    A 2016 internal Boeing survey had already found 39% of employees
    conducting certification reviews perceived "undue pressure" from
    management. The House Transportation Committee's 2020 report concluded
    that Boeing's assumption that simulator training was unnecessary
    "diminished safety, minimized the value of pilot training, and inhibited
    technical design improvements." This is the inverse of the
    capability-engineering thesis: human capability was not overlooked, it was
    engineered out of the system to avoid the cost of training that would
    have created it.
  ],
  quote: [Boeing's assumption that simulator training was unnecessary diminished safety, minimized the value of pilot training, and inhibited technical design improvements.],
  quote-source: "House Transportation Committee Report, 2020",
  sources-list: (
    [House Transportation Committee, _The Boeing 737 MAX Aircraft: Costs, Consequences, and Lessons from Its Design, Development, and Certification_ (2020)],
    [Department of Transportation Office of Inspector General, AV2020042 (2020)],
    [Herkert, Borenstein & Miller, "The Boeing 737 MAX: Lessons for Engineering Ethics," _Science and Engineering Ethics_ (2020)],
    [FAA Return-to-Service Summary (2020); Boeing internal communications released by the U.S. House (2019–2020)],
  ),
  le-insight: [
    The 737 MAX is the documentary record of a design choice to remove human
    capability to avoid the regulatory and commercial cost of sustaining it.
    The pilots were not undertrained by accident — they were undertrained as
    a *requirement*. The omission of training was a contract deliverable.
    Once that is understood, the accident becomes legible as an engineering
    decision rather than a training failure.
  ],
  lens-approach: [
    LENS treats capability requirements as system requirements: derived from
    operational analysis, traceable to design decisions, falsifiable against
    operational outcomes. A LENS-trained engineer in the MAX certification
    process would have produced a capability-requirements artifact mapping
    pilot tasks to system behaviors — and flagged the proposed manual
    omission as an unmitigated requirements gap.
  ],
  literature-items: (
    [Herkert, Borenstein & Miller (2020) on certification-by-omission ethics],
    [Leveson, _Engineering a Safer World_ (2011) — STAMP],
    [Casner & Hutchins (2019), "What Do We Tell the Drivers?"],
  ),
  reflection-list: (
    [If a customer contract required removing a training requirement you judged necessary, what artifact would you produce, who would you route it to, and what would you do if the routing failed?],
    [Reconstruct the MAX accident as a *capability-requirements* failure: what was the elided requirement, at what life-cycle stage was it elided, and who had the authority to insert it?],
  ),
  courses: ("LEN 1", "LEN 5", "LEN 8"),
)

// ---------------- CASE 7: THERAC-25 ----------------

#case(
  number: 7,
  title: "Therac-25",
  year: "1985 – 1987",
  domains-list: ("healthcare", "tech"),
  modes-code: "HDG",
  impact: "Six known massive radiation overdoses; four deaths; canonical case in software safety engineering",
  diagram: dgm.dgm-therac,
  body: [
    Earlier machines in the Therac line had hardware interlocks: physical
    mechanisms that would not allow the electron beam to fire unless the
    metal target was in place. The Therac-25 removed them. The new design
    relied entirely on software to assure the beam configuration matched
    the prescription. Doing so was cheaper, lighter, and faster to certify.
    It also moved the entire safety case onto software not written for
    safety-critical operation.

    Operators encountered a race condition the engineers did not know
    existed. If a technician entered a prescription, noticed an error, and
    corrected it within roughly eight seconds, the machine could enter a
    state in which the high-energy beam fired without the target. Patients
    absorbed up to a hundred times the intended dose. The console displayed
    "MALFUNCTION 54" — a code without operational meaning — and offered the
    option to proceed. Operators, trained that the machine was safe,
    proceeded.

    When patients reported burning and pain, the manufacturer insisted
    overdose was impossible. Leveson and Turner's 1993 analysis became the
    founding case study of modern software safety engineering:
    overconfidence in software, removal of independent hardware safeguards,
    error messages that communicated nothing, and a reporting architecture
    that absorbed incidents.
  ],
  quote: [Therac-25 illustrates the dangers of relying on software safety controls without rigorous engineering practices.],
  quote-source: "Paraphrasing Leveson & Turner, IEEE Computer, 1993",
  sources-list: (
    [Leveson & Turner, "An Investigation of the Therac-25 Accidents," _IEEE Computer_ 26(7) (1993)],
    [_The Joint Commission Journal on Quality and Patient Safety_ analysis (2004)],
    [Leveson, _Safeware: System Safety and Computers_ (1995)],
    [Ethics Unwrapped, McCombs School of Business, University of Texas at Austin],
  ),
  le-insight: [
    Therac-25 is the moment when removing the human safety margin became
    visible as a design choice. The hardware interlock was not redundant —
    it was the safety case. When it was removed, no equivalent capability
    was put in its place. The operator was retained in the system but
    stripped of the ability to detect what it was doing wrong. Capability
    engineering would have asked, before removing the interlock, *what
    function takes its load?*
  ],
  lens-approach: [
    LENS frames Therac-25 as a *Design-Out* failure made visible through
    Interface and Governance pathologies. Studio projects in LEN 5 ask
    students to produce capability-load diagrams tracing every safety
    function to a hardware backstop, a software check, or a trained
    operator action with the information needed to perform it. LEN 7
    examines incident reporting as governance.
  ],
  literature-items: (
    [Leveson, _Engineering a Safer World_ (2011) — STAMP for medical devices],
    [Rasmussen (1997), "Risk management in a dynamic society"],
    [Perrow, _Normal Accidents_ (1984)],
  ),
  reflection-list: (
    [Identify a system in your domain that migrated a safety function from hardware to software. Where did the human-capability load go, and who is accountable for sustaining it?],
    [Therac-25 operators saw "MALFUNCTION 54" and continued treatment. Redesign that interface using LEN 8 principles so that the operator's correct action is the easiest action.],
  ),
  courses: ("LEN 5", "LEN 7", "LEN 8"),
)

// ---------------- CASE 19: PATRIOT MISSILE ----------------

#case(
  number: 19,
  title: "Patriot Missile / Dhahran",
  year: "1991",
  domains-list: ("defense",),
  modes-code: "DHK",
  impact: "28 U.S. soldiers killed in their barracks; roughly 100 wounded",
  diagram: dgm.dgm-patriot,
  body: [
    The Patriot was designed to defend Western Europe against Soviet aircraft
    in engagements measured in minutes. In February 1991 it was defending
    Saudi Arabia against ballistic missiles in batteries running more than a
    hundred hours without reset. The mismatch between original design
    context and field deployment was invisible to operators because no one
    had told them.

    The system tracked time using a 24-bit fixed-point register. Each clock
    tick introduced a tiny rounding error. The error grew with every hour
    of continuous operation. After 100 hours the tracking gate was off by
    about a third of a second — far enough that an incoming Scud arrived
    where the radar was no longer looking. The missile that struck the
    Dhahran barracks on February 25, 1991 was not intercepted because the
    system was searching empty sky.

    Two weeks earlier, Israeli operators had identified the drift and warned
    the U.S. Army. Engineers had produced a software patch. The patch
    arrived in Dhahran on February 26 — the day after the strike. The
    advisory issued to field operators told them to reboot the system after
    "very long" run times but did not specify what counted as long. GAO
    later found that Army officials had presumed users would never run a
    battery continuously for so long.
  ],
  quote: [Army officials presumed that the users would not continuously run the batteries for such extended periods.],
  quote-source: "GAO/IMTEC-92-26, 1992",
  sources-list: (
    [U.S. General Accounting Office, GAO/IMTEC-92-26, _Patriot Missile Defense: Software Problem Led to System Failure at Dhahran, Saudi Arabia_ (1992)],
    [Barr Group, "An Update on the Patriot Missile Software Problem"],
    [Skeel, University of Minnesota analysis of the Patriot software defect],
    [Blair, Nikiforuk & Gertz, primary reporting in 1991–1992],
  ),
  le-insight: [
    Patriot is the canonical Designed-Out case from defense. The capability
    to maintain accuracy under sustained operation was omitted because the
    original concept of operations did not anticipate it. When the concept
    changed, the assumption did not travel. The system did not fail; the
    transition from one operational context to another did, and there was
    no capability infrastructure to catch it.
  ],
  lens-approach: [
    LENS treats Patriot as the textbook example of *Capability Degradation
    Under System Change*. LEN 5 methods require operators of any
    transitioning system to have current capability-relevant documentation
    specifying what assumptions of the original design have changed. LEN 9
    examines how organizational knowledge about design constraints travels
    from engineering to operations — and why, here, it arrived a day late.
  ],
  literature-items: (
    [Skeel, "Roundoff Error and the Patriot Missile," _SIAM News_ (1992)],
    [Reason, _Human Error_ (1990) — swiss-cheese model],
    [Fixsen et al. (2005), _Implementation Research_],
  ),
  reflection-list: (
    [The Patriot's design assumed short engagements. What assumption in a current system you work with would become lethal if the operational context shifted, and how would operators learn of the shift?],
    [Construct the capability-transition artifact that should have accompanied the redeployment of Patriot batteries from Europe to Saudi Arabia. What would it have said, and who would have signed it?],
  ),
  courses: ("LEN 5", "LEN 9", "LEN 10"),
)
