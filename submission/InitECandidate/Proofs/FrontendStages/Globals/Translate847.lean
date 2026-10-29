import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Output847
import InitECandidate.Proofs.FrontendStages.Declarations.Data847
import InitECandidate.Proofs.FrontendStages.Globals.Context
import InitECandidate.Proofs.FrontendStages.Globals.Translate831
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
theorem globalTranslate847_eq :
    InitECandidate.Proofs.GlobalsComputation.compiledFunction globalContext
      (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified847) =
        some globalOutput847 := by
  dsimp only [simplified847, globalOutput847]
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitECandidate.Proofs.GlobalsComputation.compiledFunction,
    InitECandidate.Proofs.GlobalsComputation.renameDeclaration,
    InitECandidate.Proofs.GlobalsKernelComputation.compileProg_function_eq,
    InitECandidate.Proofs.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal847 : InitECandidate.Proofs.GlobalsComputation.nonGlobal
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified847) := by trivial
theorem globalException847_eq : InitECandidate.Proofs.GlobalsComputation.exceptionDeclaration
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified847) = none := by rfl
#print axioms globalTranslate847_eq
end InitECandidate.Proofs.FrontendStages.Declarations
