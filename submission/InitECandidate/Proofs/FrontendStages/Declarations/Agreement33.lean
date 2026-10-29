import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify33
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement17
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original33_eq : original33 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_max := by
  with_unfolding_all rfl
#print axioms original33_eq
end InitECandidate.Proofs.FrontendStages.Declarations
