import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Output914
import InitECandidate.Proofs.FrontendStages.Declarations.Data914
import InitECandidate.Proofs.FrontendStages.Globals.Context
import InitECandidate.Proofs.FrontendStages.Globals.Translate881
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
theorem globalTranslate914_eq :
    InitECandidate.Proofs.GlobalsComputation.compiledFunction globalContext
      (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified914) =
        some globalOutput914 := by
  dsimp only [simplified914, globalOutput914]
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitECandidate.Proofs.GlobalsComputation.compiledFunction,
    InitECandidate.Proofs.GlobalsComputation.renameDeclaration,
    InitECandidate.Proofs.GlobalsKernelComputation.compileProg_function_eq,
    InitECandidate.Proofs.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal914 : InitECandidate.Proofs.GlobalsComputation.nonGlobal
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified914) := by trivial
theorem globalException914_eq : InitECandidate.Proofs.GlobalsComputation.exceptionDeclaration
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified914) = none := by rfl
#print axioms globalTranslate914_eq
end InitECandidate.Proofs.FrontendStages.Declarations
