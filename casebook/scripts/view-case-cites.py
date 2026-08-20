#!/usr/bin/env python3
"""
view-case-cites.py — print a case's #cn() markers beside the reference sitting at
each marker's position, then the full reference list.

Read-only. This is the fast way to check the positional citation contract stated at
lib/components.typ:369 — reference k must be the source for marker k. The failure is
stereotyped (tuples ordered by authority tier, or rotated by one) and is legible in a
few minutes once the two are side by side.

Usage:
    python3 scripts/view-case-cites.py <case-number-or-slug> [claim-chars]

    claim-chars defaults to 300 — the tail of the span each marker covers, which is
    where the claim it carries almost always sits.
"""
import sys, os

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from importlib import import_module

_co = import_module("check-cite-order".replace("-", "_")) if False else None

# check-cite-order.py has hyphens, so import it by path rather than by name.
import importlib.util
_spec = importlib.util.spec_from_file_location(
    "cite_order", os.path.join(os.path.dirname(os.path.abspath(__file__)), "check-cite-order.py")
)
cite_order = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(cite_order)

load, tuple_items, detypst, unq = (
    cite_order.load, cite_order.tuple_items, cite_order.detypst, cite_order.unq
)


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(1)
    want = sys.argv[1]
    near = int(sys.argv[2]) if len(sys.argv) > 2 else 300

    root = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..")
    cases = load(root)

    hits = [c for c in cases
            if unq(c.get("number", "")) == want or unq(c.get("slug", "")) == want]
    if not hits:
        print(f"no case matching {want!r}")
        sys.exit(1)

    for c in hits:
        print("=" * 78)
        print(f"CASE {unq(c.get('number',''))}  {unq(c.get('slug',''))}")
        print(f"  {unq(c.get('title',''))}")
        print(f"  {c['_file']}:{c['_line']}")
        print("=" * 78)

        refs = [detypst(r) for r in tuple_items(c.get("references", "()"))]
        segs = "\n".join(tuple_items(c.get("sections", "()"))).split("#cn()")
        nmark = len(segs) - 1

        print(f"\n{nmark} markers / {len(refs)} references"
              + ("   <-- extra references beyond the markers"
                 if len(refs) > nmark else ""))

        for k in range(nmark):
            claim = detypst(segs[k])
            print(f"\n--- MARKER {k+1} — tail of the span it covers:")
            print("    ..." + claim[-near:])
            here = refs[k] if k < len(refs) else "(NO REFERENCE AT THIS POSITION)"
            print(f"\n    >> REF {k+1}: {here}")

        if len(refs) > nmark:
            print("\n--- UNBOUND REFERENCES (past the last marker) ---")
            print("    An unbound entry is sometimes the correct target for an earlier")
            print("    marker, stranded at the end. Check before assuming it is spare.")
            for i in range(nmark, len(refs)):
                print(f"    [{i+1}] {refs[i]}")

        print("\n=== ALL REFERENCES, IN ORDER ===")
        for i, r in enumerate(refs):
            print(f"  [{i+1}] {r}")
        print()


if __name__ == "__main__":
    main()
