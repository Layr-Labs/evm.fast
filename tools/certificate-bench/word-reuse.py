#!/usr/bin/env python3
"""Benchmark actual shared guest optimizer certificates against a git baseline.

Builds only ten relevant modules into separate before/after directories, exports
both paired obligations, and alternates independent standard-kernel replays.
Requires already built common dependencies and the existing lean4export tool.
"""
import argparse
import json
import os
from pathlib import Path
import re
import subprocess
import time

ROOT = Path(__file__).resolve().parents[2]
PAIRS = [(225, 649), (226, 650)]

def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--base-revision", required=True)
    ap.add_argument("--work", type=Path, required=True)
    ap.add_argument("--trials", type=int, default=2)
    args = ap.parse_args()
    if args.trials < 1:
        ap.error("--trials must be positive")
    os.chdir(ROOT)
    out = args.work.resolve()
    out.mkdir(parents=True, exist_ok=True)
    if any(out.iterdir()):
        ap.error("use an empty work directory")
    base_path = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], text=True).strip()
    lean = subprocess.check_output(["lake", "env", "which", "lean"], text=True).strip()
    exporter = ROOT / "verifier/.tools/comparator/.lake/packages/lean4export/.lake/build"
    rows = []
    def run(case, phase, command, env, output):
        stem = f"{case}-{phase}-{len(rows)}"
        started = time.monotonic()
        with output.open("wb") as log, (out / (stem + ".err")).open("wb") as err:
            result = subprocess.run(["/usr/bin/time", "-v", "-o", str(out / (stem + ".time")),
                                     "timeout", "180", *command], env=env, stdout=log, stderr=err)
        timing = (out / (stem + ".time")).read_text()
        row = dict(case=case, phase=phase, exit=result.returncode, wall=time.monotonic()-started)
        for field, label in [("user", "User time (seconds)"), ("system", "System time (seconds)"),
                             ("peak_kib", "Maximum resident set size (kbytes)")]:
            match = re.search(re.escape(label) + r":\s*([0-9.]+)", timing)
            row[field] = float(match[1]) if match else None
        if phase == "build":
            closures = re.findall(r"depends on axioms: \[([^\]]*)\]", output.read_text())
            allowed = {"propext", "Classical.choice", "Quot.sound"}
            for closure in closures:
                if {name.strip() for name in closure.split(",") if name.strip()} - allowed:
                    raise RuntimeError(f"Nonstandard axiom closure in {output}: {closure}")
        if phase == "replay":
            match = re.search(r"parse_ms=(\d+), replay_ms=(\d+), constants=(\d+)", output.read_text())
            if match:
                row.update(parse_ms=int(match[1]), replay_ms=int(match[2]), constants=int(match[3]))
        if phase == "export":
            row["export_bytes"] = output.stat().st_size
        rows.append(row)
        (out / "results.json").write_text(json.dumps(rows, indent=2) + "\n")
        print(json.dumps(row), flush=True)
        if result.returncode:
            raise RuntimeError(f"{case} {phase} failed: {output}")
    environments = {}
    for mode in ["before", "after"]:
        directory = out / mode
        directory.mkdir()
        env = os.environ.copy()
        env["LEAN_PATH"] = str(directory) + ":" + str(exporter / "lib/lean") + ":" + base_path
        environments[mode] = env
        modules = [] if mode == "before" else ["submission/InitECandidate/Proofs/WordStages/OracleReuse"]
        for first, shared in PAIRS:
            modules += [f"submission/InitECandidate/Proofs/SmallStages/Compact{shared}/Pass10", f"submission/InitECandidate/Proofs/SmallStages/Compact{shared}/Complete",
                        f"submission/InitECandidate/Proofs/SmallStages/Compact{shared}/Exact", f"submission/InitECandidate/Proofs/WordStages/Optimize{shared}",
                        f"submission/InitECandidate/Proofs/WordStages/Optimize{first}"]
        for module in modules:
            file = module + ".lean"
            text = subprocess.check_output(["git", "show", args.base_revision + ":" + file], text=True) if mode == "before" else (ROOT / file).read_text()
            source = directory / file
            source.parent.mkdir(parents=True, exist_ok=True)
            source.write_text(text)
            run(mode + ":" + module, "build", [lean, "-j1", "-o", str(source.with_suffix(".olean")), str(source)], env,
                out / (mode + "-" + module.replace("/", "-") + ".build.log"))
        for first, shared in PAIRS:
            case = f"Pair{first}"
            template = (ROOT / f"submission/InitECandidate/Proofs/WordStages/Optimize{first}.lean").read_text()
            goal = template.split(f"theorem optimize{first}_eq :", 1)[1].split(" := by", 1)[0]
            other = goal.replace(f"source{first}", f"source{shared}").replace(f"oracle{first}", f"oracle{shared}").replace(f"optimized{first}", f"optimized{shared}")
            source = directory / (case + ".lean")
            source.write_text(f"import InitECandidate.Proofs.WordStages.Optimize{first}\nimport InitECandidate.Proofs.WordStages.Optimize{shared}\n"
                "set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n"
                "open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target InitECandidate.Proofs.WordStages\n"
                f"theorem certificate : ({goal}) ∧ ({other}) := ⟨optimize{first}_eq, optimize{shared}_eq⟩\n#print axioms certificate\n")
            run(mode + case, "build", [lean, "-j1", "-o", str(source.with_suffix(".olean")), str(source)], env, directory / (case + ".build.log"))
            run(mode + case, "export", [str(exporter / "bin/lean4export"), case, "--", "certificate"], env, directory / (case + ".export.jsonl"))
    for trial in range(args.trials):
        modes = ["before", "after"] if trial % 2 == 0 else ["after", "before"]
        for first, _ in PAIRS:
            for mode in modes:
                case = f"Pair{first}"
                run(mode + case, "replay", [lean, "-j1", "--run", "tools/certificate-bench/Replay.lean",
                    str(out / mode / (case + ".export.jsonl"))], environments[mode], out / f"{mode}-{case}-trial{trial}.replay.log")

if __name__ == "__main__":
    main()
