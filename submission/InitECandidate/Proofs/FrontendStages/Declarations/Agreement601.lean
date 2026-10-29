import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify601
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement585
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original601_eq : original601 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_op_create2 := by
  with_unfolding_all rfl
#print axioms original601_eq
end InitECandidate.Proofs.FrontendStages.Declarations
