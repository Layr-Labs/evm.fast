#!/usr/bin/env python3
"""Regenerate large Word optimizer passes in separate bounded processes."""

from pathlib import Path
import hashlib
import os
import re
import subprocess

root = Path(__file__).resolve().parent.parent
metrics_path = root / "work/lean-perf/word-stages/word-largest-current.log"
ast = (root / "Guest/SoftwareAst.lean").read_text()
function_count = len(re.findall(r"\bguestFn_\w+", ast[ast.index("def guestAst :"):])) + 1
env = os.environ.copy()
env["LAKE_ARTIFACT_CACHE"] = "false"
metrics_path.parent.mkdir(parents=True, exist_ok=True)
with metrics_path.open("w") as handle:
    result = subprocess.run(
        ["rtk", "lake", "exe", "gen-word-stages", str(function_count), "0", "--word-largest"],
        cwd=root, env=env, stdout=handle, stderr=subprocess.STDOUT,
    )
if result.returncode:
    raise SystemExit(f"Could not measure Word functions; see {metrics_path}")
metrics = metrics_path.read_text()
entries = [tuple(map(int, match)) for match in re.findall(r"label=(\d+) offset=(\d+) nodes=(\d+)", metrics)]
max_nodes = int(os.environ.get("WORD_MAX_NODES", "999999"))
skip_labels = {int(label) for label in os.environ.get("WORD_SKIP_LABELS", "").split(",") if label}
entries = sorted(
    ((label, offset, size) for label, offset, size in entries
     if 1000 <= size <= max_nodes and label not in skip_labels),
    key=lambda entry: (entry[2], entry[0]),
)
source_hash = hashlib.sha256((root / "Guest/guest-software.pp.pnk").read_bytes()).hexdigest()[:12]
logs = root / "work/lean-perf/word-stages/large-pass-generation" / source_hash
logs.mkdir(exist_ok=True)
for label, offset, size in entries:
    output = logs / f"{label}.log"
    if output.exists() and f"Pass proposal {label}/10:" in output.read_text():
        print(f"Already generated passes for {label} ({size} nodes)", flush=True)
        continue
    with output.open("w") as handle:
        result = subprocess.run(
            ["rtk", "lake", "exe", "gen-word-stages", "1", str(offset), "--passes", "--word-data-dag"],
            cwd=root,
            env=env,
            stdout=handle,
            stderr=subprocess.STDOUT,
        )
    if result.returncode:
        raise SystemExit(f"Pass generation failed for {label}; see {output}")
    print(f"Generated passes for {label} ({size} nodes)", flush=True)
