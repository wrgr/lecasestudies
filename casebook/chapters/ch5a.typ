// ============================================================
// Part V — Industry, Energy & Enterprise Systems · What Fails (Chapter 9)
// ============================================================
#import "../lib/theme.typ": *
#import "../lib/chapter.typ": chapter-divider
#import "../lib/case.typ": case
#import "../lib/components.typ": *
#import "../lib/diagrams.typ" as dgm
#chapter-divider(
  part: "Part V — Industry, Energy & Enterprise Systems",
  number: "9",
  title: "Industry, Energy & Enterprise Systems — What Fails",
  subtitle: "When incentive, inertia, and migration risk go unengineered.",
  epigraph: [The signal arrived years early. The iteration never ran.],
  epigraph-source: "An observation recurring across the chapter's cases.",
)

// ---- Editor's framing essay: the iteration gap ----
// Rendered in the book; suppressed in the companion (view=companion) since
// the companion ships no case bodies — the essay belongs with the cases.
#if view == "book" { block(
  width: 100%,
  fill: rgb("#FBF7EE"),
  inset: 14pt,
  stroke: (left: 2.5pt + gold),
  breakable: false,
  {
    set par(leading: 0.62em, justify: true, first-line-indent: 0pt)
    text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("Editor's note · the iteration gap"))
    v(6pt)
    text(font: sans, size: 10pt, fill: text-dark)[
      Iterative development is what learning engineering does most often. It
      is also the capability the casebook documents least directly. Several
      cases in this chapter — and their counterparts across the book's
      failure halves — share a shape: an organization received an
      unambiguous signal, held the engineering or product position to act on
      it, and failed to run the iteration cycle through product, business
      model, and operations until the opportunity had passed. The signal was
      sometimes a field report (Therac-25, the adoption and sustainment
      cases), sometimes an external launch (BlackBerry meeting the
      iPhone), sometimes an internal invention the organization could not
      build a business around (Kodak's 1975 digital camera). In each case the
      organization had the engineering capability and the institutional
      position. What it lacked was the discipline of running the iteration
      through.
    ]
    v(6pt)
    text(font: sans, size: 10pt, fill: text-dark)[
      The casebook's broader corpus shows what iteration produced — the
      interventions collected in every part's What Works chapter, the
      failures whose recovery iterations followed. It does not yet show
      iteration *being done* in detail: the design moves, the dead ends, the
      reframes. That gap is exactly what the v2.1 amendment to D2 names —
      "narrate and defend the design iteration in first person" — and what
      the editor-commissioned first-person Practice Flywheel accounts will
      fill in the next edition. This note names the gap honestly so that the
      reader knows what to expect from the volume, and what the discipline
      is still working to make legible.
    ]
  }
) }
#if view == "book" { v(8pt) }

