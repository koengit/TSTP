#!/usr/bin/env python3
"""Check a TSTP derivation from this repository, step by step.

usage: Tools/check_proof.py PROBLEM SOLUTION.s [--jobs N] [--timeout SEC]
  env: TPTP     = root of the TPTP library (default ./TPTP); needs $TPTP/Scripts/tptp4X
       EPROVER  = E prover binary (default: eprover on PATH)
       VAMPIRE  = Vampire binary, used for steps E does not prove (default: vampire on PATH; optional)

What is checked (exit 0 = PROOF, 1 = FAIL):
  * the problem and the derivation are both normalised with tptp4X -x -umachine;
  * every leaf (inference record file(...)) is syntactically identical to the problem formula it names;
  * every definition (record introduced(...)) has the shape ! [Vs] : (p(Vs) <=> body), with p a fresh symbol
    (not in the problem and not used earlier in the derivation), not circular (p not in body), and no free
    variables in body outside Vs, so that it is a conservative extension;
  * negate_conjecture steps negate exactly their parent conjecture;
  * every lemma step (inference(lemma,...)) follows from its parents: E proves it (--auto, then
    --auto-schedule=4; Vampire as fallback);
    parents must occur earlier; no lemma step cites a conjecture directly;
  * the last formula is $false (for a fof problem with a conjecture that the refutation does not use, the
    verdict says that the axioms are contradictory).
The slowest step time is printed, so that "each step is easy" is a measured claim.

Based on the review script pcheck2.py; the parser is Tools/tptp.py.
"""
import argparse, os, re, shutil, subprocess, sys, tempfile, time
from concurrent.futures import ThreadPoolExecutor
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import tptp

OK = ("Theorem", "Unsatisfiable", "ContradictoryAxioms")

def items(path, T):
    txt = subprocess.run([os.path.join(T, "Scripts", "tptp4X"), "-x", "-umachine", path], capture_output=True,
                         text=True, env=dict(os.environ, TPTP=T), check=True).stdout
    return [it for it in tptp.Parser(tptp.tokenize(txt, path), path).tptp_input() if it[0] == "formula"]

