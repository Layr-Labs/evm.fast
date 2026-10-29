import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify15
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original15_eq : original15 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_scratch_mark := by
  with_unfolding_all rfl
#print axioms original15_eq
end InitECandidate.Proofs.FrontendStages.Declarations
