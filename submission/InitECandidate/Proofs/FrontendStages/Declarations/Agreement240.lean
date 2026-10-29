import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify240
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement224
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original240_eq : original240 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_validate_header := by
  with_unfolding_all rfl
#print axioms original240_eq
end InitECandidate.Proofs.FrontendStages.Declarations
