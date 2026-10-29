import Guest.Ast
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify926
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement910
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original926_eq : original926 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_verify_stateless_new_payload := by
  with_unfolding_all rfl
#print axioms original926_eq
end InitECandidate.Proofs.FrontendStages.Declarations
