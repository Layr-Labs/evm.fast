import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify631
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement615
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original631_eq : original631 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_modexp := by
  with_unfolding_all rfl
#print axioms original631_eq
end InitECandidate.Proofs.FrontendStages.Declarations
