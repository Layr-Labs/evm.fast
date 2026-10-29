#!/usr/bin/env python3
"""Propose/check independent raw-call body literals using certified whole-stack metadata."""
from guest_layout import LAST_LABEL, STOP_LABEL
import argparse
import concurrent.futures
import pathlib
import subprocess
import time
import json
import os
parser = argparse.ArgumentParser()
parser.add_argument("labels", nargs="*", type=int)
parser.add_argument("--all", action="store_true")
parser.add_argument("--start-label", type=int, default=64)
parser.add_argument("--wait-functions", action="store_true")
parser.add_argument("--check", action="store_true")
parser.add_argument("--batch-size", type=int, default=16)
parser.add_argument("--workers", type=int, default=2)
args = parser.parse_args()
os.environ["LAKE_ARTIFACT_CACHE"] = "false"
root = pathlib.Path(__file__).resolve().parents[1]
work = root / "work/lean-perf/backend-stages"
labels = list(range(args.start_label,STOP_LABEL)) if args.all else args.labels
prefix = ["rtk","proxy","timeout","900","lake","env","lean"]
def check(n):
    started = time.monotonic()
    source = root / f"submission/InitECandidate/Proofs/BackendStages/Raw{n}.lean"
    output = root / f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Raw{n}.olean"
    result = subprocess.run(["rtk","proxy","/usr/bin/time","-v","-o",str(work/f"Raw{n}.timing.log")]+prefix[2:]+["-R","submission","-o",str(output),str(source)],cwd=root,text=True,capture_output=True)
    seconds = time.monotonic()-started
    (work/f"Raw{n}.check.log").write_text(result.stdout+result.stderr)
    (work/f"Raw{n}.check.json").write_text(json.dumps({"label":n,"returncode":result.returncode,"seconds":seconds}))
    print(f"RAW CHECK {n}: {result.returncode} {seconds:.2f}s",flush=True)
    return n,result.returncode
failures = []
for start in range(0,len(labels),args.batch_size):
    batch = labels[start:start+args.batch_size]
    if args.wait_functions:
        for n in batch:
            output = root / f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Function{n}.olean"
            while not output.exists():
                time.sleep(2)
    runner = work/f"GenerateRaw{batch[0]}_{batch[-1]}.lean"
    imports = "import Tools.GenBackendStages\nimport InitECandidate.Proofs.BackendStages.RawInfoData\n" + "".join(f"import InitECandidate.Proofs.BackendStages.Function{n}\n" for n in batch)
    calls = "".join(f"  liftM (InitE.BackendGenerator.generateRawFunction env {n} InitECandidate.Proofs.BackendStages.RawInfo.rawInfo (InitECandidate.Proofs.BackendStages.function{n} (.list [])).1)\n" for n in batch)
    runner.write_text(imports+"run_meta do\n  let env ← Lean.getEnv\n"+calls)
    result = subprocess.run(prefix+[str(runner)],cwd=root,text=True,capture_output=True)
    (work/f"GenerateRaw{batch[0]}_{batch[-1]}.log").write_text(result.stdout+result.stderr)
    print(result.stdout+result.stderr,end="",flush=True)
    result.check_returncode()
    if args.check:
        with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
            failures.extend(n for n,status in pool.map(check,batch) if status)
    (work/"raw-progress.txt").write_text(f"Last label: {batch[-1]}\nFailures: {failures}\n")
print(f"Raw failed checks: {failures}")
raise SystemExit(bool(failures))
