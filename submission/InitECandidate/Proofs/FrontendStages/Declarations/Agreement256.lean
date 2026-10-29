import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify256
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement240
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original256_eq : original256 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_node_new_hashed := by
  with_unfolding_all rfl
#print axioms original256_eq
end InitECandidate.Proofs.FrontendStages.Declarations
