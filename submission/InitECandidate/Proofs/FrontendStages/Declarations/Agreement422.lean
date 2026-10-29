import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify422
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement406
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original422_eq : original422 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_get_pre_tx_storage := by
  with_unfolding_all rfl
#print axioms original422_eq
end InitECandidate.Proofs.FrontendStages.Declarations
