import Guest.Ast
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify910
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement894
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original910_eq : original910 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_process_checked_system_transaction := by
  with_unfolding_all rfl
#print axioms original910_eq
end InitECandidate.Proofs.FrontendStages.Declarations
