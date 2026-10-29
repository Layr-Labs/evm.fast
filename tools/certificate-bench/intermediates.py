#!/usr/bin/env python3
"""Measure omission/grouping of intermediates on guest function 79 only."""
import argparse
from collections import Counter
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import time

ROOT = Path(__file__).resolve().parents[2]
NODE = re.compile(r"\b(?:word79_[345]_\d+|pass79_[345])\b")
HEADER = """import InitECandidate.Proofs.CompactComputation
import Flapjack.Compiler.Backend.WordCse.Transform
import Flapjack.Compiler.Backend.WordCopy
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
"""

def definitions():
    paths = ["submission/InitECandidate/Proofs/WordStages/Parallel79/Data3.lean", "submission/InitECandidate/Proofs/WordStages/Pass79_4.lean", "submission/InitECandidate/Proofs/WordStages/Pass79_5.lean"]
    ds = []
    hashes = {}
    for file in paths:
        text = (ROOT / file).read_text()
        hashes[file] = hashlib.sha256(text.encode()).hexdigest()
        ds += re.findall(r"^def ((?:word79_[345]_\d+|pass79_[345])) : WordLangProgHOL \(BitVec 64\) :=\n(.*?)(?=\n(?:def |theorem |end ))", text, re.M | re.S)
    assert len(ds) > 3000, "unexpected source organization"
    known = set()
    for name, body in ds:
        assert set(NODE.findall(body)) <= known, (name, "forward or unknown dependency")
        known.add(name)
    return ds, hashes

def group(ds, budget):
    uses = Counter(x for _, body in ds for x in NODE.findall(body))
    retained = []
    substitutions = {}
    for name, body in ds:
        body = NODE.sub(lambda m: substitutions.get(m.group(), m.group()), body)
        # Never duplicate a multi-use subterm. Also bound each substituted body.
        if budget and not name.startswith("pass") and uses[name] == 1 and len(body) <= budget:
            substitutions[name] = "(" + body.strip() + ")"
        else:
            retained.append((name, body))
    return retained

def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--work", type=Path, default=ROOT / "work/lean-perf/intermediate-pruning")
    ap.add_argument("--trials", type=int, default=3)
    ap.add_argument("--timeout", type=int, default=180)
    args = ap.parse_args()
    if args.trials < 1 or args.timeout < 1: ap.error("trials and timeout must be positive")
    os.chdir(ROOT)
    out = args.work.resolve()
    out.mkdir(parents=True, exist_ok=True)
    if any(out.iterdir()): ap.error("use an empty work directory")
    ds, hashes = definitions()
    configurations = {"DataNamed": 0, "Data512": 512, "Data2048": 2048, "Data8192": 8192}
    metadata = {"source_sha256": hashes, "configuration": vars(args) | {"work": str(out)}, "definitions": {}}
    for module, budget in configurations.items():
        grouped = group(ds, budget)
        text = HEADER + f"namespace {module}\n" + "\n".join(f"noncomputable def {n} : WordLangProgHOL (BitVec 64) :=\n{b}\n" for n, b in grouped) + f"end {module}\n"
        (out / (module + ".lean")).write_text(text)
        metadata["definitions"][module] = dict(count=len(grouped), source_bytes=len(text.encode()), largest_body_chars=max(len(b) for _, b in grouped))
        # This agreement test is not used by exported pass certificates.
        if budget:
            (out / (module + "Agreement.lean")).write_text(f"import DataNamed\nimport {module}\n" + HEADER + "\n".join(f"theorem same{k} : {module}.pass79_{k} = DataNamed.pass79_{k} := by kernel_rfl\n#print axioms same{k}" for k in [3,4,5]) + "\n")
    cases = ["Staged", "FusedNamed", "Fused512", "Fused2048", "Fused8192"]
    for case in cases:
        module = "DataNamed" if case in ["Staged", "FusedNamed"] else case.replace("Fused", "Data")
        text = f"import {module}\n" + HEADER + f"open {module}\n"
        if case == "Staged":
            text += "theorem cse_eq : WordCse.wordCommonSubexpElim pass79_3 = pass79_4 := by kernel_rfl\ntheorem copy_eq : WordCopy.copyProp pass79_4 = pass79_5 := by kernel_rfl\ntheorem certificate : WordCopy.copyProp (WordCse.wordCommonSubexpElim pass79_3) = pass79_5 := by rw [cse_eq]; exact copy_eq\n"
        else:
            text += "theorem certificate : WordCopy.copyProp (WordCse.wordCommonSubexpElim pass79_3) = pass79_5 := by kernel_rfl\n"
        text += "#print axioms certificate\n"
        (out / (case + ".lean")).write_text(text)
    (out / "metadata.json").write_text(json.dumps(metadata, indent=2) + "\n")
    base = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], text=True).strip()
    lean = subprocess.check_output(["lake", "env", "which", "lean"], text=True).strip()
    export_root = ROOT / "verifier/.tools/comparator/.lake/packages/lean4export/.lake/build"
    env = os.environ.copy()
    env["LEAN_PATH"] = str(out) + ":" + str(export_root / "lib/lean") + ":" + base
    rows = []
    def run(case, trial, command, artifact=None):
        stem = f"{case}-{trial}"
        tf = out / (stem + ".time")
        start = time.monotonic()
        with (out / (stem + ".log")).open("w") as log:
            r = subprocess.run(["/usr/bin/time", "-v", "-o", str(tf), "timeout", str(args.timeout), *command], env=env, stdout=log, stderr=subprocess.STDOUT)
        timing = tf.read_text()
        def value(key):
            m = re.search(re.escape(key) + r":\s*([0-9.]+)", timing)
            return float(m.group(1)) if m else None
        text = (out / (stem + ".log")).read_text()
        row = dict(case=case, trial=trial, exit=r.returncode, wall=time.monotonic()-start, user=value("User time (seconds)"), system=value("System time (seconds)"), peak_kib=value("Maximum resident set size (kbytes)"), log=text)
        if artifact: row["artifact_bytes"] = artifact.stat().st_size if artifact.exists() else None
        rows.append(row)
        (out / "results.json").write_text(json.dumps(rows, indent=2) + "\n")
        print(json.dumps(row), flush=True)
        if r.returncode: raise RuntimeError(f"failed {stem}: see log")
        for closure in re.findall(r"depends on axioms: \[([^\]]*)\]", text):
            assert {a.strip() for a in closure.split(",") if a.strip()} <= {"propext", "Classical.choice", "Quot.sound"}
    def build(case, trial="setup"):
        artifact = out / (case + ".olean")
        run(case, trial, [lean, "-j1", "-o", str(artifact), str(out / (case + ".lean"))], artifact)
    for module in configurations:
        build(module)
        if module != "DataNamed": build(module + "Agreement")
    for trial in range(args.trials):
        for case in cases if trial % 2 == 0 else cases[::-1]: build(case, trial)
    for case in cases:
        file = out / (case + ".export.jsonl")
        with file.open("wb") as dst, (out / (case + ".export.log")).open("wb") as err:
            subprocess.run(["timeout", str(args.timeout), str(export_root / "bin/lean4export"), case, "--", "certificate"], env=env, stdout=dst, stderr=err, check=True)
        for trial in range(args.trials):
            run(case + "Replay", trial, [lean, "-j1", "--run", str(Path(__file__).with_name("Replay.lean")), str(file)], file)

if __name__ == "__main__":
    main()
