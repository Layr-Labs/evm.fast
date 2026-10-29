import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Output848
import InitECandidate.Proofs.FrontendStages.Declarations.Data848
import InitECandidate.Proofs.FrontendStages.Globals.Context
import InitECandidate.Proofs.FrontendStages.Globals.Translate832
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
theorem globalTranslate848_eq :
    InitECandidate.Proofs.GlobalsComputation.compiledFunction globalContext
      (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified848) =
        some globalOutput848 := by
  dsimp only [simplified848, globalOutput848]
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitECandidate.Proofs.GlobalsComputation.compiledFunction,
    InitECandidate.Proofs.GlobalsComputation.renameDeclaration,
    InitECandidate.Proofs.GlobalsKernelComputation.compileProg_function_eq,
    InitECandidate.Proofs.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal848 : InitECandidate.Proofs.GlobalsComputation.nonGlobal
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified848) := by trivial
theorem globalException848_eq : InitECandidate.Proofs.GlobalsComputation.exceptionDeclaration
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified848) = none := by rfl
#print axioms globalTranslate848_eq
end InitECandidate.Proofs.FrontendStages.Declarations
