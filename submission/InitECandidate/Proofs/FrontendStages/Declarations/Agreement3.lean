import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify3
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original3_eq : original3 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestExn_TrapErr := by
  with_unfolding_all rfl
#print axioms original3_eq
end InitECandidate.Proofs.FrontendStages.Declarations
