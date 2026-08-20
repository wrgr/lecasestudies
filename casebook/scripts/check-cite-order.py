#!/usr/bin/env python3
"""
check-cite-order.py — candidate-flagging detector for #cn() / references: misalignment.

Read-only. Parses casebook/chapters/*.typ, pairs each inline #cn() marker with the
reference at the same position, and scores whether the claim's *distinctive facts*
(years, report IDs, proper nouns, figures) are carried by a DIFFERENT positional
reference. Flags candidates for human reading; it does not prove misalignment.

Usage:  python3 cite_order.py [--root DIR] [--set all|printed|complete] [--min-score N] [--show SLUG]
"""
import re, glob, os, math, sys, argparse
from collections import Counter, defaultdict

# ---------------- Typst-lite structural parsing ----------------
def balanced(t, i):
    d = 0; j = i
    while j < len(t):
        c = t[j]
        if c in '([': d += 1
        elif c in ')]':
            d -= 1
            if d == 0: return j
        j += 1
    return -1

def blank_comments(s):
    """Blank out // comments that sit at bracket depth 0 (URLs live deeper)."""
    out = list(s); d = 0; j = 0
    while j < len(s):
        c = s[j]
        if c in '([': d += 1
        elif c in ')]': d -= 1
        elif d == 0 and s[j:j+2] == '//':
            k = s.find('\n', j); k = len(s) if k < 0 else k
            for x in range(j, k): out[x] = ' '
            j = k; continue
        j += 1
    return ''.join(out)

def top_fields(block):
    i = block.index('('); e = balanced(block, i); body = blank_comments(block[i+1:e])
    fields = {}; j = 0; d = 0
    while j < len(body):
        ch = body[j]
        if ch in '([': d += 1; j += 1; continue
        if ch in ')]': d -= 1; j += 1; continue
        if d == 0:
            m = re.match(r'([a-z][a-z0-9-]*)\s*:', body[j:])
            prev = body[:j].rstrip()
            if m and (prev == '' or prev[-1] == ','):
                name = m.group(1); vs = j + m.end(); k = vs; dd = 0
                while k < len(body):
                    c = body[k]
                    if c in '([': dd += 1
                    elif c in ')]': dd -= 1
                    elif c == ',' and dd == 0: break
                    k += 1
                fields[name] = body[vs:k].strip(); j = k + 1; continue
        j += 1
    return fields

def tuple_items(val):
    v = val.strip()
    if not v.startswith('('): return []
    e = balanced(v, 0); inner = blank_comments(v[1:e])
    items = []; j = 0; d = 0; start = 0
    while j < len(inner):
        c = inner[j]
        if c in '([': d += 1
        elif c in ')]': d -= 1
        elif c == ',' and d == 0:
            s = inner[start:j].strip()
            if s: items.append(s)
            start = j + 1
        j += 1
    s = inner[start:].strip()
    if s: items.append(s)
    return items

def unq(s): return s.strip().strip('"')

def detypst(s):
    s = re.sub(r'#link\("[^"]*"\)', ' ', s)
    s = re.sub(r'#cn\(\)', ' ', s)
    s = re.sub(r'#[a-z][a-z0-9-]*\(', ' ', s)
    s = s.replace('\\$', '$').replace('\\', ' ')
    s = re.sub(r'[_*]', ' ', s)
    s = re.sub(r'\s+', ' ', s)
    return s.strip()

# ---------------- distinctive-token extraction ----------------
STOPCAP = set("""The A An And Or But If Then When Where What Why How That This These Those It Its They Their
There Here One Two Three Four Five Six Seven Eight Nine Ten First Second Third Case Cases For From With
Between After Before During Within Without Across Through Against Upon Into Over Under About Not No Both
Each Every Some Any All Only Very Even Just Still Also However While Although Though Because Since Until
Nothing Nobody Neither Either Once Twice Yet More Most Less Least Same Other Another Such Than So""".split())
ACRO_OK = re.compile(r'^[A-Z][A-Z0-9&\.\-]{1,7}$')

