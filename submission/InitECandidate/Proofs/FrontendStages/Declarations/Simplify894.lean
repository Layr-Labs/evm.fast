import InitECandidate.Proofs.FrontendCodecComputation
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data894
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem simplify894_eq : InitECandidate.Proofs.FrontendComputation.simplifyDeclaration original894 = simplified894 := by
  change InitECandidate.Proofs.FrontendComputation.simplifyDeclaration (Flapjack.Pancake.PanLang.declToHOL originalData894) = Flapjack.Pancake.PanLang.declToHOL simplifiedData894
  simp only [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms simplify894_eq
end InitECandidate.Proofs.FrontendStages.Declarations
