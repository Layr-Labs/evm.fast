import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify166
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement150
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original166_eq : original166 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_fn_inv_fermat := by
  with_unfolding_all rfl
#print axioms original166_eq
end InitECandidate.Proofs.FrontendStages.Declarations
