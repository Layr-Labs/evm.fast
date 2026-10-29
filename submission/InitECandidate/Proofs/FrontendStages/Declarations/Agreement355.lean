import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify355
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement339
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original355_eq : original355 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_state_init := by
  with_unfolding_all rfl
#print axioms original355_eq
end InitECandidate.Proofs.FrontendStages.Declarations
