// ============================================================
// References — sources cited in the Introduction
// and a broader reading list for the discipline.
// ============================================================

#import "../lib/theme.typ": *
#import "../lib/components.typ": *

#pagebreak(to: "odd", weak: true)

#text(font: sans, size: 7.5pt, tracking: 2pt, fill: teal, upper("References"))
#v(4pt)
#line(length: 32mm, stroke: 0.8pt + gold)
#v(12pt)

#text(font: serif, size: 26pt, fill: navy, "Works cited.")
#v(4pt)
#text(font: sans, size: 9pt, fill: text-muted)[
  Numbered references are cited in the Introduction. Per-case sources
  appear on each spread. The broader reading list at the end of this
  section collects foundational works the LENS curriculum draws on.
]

#v(12pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("Cited in the introduction"))
#v(6pt)

#let ref-list(items) = {
  set par(leading: 0.55em, first-line-indent: 0pt, hanging-indent: 14pt)
  for (i, item) in items.enumerate() {
    block(spacing: 4pt, {
      grid(
        columns: (14pt, 1fr),
        column-gutter: 4pt,
        text(font: sans, size: 7.5pt, weight: "bold", fill: teal, str(i + 1) + "."),
        text(font: sans, size: 7.8pt, fill: text-dark, item),
      )
    })
  }
}

#ref-list((
  [Makary, M. A. & Daniel, M. (2016). Medical error — the third leading cause of death in the US. _BMJ_ 353: i2139. #link("https://doi.org/10.1136/bmj.i2139")[doi:10.1136/bmj.i2139].],
  [Morris, Z. S., Wooding, S. & Grant, J. (2011). The answer is 17 years, what is the question: understanding time lags in translational research. _Journal of the Royal Society of Medicine_ 104(12): 510–520.],
  [Balas, E. A. & Boren, S. A. (2000). Managing clinical knowledge for health care improvement. _Yearbook of Medical Informatics_, 65–70.],
  [U.S. Navy (2017). _Comprehensive Review of Recent Surface Force Incidents_; _Strategic Readiness Review_. Department of the Navy.],
  [U.S. Government Accountability Office (2023). _F-35 Sustainment: DOD Faces Several Uncertainties and Risks as it Defines Future Costs and Plans_. GAO-23-105341.],
  [Bulger, M., McCormick, P. & Pitcan, M. (2017). _The Legacy of inBloom._ Data & Society Research Institute.],
  [Office of Qualifications and Examinations Regulation, UK (2020). _Awarding GCSE, AS, A level, advanced extension awards and extended project qualifications in summer 2020: interim report._ Ofqual; see also Adam, D. (2020), MIT Technology Review.],
  [Helmreich, R. L., Merritt, A. C. & Wilhelm, J. A. (1999). The evolution of Crew Resource Management training in commercial aviation. _International Journal of Aviation Psychology_ 9(1): 19–32.],
  [Commercial Aviation Safety Team / Federal Aviation Administration (2016). _Safety Enhancements and Outcomes_. CAST/FAA.],
  [Federal Aviation Administration (2017). _Out Front on Airline Safety: Two Decades of Continuous Evolution._ FAA Newsroom.],
  [Rees, J. V. (1994). _Hostages of Each Other: The Transformation of Nuclear Safety since Three Mile Island._ University of Chicago Press.],
  [Pronovost, P., Needham, D., Berenholtz, S. _et al._ (2006). An intervention to decrease catheter-related bloodstream infections in the ICU. _New England Journal of Medicine_ 355(26): 2725–2732.],
  [Haynes, A. B., Weiser, T. G., Berry, W. R. _et al._ (2009). A surgical safety checklist to reduce morbidity and mortality in a global population. _New England Journal of Medicine_ 360(5): 491–499.],
  [Agency for Healthcare Research and Quality (2023). _TeamSTEPPS 3.0 Curriculum._ AHRQ Publication No. 23-0034.],
  [Sawyer, R. K. (ed.) (2014). _The Cambridge Handbook of the Learning Sciences_ (2nd ed.). Cambridge University Press.],
  [Vicente, K. J. (1999). _Cognitive Work Analysis: Toward Safe, Productive, and Healthy Computer-Based Work._ Lawrence Erlbaum.],
  [Wickens, C. D., Hollands, J. G., Banbury, S. & Parasuraman, R. (2021). _Engineering Psychology and Human Performance_ (5th ed.). Routledge.],
  [Fixsen, D. L., Naoom, S. F., Blasé, K. A., Friedman, R. M. & Wallace, F. (2005). _Implementation Research: A Synthesis of the Literature._ National Implementation Research Network. See also Aarons, G. A., Hurlburt, M. & Horwitz, S. M. (2011). Advancing a conceptual model of evidence-based practice implementation in public service sectors. _Administration and Policy in Mental Health_ 38: 4–23.],
  [Reason, J. (1990). _Human Error._ Cambridge University Press. Rasmussen, J. (1997). Risk management in a dynamic society: a modelling problem. _Safety Science_ 27: 183–213. Leveson, N. (2011). _Engineering a Safer World: Systems Thinking Applied to Safety._ MIT Press.],
  [Weick, K. E. & Sutcliffe, K. M. (2015). _Managing the Unexpected: Sustained Performance in a Complex World_ (3rd ed.). Wiley. See also Roberts, K. H. (1990). Some characteristics of one type of high reliability organization. _Organization Science_ 1(2): 160–176.],
  [Saxberg, B. (2017). Learning engineering: the art of applying learning science at scale. In _Industry Connections Industry Consortium on Learning Engineering._ See also Goodell, J. & Kolodner, J. L. (eds.) (2022). _Learning Engineering Toolkit._ Routledge.],
  [IEEE ICICLE (2022). _Learning Engineering Body of Knowledge (LEBoK)._ #link("https://lebok.wiki")[lebok.wiki].],
))

