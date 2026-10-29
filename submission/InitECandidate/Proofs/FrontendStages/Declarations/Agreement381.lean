import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify381
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement365
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original381_eq : original381 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_get_transient_storage := by
  with_unfolding_all rfl
#print axioms original381_eq
end InitECandidate.Proofs.FrontendStages.Declarations
