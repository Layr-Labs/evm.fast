import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify720
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement704
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original720_eq : original720 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_bls_fp_decode64 := by
  with_unfolding_all rfl
#print axioms original720_eq
end InitECandidate.Proofs.FrontendStages.Declarations
