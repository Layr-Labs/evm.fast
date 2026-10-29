import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify205
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement189
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original205_eq : original205 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_decode_payload := by
  with_unfolding_all rfl
#print axioms original205_eq
end InitECandidate.Proofs.FrontendStages.Declarations
