import InitECandidate.Proofs.FrontendStages.Globals.Output601
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data601
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate585
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
theorem globalTranslate601_eq :
    InitECandidate.Proofs.GlobalsComputation.compiledFunction globalContext
      (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified601) =
        some globalOutput601 := by
  dsimp only [simplified601, globalOutput601]
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitECandidate.Proofs.GlobalsComputation.compiledFunction, InitECandidate.Proofs.GlobalsComputation.renameDeclaration, InitECandidate.Proofs.GlobalsKernelComputation.compileProg_function_eq, InitECandidate.Proofs.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal601 : InitECandidate.Proofs.GlobalsComputation.nonGlobal
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified601) := by trivial
theorem globalException601_eq : InitECandidate.Proofs.GlobalsComputation.exceptionDeclaration
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified601) = none := by rfl
#print axioms globalTranslate601_eq
end InitECandidate.Proofs.FrontendStages.Declarations
