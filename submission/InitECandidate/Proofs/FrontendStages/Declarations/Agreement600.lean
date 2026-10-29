import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify600
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement584
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original600_eq : original600 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_op_create := by
  with_unfolding_all rfl
#print axioms original600_eq
end InitECandidate.Proofs.FrontendStages.Declarations
