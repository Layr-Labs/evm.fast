#!/usr/bin/env python3
"""Replace eager native equality proofs with kernel definitional equality; recheck every edit."""
import concurrent.futures
import json
import pathlib
import subprocess
import time
root = pathlib.Path(__file__).resolve().parents[1]
work = root / "work/lean-perf/backend-stages"
def check(label):
    source = root / f"submission/InitECandidate/Proofs/BackendStages/Function{label}.lean"
    old = source.read_text()
    new = old.replace("  conv => lhs; cbv\n  try rfl", "  with_unfolding_all rfl")
    if old == new:
        return label, 0
    log = work / f"Function{label}.check.log"
    if log.exists():
        (work / f"Function{label}.eager.check.log").write_text(log.read_text())
    source.write_text(new)
    output = root / f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Function{label}.olean"
    started = time.monotonic()
    result = subprocess.run(["rtk", "proxy", "taskset", "-c", "8-11", "timeout", "180", "lake", "env", "lean", "-R", "submission", "-o", str(output), str(source)], cwd=root, text=True, capture_output=True)
    seconds = time.monotonic() - started
    log.write_text(result.stdout + result.stderr)
    (work / f"Function{label}.lazy.check.json").write_text(json.dumps({"label":label,"returncode":result.returncode,"seconds":seconds}))
    print(f"LAZY {label}: {result.returncode} {seconds:.2f}s", flush=True)
    return label, result.returncode
with concurrent.futures.ThreadPoolExecutor(max_workers=2) as pool:
    failures = [n for n, status in pool.map(check, range(64,288)) if status]
print(f"Lazy failures: {failures}")
raise SystemExit(bool(failures))
