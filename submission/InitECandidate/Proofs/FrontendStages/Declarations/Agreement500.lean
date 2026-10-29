import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify500
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement484
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original500_eq : original500 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_op_sar := by
  with_unfolding_all rfl
#print axioms original500_eq
end InitECandidate.Proofs.FrontendStages.Declarations