#v(14pt)
#text(font: sans, size: 8pt, tracking: 1.6pt, fill: gold, upper("Foundations  ·  the discipline draws on"))
#v(6pt)

#text(font: sans, size: 9pt, fill: navy, "Learning sciences and learning engineering")
#v(2pt)

#let read-list(items) = {
  set par(leading: 0.5em, first-line-indent: 0pt, hanging-indent: 12pt)
  for it in items {
    block(spacing: 2.5pt, text(font: sans, size: 7.8pt, fill: text-dark)[• #it])
  }
}

#read-list((
  [Bransford, J. D., Brown, A. L. & Cocking, R. R. (eds.) (2000). _How People Learn: Brain, Mind, Experience, and School._ National Academy Press.],
  [Sawyer, R. K. (ed.) (2014). _The Cambridge Handbook of the Learning Sciences_ (2nd ed.).],
  [Koedinger, K. R., Corbett, A. T. & Perfetti, C. (2012). The Knowledge-Learning-Instruction framework. _Cognitive Science_ 36(5): 757–798.],
  [Sweller, J., Ayres, P. & Kalyuga, S. (2011). _Cognitive Load Theory._ Springer.],
  [Soderstrom, N. C. & Bjork, R. A. (2015). Learning versus performance: an integrative review. _Perspectives on Psychological Science_ 10(2): 176–199.],
  [Goodell, J. & Kolodner, J. L. (eds.) (2022). _Learning Engineering Toolkit: Evidence-Based Practices from the Learning Sciences, Instructional Design, and Beyond._ Routledge.],
))

#v(8pt)
#text(font: sans, size: 9pt, fill: navy, "Human factors, cognitive engineering, and systems safety")
#v(2pt)

#read-list((
  [Vicente, K. J. (1999). _Cognitive Work Analysis._ Lawrence Erlbaum.],
  [Norman, D. A. (2013). _The Design of Everyday Things_ (rev. ed.). Basic Books.],
  [Hollnagel, E. & Woods, D. D. (2005). _Joint Cognitive Systems: Foundations of Cognitive Systems Engineering._ CRC Press.],
  [Endsley, M. R. (1995). Toward a theory of situation awareness in dynamic systems. _Human Factors_ 37(1): 32–64.],
  [Perrow, C. (1984). _Normal Accidents: Living with High-Risk Technologies._ Basic Books.],
  [Leveson, N. (2011). _Engineering a Safer World: Systems Thinking Applied to Safety._ MIT Press.],
  [Reason, J. (1997). _Managing the Risks of Organizational Accidents._ Ashgate.],
  [Rasmussen, J. (1997). Risk management in a dynamic society: a modelling problem. _Safety Science_ 27: 183–213.],
  [Dekker, S. (2014). _The Field Guide to Understanding 'Human Error'_ (3rd ed.). Ashgate.],
))

#v(8pt)
#text(font: sans, size: 9pt, fill: navy, "High-reliability organizing and team performance")
#v(2pt)

