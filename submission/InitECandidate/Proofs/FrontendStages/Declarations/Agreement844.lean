import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify844
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement828
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original844_eq : original844 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_compute_state_root := by
  with_unfolding_all rfl
#print axioms original844_eq
end InitECandidate.Proofs.FrontendStages.Declarations
