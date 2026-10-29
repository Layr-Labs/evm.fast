import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify150
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement134
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original150_eq : original150 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_fp_add := by
  with_unfolding_all rfl
#print axioms original150_eq
end InitECandidate.Proofs.FrontendStages.Declarations
