import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify206
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement190
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original206_eq : original206 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_decode_requests := by
  with_unfolding_all rfl
#print axioms original206_eq
end InitECandidate.Proofs.FrontendStages.Declarations
