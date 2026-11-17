#!/usr/bin/env python3
"""Statistics of the solutions in this repository (run from the repository root).

usage: Tools/stats.py [--json]
Prints counts per result code, the derived-step distribution of the proofs (overall, without the Ramsey
proofs, and for the SEU proofs from Mizar), the proofs with definition steps, and which ATP GDV used.
The README's numbers are computed with this script.
"""
import glob, json, re, statistics, sys, collections

RAMSEY = {"GRA019+1", "GRA122-1", "GRA122+1", "GRA123-1", "GRA123+1", "GRA125-1"}

def main():
    files = sorted(glob.glob("Solutions/*/*/*.s"))
    codes = collections.Counter(f.rsplit(".", 2)[-2] for f in files)
    proofs = {}
    defs = {}
    gdv = collections.Counter()
    for f in files:
        code = f.rsplit(".", 2)[-2]
        if not (code.endswith("-Ref") or code.endswith("-CRf")):
            continue
        p = f.split("/")[-2]
        txt = open(f).read()
        body = txt.split("% SZS output start", 1)[1]
        lemmas = re.findall(r"^(?:cnf|fof)\(\w+,\s*\w+,.*?inference\(lemma", body, re.M | re.S)
        final = len(re.findall(r"^(?:cnf|fof)\(\w+,\s*plain,\s*\(?\$false\)?\s*,", body, re.M))
        proofs[p] = len(lemmas) - min(final, 1)
        nd = len(re.findall(r"introduced\(definition", body))
        if nd:
            defs[p] = nd
        m = re.search(r"GDV VerifiedGood with (\S+ \S+)", txt)
        gdv[m.group(1) if m else "none"] += 1
    non_ramsey = {p: n for p, n in proofs.items() if p not in RAMSEY}
    seu = {p: n for p, n in non_ramsey.items() if p.startswith("SEU")}
    out = {
        "files": len(files), "problems": len({f.split("/")[-2] for f in files}), "codes": dict(codes),
        "proofs": len(proofs), "proofs_non_ramsey": len(non_ramsey),
        "non_ramsey_at_most_10": sum(1 for n in non_ramsey.values() if n <= 10),
        "non_ramsey_median": statistics.median(non_ramsey.values()) if non_ramsey else 0,
        "seu_proofs": len(seu), "seu_median": statistics.median(seu.values()) if seu else 0,
        "largest": sorted(proofs.items(), key=lambda kv: -kv[1])[:6],
        "proofs_with_definitions": sorted(defs), "definitions": sum(defs.values()),
        "gdv_atp": dict(gdv),
    }
    if "--json" in sys.argv:
        print(json.dumps(out, indent=1)); return
    for k, v in out.items():
        print(f"{k}: {v}")

if __name__ == "__main__":
    main()
