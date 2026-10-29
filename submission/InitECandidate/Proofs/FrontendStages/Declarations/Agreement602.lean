import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify602
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement586
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original602_eq : original602 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_generic_call := by
  with_unfolding_all rfl
#print axioms original602_eq
end InitECandidate.Proofs.FrontendStages.Declarations