def hard_tokens(txt):
    """Distinctive facts: years, report ids, acronyms, proper nouns, figures."""
    out = Counter()
    for y in re.findall(r'\b(1[5-9]\d\d|20[0-4]\d)\b', txt):
        out['Y:' + y] += 1
    for r in re.findall(r'\b[A-Z]{2,7}[-/][A-Z0-9][A-Z0-9\-/\.]{1,}', txt):
        out['ID:' + r.upper()] += 1
    for a in re.findall(r'\b[A-Z][A-Z&\.]{1,6}[A-Z]\b', txt):
        if a not in ('THE',): out['AC:' + a.replace('.', '')] += 1
    for m in re.finditer(r'\b([A-Z][a-z\'’-]{3,})\b', txt):
        w = m.group(1)
        if w in STOPCAP: continue
        out['N:' + w.lower()] += 1
    # figures: 2,975  3.4  54 percent  $30B  11 months
    for n in re.findall(r'\b\d[\d,\.]*\b', txt):
        n = n.rstrip('.')
        if re.fullmatch(r'(1[5-9]\d\d|20[0-4]\d)', n): continue
        if len(n.replace(',', '').replace('.', '')) >= 2 or ',' in n or '.' in n:
            out['#:' + n] += 1
    return out

STOP = set("""the a an and or of to in on at for with by from as is are was were be been being that this these those it its
their his her they them we our you your not but if then than so such which who whom whose what when where how why into
over under about after before during between within without across through against upon out up down off more most less
least all any both each few many some other another same own only very can could would should may might must will shall
do does did done have has had having one two three four five six seven eight nine ten first second third also however
while although though because since until still even just like near per via see new report reports study studies review
analysis data system systems paper journal press university vol pp doi https http www org com pdf eds ed edition volume
issue pages page inc llc ltd case cases""".split())
def words(s):
    return [w for w in re.findall(r"[a-z][a-z'\-]{2,}", s.lower()) if w not in STOP]

# ---------------- load corpus ----------------
def load(root):
    cases = []
    for f in sorted(glob.glob(os.path.join(root, "chapters", "*.typ"))):
        txt = open(f).read()
        for m in re.finditer(r'#case\(', txt):
            i = m.end() - 1; e = balanced(txt, i)
            fl = top_fields(txt[m.start():e+1])
            fl['_file'] = os.path.basename(f)
            fl['_line'] = txt[:m.start()].count('\n') + 1
            cases.append(fl)
    return cases

def slugset(path, var):
    body = open(path).read().split(var)[1]
    return set(re.findall(r'"([a-z0-9-]+)"', body))

