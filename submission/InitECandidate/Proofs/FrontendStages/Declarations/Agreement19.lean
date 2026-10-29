import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify19
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement3
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original19_eq : original19 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_memeq := by
  with_unfolding_all rfl
#print axioms original19_eq
end InitECandidate.Proofs.FrontendStages.Declarations
