#!/usr/bin/env python3
"""Check supplied Word literals against individual exact Loop compiler outputs."""
from pathlib import Path
import re
root = Path(__file__).resolve().parent.parent
base = root / "submission/InitECandidate/Proofs/FrontendStages/Word"
base.mkdir(exist_ok=True)
header = """set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
"""
ast = (root / "Guest/SoftwareAst.lean").read_text()
function_count = len(re.findall(r"\bguestFn_\w+", ast[ast.index("def guestAst :"):])) + 1
for i in range(function_count):
    label = 64+i
    source = root / f"submission/InitECandidate/Proofs/WordStages/Source{label}.lean"
    assert source.exists()
    text = source.read_text()
    if i >= 16:
        lane = f"import InitECandidate.Proofs.WordStages.Source{label-16}\n"
        if lane not in text:
            source.write_text(lane+text)
    imports = f"import InitECandidate.Proofs.CompactComputation\nimport InitECandidate.Proofs.FrontendStages.Loop.Data{i}\nimport InitECandidate.Proofs.WordStages.Source{label}\nimport InitECandidate.Proofs.WordFrontendComputation\n"
    if i >= 16:
        imports += f"import InitECandidate.Proofs.FrontendStages.Word.Translate{i-16}\n"
    (base / f"Translate{i}.lean").write_text(imports + header +
        f"theorem translate{i}_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output{i} =\n" +
        f"    InitECandidate.Proofs.WordStages.source{label} := by\n" +
        "  kernel_rfl\n" +
        f"#print axioms translate{i}_eq\nend InitECandidate.Proofs.FrontendStages.Word\n")
imports = "import InitECandidate.Proofs.WordFrontendComputation\n" + "".join(
    f"import InitECandidate.Proofs.FrontendStages.Word.Translate{i}\n" for i in range(function_count - 16, function_count))
proof = "True.intro"
for i in reversed(range(function_count)):
    proof = f"⟨congrArg some translate{i}_eq, {proof}⟩"
(base / "FunctionsFacts.lean").write_text(imports + header +
    "def inputs : List (Nat × List Nat × Flapjack.HolLoopProg 64) := [" +
    ",\n  ".join(f"Loop.output{i}" for i in range(function_count)) + "]\n" +
    "def outputs : List (Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64)) := [" +
    ",\n  ".join(f"InitECandidate.Proofs.WordStages.source{i+64}" for i in range(function_count)) + "]\n" +
    "theorem compileFunctions_eq : inputs.map InitECandidate.Proofs.WordFrontendComputation.compileEntry = outputs := by\n" +
    "  apply InitECandidate.Proofs.LoopComputation.map_eq_checked\n" +
    "  simp only [inputs, outputs, InitECandidate.Proofs.CrepComputation.checkedOutputs]\n" +
    "  exact " + proof + "\n#print axioms compileFunctions_eq\nend InitECandidate.Proofs.FrontendStages.Word\n")
print(f"Composed {function_count} Loop-to-Word certificates in sixteen dependency lanes")
