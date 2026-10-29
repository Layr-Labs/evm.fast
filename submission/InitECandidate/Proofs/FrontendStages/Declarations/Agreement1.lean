import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original1_eq : original1 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestGlobal_heap_ptr := by
  with_unfolding_all rfl
#print axioms original1_eq
end InitECandidate.Proofs.FrontendStages.Declarations
