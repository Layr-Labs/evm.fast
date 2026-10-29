import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify502
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement486
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original502_eq : original502 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_op_keccak := by
  with_unfolding_all rfl
#print axioms original502_eq
end InitECandidate.Proofs.FrontendStages.Declarations
