#!/usr/bin/env python3
"""Prepare independently checked dead-code certificates and their literal bridge.

Native generation supplies candidates. These scripts only propose equations;
Lake checks every node, agreement, and closed root theorem afterward.
"""
from pathlib import Path
import re
import subprocess

root = Path(__file__).resolve().parent.parent
log = root / "work/lean-perf/word-stages/optimizer-large-dead-checkpoints-generation.log"
entries = re.findall(r"Dead checkpoints (\d+): (\d+); root (\d+)", log.read_text())
for label_text, count, root_text in entries:
    label, node = int(label_text), int(root_text)
    assert label not in (64, 240, 713)
    commands = [
        ["tools/split-dead-checkpoints.py", str(label)],
        ["tools/split-checkpoint-agreements.py", str(label), "--parallel-cache"],
    ]
    if not (root / f"submission/InitECandidate/Proofs/WordStages/Parallel{label}/Data3.lean").exists():
        commands.insert(0, ["tools/split-word-stage-proofs.py", str(label), "--independent-data"])
    for command in commands:
        subprocess.run(["rtk", "proxy", "python3", *command], cwd=root, check=True)
    agreements = root / f"submission/InitECandidate/Proofs/WordStages/Parallel{label}/AgreementsParallel"
    last = sorted(agreements.glob("Chunk*.lean"))[-1]
    text = last.read_text()
    match = re.search(
        rf"theorem input{node}_eq : .*?=\s*InitECandidate.Proofs.WordStages.Parallel{label}\.(word\d+_2_\d+)",
        text, re.S)
    assert match, (label, node)
    word_input = match[1]
    (root / f"submission/InitECandidate/Proofs/WordStages/Pass{label}_3.lean").write_text(f"""import InitECandidate.Proofs.WordStages.Pass{label}_2
import InitECandidate.Proofs.WordStages.Parallel{label}.Data3
import InitECandidate.Proofs.WordStages.Parallel{label}.AgreementsParallel.{last.stem}
import InitECandidate.Proofs.DeadStages{label}.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass{label}_3 : WordLangProgHOL (BitVec 64) := Parallel{label}.pass{label}_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass{label}_3_eq : WordAlloc.removeDeadProg pass{label}_2 = pass{label}_3 := by
  have input_eq : pass{label}_2 = InitECandidate.Proofs.DeadStages{label}.Parallel.input{node} :=
    (show pass{label}_2 = Parallel{label}.{word_input} by with_unfolding_all rfl).trans
      Parallel{label}.AgreementsParallel.input{node}_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages{label}.Parallel.node{node}_eq
  simp only [InitECandidate.Proofs.DeadStages{label}.Parallel.value0, InitECandidate.Proofs.DeadStages{label}.Parallel.value1,
    InitECandidate.Proofs.DeadStages{label}.Parallel.value2] at checked
  rw [checked]
  exact Parallel{label}.AgreementsParallel.output{node}_eq.trans (by rfl)

#print axioms pass{label}_3_eq
end InitECandidate.Proofs.WordStages
""")
    print(f"Prepared {label}: {count} checkpoints and a closed pass bridge", flush=True)
