import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Output348
import InitECandidate.Proofs.FrontendStages.Declarations.Data348
import InitECandidate.Proofs.FrontendStages.Globals.Context
import InitECandidate.Proofs.FrontendStages.Globals.Translate332
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
theorem globalTranslate348_eq :
    InitECandidate.Proofs.GlobalsComputation.compiledFunction globalContext
      (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified348) =
        some globalOutput348 := by
  dsimp only [simplified348, globalOutput348]
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitECandidate.Proofs.GlobalsComputation.compiledFunction,
    InitECandidate.Proofs.GlobalsComputation.renameDeclaration,
    InitECandidate.Proofs.GlobalsKernelComputation.compileProg_function_eq,
    InitECandidate.Proofs.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal348 : InitECandidate.Proofs.GlobalsComputation.nonGlobal
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified348) := by trivial
theorem globalException348_eq : InitECandidate.Proofs.GlobalsComputation.exceptionDeclaration
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified348) = none := by rfl
#print axioms globalTranslate348_eq
end InitECandidate.Proofs.FrontendStages.Declarations
