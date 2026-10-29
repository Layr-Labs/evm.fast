import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify172
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement156
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original172_eq : original172 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_ec_add_affine := by
  with_unfolding_all rfl
#print axioms original172_eq
end InitECandidate.Proofs.FrontendStages.Declarations
