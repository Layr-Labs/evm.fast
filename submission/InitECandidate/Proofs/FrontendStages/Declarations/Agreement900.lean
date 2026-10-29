import Guest.Ast
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify900
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement884
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original900_eq : original900 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fork_init := by
  with_unfolding_all rfl
#print axioms original900_eq
end InitECandidate.Proofs.FrontendStages.Declarations
