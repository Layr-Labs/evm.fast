import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify31
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement15
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original31_eq : original31 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_output_write := by
  with_unfolding_all rfl
#print axioms original31_eq
end InitECandidate.Proofs.FrontendStages.Declarations
