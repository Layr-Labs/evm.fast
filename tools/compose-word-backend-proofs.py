#!/usr/bin/env python3
"""Compose the per-function Word optimizer certificates into the exact backend pass.

Adds sixteen proof dependency lanes for small functions; the independently
staged large functions retain their existing dependencies. Native proposals
are accepted only through the imported kernel-checked equations.
"""
from pathlib import Path
import re
root = Path(__file__).resolve().parent.parent
ast = (root / "Guest/SoftwareAst.lean").read_text()
function_count = len(re.findall(r"\bguestFn_\w+", ast[ast.index("def guestAst :"):])) + 1
last_label = 64 + function_count
large = {
    label for label in range(64, last_label)
    if f"import InitECandidate.Proofs.WordStages.Pass{label}_10\n" in
    (root / f"submission/InitECandidate/Proofs/WordStages/Optimize{label}.lean").read_text()
}
for label in range(80, last_label):
    if label in large:
        continue
    path = root / f"submission/InitECandidate/Proofs/WordStages/Optimize{label}.lean"
    text = path.read_text()
    lane = f"import InitECandidate.Proofs.WordStages.Optimize{label-16}\n"
    if lane not in text:
        path.write_text(lane + text)
base = root / "submission/InitECandidate/Proofs/WordBackend"
base.mkdir(exist_ok=True)
imports = "import InitECandidate.Proofs.WordBackendComputation\nimport InitECandidate.Proofs.LoopComputation\nimport InitECandidate.Proofs.FrontendStages.Word.FunctionsFacts\n"
imports += "".join(f"import InitECandidate.Proofs.WordStages.Optimize{label}\n" for label in range(64,last_label))
header = """set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordBackend
"""
parameters = "RegAlloc.regAllocExecutable riscvConfig.twoRegArith (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg riscvConfig"
proof = "True.intro"
for label in reversed(range(64,last_label)):
    proof = f"⟨congrArg some InitECandidate.Proofs.WordStages.optimize{label}_eq, {proof}⟩"
text = imports + header
text += "def inputs : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := InitECandidate.Proofs.FrontendStages.Word.outputs\n"
text += "def oracles : List (Option (Spt Nat)) := [" + ",\n  ".join(f"InitECandidate.Proofs.WordStages.oracle{label}" for label in range(64,last_label)) + "]\n"
text += "def pairedInputs : List ((Nat × Nat × WordLangProgHOL (BitVec 64)) × Option (Spt Nat)) := [" + ",\n  ".join(f"(InitECandidate.Proofs.WordStages.source{label}, InitECandidate.Proofs.WordStages.oracle{label})" for label in range(64,last_label)) + "]\n"
text += "def outputs : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := [" + ",\n  ".join(f"InitECandidate.Proofs.WordStages.optimized{label}" for label in range(64,last_label)) + "]\n"
text += "def config : WordToWord.Config := { RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf with colOracle := oracles }\n"
text += "theorem inputs_oracles_length : inputs.length = oracles.length := by\n  simp only [inputs, InitECandidate.Proofs.FrontendStages.Word.outputs, oracles, List.length_cons, List.length_nil]\n"
text += "theorem zipInputs_eq : inputs.zip oracles = pairedInputs := by rfl\n"
text += f"theorem compileFunctions_eq : pairedInputs.map (WordToWord.fullCompileSingleWith {parameters}) = outputs := by\n"
text += "  apply InitECandidate.Proofs.LoopComputation.map_eq_checked\n  simp only [pairedInputs, outputs, InitECandidate.Proofs.CrepComputation.checkedOutputs]\n  exact " + proof + "\n"
text += "theorem compileWith_eq : WordToWord.compileWith RegAlloc.regAllocExecutable config riscvConfig inputs = ([], outputs) := by\n"
text += "  apply InitECandidate.Proofs.WordBackendComputation.compileWith_eq_of_parts _ _ _ _ _ oracles []\n"
text += "  · change WordToWord.nextNOracle inputs.length oracles = (oracles, [])\n    rw [inputs_oracles_length]\n    exact InitECandidate.Proofs.WordBackendComputation.nextNOracle_self oracles\n"
text += "  · change (inputs.zip oracles).map (WordToWord.fullCompileSingleWith " + parameters + ") = outputs\n    rw [zipInputs_eq]\n    exact compileFunctions_eq\n"
text += "#print axioms compileFunctions_eq\n#print axioms compileWith_eq\nend InitECandidate.Proofs.WordBackend\n"
(base / "FunctionsFacts.lean").write_text(text)
print(f"Composed {function_count} Word optimizer certificates and structural oracle consumption")
