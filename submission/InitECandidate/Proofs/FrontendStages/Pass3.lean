import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Crep.FunctionsFacts
import InitECandidate.Proofs.FrontendStages.Crep.ContextFacts
import InitECandidate.Proofs.CrepInlineComputation

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages
open Flapjack Flapjack.Pancake.PanLang
open Declarations Crep

def pass3 : List (MlS × List Nat × CrepProgHOL 64) := outputs

private theorem inputFunctions_eq : inputFunctions = generatedMain :: translatedFunctions := by
  rfl

private theorem exceptions_compile_eq : exceptionDeclarations.filterMap
    (InitECandidate.Proofs.CrepComputation.compileDeclaration functionMap exceptionMap) = [] := by
  kernel_rfl

theorem toCrep_eq : compileToCrepExactHOLW pass2 = pass3 := by
  rw [InitECandidate.Proofs.CrepComputation.compileToCrep_eq_filterMap,
    functionMap_eq, exceptionMap_eq]
  unfold pass2
  rw [List.filterMap_append, exceptions_compile_eq, List.nil_append,
    ← inputFunctions_eq, Crep.compileFunctions_eq]
  rfl

theorem pass3_eq : compileProgDeclsHOLW pass2 = pass3 := by
  unfold compileProgDeclsHOLW
  rw [noInline_eq]
  simp only [functionsHOL, List.map_nil]
  rw [InitECandidate.Proofs.CrepComputation.compileInlTop_empty, toCrep_eq]

#print axioms toCrep_eq
#print axioms pass3_eq
end InitECandidate.Proofs.FrontendStages
