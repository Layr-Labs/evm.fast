import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify840
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement824
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original840_eq : original840 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_encode_execution_requests := by
  with_unfolding_all rfl
#print axioms original840_eq
end InitECandidate.Proofs.FrontendStages.Declarations
