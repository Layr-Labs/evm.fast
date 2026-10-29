#!/usr/bin/env python3
"""Compose proposed per-function global-lowering certificates in Lean."""
from pathlib import Path
import re
root = Path(__file__).resolve().parent.parent
ast = (root / "Guest/SoftwareAst.lean").read_text()
names = re.findall(r"\bguest(?:Global|Exn|Fn)_\w+", ast[ast.index("def guestAst :"):])
names = [names[-1], *names[:-1]]
indices = [i for i, n in enumerate(names) if n.startswith("guestFn_")]
global_indices = [i for i, n in enumerate(names) if n.startswith("guestGlobal_")]
global_names = [f"simplified{i}" for i in global_indices]
data_names = [f"simplifiedData{i}" for i in global_indices]
header_path = root / "submission/InitECandidate/Proofs/FrontendStages/Globals/HeaderFacts.lean"
header_text = header_path.read_text()
header_text = re.sub(
    r"(private def headerSourceData : List \(Flapjack.Decl \(BitVec 64\)\) :=\n  )\[[^\]]*\]",
    lambda match: match.group(1) + "[" + ", ".join(f"simplifiedData{i}" for i in range(len(names))) + "]",
    header_text,
    count=1,
)
header_text = re.sub(r"(theorem globalSize_eq : .*\.sum = )\d+", rf"\g<1>{len(global_indices)}", header_text)
header_path.write_text(header_text)
kernel = """import InitECandidate.Proofs.GlobalsKernelComputation
import InitECandidate.Proofs.FrontendStages.Globals.InitializersData
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack Flapjack.Pancake.PanLang
"""
kernel += "def globalDeclarationData : List (Decl (BitVec 64)) := [" + ", ".join(data_names) + "]\n"
kernel += "def globalDeclarationsStructural : List (DeclHOL 64) := globalDeclarationData.map InitECandidate.Proofs.FrontendCodecComputation.declToHOLStructural\n"
kernel += "theorem globalDeclarations_structural_eq : globalDeclarations = globalDeclarationsStructural := by\n"
kernel += "  simp only [globalDeclarations, globalDeclarationsStructural, globalDeclarationData, " + ", ".join(global_names + ["List.map_cons", "List.map_nil", "InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq"]) + "]\n"
kernel += """
def globalCompilationStructural := InitECandidate.Proofs.GlobalsKernelComputation.compileDecsExactHOL globalInitial globalDeclarationsStructural
theorem globalContext_structural_eq : globalContext = globalCompilationStructural.2.2.2 := by
  unfold globalContext globalCompilationStructural
  rw [InitECandidate.Proofs.GlobalsKernelComputation.compileDecs_function_eq, globalDeclarations_structural_eq]
theorem globalInitializers_structural_eq : globalInitializers = globalCompilationStructural.1 := by
  unfold globalInitializers globalCompilationStructural
  rw [InitECandidate.Proofs.GlobalsKernelComputation.compileDecs_function_eq, globalDeclarations_structural_eq]
#print axioms globalContext_structural_eq
#print axioms globalInitializers_structural_eq
end InitECandidate.Proofs.FrontendStages.Declarations
"""
(root / "submission/InitECandidate/Proofs/FrontendStages/Globals/KernelContext.lean").write_text(kernel)
imports = "".join(f"import InitECandidate.Proofs.FrontendStages.Globals.Translate{i}\n" for i in indices[-16:])
s = imports + """
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
"""
s += "def functionDeclarations : List (Pancake.PanLang.DeclHOL 64) := [" + ", ".join(f"simplified{i}" for i in indices) + "]\n"
s += "def renamedFunctionDeclarations := functionDeclarations.map (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart)\n"
s += "def translatedFunctions : List (Pancake.PanLang.DeclHOL 64) := [" + ", ".join(f"globalOutput{i}" for i in indices) + "]\n"
s += "theorem renamedFunctions_nonGlobal : ∀ d ∈ renamedFunctionDeclarations, InitECandidate.Proofs.GlobalsComputation.nonGlobal d := by\n"
s += "  simp (config := { maxSteps := 1000000 }) only [renamedFunctionDeclarations, functionDeclarations, List.map_cons, List.map_nil, List.forall_mem_cons]\n"
proof = "(by simp)"
for i in reversed(indices):
    proof = f"⟨globalNonGlobal{i}, {proof}⟩"
