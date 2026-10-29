import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify387
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement371
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original387_eq : original387 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_is_account_alive := by
  with_unfolding_all rfl
#print axioms original387_eq
end InitECandidate.Proofs.FrontendStages.Declarations
