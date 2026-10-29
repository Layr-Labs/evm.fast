import InitECandidate.Proofs.FrontendStages.Globals.Output862
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data862
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate830
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
theorem globalTranslate862_eq :
    InitECandidate.Proofs.GlobalsComputation.compiledFunction globalContext
      (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified862) =
        some globalOutput862 := by
  dsimp only [simplified862, globalOutput862]
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitECandidate.Proofs.GlobalsComputation.compiledFunction, InitECandidate.Proofs.GlobalsComputation.renameDeclaration, InitECandidate.Proofs.GlobalsKernelComputation.compileProg_function_eq, InitECandidate.Proofs.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal862 : InitECandidate.Proofs.GlobalsComputation.nonGlobal
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified862) := by trivial
theorem globalException862_eq : InitECandidate.Proofs.GlobalsComputation.exceptionDeclaration
    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified862) = none := by rfl
#print axioms globalTranslate862_eq
end InitECandidate.Proofs.FrontendStages.Declarations
