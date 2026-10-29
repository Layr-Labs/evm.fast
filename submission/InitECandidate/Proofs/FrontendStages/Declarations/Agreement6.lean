import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify6
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original6_eq : original6 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestGlobal_frame_mem_ptr := by
  with_unfolding_all rfl
#print axioms original6_eq
end InitECandidate.Proofs.FrontendStages.Declarations
