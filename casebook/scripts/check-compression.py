#!/usr/bin/env python3
"""Compression-fidelity check.

The casebook's compression fields (`impact`, `le-insight`) are written alongside the
narrative rather than derived from it, so nothing forces them to agree with the body.
Every confirmed defect of the August 2026 mechanism pass was of that shape.

`beats` and `quote` do not drift, because they reuse the body's own sentences — they
are derived. This check applies the cheapest mechanical proxy for the same discipline:

    every quantity asserted in `impact` or `le-insight` must have a counterpart
    in `summary` or `sections`.

It is a *lead* detector, not a verdict. A summary may legitimately say "67%" where the
body says "two-thirds"; the common word-forms are normalised, but not all of them.
Triage the output — do not treat a hit as a defect.

Usage:  python3 scripts/check-compression.py [chapters_dir]
"""
import re, sys, glob, os

WORDNUM = {"two dozen":"24","dozen":"12","two-thirds":"67","one-third":"33","half":"50",
           "ten":"10","twelve":"12","fifteen":"15","twenty":"20","thirty":"30",
           "forty":"40","fifty":"50","hundred":"100"}
# identifiers that look like quantities but are not
STRIP = [r'Case[s]?\s+\d+(\s*,\s*\d+)*', r'GAO-[\d-]+', r'\d+\s*F\.\s*Supp\.\s*\d*d?\s*\d+',
         r'AAR-[\d/]+', r'NTSB[/\w-]*', r'PMC\d+', r'doi:\S+', r'§+\s*[\d.()a-z]+',
         r'\d{4}-\d+', r'TDC-[\d-]+', r'LEO-\d', r'D\d/PT\d']

def quantities(s):
    for p in STRIP: s = re.sub(p, ' ', s)
    s = s.lower()
    for w, d in WORDNUM.items(): s = s.replace(w, d)
    s = s.replace(",", "")
    out = set()
    for m in re.finditer(r'\d+(?:\.\d+)?', s):
        v = m.group(0)
        if v in set("123456789"): continue          # ordinals / small counts: too noisy
        if re.match(r'^(18|19|20)\d\d$', v): continue  # years
        out.add(v)
    return out

def cases(text):
    lines = text.split("\n")
    for i, l in enumerate(lines):
        if not l.startswith("#case("): continue
        depth = 0; started = False
        for j in range(i, len(lines)):
            for ch in lines[j]:
                if ch == "(": depth += 1; started = True
                elif ch == ")": depth -= 1
            if started and depth == 0:
                yield "\n".join(lines[i:j+1]); break

def field(t, name, block=False):
    m = (re.search(name + r':\s*\[(.*?)\n  \],', t, re.S) if block
         else re.search(name + r':\s*"((?:[^"\\]|\\.)*)"', t, re.S))
    return m.group(1) if m else ""

def main(d="chapters"):
    hits = 0; total = 0
    quarantined = set(re.findall(r'"([a-z0-9-]+)"',
                                 open(os.path.join(os.path.dirname(d) or ".",
                                                   "lib", "quarantine.typ")).read()))
    for f in sorted(glob.glob(os.path.join(d, "*.typ"))):
        for blk in cases(open(f).read()):
            n = re.search(r'number:\s*(\d+)', blk)
            slug = re.search(r'slug:\s*"([^"]+)"', blk)
            if not n or (slug and slug.group(1) in quarantined): continue
            total += 1
            body = field(blk, "summary", True) + " " + " ".join(
                re.findall(r'sections:\s*\((.*?)\n  \),', blk, re.S))
            bn = quantities(body)
            oi = sorted(quantities(field(blk, "impact")) - bn)
            ol = sorted(quantities(field(blk, "le-insight", True)) - bn)
            if oi or ol:
                hits += 1
                bits = []
                if oi: bits.append("impact " + ",".join(oi))
                if ol: bits.append("le-insight " + ",".join(ol))
                print(f"  ~ Case {n.group(1):>3} {slug.group(1)[:38]:40s} {' | '.join(bits)}")
    print(f"\n{hits} of {total} cases carry a quantity in a compression field with no "
          f"counterpart in the body.")
    print("Leads for triage, not defects. See the module docstring.")
    return 0

if __name__ == "__main__":
    sys.exit(main(sys.argv[1] if len(sys.argv) > 1 else "chapters"))
