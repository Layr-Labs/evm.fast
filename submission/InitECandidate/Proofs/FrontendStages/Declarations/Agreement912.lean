import Guest.Ast
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify912
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement896
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original912_eq : original912 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_process_transaction := by
  with_unfolding_all rfl
#print axioms original912_eq
end InitECandidate.Proofs.FrontendStages.Declarations
