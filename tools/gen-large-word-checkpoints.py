#!/usr/bin/env python3
"""Generate local compiler certificates for measured large Word functions.
Native execution only proposes literals and proofs. Lake kernel-checks them later.
"""
from pathlib import Path
import os, re, subprocess
root = Path(__file__).resolve().parent.parent
logs = root / "work/lean-perf/word-stages"
metrics = (logs / "word-largest.log").read_text()
entries = [tuple(map(int, m)) for m in re.findall(r"label=(\d+) offset=(\d+) nodes=(\d+)", metrics)]
env = os.environ.copy()
env["LAKE_ARTIFACT_CACHE"] = "false"
for label, index, size in entries:
    if size < 1000 or index in (176,649):
        continue
    for mode in ("--frontend-word-context", "--loop-word-checkpoints"):
        suffix = "context" if mode == "--frontend-word-context" else "checkpoints"
        log = logs / f"frontend-word{index}-{suffix}-generation.log"
        args = ["rtk", "proxy", "timeout", "--kill-after=10s", "120s", "lake", "env", "lean", "--run",
                "Tools/GenWordStages.lean", "1", str(index), "384", mode]
        if mode == "--loop-word-checkpoints":
            args.append("--write-word-source")
        with log.open("w") as output:
            result = subprocess.run(args, cwd=root, env=env, stdout=output, stderr=subprocess.STDOUT)
        if result.returncode:
            raise SystemExit(f"Proposal generation failed for {index}: see {log}")
    (root / f"submission/InitECandidate/Proofs/FrontendStages/Word/Translate{index}.lean").write_text(f"""import InitECandidate.Proofs.FrontendStages.Word.Checkpoints{index}
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
open Flapjack

theorem translate{index}_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output{index} =
    InitECandidate.Proofs.WordStages.source{label} := by
  unfold InitECandidate.Proofs.WordFrontendComputation.compileEntry
  have name_eq : Loop.output{index}.1 = {label} := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context{index}_eq, Checkpoints{index}.compiledBody_eq]
  rfl
#print axioms translate{index}_eq
end InitECandidate.Proofs.FrontendStages.Word
""")
    print(f"Proposed checkpoints for index {index}, label {label}, {size} Word nodes", flush=True)
