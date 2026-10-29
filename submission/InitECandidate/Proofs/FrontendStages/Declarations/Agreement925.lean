import Guest.Ast
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify925
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement909
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original925_eq : original925 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_attempt_l7 := by
  with_unfolding_all rfl
#print axioms original925_eq
end InitECandidate.Proofs.FrontendStages.Declarations
