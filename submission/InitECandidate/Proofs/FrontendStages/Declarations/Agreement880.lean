import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify880
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement864
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original880_eq : original880 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_run_attempt := by
  with_unfolding_all rfl
#print axioms original880_eq
end InitECandidate.Proofs.FrontendStages.Declarations
