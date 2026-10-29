import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendCodecComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data610
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem simplify610_eq : InitECandidate.Proofs.FrontendComputation.simplifyDeclaration original610 = simplified610 := by
  change InitECandidate.Proofs.FrontendComputation.simplifyDeclaration (Pancake.PanLang.declToHOL originalData610) = Pancake.PanLang.declToHOL simplifiedData610
  simp only [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms simplify610_eq
end InitECandidate.Proofs.FrontendStages.Declarations
