#!/usr/bin/env python3
"""Compose independently kernel-checked Crep-to-Loop function certificates."""
from pathlib import Path
import re
root = Path(__file__).resolve().parent.parent
ast = (root / "Guest/SoftwareAst.lean").read_text()
function_count = len(re.findall(r"\bguestFn_\w+", ast[ast.index("def guestAst :"):])) + 1
base = root / "submission/InitECandidate/Proofs/FrontendStages/Loop"
files = sorted(base.glob("Translate*.lean"), key=lambda p: int(p.stem[9:]))
assert len(files) == function_count, f"Generate all {function_count} Loop outputs first"
for i, path in enumerate(files):
    assert path.stem == f"Translate{i}"
    data = base / f"Data{i}.lean"
    text = data.read_text()
    if i >= 16:
        lane = f"import InitECandidate.Proofs.FrontendStages.Loop.Translate{i-16}\n"
        if lane not in text:
            data.write_text(lane + text)
imports = "import InitECandidate.Proofs.LoopComputation\n" + "".join(
    f"import InitECandidate.Proofs.FrontendStages.Loop.Translate{i}\n" for i in range(len(files)-16, len(files)))
proof = "True.intro"
for i in reversed(range(len(files))):
    proof = f"⟨congrArg some translate{i}_eq, {proof}⟩"
header = """set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Loop
open Flapjack
"""
(base / "FunctionsFacts.lean").write_text(imports + header +
    "def inputs : List (Nat × Basis.Pure.MlString.MlString × List Nat × CrepProgHOL 64) := [" +
    ",\n  ".join(f"({64+i}, Crep.output{i})" for i in range(len(files))) + "]\n" +
    "def outputs : List (Nat × List Nat × HolLoopProg 64) := [" +
    ",\n  ".join(f"output{i}" for i in range(len(files))) + "]\n" +
    "theorem compileFunctions_eq : inputs.map\n" +
    "    (InitECandidate.Proofs.LoopComputation.compileEntry Compiler.Encoders.RiscV.Target.riscvConfig.isa functionMap) = outputs := by\n" +
    "  apply InitECandidate.Proofs.LoopComputation.map_eq_checked\n" +
    "  simp only [inputs, outputs, InitECandidate.Proofs.CrepComputation.checkedOutputs]\n" +
    "  exact " + proof + "\n#print axioms compileFunctions_eq\nend InitECandidate.Proofs.FrontendStages.Loop\n")
print(f"Composed {len(files)} Loop certificates in sixteen dependency lanes")

pass4 = root / "submission/InitECandidate/Proofs/FrontendStages/Pass4.lean"
source = pass4.read_text()
begin = source.index("private def functionLabels :")
end = source.index("private theorem inputs_eq :")
labels = ", ".join(str(64 + i) for i in range(len(files)))
replacement = (
    f"private def functionLabels : List Nat := [{labels}]\n\n"
    f"private theorem functionLabels_eq : (List.range {len(files)}).map (fun n => n + firstLoopName) =\n"
    "    functionLabels := by\n  kernel_rfl\n\n"
    f"private theorem functionCount_eq : pass3.length = {len(files)} := by rfl\n\n"
)
pass4.write_text(source[:begin] + replacement + source[end:])
