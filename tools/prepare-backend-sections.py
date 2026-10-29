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
import time
parser = argparse.ArgumentParser()
parser.add_argument("labels", nargs="*", type=int)
parser.add_argument("--all", action="store_true")
parser.add_argument("--start-label", type=int, default=64)
parser.add_argument("--check", action="store_true")
parser.add_argument("--batch-size", type=int, default=16)
parser.add_argument("--workers", type=int, default=2)
args = parser.parse_args()
os.environ["LAKE_ARTIFACT_CACHE"] = "false"
root = pathlib.Path(__file__).resolve().parents[1]
work = root / "work/lean-perf/backend-stages"
labels = list(range(args.start_label,STOP_LABEL)) if args.all else args.labels
prefix = ["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py")]
def check(n):
    started = time.monotonic()
    source = root / f"submission/InitECandidate/Proofs/BackendStages/Section{n}.lean"
    output = root / f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Section{n}.olean"
    result = subprocess.run(["rtk","proxy","/usr/bin/time","-v","-o",str(work/f"Section{n}.timing.log")]+prefix[2:]+["-R","submission","-o",str(output),str(source)],cwd=root,text=True,capture_output=True)
    seconds = time.monotonic()-started
    (work/f"Section{n}.check.log").write_text(result.stdout+result.stderr)
    (work/f"Section{n}.check.json").write_text(json.dumps({"label":n,"returncode":result.returncode,"seconds":seconds}))
    print(f"RAW CHECK {n}: {result.returncode} {seconds:.2f}s",flush=True)
    return n,result.returncode
failures = []
for start in range(0,len(labels),args.batch_size):
    batch = labels[start:start+args.batch_size]
    for n in batch:
        source = root/f"submission/InitECandidate/Proofs/BackendStages/Named{n}.lean"
        output = root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Named{n}.olean"
        cert = work/f"Named{n}.check.json"
        baseline = root/"submission/InitECandidate/Proofs/BackendStages/RawInfoData.lean"
        while not (source.exists() and output.exists() and cert.exists() and
                   source.stat().st_mtime_ns >= baseline.stat().st_mtime_ns and
                   output.stat().st_mtime_ns >= source.stat().st_mtime_ns and
                   cert.stat().st_mtime_ns >= output.stat().st_mtime_ns and
                   json.loads(cert.read_text()).get("returncode")==0):
            time.sleep(1)
    runner = work/f"GenerateSection{batch[0]}_{batch[-1]}.lean"
    imports = "import Tools.GenBackendStages\n" + "".join(f"import InitECandidate.Proofs.BackendStages.Named{n}\n" for n in batch)
    calls = "".join(f"  liftM (InitE.BackendGenerator.generateSection env {n} InitECandidate.Proofs.BackendStages.Named{n})\n" for n in batch)
    runner.write_text(imports+"run_meta do\n  let env ← Lean.getEnv\n"+calls)
    result = subprocess.run(prefix+[str(runner)],cwd=root,text=True,capture_output=True)
    (work/f"GenerateSection{batch[0]}_{batch[-1]}.log").write_text(result.stdout+result.stderr)
    print(result.stdout+result.stderr,end="",flush=True)
    result.check_returncode()
    if args.check:
        with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
            failures.extend(n for n,status in pool.map(check,batch) if status)
    (work/"sections-progress.txt").write_text(f"Last label: {batch[-1]}\nFailures: {failures}\n")
print(f"Section failed checks: {failures}")
raise SystemExit(bool(failures))
