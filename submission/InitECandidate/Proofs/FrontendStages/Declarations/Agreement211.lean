import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify211
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement195
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original211_eq : original211 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_htr_payload := by
  with_unfolding_all rfl
#print axioms original211_eq
end InitECandidate.Proofs.FrontendStages.Declarations
