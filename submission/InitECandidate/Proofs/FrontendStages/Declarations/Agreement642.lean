import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify642
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement626
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original642_eq : original642 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_p256_ec_mul2 := by
  with_unfolding_all rfl
#print axioms original642_eq
end InitECandidate.Proofs.FrontendStages.Declarations
