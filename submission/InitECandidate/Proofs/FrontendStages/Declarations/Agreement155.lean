import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify155
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement139
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original155_eq : original155 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_fp_sqr := by
  with_unfolding_all rfl
#print axioms original155_eq
end InitECandidate.Proofs.FrontendStages.Declarations
