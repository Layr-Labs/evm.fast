import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original9_eq : original9 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_heap_mark := by
  with_unfolding_all rfl
#print axioms original9_eq
end InitECandidate.Proofs.FrontendStages.Declarations
