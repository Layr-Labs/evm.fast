import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify700
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement684
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original700_eq : original700 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_bls_fp_lt_raw := by
  with_unfolding_all rfl
#print axioms original700_eq
end InitECandidate.Proofs.FrontendStages.Declarations
