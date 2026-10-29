import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.CrepKernelComputation
import InitECandidate.Proofs.FrontendCodecComputation
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.MainData
import InitECandidate.Proofs.FrontendStages.Crep.Data0
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
theorem translate0_eq :
    InitECandidate.Proofs.CrepComputation.compileDeclaration functionMap exceptionMap
      InitECandidate.Proofs.FrontendStages.generatedMain = some output0 := by
  rw [InitECandidate.Proofs.CrepKernelComputation.compileDeclaration_eq]
  dsimp only [output0]
  rw [InitECandidate.Proofs.CrepKernelComputation.crepProgToHOL_function_eq]
  dsimp only [InitECandidate.Proofs.FrontendStages.generatedMain]
  rw [InitECandidate.Proofs.FrontendStages.Declarations.globalInitializers_structural_eq]
  dsimp only [functionMap, functionSkeleton, exceptionMap, exceptionSkeleton]
  rw [InitECandidate.Proofs.FrontendCodecComputation.shapeToHOL_function_eq]
  kernel_rfl
#print axioms translate0_eq
end InitECandidate.Proofs.FrontendStages.Crep
