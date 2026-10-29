import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify641
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement625
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original641_eq : original641 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_p256_ec_add_affine := by
  with_unfolding_all rfl
#print axioms original641_eq
end InitECandidate.Proofs.FrontendStages.Declarations
