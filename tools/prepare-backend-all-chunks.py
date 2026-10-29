#!/usr/bin/env python3
"""Check native16-function chunks as their per-function certificate logs become available."""
import pathlib
import argparse
import json
import re
import subprocess
import time
root = pathlib.Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser()
parser.add_argument("--start-label", type=int, default=64)
args = parser.parse_args()
if (args.start_label - 64) % 16:
    parser.error("--start-label must start a 16-function chunk")
work = root / "work/lean-perf/backend-stages"
ast = (root / "Guest/SoftwareAst.lean").read_text()
function_count = len(re.findall(r"\bguestFn_\w+", ast[ast.index("def guestAst :"):])) + 1
last_label = 63 + function_count
for first in range(args.start_label, last_label + 1, 16):
    last = min(first + 15, last_label)
    while True:
        checks = [(root / f"submission/InitECandidate/Proofs/BackendStages/Function{n}.lean",
                   root / f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Function{n}.olean",
                   work / f"Function{n}.check.json",
                   work / f"Function{n}.check.log") for n in range(first, last + 1)]
        if all(source.exists() and output.exists() and cert.exists() and log.exists() and
               output.stat().st_mtime_ns >= source.stat().st_mtime_ns and
               cert.stat().st_mtime_ns >= output.stat().st_mtime_ns
               for source, output, cert, log in checks):
            failures = [log for _, _, cert, log in checks
                        if json.loads(cert.read_text()).get("returncode") != 0 or
                        "sorryAx" in log.read_text() or "error:" in log.read_text() or
                        "depends on axioms" not in log.read_text()]
            if failures:
                raise SystemExit(f"Function check failed: {failures}")
            break
        time.sleep(5)
    result = subprocess.run(["rtk", "proxy", "python3", "tools/prepare-backend-chunks.py", str(first), str(last)], cwd=root)
    if result.returncode:
        raise SystemExit(result.returncode)
    print(f"CHUNK {first}..{last}: checked", flush=True)
