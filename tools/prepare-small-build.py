#!/usr/bin/env python3
"""Build compact certificates in deterministic Lake target waves, retaining traces.

At most --groups compact candidate graphs are active in one Lake invocation.
Each has eight independent proof leaves. Shared prerequisites must already be
built by the preceding compiler/source verification phases. No import gates or
trusted artifact shortcuts are introduced. Run the final root Lake build only
after every wave succeeds, so it finds all compact artifacts up to date.
"""
import argparse
from pathlib import Path
import subprocess
import time

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("labels", nargs="*", type=int)
parser.add_argument("--manifest", type=Path)
parser.add_argument("--groups", type=int, default=2, choices=range(1,5))
parser.add_argument("--cpus", default="0-3", help="Affinity; at most16 distinct CPUs (agent tests use0–3)")
parser.add_argument("--wave-seconds", type=int, default=300)
parser.add_argument("--list", action="store_true")
args = parser.parse_args()
root = Path(__file__).resolve().parents[1]
labels = args.labels
if args.manifest:
    labels += list(map(int,args.manifest.read_text().split()))
labels = sorted(set(labels))
if not labels:
    parser.error("Supply labels or a sorted label manifest")
cpus=set()
for piece in args.cpus.split(","):
    if "-" in piece:
        a,b=map(int,piece.split("-"));cpus.update(range(a,b+1))
    else:
        cpus.add(int(piece))
if not cpus or len(cpus)>16:
    parser.error("CPU affinity must contain1–16 distinct CPUs")
logs=root/"work/lean-perf/small-optimizer"
started=time.monotonic()
for offset in range(0,len(labels),args.groups):
    wave=labels[offset:offset+args.groups]
    modules=[f"InitECandidate.Proofs.SmallStages.Compact{label}.Exact" for label in wave]
    command=["rtk","proxy","/usr/bin/time","-v","timeout","--kill-after=5s",f"{args.wave_seconds}s","taskset","-c",args.cpus,"lake","build",*modules]
    if args.list:
        print(" ".join(command))
        continue
    name="bounded-wave-"+"-".join(map(str,wave))
    with (logs/f"{name}.log").open("w") as log, (logs/f"{name}.time").open("w") as timing:
        result=subprocess.run(command,cwd=root,stdout=log,stderr=timing)
    print(f"Wave{offset//args.groups+1}: {wave}; exit{result.returncode}; elapsed{time.monotonic()-started:.2f}s",flush=True)
    if result.returncode:
        raise SystemExit(result.returncode)
