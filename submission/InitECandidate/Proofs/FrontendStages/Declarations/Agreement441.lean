import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify441
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement425
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original441_eq : original441 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_sat_word := by
  with_unfolding_all rfl
#print axioms original441_eq
end InitECandidate.Proofs.FrontendStages.Declarations
