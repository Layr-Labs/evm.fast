import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify220
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement204
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original220_eq : original220 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_serialize_result := by
  with_unfolding_all rfl
#print axioms original220_eq
end InitECandidate.Proofs.FrontendStages.Declarations
