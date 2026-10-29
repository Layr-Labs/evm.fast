import InitECandidate.Proofs.FrontendCodecComputation
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data896
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem simplify896_eq : InitECandidate.Proofs.FrontendComputation.simplifyDeclaration original896 = simplified896 := by
  change InitECandidate.Proofs.FrontendComputation.simplifyDeclaration (Flapjack.Pancake.PanLang.declToHOL originalData896) = Flapjack.Pancake.PanLang.declToHOL simplifiedData896
  simp only [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms simplify896_eq
end InitECandidate.Proofs.FrontendStages.Declarations
