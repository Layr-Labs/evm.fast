import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify104
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement88
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original104_eq : original104 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_keccak256 := by
  with_unfolding_all rfl
#print axioms original104_eq
end InitECandidate.Proofs.FrontendStages.Declarations
