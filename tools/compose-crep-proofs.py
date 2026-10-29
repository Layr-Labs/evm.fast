#!/usr/bin/env python3
"""Compose kernel certificates proposed by GenWordStages --frontend-crep."""
from pathlib import Path
import re
root = Path(__file__).resolve().parent.parent
base = root / "submission/InitECandidate/Proofs/FrontendStages/Crep"
files = sorted(base.glob("Translate*.lean"), key=lambda p: int(p.stem[9:]))
inputs = []
for i, path in enumerate(files):
    assert path.stem == f"Translate{i}"
    source = re.search(r"      (InitECandidate\.Proofs\.FrontendStages\.[\w.]+) = some output", path.read_text()).group(1)
    inputs.append(source)
    data = base / f"Data{i}.lean"
    text = data.read_text()
    if i >= 16:
        lane = f"import InitECandidate.Proofs.FrontendStages.Crep.Translate{i-16}\n"
        if lane not in text:
            data.write_text(lane + text)
header = """set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Crep
open Flapjack Flapjack.Pancake.PanLang
"""
imports = "import InitECandidate.Proofs.CrepComposition\n" + "".join(
    f"import InitECandidate.Proofs.FrontendStages.Crep.Translate{i}\n" for i in range(len(files)-16, len(files)))
proof = "True.intro"
for i in reversed(range(len(files))):
    proof = f"⟨translate{i}_eq, {proof}⟩"
(base / "FunctionsFacts.lean").write_text(imports + header +
    "def inputFunctions : List (DeclHOL 64) := [" + ",\n  ".join(inputs) + "]\n" +
    "def outputs : List (MlS × List Nat × CrepProgHOL 64) := [" + ",\n  ".join(f"output{i}" for i in range(len(files))) + "]\n" +
    "theorem compileFunctions_eq : inputFunctions.filterMap\n" +
    "    (InitECandidate.Proofs.CrepComputation.compileDeclaration functionMap exceptionMap) = outputs := by\n" +
    "  apply InitECandidate.Proofs.CrepComputation.filterMap_eq_checked\n" +
    "  simp only [inputFunctions, outputs, InitECandidate.Proofs.CrepComputation.checkedOutputs]\n" +
    "  exact " + proof + "\n#print axioms compileFunctions_eq\nend InitECandidate.Proofs.FrontendStages.Crep\n")
print(f"Composed {len(files)} Crep certificates in sixteen dependency lanes")
