#!/usr/bin/env python3
"""
check-cite-anchors.py — commit-time gate for the positional citation contract.

lib/components.typ:369 states it: reference text is supplied to case-references()
IN THE SAME ORDER as the #cn() markers, so reference k must be the source for
marker k. check-cases.sh enforces only `markers <= refs` and is blind to order.

This gate checks the *anchored subset* — the cases where the answer is not a
judgement call. If the claim carried by marker k contains a hard anchor (a report
identifier like GAO-18-472 or NTSB/MAR-19/01, or a >=4-digit figure like 3,900 or
$243M) and that anchor appears in EXACTLY ONE reference, then that reference must
be the one at position k. Anything else is a defect the reader will hit: they
follow a superscript and land on a document that cannot carry the claim.

This is deliberately narrow. It is not the detector — scripts/check-cite-order.py
does the broad, fuzzy, high-recall-but-noisy search and is meant for sweeps. This
one is meant to be true: near-zero false positives, so it can fail a build.

Known limits, stated so nobody mistakes a pass for proof:
  • It sees only anchored markers. Roughly a third of markers carry no hard anchor,
    and a misordered pair with no shared identifier is invisible here.
  • It cannot see a claim with NO supporting reference anywhere (Case 199's
    trade-secret ruling). That failure has no positional signature at all.
  • The house repeat convention — the same source occupying several slots with
    claim-specific annotations — is handled by treating identical reference text
    as one equivalence class, so a swap *within* a class is not flagged. That is
    correct: the reader reaches the right document either way.

Usage:  python3 scripts/check-cite-anchors.py [--set active|printed|complete|all]
Exit 1 on any violation.
"""
import re, os, sys, argparse, importlib.util

_HERE = os.path.dirname(os.path.abspath(__file__))
_spec = importlib.util.spec_from_file_location(
    "cite_order", os.path.join(_HERE, "check-cite-order.py"))
cite_order = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(cite_order)

load, tuple_items, detypst, unq, slugset = (
    cite_order.load, cite_order.tuple_items, cite_order.detypst,
    cite_order.unq, cite_order.slugset)

# A report identifier: two-or-more capitals, then a separator, then alphanumerics.
# GAO-18-472, NTSB/MAR-19/01, AAR-10/01, SAB-TR-11-04, NUREG/CR-6947.
RE_ID = re.compile(r'\b[A-Z]{2,7}[-/][A-Z0-9][A-Z0-9\-/\.]{2,}')
# A figure with real information content: >=4 significant digits, or a grouped
# number. 3,900 · 12,490 · 105934 · 2,031,220. Years are excluded separately —
# they collide constantly (a 2019 study cited in a 2019 report).
RE_NUM = re.compile(r'\b\d{1,3}(?:,\d{3})+\b|\b\d{4,}\b')


def anchors(text):
    out = set()
    for m in RE_ID.finditer(text):
        out.add("ID:" + m.group(0).upper().rstrip('.'))
    for m in RE_NUM.finditer(text):
        raw = m.group(0)
        digits = raw.replace(",", "")
        if re.fullmatch(r'(1[5-9]\d\d|20[0-4]\d)', digits):
            continue                      # bare year — too collision-prone
        out.add("#:" + digits)
    return out


def check(case):
    """Return a list of violation strings for one case."""
    refs_raw = tuple_items(case.get("references", "()"))
    refs = [detypst(r) for r in refs_raw]
    if not refs:
        return []
    segs = "\n".join(tuple_items(case.get("sections", "()"))).split("#cn()")
    nmark = len(segs) - 1
    if nmark == 0:
        return []

    # Equivalence classes: identical reference text is the same document, so a
    # swap inside a class reaches the right document and is not a defect here.
    cls = {}
    for i, r in enumerate(refs):
        cls.setdefault(r.strip(), []).append(i)
    class_of = {i: tuple(sorted(v)) for r, v in cls.items() for i in v}

    ref_anchors = [anchors(r) for r in refs]

    # Anchors generic to the case — the flight number in its title, the standard
    # it is about — carry no positional information: they appear wherever the
    # subject is named. Excluding them is what separates this gate from the fuzzy
    # detector. (Atlas Air Flight 3591; MIL-STD-1472H.)
    generic = anchors(detypst(case.get("title", "") + " " + case.get("slug", "")))

    bad = []
    for k in range(min(nmark, len(refs))):
        claim = detypst(segs[k])
        # The claim a marker carries is the tail of the span preceding it.
        claim = claim[-600:]
        for a in anchors(claim):
            if a in generic:
                continue
            owners = [j for j in range(len(refs)) if a in ref_anchors[j]]
            if len(owners) != 1:
                continue                  # ambiguous or absent — not this gate's business
            owner = owners[0]
            if owner == k:
                continue
            if class_of.get(owner) == class_of.get(k):
                continue                  # same document, different annotation
            bad.append(
                f"marker {k+1} carries {a[3:] if a.startswith('ID:') else a[2:]} "
                f"but that appears only in reference {owner+1}")
    return bad


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--set", default="active",
                    choices=["all", "active", "printed", "complete"])
    ap.add_argument("--root", default=os.path.join(_HERE, ".."))
    a = ap.parse_args()

    cases = load(a.root)
    quar = slugset(os.path.join(a.root, "lib/quarantine.typ"), "quarantine-slugs")
    main_s = slugset(os.path.join(a.root, "lib/selection.typ"), "main-slugs")

    sel = []
    for c in cases:
        s = unq(c.get("slug", ""))
        if a.set == "active" and s in quar: continue
        if a.set == "printed" and s not in main_s: continue
        if a.set == "complete" and (s in quar or s in main_s): continue
        sel.append(c)

    fails = 0
    for c in sorted(sel, key=lambda c: int(unq(c.get("number", "0")) or 0)):
        bad = check(c)
        if bad:
            fails += 1
            n = unq(c.get("number", "?"))
            print(f"  ✗ Case {n} ({unq(c.get('slug',''))}) — {c['_file']}:{c['_line']}")
            for b in bad:
                print(f"      {b}")

    scope = a.set
    if fails:
        print(f"\ncitation anchors: {fails} case(s) with a marker whose hard anchor "
              f"lives in another reference ({len(sel)} {scope} cases checked).")
        print("Reference k must be the source for marker k — lib/components.typ:369.")
        return 1
    print(f"citation anchors: {len(sel)} {scope} cases, every anchored marker "
          f"resolves to its own reference. OK")
    print("Note: this gate sees only markers carrying a report ID or a >=4-digit "
          "figure. A pass is not proof the whole tuple is ordered.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
