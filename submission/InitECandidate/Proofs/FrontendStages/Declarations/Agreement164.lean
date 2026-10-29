import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify164
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement148
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original164_eq : original164 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_fn_add := by
  with_unfolding_all rfl
#print axioms original164_eq
end InitECandidate.Proofs.FrontendStages.Declarations
