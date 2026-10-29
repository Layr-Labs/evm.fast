import Guest.Ast
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify920
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement904
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original920_eq : original920 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_attempt_l2 := by
  with_unfolding_all rfl
#print axioms original920_eq
end InitECandidate.Proofs.FrontendStages.Declarations
