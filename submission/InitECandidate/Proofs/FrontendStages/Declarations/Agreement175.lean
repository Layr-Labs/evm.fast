import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify175
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement159
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original175_eq : original175 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_ec_mul2 := by
  with_unfolding_all rfl
#print axioms original175_eq
end InitECandidate.Proofs.FrontendStages.Declarations
