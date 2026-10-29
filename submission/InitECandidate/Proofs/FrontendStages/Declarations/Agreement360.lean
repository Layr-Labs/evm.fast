import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify360
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement344
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original360_eq : original360 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_state_restore := by
  with_unfolding_all rfl
#print axioms original360_eq
end InitECandidate.Proofs.FrontendStages.Declarations