def syms_of(it):
    s = set()
    for x in (it[4] if it[1] == "cnf" else [it[4]]):
        tptp.symbols(x, s)
    return {a[0] for a in s}

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("problem"); ap.add_argument("solution")
    ap.add_argument("--jobs", type=int, default=4); ap.add_argument("--timeout", type=int, default=30)
    a = ap.parse_args()
    T = os.path.abspath(os.environ.get("TPTP", "TPTP"))
    E = os.environ.get("EPROVER") or shutil.which("eprover")
    V = os.environ.get("VAMPIRE") or shutil.which("vampire")
    if not E:
        sys.exit("check_proof: no E prover (set EPROVER)")
    P = a.problem
    pfile = os.path.join(T, "Problems", P[:3], P + ".p")
    W = tempfile.mkdtemp(prefix="check_proof_")
    try:
        prob = {it[2]: it for it in items(pfile, T)}
        has_conj = any(it[3] == "conjecture" for it in prob.values())
        seen = set()
        for it in prob.values():
            seen |= syms_of(it)
        m = re.search(r"^% SZS output start \w+.*?\n(.*)^% SZS output end", open(a.solution).read(), re.S | re.M)
        if not m:
            sys.exit("check_proof: no SZS output block in the solution file")
        open(os.path.join(W, "sol.p"), "w").write(m.group(1))
        steps = items(os.path.join(W, "sol.p"), T)
        order = {it[2]: i for i, it in enumerate(steps)}
        names, problems, jobs, deps, ndefs = {}, [], [], {}, 0
        for idx, it in enumerate(steps):
            _, lang, name, role, ast, annots, _ = it
            if name in names:
                problems.append(f"duplicate name {name}")
            names[name] = it
            ann = annots[0] if annots else None
            if ann and ann[0] == "app" and ann[1] == "file":
                src = ann[2][1][1]
                pit = prob.get(src)
                if not pit or pit[1] != lang or pit[3] != role or pit[4] != ast:
                    problems.append(f"leaf {name} differs from problem formula {src}")
                deps[name] = role in ("conjecture", "negated_conjecture")
                continue
            if ann and ann[0] == "app" and ann[1] == "introduced":
                ndefs += 1
                f, vs = ast, []
                while f[0] == "all":
                    vs += f[1]; f = f[2]
                ok = (role == "definition" and f[0] == "iff" and f[1][0] == "pred"
                      and all(t[0] == "var" for t in f[1][2])
                      and sorted(t[1] for t in f[1][2]) == sorted(set(vs)) and len(vs) == len(set(vs)))
                if ok:
                    p = f[1][1]; bs = set(); tptp.symbols(f[2], bs)
                    if p in seen: problems.append(f"definition {name}: {p} is not fresh")
                    if p in {b[0] for b in bs}: problems.append(f"definition {name}: circular")
                    if tptp.check_closed(f[2], frozenset(vs)): problems.append(f"definition {name}: free variables")
                else:
                    problems.append(f"definition {name}: wrong shape")
                deps[name] = False
                seen |= syms_of(it)
                continue
            seen |= syms_of(it)
            if not (ann and ann[0] == "app" and ann[1] == "inference"):
                problems.append(f"{name}: no inference record"); continue
            rule = ann[2][0][1]; ps = [x[1] for x in ann[2][2][1]]
            for p in ps:
                if p not in order or order[p] >= idx:
                    problems.append(f"{name}: parent {p} missing or later")
            if any(p not in names for p in ps):
                continue
            deps[name] = any(deps.get(p) for p in ps) or role == "negated_conjecture"
            if rule == "negate_conjecture":
                if len(ps) != 1 or names[ps[0]][3] != "conjecture" or ast != ("not", names[ps[0]][4]) \
                        or role != "negated_conjecture":
                    problems.append(f"{name}: bad negate_conjecture")
                continue
            if rule != "lemma" or role != "plain":
                problems.append(f"{name}: unexpected rule {rule} / role {role}"); continue
            lines = []
            for p in ps:
                pi = names[p]
                if pi[3] == "conjecture":
                    problems.append(f"{name}: cites the conjecture {p} directly")
                body = tptp.pclause(pi[4]) if pi[1] == "cnf" else tptp.pform(pi[4])
                lines.append(f"{pi[1]}(p_{p}, axiom, {body}).")
            goal = tptp.clause_as_fof(ast) if lang == "cnf" else tptp.pform(ast)
            if goal not in ("$false", "($false)"):
                lines.append(f"fof(goal, conjecture, {goal}).")
            fn = os.path.join(W, f"s{idx}.p")
            open(fn, "w").write("\n".join(lines) + "\n")
            jobs.append((name, fn))

        def run(job):
            name, fn = job
            t0 = time.time()
            r = subprocess.run([E, "--auto", "-s", f"--cpu-limit={a.timeout}", fn], capture_output=True, text=True)
            dt = time.time() - t0
            st = re.search(r"SZS status (\w+)", r.stdout)
            st = st.group(1) if st else "none"
            if st not in OK:   # second try: E's multi-core strategy schedule (some steps need it)
                r = subprocess.run([E, "--auto-schedule=4", "-s", f"--cpu-limit={a.timeout}", fn],
                                   capture_output=True, text=True)
                s2 = re.search(r"SZS status (\w+)", r.stdout)
                if s2 and s2.group(1) in OK:
                    st = s2.group(1)
            dt = time.time() - t0
            if st in OK or not V:
                return name, st, dt, None
            r = subprocess.run([V, "--mode", "casc", "-t", str(2 * a.timeout), fn], capture_output=True, text=True)
            v = re.search(r"SZS status (\w+)", r.stdout)
            return name, st, time.time() - t0, (v.group(1) if v else "none")

        with ThreadPoolExecutor(a.jobs) as ex:
            res = list(ex.map(run, jobs))
        failed = [(n, s, v) for n, s, _, v in res if s not in OK and (v is None or v not in OK)]
        by_vampire = [n for n, s, _, v in res if s not in OK and v in OK]
        last = steps[-1] if steps else None
        if not last or last[4] not in (("false",), [("false",)]):
            problems.append("last formula is not $false")
        contradictory = bool(has_conj and last and not deps.get(last[2]))
        times = sorted(r[2] for r in res)
        slow = max(res, key=lambda r: r[2]) if res else None
        print(f"{P}: {len(steps)} formulas, {len(jobs)} lemma steps, {ndefs} definitions; "
              f"proved by E: {len(jobs) - len(by_vampire) - len(failed)}, by Vampire: {len(by_vampire)}, "
              f"failed: {len(failed)}")
        if slow:
            print(f"slowest step: {slow[0]} ({slow[2]:.2f} s, all attempts); median {times[len(times) // 2]:.3f} s")
        for n, s, v in failed[:20]:
            print(f"FAIL step {n}: E {s}" + (f", Vampire {v}" if v else ""))
        for pr in problems[:20]:
            print("PROBLEM:", pr)
        verdict = "PROOF" if not failed and not problems else "FAIL"
        if verdict == "PROOF" and contradictory:
            verdict = "PROOF (the conjecture is not used: the axioms are contradictory)"
        print(f"{P}: {verdict}")
        sys.exit(0 if verdict.startswith("PROOF") else 1)
    finally:
        shutil.rmtree(W, ignore_errors=True)

if __name__ == "__main__":
    main()
