import InitECandidate.Proofs.FrontendCodecComputation
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data917
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem simplify917_eq : InitECandidate.Proofs.FrontendComputation.simplifyDeclaration original917 = simplified917 := by
  change InitECandidate.Proofs.FrontendComputation.simplifyDeclaration (Flapjack.Pancake.PanLang.declToHOL originalData917) = Flapjack.Pancake.PanLang.declToHOL simplifiedData917
  simp only [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms simplify917_eq
end InitECandidate.Proofs.FrontendStages.Declarations
