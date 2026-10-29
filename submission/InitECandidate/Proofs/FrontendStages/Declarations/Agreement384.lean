import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify384
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement368
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original384_eq : original384 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_account_deployable := by
  with_unfolding_all rfl
#print axioms original384_eq
end InitECandidate.Proofs.FrontendStages.Declarations
