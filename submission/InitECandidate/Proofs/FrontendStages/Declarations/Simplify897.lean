import InitECandidate.Proofs.FrontendCodecComputation
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data897
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem simplify897_eq : InitECandidate.Proofs.FrontendComputation.simplifyDeclaration original897 = simplified897 := by
  change InitECandidate.Proofs.FrontendComputation.simplifyDeclaration (Flapjack.Pancake.PanLang.declToHOL originalData897) = Flapjack.Pancake.PanLang.declToHOL simplifiedData897
  simp only [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms simplify897_eq
end InitECandidate.Proofs.FrontendStages.Declarations
