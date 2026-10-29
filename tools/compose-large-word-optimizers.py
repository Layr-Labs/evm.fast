#!/usr/bin/env python3
"""Compose regenerated large Word pass certificates into optimizer results."""

from pathlib import Path
import hashlib
import re
import sys

root = Path(__file__).resolve().parent.parent
base = root / "submission/InitECandidate/Proofs/WordStages"
labels = [int(value) for value in sys.argv[1:]]
if not labels:
    source_hash = hashlib.sha256((root / "Guest/guest-software.pp.pnk").read_bytes()).hexdigest()[:12]
    logs = root / "work/lean-perf/word-stages/large-pass-generation" / source_hash
    labels = sorted(
        int(path.stem) for path in logs.glob("*.log")
        if f"Pass proposal {path.stem}/10:" in path.read_text()
    )
if not labels:
    raise SystemExit("No completed large Word pass generations found")

for label in labels:
    source = (base / f"Source{label}.lean").read_text()
    match = re.search(rf"def source{label}\s*:[^=]*:=\s*\({label},\s*(\d+),", source)
    if match is None:
        raise RuntimeError(f"Could not find argument count for function {label}")
    argc = int(match.group(1))
    passes = ", ".join(f"pass{label}_{index}_eq" for index in range(11))
    (base / f"Optimize{label}.lean").write_text(f"""import InitECandidate.Proofs.WordStages.Source{label}
import InitECandidate.Proofs.WordStages.Pass{label}_10
import InitECandidate.Proofs.CompilerStages
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def oracle{label} : Option (Spt Nat) := proposed{label}
def optimized{label} : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  ({label}, {argc}, pass{label}_10)
theorem optimize{label}_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source{label}, oracle{label}) = optimized{label} := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source{label}.1 = {label} := by rfl
  have argc_eq : source{label}.2.1 = {argc} := by rfl
  have oracle_eq : oracle{label} = proposed{label} := by kernel_rfl
  rw [name_eq, argc_eq, oracle_eq, {passes}]
  kernel_rfl
#print axioms optimize{label}_eq
end InitECandidate.Proofs.WordStages
""")
    print(f"Composed optimizer {label}")
