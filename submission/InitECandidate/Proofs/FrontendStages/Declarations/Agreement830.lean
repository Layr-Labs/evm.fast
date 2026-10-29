import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify830
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement814
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original830_eq : original830 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_pre_modexp := by
  with_unfolding_all rfl
#print axioms original830_eq
end InitECandidate.Proofs.FrontendStages.Declarations
