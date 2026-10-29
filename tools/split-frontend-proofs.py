#!/usr/bin/env python3
"""Connect generated declaration stages to the authoritative AST.

Run after GenWordStages with --frontend-declarations --data-dag. All proposed
agreements and simplifications remain kernel-checked Lean theorems.
"""
from pathlib import Path
import re

root = Path(__file__).resolve().parent.parent
ast = (root / "Guest/SoftwareAst.lean").read_text()
names = re.findall(r"\bguest(?:Global|Exn|Fn)_\w+", ast[ast.index("def guestAst :"):])
names = [names[-1], *names[:-1]]
base = root / "submission/InitECandidate/Proofs/FrontendStages/Declarations"
header = """set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
"""
for i, name in enumerate(names):
    imports = f"import Guest.SoftwareAst\nimport InitECandidate.Proofs.FrontendStages.Declarations.Simplify{i}\n"
    if i >= 16:
        imports += f"import InitECandidate.Proofs.FrontendStages.Declarations.Agreement{i-16}\n"
    (base / f"Agreement{i}.lean").write_text(imports + header +
        f"theorem original{i}_eq : original{i} = Flapjack.Pancake.PanLang.declToHOL Guest.Software.{name} := by\n"
        "  with_unfolding_all rfl\n" +
        f"#print axioms original{i}_eq\nend InitECandidate.Proofs.FrontendStages.Declarations\n")
imports = "".join(f"import InitECandidate.Proofs.FrontendStages.Declarations.Agreement{i}\n"
                  for i in range(max(0, len(names)-16), len(names)))
source = "import InitE.SourceDeclarationsCore\n" + imports + header
source += "def originals : List (Flapjack.Pancake.PanLang.DeclHOL 64) :=\n  [" + ",\n   ".join(f"original{i}" for i in range(len(names))) + "]\n"
source += "def simplifieds : List (Flapjack.Pancake.PanLang.DeclHOL 64) :=\n  [" + ",\n   ".join(f"simplified{i}" for i in range(len(names))) + "]\n"
source += "theorem sourceDeclarations_eq : InitE.sourceDeclarations = originals := by\n  simp only [originals, " + ", ".join(f"original{i}_eq" for i in range(len(names))) + "]\n  with_unfolding_all rfl\n"
source += "theorem panSimpSource_eq : Flapjack.panSimpDeclsHOL InitE.sourceDeclarations = simplifieds := by\n  rw [InitECandidate.Proofs.FrontendComputation.panSimpDecls_eq_map, sourceDeclarations_eq]\n  simp only [originals, List.map_cons, List.map_nil, " + ", ".join(f"simplify{i}_eq" for i in range(len(names))) + ", simplifieds]\n"
source += "#print axioms sourceDeclarations_eq\n#print axioms panSimpSource_eq\nend InitECandidate.Proofs.FrontendStages.Declarations\n"
(root / "submission/InitECandidate/Proofs/FrontendStages/SourceAgreement.lean").write_text(source)
print(f"Generated {len(names)} AST agreements in sixteen dependency lanes")

for i in range(len(names)):
    imports = f"import InitECandidate.Proofs.FrontendCodecComputation\nimport InitECandidate.Proofs.StructKernelComputation\nimport InitECandidate.Proofs.FrontendStages.Declarations.Data{i}\nimport InitECandidate.Proofs.StructComputation\n"
    if i >= 16:
        imports += f"import InitECandidate.Proofs.FrontendStages.Declarations.Struct{i-16}\n"
    (base / f"Struct{i}.lean").write_text(imports +
        "" + header +
        f"theorem struct{i}_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :\n"
        f"    InitECandidate.Proofs.StructComputation.compileDeclaration context finalContext simplified{i} = some simplified{i} := by\n"
        "  apply InitECandidate.Proofs.StructKernelComputation.declaration_identity\n" +
        f"  change InitECandidate.Proofs.StructKernelComputation.declarationFree (Flapjack.Pancake.PanLang.declToHOL simplifiedData{i}) = true\n" +
        "  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_eq]\n  kernel_rfl\n" +
        f"#print axioms struct{i}_eq\nend InitECandidate.Proofs.FrontendStages.Declarations\n")
imports = "import InitECandidate.Proofs.FrontendStages.SourceAgreement\n" + "".join(
    f"import InitECandidate.Proofs.FrontendStages.Declarations.Struct{i}\n"
    for i in range(max(0, len(names)-16), len(names)))
proof = "(by simp)"
for i in reversed(range(len(names))):
    proof = f"⟨struct{i}_eq, {proof}⟩"
(root / "submission/InitECandidate/Proofs/FrontendStages/StructFacts.lean").write_text(imports + header +
    "theorem structSource_eq : Flapjack.Pancake.PanStructs.CompileShapeExact.compileTopExact simplifieds = simplifieds := by\n"
    "  apply InitECandidate.Proofs.StructComputation.compileTop_identity\n"
    "  simp (config := { maxSteps := 1000000 }) only [simplifieds, List.forall_mem_cons]\n" +
    "  exact " + proof + "\n#print axioms structSource_eq\nend InitECandidate.Proofs.FrontendStages.Declarations\n")
