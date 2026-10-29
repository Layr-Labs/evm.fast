import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify832
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement816
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original832_eq : original832 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_add_to_bloom := by
  with_unfolding_all rfl
#print axioms original832_eq
end InitECandidate.Proofs.FrontendStages.Declarations
