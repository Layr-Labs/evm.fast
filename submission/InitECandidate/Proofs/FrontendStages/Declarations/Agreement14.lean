import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify14
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original14_eq : original14 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_scratch_alloc := by
  with_unfolding_all rfl
#print axioms original14_eq
end InitECandidate.Proofs.FrontendStages.Declarations
