import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify415
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement399
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original415_eq : original415 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_add_storage_write := by
  with_unfolding_all rfl
#print axioms original415_eq
end InitECandidate.Proofs.FrontendStages.Declarations
