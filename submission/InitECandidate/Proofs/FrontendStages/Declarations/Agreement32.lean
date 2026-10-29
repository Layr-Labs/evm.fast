import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify32
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement16
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original32_eq : original32 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_min := by
  with_unfolding_all rfl
#print axioms original32_eq
end InitECandidate.Proofs.FrontendStages.Declarations
