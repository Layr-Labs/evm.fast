import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify721
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement705
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original721_eq : original721 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_bls_fp_encode64 := by
  with_unfolding_all rfl
#print axioms original721_eq
end InitECandidate.Proofs.FrontendStages.Declarations
