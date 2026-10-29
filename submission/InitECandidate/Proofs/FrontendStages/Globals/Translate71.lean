import InitECandidate.Proofs.FrontendStages.Globals.Output71
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data71
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate55
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
theorem globalTranslate71_eq :
    InitECandidate.Proofs.GlobalsComputation.compiledFunction globalContext
      (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified71) =
        some globalOutput71 := by
  dsimp only [simplified71, globalOutput71]
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitECandidate.Proofs.GlobalsComputation.compiledFunction, InitECandidate.Proofs.GlobalsComputation.renameDeclaration, InitECandidate.Proofs.GlobalsKernelComputation.compileProg_function_eq, InitECandidate.Proofs.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal71 : InitECandidate.Proofs.GlobalsComputation.nonGlobal
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified71) := by trivial
theorem globalException71_eq : InitECandidate.Proofs.GlobalsComputation.exceptionDeclaration
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified71) = none := by rfl
#print axioms globalTranslate71_eq
end InitECandidate.Proofs.FrontendStages.Declarations