#read-list((
  [Weick, K. E. & Sutcliffe, K. M. (2015). _Managing the Unexpected_ (3rd ed.). Wiley.],
  [Roberts, K. H. (1990). Some characteristics of one type of high reliability organization. _Organization Science_ 1(2): 160–176.],
  [Edmondson, A. C. (2018). _The Fearless Organization: Creating Psychological Safety in the Workplace for Learning, Innovation, and Growth._ Wiley.],
  [Salas, E., Wilson, K. A., Burke, C. S. & Wightman, D. C. (2006). Does Crew Resource Management training work? An update, an extension, and some critical needs. _Human Factors_ 48(2): 392–412.],
  [Klein, G. (1998). _Sources of Power: How People Make Decisions._ MIT Press.],
  [Kanki, B. G., Helmreich, R. L. & Anca, J. (eds.) (2010). _Crew Resource Management_ (2nd ed.). Academic Press.],
))

#v(8pt)
#text(font: sans, size: 9pt, fill: navy, "Implementation science and organizational learning")
#v(2pt)

#read-list((
  [Fixsen, D. L., Naoom, S. F., Blasé, K. A., Friedman, R. M. & Wallace, F. (2005). _Implementation Research: A Synthesis of the Literature._ NIRN.],
  [Aarons, G. A., Hurlburt, M. & Horwitz, S. M. (2011). Advancing a conceptual model of evidence-based practice implementation in public service sectors. _Administration and Policy in Mental Health_ 38: 4–23.],
  [Damschroder, L. J. _et al._ (2009). Fostering implementation of health services research findings into practice: a consolidated framework. _Implementation Science_ 4: 50.],
  [Argyris, C. & Schön, D. A. (1996). _Organizational Learning II: Theory, Method, and Practice._ Addison-Wesley.],
  [Senge, P. M. (2006). _The Fifth Discipline: The Art and Practice of the Learning Organization_ (rev. ed.). Doubleday.],
  [Vaughan, D. (1996). _The Challenger Launch Decision: Risky Technology, Culture, and Deviance at NASA._ University of Chicago Press.],
))

#v(8pt)
#text(font: sans, size: 9pt, fill: navy, "Ethics, governance, and equity in sociotechnical systems")
#v(2pt)

#read-list((
  [Eubanks, V. (2018). _Automating Inequality: How High-Tech Tools Profile, Police, and Punish the Poor._ St. Martin's.],
  [Friedman, B. & Nissenbaum, H. (1996). Bias in computer systems. _ACM Transactions on Information Systems_ 14(3): 330–347.],
  [O'Neil, C. (2016). _Weapons of Math Destruction._ Crown.],
  [Selbst, A. D. _et al._ (2019). Fairness and abstraction in sociotechnical systems. In _FAT\*'19._],
  [Citron, D. K. (2008). Technological due process. _Washington University Law Review_ 85: 1249–1313.],
  [Selwyn, N. (2014). _Distrusting Educational Technology._ Routledge.],
))

#v(8pt)
#text(font: sans, size: 9pt, fill: navy, "Human-AI teaming and automation")
#v(2pt)

#read-list((
  [Parasuraman, R. & Manzey, D. H. (2010). Complacency and bias in human use of automation: an attentional integration. _Human Factors_ 52(3): 381–410.],
  [Bainbridge, L. (1983). Ironies of automation. _Automatica_ 19(6): 775–779.],
  [Sarter, N. B. & Woods, D. D. (1995). How in the world did we ever get into that mode? Mode error and awareness in supervisory control. _Human Factors_ 37(1): 5–19.],
  [Cummings, M. L. (2017). Automation bias in intelligent time-critical decision support systems. In _Decision Making in Aviation._],
  [Casner, S. M. & Hutchins, E. (2019). What do we tell the drivers? Toward minimum driver-training standards for partially-automated cars. _Journal of Cognitive Engineering and Decision Making_ 13(2): 55–66.],
))

#v(8pt)
#text(font: sans, size: 9pt, fill: navy, "Patient safety and clinical improvement")
#v(2pt)

#read-list((
  [Kohn, L. T., Corrigan, J. M. & Donaldson, M. S. (eds.) (1999). _To Err Is Human: Building a Safer Health System._ Institute of Medicine.],
  [Gawande, A. (2009). _The Checklist Manifesto: How to Get Things Right._ Metropolitan.],
  [Pronovost, P. & Vohr, E. (2010). _Safe Patients, Smart Hospitals._ Hudson Street Press.],
  [Wachter, R. (2015). _The Digital Doctor: Hope, Hype, and Harm at the Dawn of Medicine's Computer Age._ McGraw-Hill.],
  [Bates, D. W., Levine, D. M., Salmasian, H. _et al._ (2023). The safety of inpatient health care. _New England Journal of Medicine_ 388(2): 142–153.],
))

#v(12pt)
#text(font: sans, size: 7pt, fill: text-muted)[
  Each case spread in the body of the book includes its own primary
  sources. Sources cited only within case spreads are not repeated here;
  this list collects the works the discipline as a whole draws on,
  together with the references used in the introductory essay.
]
