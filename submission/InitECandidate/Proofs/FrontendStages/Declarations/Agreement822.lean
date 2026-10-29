import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify822
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement806
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original822_eq : original822 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_pre_kzg_point_evaluation := by
  with_unfolding_all rfl
#print axioms original822_eq
end InitECandidate.Proofs.FrontendStages.Declarations