# ---------------- scoring ----------------
def analyse(c, idf, near_chars=520):
    slug = unq(c.get('slug', '')); num = unq(c.get('number', '?'))
    secs = tuple_items(c.get('sections', '()'))
    joined = '\n'.join(secs)
    refs_raw = tuple_items(c.get('references', '()'))
    refs = [detypst(r) for r in refs_raw]
    segs = joined.split('#cn()')
    nm = len(segs) - 1
    if nm == 0 or not refs: return None

    # case-generic tokens: appear in the title/summary/impact -> uninformative
    generic = set(hard_tokens(detypst(c.get('title', '') + ' ' + c.get('slug', ''))))

    claims_near, claims_span = [], []
    for i in range(nm):
        span = detypst(segs[i])
        claims_span.append(span)
        sents = re.split(r'(?<=[.!?])\s+', span)
        near = ''
        for s in reversed(sents):
            if len(near) + len(s) > near_chars and near: break
            near = s + ' ' + near
        claims_near.append(near.strip() or span[-near_chars:])

    ref_tok = [hard_tokens(r) for r in refs]
    ref_wrd = [Counter(words(r)) for r in refs]
    # lead-author / lead-org surname of each reference (first capitalised run)
    ref_lead = []
    for r in refs:
        head = r.split('—')[0]
        names = set()
        for m in re.finditer(r'\b([A-Z][a-z\'\u2019-]{3,})\b', head[:220]):
            if m.group(1) not in STOPCAP: names.add(m.group(1).lower())
        ref_lead.append(names)

    findings = []
    for k in range(nm):
        ct = hard_tokens(claims_near[k])
        own = ref_tok[k] if k < len(refs) else Counter()
        evid = []
        for j, rt in enumerate(ref_tok):
            sc = 0.0; hits = []
            for t, _ in ct.items():
                if t in generic: continue
                present = [x for x in range(len(refs)) if t in ref_tok[x]]
                if not present or len(present) > max(1, len(refs) // 2): continue
                if j in present:
                    w = 1.0
                    if t.startswith('#:'): w = 2.0          # a figure is a strong tie
                    elif t.startswith('ID:'): w = 2.5       # a report number is near-decisive
                    elif t.startswith('Y:'): w = 0.8
                    elif t.startswith('AC:'): w = 1.2
                    w *= 1.0 / len(present)                  # unambiguous hits count most
                    sc += w; hits.append(t)
            evid.append((sc, hits, j))
        # --- author-attribution signal: the claim names a source by author/agency ---
        for m in re.finditer(r"\b([A-Z][a-z\'\u2019-]{3,})(?:\s+(?:et al\.?|and\s+[A-Z][a-z]+|&\s*[A-Z][a-z]+))|\b([A-Z][a-z\'\u2019-]{3,})'s\b|\b([A-Z][a-z\'\u2019-]{3,})\s*\((?:1[89]\d\d|20[0-4]\d)\)",
                            claims_near[k]):
            nm_ = (m.group(1) or m.group(2) or m.group(3)).lower()
            if 'N:' + nm_ in generic: continue
            owners = [x for x in range(len(refs)) if nm_ in ref_lead[x]]
            if len(owners) == 1 and owners[0] != k:
                evid[owners[0]] = (evid[owners[0]][0] + 2.5,
                                   evid[owners[0]][1] + ['ATTR:' + nm_], owners[0])

        ownsc = evid[k][0] if k < len(refs) else 0.0
        best = max(evid, key=lambda e: e[0])
        if best[2] != k and best[0] >= 1.2 and best[0] >= ownsc + 1.0:
            findings.append(dict(marker=k + 1, points_to=best[2] + 1, own=round(ownsc, 2),
                                 alt=round(best[0], 2), evidence=best[1],
                                 claim=claims_near[k][-200:]))
    # topical-vacancy backstop: ref k shares no content word with claim k at all
    vac = []
    for k in range(min(nm, len(refs))):
        cw = set(words(claims_span[k]))
        if not cw: continue
        ov = len(cw & set(ref_wrd[k]))
        alts = [(len(cw & set(ref_wrd[j])), j) for j in range(len(refs))]
        bo, bj = max(alts)
        if ov <= 1 and bj != k and bo >= 4:
            vac.append(dict(marker=k + 1, points_to=bj + 1, own_overlap=ov, alt_overlap=bo))
    score = len(findings) * 2 + len(vac)
    return dict(num=num, slug=slug, file=c['_file'], line=c['_line'], nm=nm, nr=len(refs),
                findings=findings, vacancies=vac, score=score)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--root', default='/home/user/lens-concentration/casebook')
    ap.add_argument('--set', default='active', choices=['all', 'active', 'printed', 'complete'])
    ap.add_argument('--min-score', type=int, default=2)
    ap.add_argument('--show', default=None)
    ap.add_argument('--verbose', action='store_true')
    a = ap.parse_args()

    cases = load(a.root)
    quar = slugset(os.path.join(a.root, 'lib/quarantine.typ'), 'quarantine-slugs')
    main_s = slugset(os.path.join(a.root, 'lib/selection.typ'), 'main-slugs')

    idf = None
    res = [r for r in (analyse(c, idf) for c in cases) if r]
    if a.set == 'active':   res = [r for r in res if r['slug'] not in quar]
    elif a.set == 'printed': res = [r for r in res if r['slug'] in main_s]
    elif a.set == 'complete': res = [r for r in res if r['slug'] not in quar and r['slug'] not in main_s]

    if a.show:
        for r in res:
            if r['slug'] == a.show or r['num'] == a.show:
                import json; print(json.dumps(r, indent=2, ensure_ascii=False))
        return

    flagged = [r for r in res if r['score'] >= a.min_score]
    flagged.sort(key=lambda r: -r['score'])
    print(f"scanned {len(res)} cases ({a.set}); flagged {len(flagged)} at score>={a.min_score}\n")
    for r in flagged:
        tag = 'PRINTED' if r['slug'] in main_s else '        '
        print(f"[{tag}] score {r['score']:>2}  case {r['num']:>3}  {r['slug'][:46]:48} "
              f"({r['nm']} markers / {r['nr']} refs)  {r['file']}:{r['line']}")
        for f in r['findings']:
            print(f"      marker {f['marker']} -> ref {f['points_to']} "
                  f"(own {f['own']} vs {f['alt']})  {','.join(f['evidence'][:6])}")
            if a.verbose: print(f"         claim: ...{f['claim']}")
        for v in r['vacancies']:
            print(f"      marker {v['marker']}: ref {v['marker']} shares {v['own_overlap']} words; "
                  f"ref {v['points_to']} shares {v['alt_overlap']}")
    print(f"\ntotals: {len(flagged)}/{len(res)} flagged")

if __name__ == '__main__':
    main()
