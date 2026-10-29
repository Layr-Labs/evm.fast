import InitECandidate.Proofs.FrontendStages.Globals.Output60
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data60
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate44
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
theorem globalTranslate60_eq :
    InitECandidate.Proofs.GlobalsComputation.compiledFunction globalContext
      (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified60) =
        some globalOutput60 := by
  dsimp only [simplified60, globalOutput60]
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitECandidate.Proofs.GlobalsComputation.compiledFunction, InitECandidate.Proofs.GlobalsComputation.renameDeclaration, InitECandidate.Proofs.GlobalsKernelComputation.compileProg_function_eq, InitECandidate.Proofs.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal60 : InitECandidate.Proofs.GlobalsComputation.nonGlobal
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified60) := by trivial
theorem globalException60_eq : InitECandidate.Proofs.GlobalsComputation.exceptionDeclaration
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified60) = none := by rfl
#print axioms globalTranslate60_eq
end InitECandidate.Proofs.FrontendStages.Declarations