// ---- Case 143 — knight-capital-trading-loss ----
#case(
  number: 143,
  slug: "knight-capital-trading-loss",
  title: "Knight Capital Trading Loss",
  year: "2012",
  domains-list: ("tech",),
  modes-code: "DK",
  impact: "$440M loss in 45 minutes; firm forced to seek emergency capital and was effectively acquired within months",
  diagram: dgm.dgm-stat(
    "$440M",
    "loss in 45 minutes · 7 of 8 servers updated",
    micro: "dead code on the eighth server, repurposed flag, no deployment verification",
    caption: "Knight Capital — the cost of an unverified deployment",
  ),
  kind: "failure",
  summary: [
    On 1 August 2012 Knight Capital, a major U.S. market maker, deployed new
    order-routing software to seven of its eight servers and missed the
    eighth. The new code reused a flag that, on the eighth server's old
    software, reactivated long-dead "Power Peg" code never removed from
    the repository. At the opening bell it fired millions of unintended
    orders; in about 45 minutes Knight lost roughly \$440 million — more than
    the firm was worth — and was effectively acquired within months. The SEC
    found Knight had no procedure to verify the deployment across all servers
    and no controls to halt the runaway orders. The capability designed out
    was deployment verification; the dead code was technical debt that
    exercised its option at the worst possible moment.
  ],
  sections: (
    // -- Background --
    [
      Knight Capital was one of the largest market makers in U.S. equities,
      routing an enormous share of retail order flow through automated systems
      wired directly into the market. On 1 August 2012 the New York Stock
      Exchange was launching a new Retail Liquidity Program, and Knight had
      updated its order-routing software to participate in it from the opening
      bell. The update went out to production the way countless updates had
      gone before — a routine deployment, on an ordinary morning, handled as
      unremarkable.#cn()
    ],
    // -- What Happened --
    [
      A technician deployed the new code to seven of the eight routing
      servers and missed the eighth, leaving one node running stale software.
      The new code reused a configuration flag that, on the old software still
      on that eighth server, had once activated long-dormant "Power Peg" test
      code — retired years earlier but never removed from the repository. At
      the open the dead code woke and began firing millions of unintended
      orders into the market. In about forty-five minutes Knight amassed a
      vast unwanted position; losses passed \$170 million almost at once and
      reached about \$440 million — more than the firm itself was worth. It
      survived only on emergency capital and was effectively acquired within
      months.#cn()
    ],
    // -- The Investigation --
    [
      The Securities and Exchange Commission's September 2013 enforcement
      order — In re Knight Capital Americas LLC — found Knight had no
      written procedure requiring a second technician to verify the
      deployment across all hosts, and no automated check that all eight
      servers were running the same code — nor controls able to recognize
      and halt the flood of erroneous orders once it began. The order
      catalogued specific violations of the SEC's Market Access Rule
      (Rule 15c3-5), and Knight settled for a \$12 million
      penalty.#cn() The dead Power Peg code was the proximate trigger
      and the reused flag the match that lit it; but the underlying
      cause was the absence of the verification and risk controls that
      should surround any change to a system wired directly into the
      live market. The order is unusually explicit that the institutional
      gap was financial-engineering practice catching up to
      software-engineering practice — release management, configuration
      control, and pre-trade risk limits were not yet treated as
      first-class deliverables on the trading desk.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability designed out was deployment verification — confirming,
      every time, that what runs in production is exactly what was intended,
      on every node, before it touches live money. The dead code was technical
      debt in its most literal form: a retired function left in the repository
      is a standing option on a future failure, and reusing its flag exercised
      that option at the worst possible moment. As at the Mars Climate
      Orbiter's interface, the boundary that mattered — between "deployed" and
      "verified as deployed everywhere" — had no owner and no automated check,
      and a large institution kept walking across it routinely until the day
      the floor gave way.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Knight became the canonical case in modern software-operations practice
      for why deployment is itself an engineering deliverable, not a clerical
      step: automated verification that every host runs the intended build,
      disciplined removal of dead code from the repository, pre-trade risk
      limits, and kill switches that can stop a runaway process in seconds.
      Regulators sharpened their attention to automated market-access
      controls in response. The SEC's 2014 Regulation Systems Compliance and
      Integrity (Regulation SCI) extended formal system-development,
      testing, change-management, and incident-reporting obligations to
      registered exchanges, clearing agencies, and large alternative trading
      systems — the institutional response that pulled the deployment
      discipline Knight had lacked into the regulatory perimeter. The lesson
      rhymes with the orbiter's across a forty-year, civilian-to-financial
      gap: a small, unowned boundary inside a large automated system is
      precisely where the institution is most exposed, and least watching —
      and as algorithmic trading continued to grow after 2012, the same
      class of fragility kept producing new incidents that the Knight
      template explained.#cn()
    ],
  ),
  beats: (
    "Major market maker prepared routine update for the NYSE Retail Liquidity Program launch.",
    "Eighth server missed the update; a reused flag woke dormant Power Peg code.",
    "SEC found no deployment verification, no consistency check, and no controls to halt orders.",
    "Designed-out capability was deployment verification; dead code was a standing option on failure.",
    "Case became canonical for deployment as engineering deliverable and sharpened market-access controls.",
  ),
  references: (
    [U.S. Securities and Exchange Commission, _Order Instituting Administrative and Cease-and-Desist Proceedings_, In re Knight Capital Americas LLC (2013) — the firm, the Retail Liquidity Program launch, and the deployment.],
    [SEC Order (2013) and Knight Capital 8-K filing (2012) — the missed eighth server, the reactivation of the dormant "Power Peg" code, the ~\$440 million loss in ~45 minutes, and the near-collapse.],
    [SEC Order (2013) — the absence of a second-technician deployment verification, the lack of an automated code-consistency check, inadequate order controls, and the \$12 million penalty (quoted).],
    [B. Beyer, C. Jones, J. Petoff & N. R. Murphy (eds.), _Site Reliability Engineering_ (O'Reilly, 2016) — deployment verification, dead-code removal, and automated safeguards as engineering deliverables.],
    [SEC Market Access Rule (Rule 15c3-5) and subsequent automated-controls guidance — the regulatory response on pre-trade risk and market-access controls.],
    [D. Seven, "Knightmare: A DevOps Cautionary Tale" — a widely cited engineering post-mortem on the deployment process, the orphaned eighth server, and the reused feature flag.],
  ),
  quote: [Knight did not have written procedures requiring a second technician to verify the deployment.],
  quote-source: "Paraphrasing the SEC Order against Knight Capital, 2013",
  le-insight: [
    Knight Capital is the financial-industry version of Mars Climate
    Orbiter (Case 98): a small, unspecified boundary inside a large
    system that took the institution down. The capability that was
    missing was deployment verification. The dead code was the
    proximate trigger; the absent procedure was the cause.
  ],
  lens-approach: [
    Knight Capital is the canonical change-control-and-disclosure
    governance case (induced 5.4; LENS D1/PT3). LENS uses it in
    LEN 5 to teach deployment-as-capability — students design the
    deployment deliverable that would have caught the eighth
    server — and in LEN 9 for the technical-debt argument: every
    line of dead code carries an option on a future failure.
    Adjacent to Mars Climate Orbiter (Case 98) at the small-
    boundary-no-owner layer and to Regulation SCI as the
    institutional response that codified the missing controls.
  ],
  literature-items: (
    [SEC Knight Capital order (2013)],
    [Allspaw & Hammond, _Web Operations_ (2010)],
    [Beyer et al. (eds.), _Site Reliability Engineering_ (2016)],
  ),
  reflection-list: (
    [Identify a deployment procedure in your domain whose verification step depends on convention rather than on a designed check. What is the eighth server?],
    [Design the deployment deliverable that would prevent a Knight Capital-equivalent loss in your organization.],
    [A retired "Power Peg" function left in the repository became the trigger years later when its flag was reused. Identify dead code or a dormant feature flag in a system you run that is still an option on a future failure, and specify the policy that should have removed it.],
  ),
  approaches: (
    during: (
      [Remove retired code and dormant flags from the repository as a matter of discipline, since every dead function left behind is a standing option on a future failure.],
      [Never reuse a configuration flag whose old meaning still exists somewhere in the fleet; treat flag semantics as a versioned, owned interface.],
      [Design pre-trade risk limits and a kill switch into any system wired to the live market, so a runaway process can be stopped in seconds rather than minutes.],
    ),
    after: (
      [Require automated verification that every host runs the intended build before a change touches live money, with a second technician confirming the deployment across all nodes.],
      [Monitor for the runaway condition — an abnormal order rate — and halt automatically, rather than relying on humans to notice and intervene mid-flood.],
      [Audit deployments for the orphaned node: confirm no host is left on stale code, closing the gap between "deployed" and "verified as deployed everywhere."],
    ),
  ),
  courses: ("LEN 5", "LEN 9"),
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "7.1",  // alternate framing adopted: deprecated test code activated under partial deployment is the dead-code-as-inherited-design pattern; preserves 5.4 as the post-incident Reg SCI lens,
  lens-anchor: "D1/PT3",
  leo-anchor: "LEO-1, LEO-4",
)

// ---- Case 144 — kodak-digital-camera-stagnation ----
#case(
  number: 144,
  slug: "kodak-digital-camera-stagnation",
  title: "Kodak Digital Camera Stagnation",
  year: "1975–2012",
  domains-list: ("industrial",),
  modes-code: "DKN",
  impact: "Inventor of the digital camera (1975) and holder of foundational digital-imaging patents; shipped digital cameras from 1991 and led the consumer market at points in the 2000s, and still filed for Chapter 11 bankruptcy in January 2012, unable to rebuild the business around margins the film franchise had set",
  diagram: dgm.dgm-stat(
    "1975",
    "first digital camera prototype · 0.01 megapixel",
    micro: "37 years from prototype to Chapter 11",
    caption: "Kodak — the longest unacted signal in consumer electronics",
  ),
  kind: "failure",
  scale: "big",
  evidence-source: "journalism",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT4",
  leo-anchor: "LEO-2",
  summary: [
    In 1975 a young Kodak engineer, Steven Sasson, built the first
    self-contained digital camera in a Rochester lab: an 8-pound,
    0.01-megapixel device that wrote a black-and-white image to cassette
    tape in 23 seconds. By the 1990s Kodak held foundational
    digital-imaging patents and had a working line of digital products.
    Yet the company that invented the category never ran the iteration
    cycle through to a digital-first business: film and the high-margin
    consumables it sold remained the protected core, and digital was
    treated as a threat to be managed rather than a product to be
    developed against itself. By 2003 digital camera sales overtook film
    in the United States; by 2007 Kodak had begun mass layoffs; in
    January 2012 the company filed for Chapter 11. The capability gap
    was not invention. It was the organization's failure to iterate the
    business around the technology it already owned.
  ],
  sections: (
    // -- Background --
    [
      Kodak's twentieth-century position was anchored on a single
      durable insight: the camera was a loss-leader and the film, paper,
      and processing chemistry were the recurring high-margin revenue.
      The business model — what later analysts would call the
      "razor-and-blades" of imaging — funded a research apparatus deep
      and well-resourced enough that in December 1975 a 24-year-old
      Eastman Kodak engineer, Steven Sasson, was able to assemble the
      first all-electronic still camera from a Fairchild CCD, a
      cassette-tape recorder, sixteen nickel-cadmium batteries, and a
      lens cannibalized from a Super 8 movie camera. The prototype wrote
      a 0.01-megapixel black-and-white image to tape in 23 seconds and
      played it back on a television.#cn()
    ],
    // -- The Signal --
    [
      Sasson's later published recollection (IEEE Spectrum, 2007) is
      that internal reception was polite but unmoved: the demonstration
      raised the question of when the company would have to compete
      against its own film business, and the answer settled into a long
      institutional hedge. Through the 1980s and 1990s Kodak filed
      foundational digital-imaging patents, built digital products
      including the 1991 DCS-100 professional digital SLR, and partnered
      with Apple on the early QuickTake consumer line; the technology
      was understood and the engineering position was real. What was
      missing was an iteration cycle that ran the digital signal all the
      way through product, distribution, pricing, and the corporate
      identity, rather than holding digital at the perimeter of a film
      company.#cn()
    ],
    // -- How the Iteration Failed --
    [
      Paraphrasing Lucas & Goh (_Journal of Strategic Information
      Systems_, 2009): Kodak's leadership read digital primarily as a
      cannibalization threat to film rather than as an opportunity to
      be engineered. The retrospective record describes successive
      strategies — digital as a complement to film, digital kiosks at
      retail, Ofoto / Kodak Gallery for online printing, the EasyShare
      consumer line — each of which was a move toward digital but none
      of which committed the operating company to a digital-first
      product roadmap with the cadence and capital allocation the
      transition required. The cycle that a healthy iteration would
      have run — ship, measure, learn, ship again at higher
      ambition — was repeatedly truncated by the gravitational pull of
      the film P&L it would have had to displace.#cn()
    ],
    // -- The Outcome --
    [
      By 2003 digital camera sales overtook film camera sales in the
      United States; by the mid-2000s smartphone cameras began
      collapsing the standalone-camera category Kodak had partially
      entered. Kodak's revenues fell from roughly USD 16 billion in
      1996 to under USD 6 billion by 2011. The company sold its
      Health Imaging division in 2007, began mass layoffs the same
      year, and on 19 January 2012 filed for Chapter 11 bankruptcy
      protection in the Southern District of New York. In the
      bankruptcy proceedings Kodak monetized roughly 1,100 of its
      digital-imaging patents — many traceable to the engineering
      lineage Sasson's 1975 prototype had started — for approximately
      USD 525 million, a sale that drew explicit press commentary on
      what it meant for a company to monetize patents on a category
      it had failed to commercialize.#cn()
    ],
    // -- What the Pattern Shows --
    [
      Kodak is the canonical case of an organization that held the
      technological position and lost on the iteration discipline. The
      capability gap was not in the lab and was not in the patent
      portfolio; it was in the leadership system that could not bring
      itself to run the iteration cycle all the way through the
      business model it would have replaced. The instructive contrast
      is Fujifilm, which over the same period diversified into
      chemicals, materials, and pharmaceuticals on the back of its
      film-coating expertise — a deliberate organizational iteration
      against the same signal. The lesson the v2.1 framing names is
      that "iterative development" at the organizational level is not
      a product practice but a leadership practice, and the cycle has
      to run on the business model and the operations as well as on
      the artifact.#cn()
    ],
  ),
  beats: (
    "Sasson built the first digital camera at Kodak in 1975 — 0.01 megapixel, 23-second write to tape",
    "Kodak filed foundational digital patents and shipped digital products through the 1980s and 1990s",
    "Leadership read digital as a cannibalization threat rather than an opportunity to be engineered",
    "Digital overtook film in 2003; smartphone cameras then collapsed the category Kodak had half-entered",
    "Chapter 11 filed January 2012; ~1,100 digital-imaging patents sold for roughly USD 525 million in proceedings",
  ),
  approaches: (
    during: (
      [Treat an internally demonstrated category-changing prototype as a signal to run the full iteration cycle on the business, not only on the artifact — including pricing, distribution, sales force, and identity.],
      [Name explicitly the existing high-margin P&L the new category will have to displace, and assign an executive sponsor whose job is to iterate against that displacement on a schedule rather than around it.],
      [Set a measured cadence — ship, instrument, learn, ship again at higher ambition — and protect the cadence against the organizational pull of the legacy business at each review cycle.],
    ),
    after: (
      [Audit, periodically and without sentimentality, whether the iteration is running through to the operating company or has been parked at the perimeter as research or partnership; treat parking as the failure mode it is.],
      [Compare against an in-category peer running the same iteration with a different leadership posture (Fujifilm), and use the divergence as evidence rather than letting the legacy P&L be the only reference point.],
      [Read the late monetization of patents on a category the organization never commercialized as the indictment it is — a signal that the engineering position was held and the iteration discipline was not.],
    ),
  ),
  references: (
    [S. Sasson, "We Had No Idea," _IEEE Spectrum_ (16 October 2007) — first-hand account of the 1975 prototype, the demonstration, and the internal reception.],
    [H. C. Lucas Jr. & J. M. Goh, "Disruptive technology: How Kodak missed the digital photography revolution," _Journal of Strategic Information Systems_ 18(1):46–55 (March 2009).],
    [Eastman Kodak Company, Voluntary Petition for Chapter 11 Reorganization, U.S. Bankruptcy Court, Southern District of New York, Case No. 12-10202 (19 January 2012).],
    [A. R. Sorkin & M. J. de la Merced, "Eastman Kodak Files for Bankruptcy," _The New York Times_ DealBook (19 January 2012).],
    [M. Spector & D. Mattioli, "Kodak Teeters on the Brink," _The Wall Street Journal_ (5 January 2012); follow-up coverage of the patent-sale process in WSJ and Reuters (December 2012).],
  ),
  quote: [You don't get to keep the future just because you invented it.],
  quote-source: "Editors' synthesis of the Sasson (IEEE Spectrum 2007) and Lucas & Goh (JSIS 2009) record",
  le-insight: [
    Kodak is the cleanest available evidence that invention is not
    iteration. The company held the prototype, the patents, and the
    engineering depth and still lost the category. The gap was not
    technical; it was the leadership system's inability to run the
    iteration cycle through the business model it would have had to
    displace. v2.1 D2 names this directly: iteration-against-opportunity
    is an organizational discipline, not a lab discipline, and the
    cycle has to close on the P&L as well as on the artifact.
  ],
  lens-approach: [
    Kodak is the v2.1 D2 stagnation exemplar (induced 2.3 transfer to
    high-consequence settings; LENS D2/PT4 adoption and sustainment;
    LEO-2 Iterative Development). LENS uses it to make the
    organizational-iteration claim concrete: 2.2 (run the cycle), 2.3
    (transfer the cycle to the high-stakes business decision), and 2.4
    (sustain adoption against the gravitational pull of the legacy
    P&L) all sat un-owned for a generation. Pair with Fujifilm as the
    in-category counter-iteration that ran the same signal
    differently.
  ],
  literature-items: (
    [Lucas & Goh (2009), _Journal of Strategic Information Systems_],
    [Sasson (2007), _IEEE Spectrum_ — inventor's account],
    [Christensen, _The Innovator's Dilemma_ (1997) — the framework Kodak is the canonical worked example of],
  ),
  reflection-list: (
    [Identify a category-changing prototype or signal that your organization has internally demonstrated but parked at the perimeter. What would the full iteration cycle through the operating company actually require, and which P&L is the gravitational pull?],
    [Kodak iterated on the artifact (digital products shipped) but not on the business model. Distinguish the two in a current initiative in your domain and specify which one is being held still.],
    [Fujifilm ran the same signal differently. Identify an in-category peer running an iteration your organization is not, and construct the honest comparison the leadership review would have to engage with.],
  ),
  courses: ("LEN 2", "LEN 3"),
)

// ---- Case 145 — blackberry-touchscreen-inertia ----
#case(
  number: 145,
  slug: "blackberry-touchscreen-inertia",
  title: "BlackBerry Touchscreen Inertia",
  year: "2007–2013",
  domains-list: ("tech",),
  modes-code: "DNK",
  impact: "From roughly 50% U.S. smartphone share in 2009 to under 1% by 2014; the Z10 full-touch device shipped in January 2013 — six years after the iPhone — and failed commercially; company restructured and effectively exited the consumer handset business",
  diagram: dgm.dgm-stat(
    "6 yrs",
    "iPhone launch (2007) · Z10 ship (2013)",
    micro: "the iteration cycle that did not close",
    caption: "BlackBerry — the gap between the signal and the response",
  ),
  kind: "failure",
  scale: "big",
  evidence-source: "journalism",
  induced-anchor: "2.3",
  lens-anchor: "D2/PT4",
  leo-anchor: "LEO-2",
  summary: [
    On 9 January 2007 Steve Jobs unveiled the iPhone. Research In
    Motion — then dominant in the keyboard-smartphone market with
    BlackBerry — read the device, in its co-CEOs' contemporary public
    statements, as constrained by short battery life, poor typing, and
    a network burden carriers would resist. The McNish and Silcoff
    history (_Losing the Signal_, 2015) documents that RIM had
    internal touchscreen and full-browser work underway, and that
    the organization nonetheless did not pivot product, sales,
    operating-system, or developer strategy quickly enough. The 2008
    Storm — RIM's first full-touch device, built to a Verizon
    timeline — shipped with significant defects. The BB10 platform
    and the Z10 full-touch handset did not ship until January 2013,
    six years after the iPhone. By that point U.S. share had
    collapsed from roughly 50% in 2009 to under 5%, en route to under
    1% by 2014, and BlackBerry effectively exited the consumer
    handset business.
  ],
  sections: (
    // -- Background --
    [
      Through the mid-2000s Research In Motion had built one of the
      strongest enterprise-mobile franchises in the industry: a
      keyboard handset, push email, a secure operating system,
      and a deep relationship with corporate IT departments and
      carriers. The BlackBerry Pearl (2006) had extended the
      product into the consumer market without disturbing the
      keyboard identity, and by early 2007 RIM was the dominant
      U.S. smartphone vendor. The product, the carrier
      relationships, and the developer ecosystem were all built
      around the keyboard, the network-efficient messaging stack,
      and the assumption that the smartphone was an
      enterprise-class communications device first.#cn()
    ],
    // -- The Signal --
    [
      On 9 January 2007, the iPhone unveiling reframed the
      smartphone as a full-browser, full-touch, app-centric
      consumer device. McNish and Silcoff (_Losing the Signal_,
      2015) document RIM's internal response in detail:
      co-CEOs Mike Lazaridis and Jim Balsillie publicly emphasized
      what the iPhone could not yet do — battery life, typing
      accuracy, the network load — and the early carrier-side
      response was indeed cautious. Internally the engineering
      organization understood the implication faster than the
      executive system did; touchscreen and full-browser
      prototypes existed. The capability gap the case names is not
      that RIM did not see what was happening; it is that the
      organization did not run the iteration cycle on product,
      operating system, developer ecosystem, and go-to-market
      with the speed and ambition the signal required.#cn()
    ],
    // -- How the Iteration Failed --
    [
      Paraphrasing McNish & Silcoff (2015): the 2008 BlackBerry
      Storm was launched to a Verizon-driven schedule against
      the iPhone, with a click-screen touch mechanism intended
      to preserve the keyboard's tactile feedback. The device
      shipped with reliability and software defects, and large
      volumes were returned; the iteration cadence the moment
      called for collided with an organization still optimizing
      a different category. Successive devices through 2010 and
      2011 — the Torch, the PlayBook tablet running QNX — were
      partial bets that did not consolidate into a single,
      committed platform transition. The QNX-based BB10
      operating system that would eventually power the Z10
      took years to harden, and in the interim the developer
      ecosystem and the consumer-share decline compounded each
      other.#cn()
    ],
    // -- The Z10 and the Collapse --
    [
      The Z10 — RIM's first fully committed full-touch BB10
      handset — launched on 30 January 2013, six years after
      the iPhone. Initial reviews were respectful but the
      developer ecosystem was thin, carrier promotional
      support was muted, and consumer demand was weak. In
      September 2013 BlackBerry (renamed from RIM earlier
      that year) announced a USD 934 million pre-tax inventory and supply-commitment
      charge (Q2 FY2014 net loss approximately USD 965 million) and
      4,500 layoffs, most of the charge Z10-related.
      U.S. smartphone share — roughly 50% in 2009 — had
      fallen below 5% by 2013 and toward 1% by 2014.
      BlackBerry's subsequent strategy explicitly pivoted to
      enterprise software, security services, and the QNX
      automotive-software business, in effect exiting the
      consumer handset category the iPhone had defined.#cn()
    ],
    // -- What the Pattern Shows --
    [
      BlackBerry, like Kodak, did not fail on the question
      of whether the relevant technology existed inside the
      company. Touchscreen work, full-browser work, and a
      modern operating system (QNX) were all in the building.
      The failure was the iteration cycle at the
      organizational level: the leadership system did not
      run the cycle on product, OS, developer ecosystem, and
      go-to-market on a cadence that matched the speed at
      which the category was being redefined. The v2.1 D2
      framing — iteration-against-opportunity as an
      organizational discipline — names what the case shows:
      the discipline is to take a signal, run a cycle, ship,
      measure, and ship again at higher ambition, with
      conviction allocated to the new category rather than
      to the defense of the old one.#cn()
    ],
  ),
  beats: (
    "iPhone launched January 2007; RIM held dominant U.S. smartphone share and an enterprise franchise",
    "Co-CEOs publicly minimized the iPhone's threat; engineering organization understood the implication faster",
    "2008 Storm shipped to a Verizon timeline with defects; volumes returned",
    "BB10 and the Z10 full-touch handset did not ship until January 2013, six years after the iPhone",
    "September 2013 Q2 FY2014 announcement: ~USD 934M pre-tax inventory and supply-commitment charge (net loss ~USD 965M) and 4,500 layoffs; BlackBerry exited the consumer handset business",
  ),
  approaches: (
    during: (
      [Read an external category redefinition as a signal that the iteration cycle has to run at a new cadence — on operating system, developer ecosystem, and go-to-market simultaneously — not on the current product line alone.],
      [Avoid shipping a transitional device to a partner's schedule when the platform underneath it is not yet ready; partial bets at full marketing weight burn the credibility a real transition will need.],
      [Allocate executive conviction to the new category explicitly, with named owners for the OS transition, the developer ecosystem, and the consumer go-to-market, and protect that conviction against the gravitational pull of the existing enterprise franchise.],
    ),
    after: (
      [Audit honestly whether the iteration cycle is closing on product, OS, and developer ecosystem together, or whether one of the three is being held back by the legacy organization; partial transitions compound rather than buy time.],
      [Treat consumer share decline and developer-ecosystem thinning as coupled rather than independent — the feedback loop between them is what makes a delayed transition unrecoverable, not either signal alone.],
      [If the cycle has not closed by the time a committed device ships, treat the launch as the verdict on the prior iteration discipline, not as the start of a new one — the Z10 reception is the case study.],
    ),
  ),
  references: (
    [J. McNish & S. Silcoff, _Losing the Signal: The Untold Story Behind the Extraordinary Rise and Spectacular Fall of BlackBerry_ (Flatiron Books, 2015).],
    ["BlackBerry Storm reviews and return rates," _The Wall Street Journal_ and _Engadget_ coverage (November–December 2008); summarized in McNish & Silcoff (2015).],
    [BlackBerry Z10 launch coverage, _The New York Times_, _The Verge_, and _Wall Street Journal_ (30 January 2013).],
    [BlackBerry Limited, Q2 FY2014 earnings press release announcing approximately USD 934 million pre-tax inventory and supply-commitment charge (Q2 FY2014 net loss ~USD 965 million) and 4,500 layoffs (27 September 2013).],
    [Gartner and IDC quarterly smartphone-share reports, 2009–2014 — the U.S. share decline from ~50% to under 1%.],
  ),
  quote: [The capability they were missing was not the technology. It was the iteration discipline.],
  quote-source: "Editors' synthesis of McNish & Silcoff, Losing the Signal (2015)",
  le-insight: [
    BlackBerry shows that a strong engineering position and a
    dominant market share do not, on their own, supply the
    iteration discipline a category redefinition requires. The
    capability gap was at the leadership level: the cycle on
    product, operating system, developer ecosystem, and
    go-to-market did not close on the cadence the signal called
    for. The Z10 launch in 2013, six years after the iPhone,
    is the legible verdict on the prior six years of partial
    bets and protected legacy.
  ],
  lens-approach: [
    BlackBerry is the contemporary consumer-electronics pair to
    Kodak (induced 2.3; LENS D2/PT4 adoption and sustainment;
    LEO-2 Iterative Development). LENS uses the case to teach
    the v2.1 D2 subobjectives at the organizational level:
    2.2 — run the iteration cycle on product, OS, ecosystem,
    and go-to-market together; 2.3 — transfer the cycle to
    high-stakes decisions (the platform transition itself);
    2.4 — sustain adoption against the pull of the legacy
    enterprise franchise. Pair with Kodak (Case 144) as the
    longer-time-horizon analog and with the broader v2.1 D2
    chapter on what organizational iteration discipline looks
    like when it works.
  ],
  literature-items: (
    [McNish & Silcoff, _Losing the Signal_ (2015) — the canonical narrative history],
    [Christensen, _The Innovator's Dilemma_ (1997) — the framework BlackBerry is a worked example of],
    [Yoffie & Cusumano, _Strategy Rules_ (2015) — the iteration-at-the-executive-level frame],
  ),
  reflection-list: (
    [Identify an external category redefinition currently underway in your domain. Which of product, platform, developer/partner ecosystem, and go-to-market is your organization iterating on, and which is being held still by the legacy P&L?],
    [BlackBerry shipped the Storm to a partner's timeline before the platform underneath it was ready. Identify a current initiative in your domain at risk of the same mistake and specify what readiness would actually require.],
    [Six years separated the iPhone launch from the Z10. Construct the leadership-review cadence that would have shortened that gap, and identify the specific decisions that cadence would have forced at each review.],
  ),
  courses: ("LEN 2", "LEN 3"),
)

// ---- Case 146 — northeast-blackout ----
#case(
  number: 146,
  slug: "northeast-blackout",
  title: "Northeast Blackout",
  year: "2003",
  domains-list: ("energy",),
  modes-code: "HK",
  impact: "50 million people without power across eight U.S. states and Ontario; $6B+ economic loss; FERC Order 693 followed",
  diagram: dgm.dgm-timeline(
    (("tree contact", "3:05"), ("line trips", "—"), ("alarm fails", "silent"), ("operator unaware", "1 hour"), ("cascade", "4:11")),
    emphasis: 2,
    caption: "Northeast Blackout — silent alarm failure absorbed the operator's awareness",
  ),
  kind: "failure",
  summary: [
    On 14 August 2003 a high-voltage transmission line in Ohio sagged into a
    tree and tripped — an event the grid should have absorbed. But
    FirstEnergy's control-room alarm system had been silently failing for
    over an hour, so operators did not know the line was gone. Further lines
    tripped, and a cascade swept across the Eastern Interconnection; within
    minutes 50 million people across eight U.S. states and Ontario lost
    power, at a cost above \$6 billion. The U.S.-Canada task force found
    FirstEnergy lacked situational awareness, its alarm system had failed
    without notice, vegetation management was poor, and the regional
    coordinator could not intervene. The reforms made reliability standards
    mandatory and enforceable (FERC Order 693). The gap sat at the
    automation-operator boundary: a silent failure left operators blind.
  ],
  sections: (
    // -- Background --
    [
      The Eastern Interconnection is built to ride through the loss of a
      single transmission line, and control rooms watch the grid through
      software and alarms. FirstEnergy, the Ohio utility at the center of the
      story, ran a control room whose alarm system had — unknown to anyone —
      been silently failing for over an hour.#cn() The interconnection's
      single-line resilience assumes the operators can see which line is gone;
      a silent alarm broke that assumption at its root, leaving a grid
      designed to tolerate one fault blind to the fault it was tolerating.
    ],
    // -- What Happened --
    [
      On 14 August 2003 a 345 kV line in Ohio sagged into a tree and tripped.
      With the alarms silent, operators did not know the line was gone and so
      did not take the corrective steps that would have contained it. Further
      lines tripped and a cascade swept across the interconnection; within
      minutes 50 million people across eight states and Ontario lost power,
      at a cost above \$6 billion.#cn() The first trip was the routine
      single-line loss the grid was built to absorb; what turned it into a
      cascade was not the tree but the hour in which the operators acted on a
      picture of the grid that no longer matched the grid.
    ],
    // -- The Investigation --
    [
      The U.S.-Canada Power System Outage Task Force found FirstEnergy
      operators "did not have adequate situational awareness," that the alarm
      system had failed without notice, that vegetation management was
      inadequate, and that the regional reliability coordinator lacked the
      authority and information to intervene.#cn() The reforms produced FERC
      Order 693, which for the first time made compliance with reliability
      standards mandatory and enforceable rather than voluntary.#cn() Making
      the standards mandatory addressed the deeper finding that a voluntary
      regime had let vegetation management and operator awareness drift: when
      compliance is optional, the practices that prevent a cascade are exactly
      the ones a cost-pressured utility lets slip.
    ],
    // -- The Capability Gap --
    [
      The gap sat at the boundary between automation and operator. When the
      alarm system stopped doing its job, it did so silently — and the
      operators had no independent signal that they were losing control of
      their grid segment. The missing capability was the meta-monitor: the
      watch on the watchman, the check that tells you when the thing that is
      supposed to tell you has itself stopped.#cn() Silence is the most
      dangerous failure mode because it is indistinguishable from a quiet,
      healthy grid; the operators were not ignoring a warning but trusting an
      absence of warning that the broken system could no longer guarantee.
    ],
    // -- Aftermath & Reform --
    [
      FERC Order 693 and the new mandatory reliability regime — enforced by
      an Electric Reliability Organization with audits and penalties —
      treated grid reliability as a deliverable rather than a best practice.
      The 2003 blackout endures as the canonical case of silent automation
      failure: a system that quits without announcing it, leaving the humans
      nominally in charge with nothing to act on.#cn() Backing the standards
      with audits and penalties conceded that reliability could not be left to
      good intentions: the practices that would have kept the operators
      sighted had to be enforceable obligations, not best practices a utility
      could quietly defer.
    ],
  ),
  beats: (
    "Eastern Interconnection rides through single-line loss; FirstEnergy's alarm system was silently failing for an hour",
    "An Ohio line sagged into a tree; silent alarms left operators blind; cascade blacked out fifty million",
    "Task Force found inadequate situational awareness, vegetation lapses, weak coordinator authority; FERC Order 693 followed",
    "Missing capability was the meta-monitor; silence is indistinguishable from a healthy, quiet grid",
    "New mandatory reliability regime backed by audits and penalties; reliability is a deliverable, not best practice",
  ),
  references: (
    [U.S.-Canada Power System Outage Task Force, _Final Report on the August 14, 2003 Blackout in the United States and Canada_ (2004) — the tree contact, the silent alarm, and the cascade.],
    [Task Force (2004) — 50 million people affected across eight states and Ontario; the minute-by-minute sequence.],
    [Task Force (2004) — FirstEnergy "did not have adequate situational awareness," plus the vegetation-management and reliability-coordinator findings (quoted).],
    [FERC Order No. 693, _Mandatory Reliability Standards for the Bulk-Power System_ (2007) — enforceable standards.],
    [North American Electric Reliability Council reports (2004) and the creation of the Electric Reliability Organization.],
    [M. R. Endsley (1995), situation-awareness theory — the human-factors frame for silent-automation failure.],
  ),
  quote: [FirstEnergy ... did not have adequate situational awareness of conditions on its system.],
  quote-source: "U.S.-Canada Power System Outage Task Force, Final Report on the August 14 2003 Blackout, April 2004",
  le-insight: [
    The 2003 blackout is the canonical case for silent automation
    failure: a system that stops doing its job without telling its
    operators. The capability that was missing was the meta-monitor —
    the system that watches the monitor. The reform that followed
    treated grid-reliability compliance as a deliverable rather than
    as a best practice.
  ],
  lens-approach: [
    LENS uses the 2003 blackout in LEN 2 as a Human-AI Teaming case
    for silent-automation-failure handling and in LEN 8 for the
    legislative-reform arc that produced enforceable reliability
    standards.
  ],
  literature-items: (
    [U.S.-Canada Outage Task Force Final Report (2004)],
    [Endsley (1995), situation awareness theory],
    [Casner & Hutchins (2019), automation transparency requirements],
  ),
  reflection-list: (
    [Identify an automated monitoring system in your domain whose silent failure would not be detected by its operators. How would they know?],
    [Design the meta-monitor that should have been watching FirstEnergy's alarm system in 2003.],
    [Silence was indistinguishable from a healthy grid. What positive heartbeat signal in your domain would let operators tell a quiet system from a dead one?],
  ),
  approaches: (
    during: (
      [Design monitoring with a positive heartbeat so a silent system is distinguishable from a healthy one, never assuming no alarm means no problem.],
      [Build a meta-monitor that watches the alarm system itself and announces when the watchman has stopped.],
      [Give the regional reliability coordinator the authority and information to intervene across utility boundaries before a cascade forms.],
    ),
    after: (
      [Audit vegetation management and operator situational awareness against enforceable standards, since voluntary practice drifts under cost pressure.],
      [Test alarm and monitoring systems for detectable failure, verifying that an outage of the monitor itself raises an alert.],
      [Back reliability obligations with audits and penalties so the practices that keep operators sighted cannot be quietly deferred.],
    ),
  ),
  courses: ("LEN 2", "LEN 8"),
  scale: "big",
  induced-anchor: "3.3",
  lens-anchor: "D3/PT6",
  leo-anchor: "LEO-3",
)

// ---- Case 147 — takata-airbag-inflators ----
#case(
  number: 147,
  slug: "takata-airbag-inflators",
  title: "Takata Airbag Inflators",
  year: "2008 – 2023",
  domains-list: ("industrial",),
  modes-code: "DG",
  impact: "More than 30 deaths and hundreds of injuries linked to inflator ruptures; largest automotive recall in history",
  diagram: dgm.dgm-stat(
    "100M+",
    "inflators recalled · 19 automakers",
    micro: "the desiccant competitors used was the designed-out capability",
    caption: "Takata — the largest automotive recall on record",
  ),
  summary: [
    Takata built its airbag inflators around ammonium nitrate — cheap and
    energetic but unstable, and used by almost no one else without a
    moisture-absorbing desiccant. Takata's inflators omitted the desiccant.
    Over years of heat and humidity the propellant degraded and could rupture
    the metal housing on deployment, spraying shrapnel at the driver; more
    than two dozen deaths and hundreds of injuries followed. Takata's own
    tests had shown the ruptures, but it reported them as isolated anomalies
    and, in places, falsified data; in 2017 it pleaded guilty to wire fraud,
    paid roughly \$1 billion, and went bankrupt. The recall — over 100 million
    inflators across 19 automakers — is the largest in automotive history.
    Two capabilities were designed out: the desiccant, and the independent
    verification regulators never had.
  ],
  kind: "failure",
  sections: (
    // -- Background --
    [
      An airbag inflates by burning a propellant inches from a person's
      face, so the propellant must be energetic *and* stable across the years
      and climates a car will see. To cut cost, Takata built its inflators
      around ammonium nitrate — cheap and energetic but notoriously unstable,
      shifting crystalline structure and absorbing moisture as temperature
      cycles day after day. The few competitors who used it at all added a
      desiccant to keep it dry over the life of the car; Takata's inflators,
      for years, shipped with none.#cn()
    ],
    // -- What Happened --
    [
      Over years of heat and humidity the propellant degraded, and a degraded
      charge can burn too fast, generating more pressure than the housing was
      built to contain. A firing inflator could then rupture its own metal
      housing and spray shrapnel into the cabin — turning the device meant to
      save a life into a fragmentation hazard aimed at the driver. More than
      two dozen deaths worldwide and hundreds of injuries followed. The recall
      grew to more than a hundred million inflators across some nineteen
      automakers — the largest in automotive history — and Takata went
      bankrupt; the toll keeps rising as unrepaired vehicles stay on the road
      and their inflators keep aging.#cn()
    ],
    // -- The Investigation --
    [
      Takata's own testing had shown the ruptures, but internal documents
      revealed engineers raising the alarm internally while the company
      reported the failures to automakers and regulators as isolated anomalies
      rather than a systemic propellant problem — and, in places, manipulated
      the test data outright.#cn() In 2017 Takata pleaded guilty to wire fraud
      and paid roughly a billion dollars in fine, restitution, and a victims'
      fund. The legal finding was pointed: not that a part had failed, but
      that the company had spent years misrepresenting what its own engineers
      knew.#cn()
    ],
    // -- The Capability Gap --
    [
      Two capabilities were designed out, and the second matters as much as
      the first. The product capability was the desiccant — a stabilizing
      component competitors used, omitted to save cost, in plain view of
      anyone comparing designs side by side. The system capability was
      independent verification: the recall regime treated the manufacturer's
      representations about its own safety data as authoritative, with no
      independent pipeline to test inflator behavior across the fleet as it
      aged in the field — which let an obvious failure mode hide for years
      inside a process that kept receiving the evidence and reporting it back
      as noise.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The recall is still being worked off, vehicle by vehicle, long after
      the company that built the inflators ceased to exist — concrete proof
      that a designed-out capability can outlive the firm that removed it and
      become someone else's burden. A decade on, the burden persists: the
      oldest, most dangerous "Alpha" inflators have been escalated to urgent
      "Do Not Drive" warnings (Stellantis alone covering some 225,000
      vehicles in 2024–2025), and roughly 4.8 million Takata recalls remained
      unrepaired as of mid-2026 even as completion of the Alpha inflators
      passed 99 percent. The episode pushed regulators toward more
      aggressive, coordinated recall management that does not leave pace to
      each manufacturer. Its central lesson is the pairing: Takata is the
      modern Pinto in its product failure, and more in its system failure —
      the evidence pipeline a regulator relies on is itself a safety
      capability, and omitting it is as consequential as omitting the
      desiccant from the inflator.#cn()
    ],
  ),
  beats: (
    "Inflators built around cheap, unstable ammonium nitrate without the desiccant competitors added.",
    "Heat and humidity degraded the propellant; ruptures sprayed shrapnel and killed drivers.",
    "Takata reported ruptures as isolated anomalies, manipulated test data, and pleaded guilty to fraud.",
    "Designed-out capabilities were the desiccant and the regulator's independent verification pipeline.",
    "Recall outlived the bankrupt firm and pushed regulators toward coordinated replacement management.",
  ),
  references: (
    [U.S. National Highway Traffic Safety Administration, Takata air-bag inflator recall coordination materials — the ammonium-nitrate-without-desiccant design and the propellant-degradation rupture mechanism.],
    [NHTSA recall record and investigative reporting (Reuters, _New York Times_) — 100M+ inflators across ~19 automakers; the largest automotive recall in history; deaths and injuries from ruptures.],
    [U.S. Department of Justice, settlement and guilty plea with Takata Corporation (2017) — wire fraud, ~\$1B in fine and restitution, and Takata's subsequent bankruptcy.],
    [U.S. DOJ (2017) and Takata internal documents released in litigation — the sustained misrepresentation of inflator test data to automakers and regulators.],
    [NHTSA Takata recall status reporting — the years-long completion of replacements and the continuing risk in unrepaired vehicles.],
    [NHTSA Coordinated Remedy Program for the Takata recalls — the regulator's move to actively prioritize and manage replacement across nineteen automakers rather than leave pace to each manufacturer.],
  ),
  quote: [Takata engaged in a sustained pattern of misrepresenting inflator safety data to its automaker customers and to regulators.],
  quote-source: "Paraphrasing the U.S. Department of Justice settlement with Takata, 2017",
  le-insight: [
    Takata is the modern Pinto: an engineering choice to omit a
    stabilizing component, internal data showing the consequence, and
    a regulatory architecture that treated the manufacturer's
    representation as authoritative rather than as one input. The
    capability gap was at the regulator's evidence pipeline as much as
    at the manufacturer's bench.
  ],
  lens-approach: [
    The load-bearing lesson is post-deployment surveillance. Field
    rupture reports arrived over years but were never aggregated and
    interpreted as a single class-level safety signal, so an obvious
    failure mode stayed hidden inside a process that kept receiving the
    evidence and reporting it back as noise. The ammonium-nitrate-without-desiccant
    chemistry is the substrate of the hazard, but the capability that
    should have caught it is the surveillance-aggregation function that
    turns scattered field reports into one population-level signal with
    authority to act. LENS uses Takata in LEN 5 to build that
    aggregate-the-field-signal capability and in LEN 7 as an
    industrial-governance failure spanning manufacturer, regulator, and
    customer auditors.
  ],
  literature-items: (
    [DOJ deferred-prosecution documents (2017)],
    [NHTSA Takata recall coordination archive],
    [Birsch & Fielder, engineering-ethics casebooks],
  ),
  reflection-list: (
    [Where in your domain does a regulator receive manufacturer test data without an independent verification pipeline? What is the load-bearing trust assumption?],
    [Design the verification regime that should have surrounded ammonium-nitrate inflator testing. Who funds it, who runs it, and what does it produce?],
    [Takata's propellant degraded slowly with heat and humidity, so a part safe at delivery became lethal years later. Identify a component in your domain whose qualification testing does not cover its full service life, and specify the aging test that would close the gap.],
  ),
  approaches: (
    during: (
      [Qualify a safety-critical material against the full service life and climate range it will see, not just its as-delivered state, so slow degradation cannot turn a safe part lethal years later.],
      [When choosing a cheaper, less stable material, require the stabilizing measure competitors use — here a desiccant — rather than omitting it to save cost.],
      [Design inflator testing to detect the rupture failure mode as a class across temperature and humidity cycling, so it cannot be dismissed as an isolated anomaly.],
    ),
    after: (
      [Stand up an independent verification pipeline that tests fielded inflators across the aging fleet, so a regulator does not depend on the manufacturer's own representation of its safety data.],
      [Aggregate field rupture reports as a population signal rather than closing them one by one, with authority to trigger recall when a pattern appears.],
      [Manage the recall as a coordinated program that prioritizes replacement across automakers, since a designed-out hazard outlives the firm and keeps aging in unrepaired cars.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
  scale: "big",
  induced-anchor: "2.4",
  lens-anchor: "D4/PT3",
  leo-anchor: "LEO-4",
)

// ---- Case 148 — wells-fargo-fake-accounts ----
#case(
  number: 148,
  slug: "wells-fargo-fake-accounts",
  title: "Wells Fargo Fake Accounts",
  year: "2011 – 2016",
  domains-list: ("tech", "gov"),
  modes-code: "GN",
  impact: "~3.5 million unauthorized accounts opened; ~$3B in penalties; CEO resigned; the Federal Reserve capped the bank's assets",
  diagram: dgm.dgm-stat(
    "3.5M",
    "unauthorized accounts",
    micro: "the incentive architecture made misconduct rational for the front line",
    caption: "Wells Fargo — the measurement system produced the behavior the institution then prosecuted",
  ),
  kind: "failure",
  summary: [
    To meet aggressive sales quotas, Wells Fargo employees opened roughly
    3.5 million unauthorized customer accounts over years. The behavior was
    widespread and visible to internal risk and compliance functions, but the
    bank's response was to fire individual "bad apples" while leaving the
    incentive structure intact — and that structure was the actual cause:
    sales targets most employees could not meet by ethical means. The 2016
    CFPB, OCC, and Los Angeles actions brought \$185 million in penalties — a 2020 DOJ/SEC settlement later reached roughly \$3 billion — the CEO resigned,
    and the Federal Reserve took the unprecedented step of capping the bank's
    assets. Wells Fargo is the canonical case of an incentive architecture
    that manufactured the misconduct the institution then prosecuted at the
    front line, while insisting the misconduct was individual.
  ],
  sections: (
    // -- Background --
    [
      Wells Fargo built its retail strategy on "cross-selling" — opening
      many products per customer — and drove it with aggressive sales
      quotas pushed down to branch employees, whose pay and jobs
      depended on hitting them. The bank's signature metric, "Gr-eight"
      (an average of eight products per household), and a daily "solution"
      scorecard reported up the management chain made cross-sell the
      single most-watched proxy for branch performance. The metric the
      bank chose to manage by thus became the thing every front-line
      employee was structurally compelled to maximize, whatever it took.
      The controls function carried no comparably visible counter-measure
      — no widely reported figure for the share of those accounts that
      customers had actually authorized — so the incentive ran without
      a designed brake.#cn()
    ],
    // -- What Happened --
    [
      Unable to meet the quotas honestly, employees opened roughly 3.5
      million unauthorized accounts in customers' names — the rational
      response to a target most could not reach by legitimate means.
      Practices documented by investigators included opening checking,
      savings, and credit-card accounts without customer consent,
      forging signatures, moving funds between accounts to manufacture
      activity, and enrolling customers in online banking they had not
      requested. The behavior was widespread and longstanding, and
      visible to internal risk and compliance functions for years
      before the 2013 _Los Angeles Times_ reporting made it public;
      the institutional response was to discipline individual employees
      as bad apples — Wells Fargo terminated more than 5,300 employees
      between 2011 and 2016 — while leaving the incentive structure
      intact, fixing the symptom and preserving the cause.#cn()
    ],
    // -- The Investigation --
    [
      The 2016 CFPB, OCC, and Los Angeles actions brought \$185 million in penalties (a 2020 DOJ/SEC settlement later reached roughly \$3 billion),
      and the bank's own independent-directors investigation (2017)
      documented how the sales-target architecture drove the misconduct —
      locating the cause in the design, not the people executing it.#cn()
      Investigators tied the misconduct directly to the bank's
      incentive-compensation structure, which had made such sales practices a
      foreseeable result rather than an aberration. The CEO resigned, and the
      Federal Reserve imposed an unprecedented cap on the bank's assets,
      reaching past individual penalties to constrain the institution
      itself.#cn()
    ],
    // -- The Capability Gap --
    [
      Wells Fargo is the strongest evidence in the dataset that incentive
      architecture is a capability-engineering deliverable. The measurement
      system used to manage employees produced exactly the behavior the
      institution then prosecuted — the same structure that demanded the
      result punished the people who delivered it. The gap was not at the
      front line but at the governance layer that designed the incentives and
      then, for years, treated the predictable result as individual moral
      failure, mistaking a designed outcome for a character flaw.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Stumpf's successor Tim Sloan, promoted from chief operating officer
      in the immediate aftermath, was himself forced out in 2019 after the
      Federal Reserve's asset cap proved more durable than the bank had
      assumed. The cap — imposed in February 2018 at roughly \$1.95
      trillion — restricted Wells Fargo's growth pending evidence of
      governance and risk-management remediation, and it held for
      roughly seven years — the longest-running enforcement action of
      its kind against a major U.S. bank — until the Federal Reserve
      lifted it on 3 June 2025, concluding that the bank had completed
      the required governance and risk-management remediation. The case
      became the standard teaching example of measurement-gaming and
      incentive design.#cn() Its lesson is that any quota becomes a target to be
      gamed, and that an institution is accountable for the behavior its
      measurement system makes rational, not just the behavior endorsed
      in its values statement — because employees respond to the
      incentive they are paid on, not the value they are told to honor.
    ],
  ),
  beats: (
    "Wells Fargo drove cross-selling with aggressive branch quotas that pay and jobs depended on hitting",
    "Employees opened about 3.5 million unauthorized accounts; the bank fired front-line staff and kept the incentives",
    "CFPB and OCC actions and a 2017 independent-directors report tied misconduct to the sales-target architecture",
    "The governance layer that designed the incentives mistook a designed outcome for individual moral failure",
    "The Federal Reserve capped Wells Fargo's assets; the case anchored teaching on measurement-gaming and incentive design",
  ),
  references: (
    [Consumer Financial Protection Bureau, Consent Order against Wells Fargo (2016) — the unauthorized accounts and penalties.],
    [Office of the Comptroller of the Currency, Consent Order AA-EC-2016-66 (2016) — unsafe or unsound sales practices tied to the incentive-compensation structure (paraphrased).],
    [Independent Directors of Wells Fargo, _Sales Practices Investigation Report_ (2017) — how the sales-target architecture drove the conduct.],
    [Enforcement record: ~3.5 million accounts, ~\$3 billion in penalties, and the CEO's resignation.],
    [Federal Reserve asset cap on Wells Fargo (imposed February 2018; lifted 3 June 2025) — the structural growth constraint and its termination after remediation.],
    [A. C. Edmondson, _The Fearless Organization_ (2018); incentive-design and corporate-governance literature.],
  ),
  quote: [Wells Fargo's sales practices were a foreseeable consequence of its incentive compensation structure.],
  quote-source: "Paraphrasing the 2016 regulatory and independent-directors findings on Wells Fargo",
  le-insight: [
    Wells Fargo is the strongest available evidence that incentive
    architecture is a capability-engineering deliverable. The
    measurement system used to manage employees produced the behavior
    the institution then prosecuted. The gap was not at the front
    line. It was at the governance layer that had designed the
    incentives.
  ],
  lens-approach: [
    Wells Fargo is the canonical "protecting the measurement from
    gaming" case (induced 2.2; LENS D4/PT5), with measuring-the-
    failure-mode-you-care-about (induced 2.1) as the alternate
    anchor. LENS uses it in LEN 4 as the measurement-gaming case
    and in LEN 7 for the corporate-governance dynamics that allow
    such incentives to persist for years. Studio projects redesign
    the incentive architecture and the countervailing audit measure
    that would have detected the gaming as a structural pattern
    rather than as individual misconduct. Adjacent to Texas City
    (Case 161) at the wrong-measurement-reported-as-a-win layer.
  ],
  literature-items: (
    [Independent Directors Report (2017)],
    [Tirole (2010), corporate-governance theory],
    [Edmondson (2018), _The Fearless Organization_],
  ),
  reflection-list: (
    [Identify a measurement system in your organization that is currently producing the behavior the organization claims to deplore. What is the gap between the measurement and the goal?],
    [Design the incentive architecture for a bank's branch sales force that does not produce a Wells-Fargo-equivalent failure.],
    [Wells Fargo's misconduct was visible to risk and compliance for years before it was addressed at the structural level. What lets an organization see a pattern of gaming and still treat it as individual bad apples — and who would have to be empowered to name the incentive as the cause?],
  ),
  approaches: (
    during: (
      [Design incentive and quota structures against the behavior they will rationally produce, treating the measurement system as a capability deliverable in its own right.],
      [Set targets that are achievable by legitimate means, since a quota most employees cannot reach honestly is an instruction to cheat.],
      [Pair every performance metric with a countervailing measure that detects gaming before it becomes systemic.],
    ),
    after: (
      [Audit for the gap between the behavior the measurement system rewards and the conduct the institution claims to value, and treat divergence as a design fault.],
      [Empower risk and compliance to escalate a pattern of gaming as a structural cause, not to absorb it as isolated misconduct.],
      [Hold the governance layer that designed the incentives accountable for predictable outcomes, rather than disciplining only the front line.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
  scale: "big",
  evidence-source: "investigation",
  induced-anchor: "2.1",  // alternate framing adopted: the "Gr-eight" cross-sell metric was measuring the wrong failure mode (sales activity vs. account legitimacy); 2.2 (gaming protection) preserved as alternate framing,
  lens-anchor: "D4/PT5",
  leo-anchor: "LEO-4, LEO-5",
)

// ---- Case 149 — volkswagen-dieselgate ----
#case(
  number: 149,
  slug: "volkswagen-dieselgate",
  title: "Volkswagen Dieselgate",
  year: "2015",
  domains-list: ("industrial", "gov"),
  modes-code: "DG",
  impact: "~11 million vehicles equipped with defeat-device software; USD 4.3B U.S. DOJ criminal-and-civil plea (Jan 2017); total global cost above USD 30B across penalties, vehicle buybacks, and settlements; multiple criminal convictions",
  diagram: dgm.dgm-compare(
    "test bench",
    "compliant",
    "real world",
    "up to 40×",
    framing: "the protocol operated in a regime the vehicle could detect",
    caption: "Dieselgate — engineered evasion of a measurement system",
  ),
  kind: "failure",
  summary: [
    Volkswagen engineered a "defeat device" into its diesel emissions
    software: code that detected when a car was on a regulatory test bench
    and switched on full emissions controls only then. On the road the
    controls were largely disabled, producing nitrogen-oxide emissions up to
    forty times the legal limit, across roughly 11 million vehicles for
    years. The deception was uncovered not by regulators but by a small West
    Virginia university team comparing real-world to lab measurements.
    Internal documents showed the defeat device was an institutional
    decision — a deliberate response to a standard VW's engineers did not
    believe they could meet within cost — not a rogue act. VW pleaded guilty to a USD 4.3 billion criminal and civil settlement with
    the U.S. Department of Justice (January 2017); total Dieselgate cost
    across penalties, vehicle buybacks, and settlements has been estimated
    above USD 30 billion globally, with multiple criminal convictions.
    Dieselgate is the book's case for organized evasion of a measurement
    system.
  ],
  sections: (
    // -- Background --
    [
      Volkswagen had staked its U.S. growth on "clean diesel," promising cars
      that met strict nitrogen-oxide limits without sacrificing performance
      or cost — a marketing position that left no room to admit the
      engineering could not deliver all three at once. Its engineers did not
      believe they could actually meet the standard within the platform's
      cost constraints, putting the company's public promise on a collision
      course with its own technical reality.#cn()
    ],
    // -- What Happened --
    [
      So they cheated by design. VW's emissions software detected when a
      vehicle was on a regulatory test bench — by its steering, speed, and
      duration patterns, the telltale signature of a lab rather than a road —
      and switched on full emissions controls only during the test. On the
      road the controls were largely disabled, producing emissions up to forty
      times the legal limit, across roughly 11 million vehicles for years, so
      the pollution the standard existed to prevent flowed freely everywhere
      except where it was measured.#cn()
    ],
    // -- The Investigation --
    [
      The deception was uncovered not by the regulator but by a small
      university research team in West Virginia comparing real-world
      emissions to lab results — the gap between road and bench being exactly
      what the regulator's own test could never reveal.#cn() Internal
      documents then showed the defeat device had been authorized inside VW's
      engineering hierarchy as a deliberate institutional response to a
      standard the team could not meet — not the work of a rogue engineer, but
      a decision made up the chain of command. VW pleaded guilty to a USD 4.3 billion U.S. DOJ criminal and civil
      settlement (January 2017) — total global Dieselgate cost across
      penalties, vehicle buybacks, and settlements has been estimated
      above USD 30 billion — and multiple executives were convicted.#cn()
    ],
    // -- The Capability Gap --
    [
      The exploitable gap was at the regulator's instrument: the emissions
      test ran in a regime the vehicle could detect, so a manufacturer
      determined to evade could tune its behavior to the test rather than to
      the road, optimizing for the measurement instead of the goal it stood
      for. Dieselgate is the canonical case of institutionally engineered
      evasion of a measurement system — and a reminder that any test the
      measured party can recognize is a test it can defeat, because a
      detectable test invites the very gaming it is meant to catch.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The reform closed the gap at the instrument: the EU introduced
      real-world driving-emissions testing, moving the measurement off the
      predictable bench and onto the road the standard actually cared about,
      making it far harder to game.#cn() The pattern parallels Takata (Case 147) — a manufacturer's fraud meeting a regulator whose evidence pipeline
      trusted the manufacturer's test conditions, and a fix that had to
      upgrade the measurement itself, not just punish the cheat, because
      punishing the cheat leaves the exploitable instrument in place for the
      next one. Criminal accountability in Germany ran on for years: in
      May 2025 a Braunschweig court convicted four former VW managers of
      fraud (sentences up to four and a half years), while the separate
      trial of former CEO Martin Winterkorn, opened in September 2024, was
      suspended indefinitely in July 2025 on health grounds.
    ],
  ),
  beats: (
    "VW promised clean diesel meeting nitrogen-oxide limits its engineers did not believe they could deliver",
    "Defeat-device software detected the test bench and enabled controls only there across about eleven million vehicles",
    "A West Virginia team comparing road to lab emissions exposed the cheat; documents showed institutional authorization",
    "The regulator's test ran in a regime the vehicle could detect, inviting the gaming it was meant to catch",
    "VW paid more than thirty billion in penalties; the EU introduced real-world driving emissions testing",
  ),
  references: (
    [U.S. EPA, Notice of Violation to Volkswagen (2015) — the defeat device and emissions exceedances.],
    [West Virginia University / ICCT real-world diesel-emissions study (2014) — the discovery comparing road to lab.],
    [U.S. Department of Justice Plea Agreement with Volkswagen AG (January 2017) — the institutional decision, USD 4.3 billion criminal-and-civil settlement, and convictions (quoted).],
    [Volkswagen internal documents released through litigation — authorization of the defeat device within the engineering hierarchy.],
    [EU Real Driving Emissions (RDE) testing regulation — the post-Dieselgate measurement reform.],
    [J. Ewing, _Faster, Higher, Farther: The Volkswagen Scandal_ (2017); cf. Takata (Case 147).],
  ),
  quote: [The defeat device was the product of a long-standing institutional decision to evade emissions standards.],
  quote-source: "Paraphrasing the U.S. Department of Justice Plea Agreement with Volkswagen AG, 2017",
  le-insight: [
    Dieselgate is the canonical case for institutionally engineered
    evasion of a measurement system. The capability gap was at the
    regulator's test protocol: it operated in a regime the vehicle
    could detect. The reform — real-world emissions testing — was a
    capability deliverable upgrade at the regulator's instrument
    boundary.
  ],
  lens-approach: [
    LENS reads Dieselgate at the independent-instrument and
    operator-inspector boundary (induced 2.2): the defeat device worked
    by detecting the test condition itself, so the measurement was one
    the operator could see coming and game. The lesson is designing an
    emissions-measurement and inspection regime the operator cannot
    detect and defeat — real-driving emissions, surprise and
    outside-the-loop testing — rather than the bare observation that
    fraud occurred. The reform pattern parallels Takata (Case 147).
  ],
  literature-items: (
    [Ewing (2017), _Faster, Higher, Farther_],
    [EPA technical reports on real-world emissions testing],
    [Carson, _Silent Spring_ (1962) — regulatory-capacity comparison],
  ),
  reflection-list: (
    [Identify a measurement protocol in your domain that operates in a regime detectable by the entity being measured. What is the evasion potential?],
    [Design the upgrade to a regulatory test protocol that makes Dieselgate-style evasion structurally infeasible.],
    [VW's defeat device was authorized up the engineering hierarchy, not the act of a rogue engineer. What allows an institution to sanction fraud as a deliberate response to an unmeetable standard — and what governance check should sit between an impossible target and the team asked to meet it?],
  ),
  approaches: (
    during: (
      [Design measurement protocols the measured party cannot detect and tune to, so behavior is optimized for the goal rather than the test.],
      [Surface the gap between a public commitment and the engineering reality early, so an unmeetable standard is renegotiated rather than secretly evaded.],
      [Build a governance check between an impossible target and the team asked to meet it, so the response is escalation, not a defeat device.],
    ),
    after: (
      [Audit real-world behavior against test-condition behavior, treating a divergence between road and bench as the signature of engineered evasion.],
      [Upgrade the measurement instrument itself after a discovered cheat, not just penalize the cheat, since the exploitable test invites the next one.],
      [Sustain independent, outside-the-loop verification — as the university team provided — to catch fraud the regulator's own protocol cannot see.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
  scale: "big",
  induced-anchor: "2.2",
  lens-anchor: "D4/PT3",
  leo-anchor: "LEO-4",
)

// ---- Case 150 — libor-manipulation ----
#case(
  number: 150,
  slug: "libor-manipulation",
  title: "LIBOR Manipulation",
  year: "2003 – 2012",
  domains-list: ("gov", "tech"),
  modes-code: "GN",
  impact: "Major banks fined more than $9B; the benchmark underlying ~$350T of contracts was manipulable; replaced by SOFR",
  diagram: dgm.dgm-compare(
    "LIBOR",
    "estimates",
    "SOFR",
    "transactions",
    framing: "the reform changed the unit of measurement, not the regulator",
    caption: "LIBOR — an instrument whose design invited the gaming",
  ),
  kind: "failure",
  summary: [
    LIBOR — the London Interbank Offered Rate — was the benchmark
    interest rate referenced in roughly \$350 trillion of financial
    contracts, yet it was set each day not from observed transactions but
    from a small panel of banks' estimates of what they would pay to
    borrow. For about a decade, banks systematically shaded those
    estimates to favor their own derivatives positions; the coordination
    was later laid bare in subpoenaed trader-and-submitter messages. The
    capability gap was in the design of the benchmark itself: it asked for
    declarations, not observations, and the architecture invited gaming.
    Regulators levied more than \$9 billion in fines, and LIBOR was
    eventually replaced by SOFR, a rate built from actual transactions.
    The reform changed the unit of measurement, not just the rules.
  ],
  sections: (
    // -- Background --
    [
      LIBOR was the benchmark interest rate underlying an estimated \$350
      trillion in loans, mortgages, and derivatives worldwide. It was set
      daily by a panel of large banks, each submitting an estimate of the
      rate at which it could borrow — a self-reported figure rather than a
      record of any transaction that had actually occurred. Because the same
      banks that set the rate held derivatives whose value moved with it, the
      instrument asked the parties with the most to gain to supply the very
      numbers that would decide their gains.#cn()
    ],
    // -- What Happened --
    [
      For roughly a decade from the early 2000s, traders at multiple banks
      asked their firms' rate submitters to shade the daily LIBOR figure
      up or down to benefit the banks' derivatives books. The requests
      were routine and documented in internal messages later subpoenaed by
      regulators — casual, repeated, and unconcealed, which is the signature
      of conduct the participants did not believe could be detected. During
      the 2008 crisis, some banks also lowballed submissions to appear
      healthier than they were, bending the rate to mask their own funding
      stress as well as to profit.#cn()
    ],
    // -- The Investigation --
    [
      Investigations by the U.S. Department of Justice, UK regulators, and
      others produced settlements with Barclays, UBS, Deutsche Bank, RBS,
      and others totaling more than \$9 billion. The UK Treasury
      commissioned the Wheatley Review, which concluded that the
      benchmark's reliance on subjective estimates rather than
      transactions was the structural flaw that made manipulation possible.
      The review located the fault in the instrument rather than only in the
      individuals who exploited it, treating the gaming as the predictable
      output of a design that left the door open.#cn()
    ],
    // -- The Capability Gap --
    [
      The capability that was missing was the basic architectural choice
      to measure observations rather than declarations. A benchmark built
      on what banks said they would pay is gameable by anyone willing to
      misstate; a benchmark built on transactions that actually occurred
      is not. The gaming, once it began, was systematic rather than
      occasional — exactly what the design invited — and because the figure
      flowed into hundreds of trillions in contracts, a small shading of the
      submission moved enormous sums while leaving no trace in any executed
      trade.#cn()
    ],
    // -- Aftermath & Reform --
    [
      LIBOR was phased out and replaced by SOFR, the Secured Overnight
      Financing Rate, which is constructed from observed overnight
      Treasury repo transactions. The transition took roughly a decade and
      required coordination across regulators in multiple jurisdictions;
      the reform re-engineered the measurement at the architecture level
      rather than merely policing the old one. By anchoring the benchmark to
      trades that actually settle, the redesign removed the discretion that
      had been the lever for manipulation, rather than asking submitters to
      exercise that discretion more honestly.#cn()
    ],
  ),
  beats: (
    "Benchmark set from panel banks' rate estimates rather than observed transactions",
    "Traders pressured submitters to shade rates favoring their derivatives books for years",
    "DOJ and UK regulators levied over nine billion in fines; Wheatley Review blamed design",
    "Declarations rather than observations made systematic gaming the architecture's predictable output",
    "LIBOR phased out; SOFR built on observed Treasury repo transactions replaced it",
  ),
  references: (
    [U.S. Department of Justice settlements with Barclays, UBS, Deutsche Bank, RBS et al. (2012–2015) — the manipulation and fines.],
    [Wheatley, M., _The Wheatley Review of LIBOR: Final Report_ (2012) — the estimate-vs-transaction design flaw (paraphrased).],
    [Wheatley Review (2012) — recommendation to anchor benchmarks in observed transactions.],
    [Stenfors, A. (2017), _Barometer of Fear_ — the mechanics of submission gaming.],
    [Alternative Reference Rates Committee / Federal Reserve, SOFR documentation — the transaction-based replacement.],
  ),
  quote: [The architecture of LIBOR invited the manipulation it experienced.],
  quote-source: "Paraphrasing the Wheatley Review of LIBOR, 2012",
  le-insight: [
    LIBOR is the canonical financial-system case for an instrument
    whose design invites the gaming it then experiences. The
    capability that was missing was the basic architectural choice to
    measure observations rather than declarations. The reform —
    SOFR — re-engineered the measurement at the architecture level.
  ],
  lens-approach: [
    LIBOR is a measurement-gaming exemplar (induced 2.2): the benchmark
    was a self-reported estimate panel with no independent instrument
    behind the number, so the parties being measured authored the
    measurement, and the figure flowed into hundreds of trillions in
    contracts. LENS binds it to the measurement-gaming cluster alongside
    Wells Fargo (Case 148) and Volkswagen (Case 149): in each, the reporting
    party controlled the input it was judged on. The design lesson is to
    build an instrument the reporting party cannot author — anchor the
    measure in observations the measured party cannot supply, rather than
    in declarations they can.
  ],
  literature-items: (
    [Wheatley Review (2012)],
    [Stenfors (2017), _Barometer of Fear_],
    [Hou & Skeie, "LIBOR: Origins, Economics, Crisis, Scandal" (2014)],
  ),
  reflection-list: (
    [Identify a benchmark in your domain that is constructed from declarations rather than observations. What gaming pressure does it experience?],
    [Design the observation-based replacement for that benchmark.],
    [The same panel banks set LIBOR and held positions that moved with it. Identify a measurement in your domain where the party supplying the figure benefits from its level, and design the separation that would remove the conflict.],
  ),
  approaches: (
    during: (
      [Anchor the benchmark in observed, settled transactions from the outset, so the figure cannot be set by anyone's declaration of what they would pay.],
      [Separate the parties who supply the input from the parties who profit from its level, eliminating the conflict of interest the panel design built in.],
      [Stress-test the instrument against an adversary who wants to move it: if a small misstatement shifts large contract value undetectably, redesign before fielding.],
    ),
    after: (
      [Audit submissions against independent transaction data so a divergence between what is reported and what actually trades surfaces the gaming early.],
      [Monitor submitter-trader communications and position-aligned shading as a leading indicator, rather than waiting for a subpoena to reveal it.],
      [Sustain the reform at the architecture level — keep the benchmark transaction-based — rather than relying on policing discretion that can quietly return.],
    ),
  ),
  courses: ("LEN 4", "LEN 7"),
  scale: "big",
  induced-anchor: "2.2",
  lens-anchor: "D4/PT3",
  leo-anchor: "LEO-4",
)

// ---- Case 151 — gm-ignition-switch ----
#case(
  number: 151,
  slug: "gm-ignition-switch",
  title: "GM Ignition Switch",
  year: "2002 – 2014",
  domains-list: ("industrial",),
  modes-code: "DG",
  impact: "124 deaths attributed; ~2.6M vehicles recalled for the defective switch; $900M federal forfeiture (DOJ, 2015); the fix existed for eight years before the recall",
  diagram: dgm.dgm-timeline(
    (("defect identified", "2002"), ("\"fix\" approved", "2006"), ("same part number", "2006"), ("recall begins", "2014"), ("Valukas report", "2014")),
    emphasis: 2,
    caption: "GM ignition switch — eight years between the fix and the recall",
  ),
  kind: "failure",
  summary: [
    A faulty ignition switch in several GM compact cars (the Chevrolet
    Cobalt, Saturn Ion) could slip from "run" to "accessory" while driving,
    cutting power steering and brakes and — fatally — disarming the airbags.
    GM engineers identified it in 2002. In 2006 an engineer approved a
    redesigned switch but did not change its part number, so the fix
    propagated as neither a revision nor a recall, and defective cars kept
    selling. The recall came only in 2014 — about 2.6 million vehicles, with
    124 deaths attributed through GM's compensation fund. The Valukas report
    found a culture that absorbed safety concerns, and GM paid a \$900 million
    federal penalty. What was designed out was not a part but the pathway by
    which a known safety problem reaches the decision to recall.
  ],
  sections: (
    // -- Background --
    [
      The ignition switches in several GM compact cars — the Chevrolet
      Cobalt and Saturn Ion among them — had too little detent torque to hold
      their position, so a jostle, a bump in the road, or a heavy keychain
      could rotate the switch out of "run" while driving. That cut power
      steering and braking and, fatally, disarmed the airbags so they would
      not deploy in the very crash that loss of control often produced. GM
      engineers identified the problem in 2002, during development, before the
      cars ever reached customers.#cn()
    ],
    // -- What Happened --
    [
      In 2006 a GM engineer approved a redesigned switch but did not change
      its part number — and in an engineering organization the part number is
      the very mechanism by which the system knows something changed. The fix
      propagated as neither a revision nor a recall; defective cars kept
      selling, and crashes with non-deploying airbags were investigated
      piecemeal over years, no one connecting them to a switch the records
      said had "never changed." The recall came only in 2014 — about 2.6
      million vehicles, with 124 deaths attributed through the compensation
      fund. What finally broke the silence was a wrongful-death lawsuit, in
      which a family's expert found the part had been quietly changed under
      the same number — the smoking gun GM's own records had been built to
      miss.#cn()
    ],
    // -- The Investigation --
    [
      GM's commissioned investigation by Anton Valukas (2014) found not a
      single villain but a culture that absorbed safety concerns until they
      dissipated — the "GM nod," in which a room agrees a thing should happen
      and then no one acts, and the "GM salute," arms crossed and each person
      pointing elsewhere — and a fundamental failure to use the escalation
      processes the company already had on the books.#cn() In 2015 GM paid a
      \$900 million federal forfeiture for concealing the defect; total
      penalties and settlements ultimately exceeded \$2.6 billion.#cn()
    ],
    // -- The Capability Gap --
    [
      What was designed out of GM was not a part but a pathway — the
      institutional route by which a known safety problem reaches the
      decision to recall. The fix existed for eight years; the path from fix
      to recall did not, so the knowledge sat inert. The mechanism is mundane
      and all the more instructive for it: the part-number convention was the
      company's own way of seeing what had changed, and quietly breaking it
      blinded the organization to its own action. Suppressing a signal need
      not be a conspiracy; here it was one engineer taking the path of least
      resistance through a process no one was assigned to guard.#cn()
    ],
    // -- Aftermath & Reform --
    [
      Mary Barra, who became CEO as the recall broke, used the Valukas report
      to restructure GM's safety decision-making — a global-safety leadership
      role, consolidated escalation channels, and a "Speak Up for Safety"
      program to give concerns a route upward that did not depend on one
      person's persistence to survive. The case became a standard teaching
      example in governance and psychological safety: an organization can hold
      the fix for the better part of a decade and still fail to act if the
      channel that carries bad news upward has been allowed to fail quietly,
      with no one accountable for keeping it open.#cn()
    ],
  ),
  beats: (
    "Compact-car switches lacked detent torque; jostles cut power and disarmed airbags.",
    "Engineer approved a redesigned switch in 2006 without changing its part number.",
    "Valukas found the GM nod, the GM salute, and failure to use escalation processes.",
    "Designed out was the pathway from a known fix to the recall decision.",
    "Barra restructured safety governance and the case became a teaching example in psychological safety.",
  ),
  references: (
    [A. R. Valukas, _Report to the Board of Directors of General Motors Company Regarding Ignition Switch Recalls_ (Jenner & Block, 2014) — the 2002 identification of the defect and the switch-torque mechanism.],
    [U.S. NHTSA investigation of the GM ignition switch (2014) and the GM recall record — ~2.6 million vehicles; 124 deaths via the GM compensation fund.],
    [Valukas Report (2014) — the unchanged part number, the "GM nod" and "GM salute," and the failure to use established escalation processes (quoted).],
    [U.S. Department of Justice, deferred-prosecution agreement with General Motors (2015) — \$900 million forfeiture for concealing the defect; total penalties/settlements exceeding \$2.6 billion.],
    [Valukas Report (2014) and A. C. Edmondson, _The Fearless Organization_ (Wiley, 2018) — the part number as an organizational signal, and the suppression of upward safety information.],
    [U.S. NHTSA consent order with General Motors (2014, \$35M civil penalty) and the GM ignition-switch victims' compensation program (K. Feinberg, administrator) — the regulatory penalty and the basis for the 124-death figure.],
  ),
  quote: [There was a fundamental failure to use the formal escalation processes that GM had established.],
  quote-source: "Paraphrasing the Valukas Report to the GM Board of Directors, 2014",
  le-insight: [
    The GM ignition switch case is the canonical example of a corporate
    organizational structure that suppressed the upward flow of safety
    information by procedural design. The fix existed for eight years
    before the recall. The institutional path between the fix and the
    recall did not.
  ],
  lens-approach: [
    The load-bearing lesson is change control. Engineers changed the
    ignition switch but kept the same part number, defeating
    configuration traceability so the field failures could never be tied
    back to a design change and the records insisted the part had "never
    changed." The capability to build is configuration management that
    forbids altering a part without renumbering it, so the system can
    always see what changed and connect a field failure to the revision
    that caused it. LENS uses GM in LEN 4 for that change-control and
    part-number-as-signal discipline, and secondarily in LEN 7 and LEN 8
    for the corporate-cover-up and Valukas-style retrospective
    accountability framing.
  ],
  literature-items: (
    [Valukas (2014), report to GM],
    [Hetu et al. (2016), corporate-governance analysis of GM],
    [Edmondson (2018), _The Fearless Organization_],
  ),
  reflection-list: (
    [What information channel in your organization carries the same load that GM's part-number system did? Could it be silently bypassed?],
    [Design the escalation deliverable that would have moved the GM ignition switch fix to a recall in 2006.],
    [A single engineer changed the switch without changing its part number, and no one was assigned to guard that convention. Identify a process in your organization whose integrity depends on an unenforced convention, and name who should own enforcing it.],
  ),
  approaches: (
    during: (
      [Treat the part number as a safety-critical signal: make changing a part without changing its number impossible by process, so the system cannot be blinded to its own revision.],
      [Specify the ignition switch's detent torque as a hold-position requirement and verify it, so a known under-torque defect cannot pass into production as a tolerable quirk.],
      [Build the route from "fix approved" to "recall decision" as an explicit deliverable, not a path that depends on one person choosing to escalate.],
    ),
    after: (
      [Correlate field crashes with non-deploying airbags as a population, so piecemeal incidents are connected to a common cause rather than investigated and closed one at a time.],
      [Run an escalation channel that carries bad news upward independent of any single person's persistence, with a named owner accountable for keeping it open.],
      [Audit whether approved fixes have actually propagated to a recall or revision, closing the gap in which a known defect keeps shipping under an unchanged record.],
    ),
  ),
  courses: ("LEN 4", "LEN 7", "LEN 8", "LEN 6",),
  scale: "big",
  induced-anchor: "5.4",
  lens-anchor: "D5/PT5",
  leo-anchor: "LEO-4",
)

// ---- Case 152 — tsb-bank-it-migration ----
#case(
  number: 152,
  slug: "tsb-bank-it-migration",
  title: "TSB Bank IT Migration",
  year: "2018",
  domains-list: ("tech",),
  modes-code: "HG",
  impact: "1.9 million UK customers locked out of accounts; £330M+ in compensation and remediation; CEO resigned",
  diagram: dgm.dgm-cascade(
    ("technical readiness signal", "test coverage", "executive review", "go/no-go authority"),
    outcome: "the schedule overrode the technical layer that should have halted",
    caption: "TSB — readiness signal arrived attenuated at the decision",
  ),
  kind: "failure",
  summary: [
    In April 2018 TSB Bank tried to migrate some five million customer
    accounts off its former parent Lloyds' systems onto a new platform from
    its current owner, Sabadell, over a single weekend. When services came
    back online, nearly every component failed: 1.9 million customers were
    locked out, some saw strangers' accounts, mortgages vanished, payments
    bounced. Recovery took months and cost over £330 million; the CEO
    resigned and the regulator fined the bank. The independent review found
    the platform had been tested under conditions that did not approximate
    real load, certified ready by a process that did not challenge the
    certification, and pushed live against technical recommendations that it
    was not ready. TSB is the financial-sector analog of Healthcare.gov: a
    migration shipped without adequate testing because schedule pressure
    overrode the technical signal.
  ],
  sections: (
    // -- Background --
    [
      TSB Bank, spun out of Lloyds and acquired by Spain's Sabadell, needed
      to move some five million customer accounts off Lloyds' systems onto a
      new Sabadell-built platform. The cutover was scheduled for a single
      weekend.#cn() Compressing a five-million-account migration into one
      weekend left no room for partial failure: the schedule itself became a
      forcing function, framing readiness as a date to be hit rather than a
      condition to be proven, and that framing would later prove decisive
      when the technical signal said the platform was not ready.
    ],
    // -- What Happened --
    [
      When customer-facing services came back online that Sunday evening in
      April 2018, nearly every component of the new platform had problems.
      About 1.9 million customers were locked out; some saw other people's
      accounts, mortgages disappeared, and card payments failed. The recovery
      took months, cost more than £330 million in compensation and
      remediation, and the chief executive resigned.#cn() That nearly every
      component failed at once points away from a single defect and toward a
      platform that had never been exercised under real load — the kind of
      systemic breakdown that follows when a system is proven only in
      conditions it will never actually meet.
    ],
    // -- The Investigation --
    [
      The Slaughter and May independent review found the migration had been
      tested under conditions that did not approximate real customer load,
      and that the platform had been certified ready by a process that did
      not adequately challenge the certification — a certification that
      confirmed readiness rather than interrogating it, which is how a system
      that would fail under real conditions could be signed off as fit.#cn()
      Decisively, the
      executive decision to proceed had been taken against technical
      recommendations that the platform was not ready; the Financial Conduct
      Authority later fined TSB, treating the override of a known technical
      objection as a failure of governance and not merely of engineering.#cn()
    ],
    // -- The Capability Gap --
    [
      The technical signal existed — the platform was not ready, and people
      knew it. But the decision authority sat at the executive layer, where
      the signal arrived weakened by passage through intermediate layers, and
      the institutional architecture gave the technical layer no way to halt
      the migration. The missing capability was not testing knowledge but a
      governance structure in which a "not ready" could stop a scheduled
      go-live. Knowing a system is unready is worthless if the knowledge
      cannot reach the decision with its force intact and the authority to
      act on it; here the truth was present but powerless.#cn()
    ],
    // -- Aftermath & Reform --
    [
      TSB rebuilt its testing and migration governance, paid out and was
      penalized, and the case entered the literature as a study in
      technical-decision authority.#cn() Rebuilding governance rather than
      merely the platform was the right diagnosis: the failure had been one
      of who could say "stop" and be heeded, so the durable fix had to live
      in the decision structure rather than the code. It is the financial-sector analog of
      Healthcare.gov (Case 180): a large migration shipped without the testing
      the institution knew it needed, because schedule pressure overrode a
      technical signal that had no authority to win.
    ],
  ),
  beats: (
    "TSB needed to migrate five million accounts off Lloyds onto Sabadell platform in one weekend",
    "Nearly every component failed at relaunch; 1.9 million customers locked out, £330M cost, CEO resigned",
    "Slaughter and May found unrealistic load testing, unchallenged readiness certification, override of technical advice",
    "Technical signal existed but had no authority; governance let executive schedule overrule a known not-ready",
    "TSB rebuilt testing and migration governance; FCA penalized the override of technical objection",
  ),
  references: (
    [Slaughter and May, _Independent Review of the TSB Migration_ (2019) — the single-weekend cutover and the testing failures.],
    [Slaughter and May (2019) and FCA materials — ~1.9 million customers locked out, £330M+ in costs, and the CEO's resignation.],
    [Slaughter and May (2019) — inadequate load testing and an unchallenged readiness certification.],
    [Financial Conduct Authority, Final Notice on TSB Bank (2022) — the regulatory penalty and proceeding against technical advice.],
    [House of Commons Treasury Committee, report on the TSB IT migration (2018).],
    [Cf. Healthcare.gov (Case 180) and the migration-safety literature.],
  ),
  quote: [The migration proceeded notwithstanding clear signals that the platform was not ready.],
  quote-source: "Paraphrasing the Slaughter and May Independent Review of the TSB migration, 2019",
  le-insight: [
    TSB is the canonical case for schedule pressure overriding
    technical signal in a regulated industry. The technical signal
    existed. The decision authority was at the executive layer where
    the signal arrived weakened by passage through multiple intermediate
    layers. The institutional architecture did not allow the technical
    layer to halt the migration.
  ],
  lens-approach: [
    LENS uses TSB in LEN 7 as a corporate-governance case and in
    LEN 8 for the institutional structure of technical-decision
    authority. Studio projects compare TSB and Healthcare.gov.
  ],
  literature-items: (
    [Slaughter and May TSB Review (2019)],
    [FCA Final Notice (2022)],
    [Allspaw, post-mortem and migration-safety literature],
  ),
  reflection-list: (
    [Where in your organization does a technical signal arrive at the executive layer attenuated by intermediate layers? What is the cost of the attenuation?],
    [Design the institutional structure that would allow a technical lead to halt a migration like TSB's without resigning.],
    [TSB's certification confirmed readiness rather than interrogating it. Examine a sign-off process in your domain that rubber-stamps rather than challenges — what would it take to make the certification adversarial enough to catch an unready system?],
  ),
  approaches: (
    during: (
      [Test the platform under conditions that approximate real production load, since a system proven only in unrepresentative conditions will fail when it meets the real ones.],
      [Make certification adversarial — a process that tries to disprove readiness — rather than a sign-off that confirms it.],
      [Avoid single-weekend big-bang cutovers where feasible; stage the migration so partial failure is survivable rather than catastrophic.],
    ),
    after: (
      [Build a governance structure in which a technical "not ready" can halt a scheduled go-live, so the signal reaches the decision with its force and authority intact.],
      [Ensure the decision authority hears the technical signal directly rather than through intermediate layers that attenuate it.],
      [After any failure, fix the decision structure that allowed a known objection to be overridden, not just the system that broke.],
    ),
  ),
  courses: ("LEN 7", "LEN 8"),
  scale: "big",
  induced-anchor: "4.1",
  lens-anchor: "D5/PT4",
  leo-anchor: "LEO-5",
)

// ---- Case 153 — equifax-data-breach ----
#case(
  number: 153,
  slug: "equifax-data-breach",
  title: "Equifax Data Breach",
  year: "2017",
  domains-list: ("tech", "gov"),
  modes-code: "GK",
  impact: "147 million Americans' personal data exposed; CEO resigned; ~$700M settlement; foundational U.S. data-breach case",
  diagram: dgm.dgm-cascade(
    ("patch unapplied (2 months)", "asset inventory incomplete", "monitoring inadequate", "response delayed (75 days)"),
    outcome: "no single failure caused the breach; the combination did",
    caption: "Equifax — cumulative inadequacy in routine cybersecurity work",
  ),
  kind: "failure",
  summary: [
    In 2017 attackers exploited a known, two-month-old vulnerability in
    Apache Struts on an Equifax web portal — a patch had been available, and
    Equifax's own security team had told IT to apply it; no one did. Over the
    next ~2.5 months the attackers exfiltrated the personal data of 147
    million Americans, and Equifax did not disclose the breach until
    September. A Senate investigation found systematically inadequate
    patching, an incomplete asset inventory (so the company did not know
    which systems needed the fix), and an incident-response function treated
    for years as a cost center. The CEO resigned and Equifax settled for
    about \$700 million. No single failure caused the breach; cumulative
    inadequacy across routine cybersecurity work did.
  ],
  sections: (
    // -- Background --
    [
      Equifax, one of the three U.S. credit bureaus, held the most sensitive
      financial data on virtually every American adult — a concentration of
      identity information that made any breach catastrophic by definition.
      One of its public web portals ran a version of Apache Struts with a
      known critical vulnerability for which a patch had been available for
      two months — and which Equifax's own security team had flagged for IT to
      apply, so the warning and the fix both existed inside the company and
      simply went unacted-upon.#cn()
    ],
    // -- What Happened --
    [
      The patch was not applied. Attackers exploited the vulnerability
      beginning in May 2017 and quietly exfiltrated personally identifying
      information on 147 million Americans over the next two and a half
      months, a window long enough that the theft was less a break-in than a
      sustained occupation. Equifax did not publicly disclose the breach until
      September, so the people whose identities were taken learned of it only
      well after the fact.#cn()
    ],
    // -- The Investigation --
    [
      The U.S. Senate Permanent Subcommittee on Investigations found
      Equifax's patching practices systematically inadequate and the company
      lacking "a comprehensive IT asset inventory" — so it could not reliably
      know which systems needed the patch, leaving the security team's warning
      with no map to act on.#cn() Monitoring was weak, response delayed, and the
      incident-response architecture had been treated for years as a cost
      center rather than a capability worth funding; the CEO resigned and
      Equifax settled for roughly \$700 million.#cn()
    ],
    // -- The Capability Gap --
    [
      Equifax is the institutional-cybersecurity case for cumulative
      inadequacy in routine work: patching, asset inventory, monitoring,
      response. Each function was below standard; none alone produced the
      breach; the combination did, the marginal weaknesses compounding into a
      single open door. The capability gap was the management of unglamorous,
      universally-agreed-necessary maintenance — exactly the work easy to
      defer because deferring it usually costs nothing, until the one time it
      costs everything, and a function starved as a cost center has no slack
      left on that day.#cn()
    ],
    // -- Aftermath & Reform --
    [
      The settlement funded consumer compensation and credit monitoring, and
      the breach pushed patching discipline, asset inventory, and
      breach-disclosure timelines up the corporate agenda — elevating, after
      the loss, the unglamorous work that had been deferred before it.#cn() It
      was a cumulative-inadequacy failure: no
      dramatic single cause, just several routine defenses each left
      marginally inadequate, failing together on the day a determined attacker
      arrived to test all of them at once.
    ],
  ),
  beats: (
    "Equifax held identity data on most US adults; security flagged an Apache Struts patch to IT",
    "Unapplied patch let attackers exfiltrate 147M Americans' data over 2.5 months",
    "Senate subcommittee found systematically inadequate patching and no comprehensive IT asset inventory",
    "Routine work — patching, inventory, monitoring, response — each below standard, starved as a cost center",
    "$700M settlement funded compensation; patching, inventory, and disclosure timelines rose on the agenda",
  ),
  references: (
    [U.S. Senate Permanent Subcommittee on Investigations, _How Equifax Neglected Cybersecurity and Suffered a Devastating Data Breach_ (2019) — the unpatched Apache Struts vulnerability.],
    [The breach record — 147 million affected, exploitation from May 2017, public disclosure in September 2017.],
    [Senate PSI (2019) — "Equifax lacked a comprehensive IT asset inventory" (quoted).],
    [U.S. FTC / CFPB / state settlement (~\$700 million, 2019) and the CEO's resignation.],
    [U.S. GAO, _Actions Taken by Equifax and Federal Agencies in Response to the 2017 Breach_, GAO-18-559 (2018).],
    [Apache Struts CVE-2017-5638 advisory.],
  ),
  quote: [Equifax lacked a comprehensive IT asset inventory.],
  quote-source: "U.S. Senate Permanent Subcommittee on Investigations, How Equifax Neglected Cybersecurity, March 2019",
  le-insight: [
    Equifax is the canonical institutional-cybersecurity case for
    cumulative inadequacy in routine work: patching, inventory,
    monitoring, response. Each function was below industry standard.
    None alone produced the breach. The combination was the breach.
  ],
  lens-approach: [
    LENS uses Equifax in LEN 6 as a feedback-channel failure: the
    security team identified the Apache Struts patch and told IT to
    apply it — the operator-to-institution escalation existed, was
    correct, and died before reaching anyone with the asset map and
    the authority to act. The teaching point is not "patch your
    systems" but the engineered escalation deliverable: a flagged,
    agreed-upon fix has to be wired to an owner who can map it to
    every affected asset and is funded to close it before the gap
    costs everything. LEN 7 carries the institutional half — routine
    defenses run as a cost center have no slack on the bad day.
  ],
  induced-anchor: "6.2",
  lens-anchor: "D5/PT3",
  leo-anchor: "LEO-2",
  literature-items: (
    [Senate Subcommittee report (2019)],
    [GAO-18-559],
    [Bruce Schneier, _Click Here to Kill Everybody_ (2018)],
  ),
  reflection-list: (
    [Identify a piece of routine work in your domain that is chronically deferred. What is the cumulative-inadequacy threshold?],
    [Equifax did not know which assets ran Struts. Design the asset-inventory deliverable that an organization the size of Equifax should be able to produce on demand.],
    [Equifax's security team had flagged the patch, but the warning had no asset map to act on and no funded function to carry it out. What turns a known, agreed-upon fix into deferred work in your organization — and what would force it to be done before the one time it costs everything?],
  ),
  approaches: (
    during: (
      [Fund routine security maintenance — patching, monitoring, response — as a capability, not a cost center, so the unglamorous defenses have slack on the bad day.],
      [Build and maintain a comprehensive asset inventory so a known vulnerability can be mapped to every system that runs it.],
      [Wire the security team's warnings to an owner with the authority and resources to apply a flagged patch promptly.],
    ),
    after: (
      [Audit the routine defenses together — patching, inventory, monitoring, response — since each marginally inadequate layer raises the odds the combination fails.],
      [Monitor for sustained, low-noise exfiltration, treating a months-long quiet window as the failure mode to detect, not just a single break-in.],
      [Hold breach-disclosure timelines short, so affected people learn of a theft of their identity without months of delay.],
    ),
  ),
  courses: ("LEN 5", "LEN 7"),
  scale: "big",
  evidence-source: "investigation",
)
