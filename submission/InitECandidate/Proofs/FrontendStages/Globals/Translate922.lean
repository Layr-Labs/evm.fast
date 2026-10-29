import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Output922
import InitECandidate.Proofs.FrontendStages.Declarations.Data922
import InitECandidate.Proofs.FrontendStages.Globals.Context
import InitECandidate.Proofs.FrontendStages.Globals.Translate906
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
theorem globalTranslate922_eq :
    InitECandidate.Proofs.GlobalsComputation.compiledFunction globalContext
      (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified922) =
        some globalOutput922 := by
  dsimp only [simplified922, globalOutput922]
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitECandidate.Proofs.GlobalsComputation.compiledFunction,
    InitECandidate.Proofs.GlobalsComputation.renameDeclaration,
    InitECandidate.Proofs.GlobalsKernelComputation.compileProg_function_eq,
    InitECandidate.Proofs.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal922 : InitECandidate.Proofs.GlobalsComputation.nonGlobal
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified922) := by trivial
theorem globalException922_eq : InitECandidate.Proofs.GlobalsComputation.exceptionDeclaration
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified922) = none := by rfl
#print axioms globalTranslate922_eq
end InitECandidate.Proofs.FrontendStages.Declarations
