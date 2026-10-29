#!/usr/bin/env python3
"""Check proposed small optimizer pass equations, up to four workers on CPU 0-3."""
import argparse
import concurrent.futures
from pathlib import Path
import subprocess

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("label", type=int)
parser.add_argument("--seconds", type=int, default=120)
args = parser.parse_args()
root = Path(__file__).resolve().parents[1]
logs = root / "work/lean-perf/small-optimizer"
output = root / f".lake/build/lib/lean/InitECandidate/Proofs/SmallStages/KernelPass{args.label}"
output.mkdir(parents=True, exist_ok=True)

def check(index):
    name = f"kernel-pass{args.label}-{index}"
    with (logs / f"{name}.log").open("w") as log, (logs / f"{name}.time").open("w") as timing:
        command = ["rtk", "proxy", "/usr/bin/time", "-v", "timeout", "--kill-after=5s",
            f"{args.seconds}s", "taskset", "-c", "0-3", "lake", "env", "lean", "-R", "submission", "-o",
            str(output / f"Pass{index}.olean"),
            f"submission/InitECandidate/Proofs/SmallStages/KernelPass{args.label}/Pass{index}.lean"]
        result = subprocess.run(command, cwd=root, stdout=log, stderr=timing)
    print(f"Pass {index}: exit {result.returncode}", flush=True)
    return result.returncode

with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
    results = list(pool.map(check, range(11)))
raise SystemExit(0 if all(result == 0 for result in results) else 1)