s += "  exact " + proof + "\n"
s += "theorem compileFunctionDeclarations_eq : compileDecsExactHOL globalContext renamedFunctionDeclarations = ([], translatedFunctions, [], globalContext) := by\n"
s += "  rw [InitECandidate.Proofs.GlobalsComputation.compileNonGlobals_eq globalContext renamedFunctionDeclarations renamedFunctions_nonGlobal]\n"
rules = ["renamedFunctionDeclarations", "functionDeclarations", "translatedFunctions", "List.map_cons", "List.map_nil", "List.filterMap_cons", "List.filterMap_nil"]
rules += [f"globalTranslate{i}_eq" for i in indices]
rules += [f"globalException{i}_eq" for i in indices]
s += "  simp (config := { maxSteps := 1000000 }) only [" + ", ".join(rules) + "]\n"
s += "#print axioms compileFunctionDeclarations_eq\nend InitECandidate.Proofs.FrontendStages.Declarations\n"
(root / "submission/InitECandidate/Proofs/FrontendStages/Globals/FunctionsFacts.lean").write_text(s)
print(f"Composed {len(indices)} function certificates")

exns = [i for i, n in enumerate(names) if n.startswith("guestExn_")]
initializers_path = root / "submission/InitECandidate/Proofs/FrontendStages/Globals/Initializers.lean"
initializers_text = initializers_path.read_text()
exception_rules = [rule for i in exns for rule in (f"simplified{i}", f"simplifiedData{i}")]
for theorem, operation in (("compileExceptions_eq", "compileDecsExactHOL"),
                           ("renameExceptions_eq", "fpermDecsHOL")):
    start = initializers_text.index("theorem " + theorem)
    before, body = initializers_text[:start], initializers_text[start:]
    body = re.sub(
        rf"  simp only \[exceptionDeclarations,.*?declToHOL, {operation}\]",
        "  simp only [exceptionDeclarations, " + ", ".join(exception_rules) +
        f", declToHOL, {operation}]",
        body,
        count=1,
        flags=re.S,
    )
    initializers_text = before + body
initializers_path.write_text(initializers_text)
metadata = "import InitECandidate.Proofs.FrontendStages.Pass1\nimport InitECandidate.Proofs.FrontendStages.Globals.FunctionsFacts\n"
metadata += "set_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n"
metadata += "namespace InitECandidate.Proofs.FrontendStages.Declarations\nopen Flapjack Flapjack.Pancake.PanLang\n"
metadata += "def exceptionDeclarations : List (DeclHOL 64) := [" + ", ".join(f"simplified{i}" for i in exns) + "]\n"
metadata += "theorem sourceResort_eq : resortDeclsHOL simplifieds = exceptionDeclarations ++ globalDeclarations ++ functionDeclarations := by\n"
rules = ["resortDeclsHOL", "simplifieds", "exceptionDeclarations", "globalDeclarations", "functionDeclarations", "List.filter_cons", "List.filter_nil", "Bool.false_eq_true", "ite_true", "ite_false", "List.nil_append", "List.cons_append", "isNameHOL", "isExnDeclHOL", "isDeclHOL", "isFunctionHOL", "declToHOL", "funDeclToHOL"]
rules += [f"simplified{i}" for i in range(len(names))]
rules += [f"simplifiedData{i}" for i in range(len(names))]
metadata += "  simp (config := { maxSteps := 1000000 }) only [" + ", ".join(rules) + "]\n"
metadata += "#print axioms sourceResort_eq\nend InitECandidate.Proofs.FrontendStages.Declarations\n"
(root / "submission/InitECandidate/Proofs/FrontendStages/Globals/Metadata.lean").write_text(metadata)
