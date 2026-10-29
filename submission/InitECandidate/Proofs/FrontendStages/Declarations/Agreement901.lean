import Guest.Ast
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify901
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement885
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original901_eq : original901 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_block_rlp_length := by
  with_unfolding_all rfl
#print axioms original901_eq
end InitECandidate.Proofs.FrontendStages.Declarations
