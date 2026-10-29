import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify821
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement805
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original821_eq : original821 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_pre_bls_map_fp2_to_g2 := by
  with_unfolding_all rfl
#print axioms original821_eq
end InitECandidate.Proofs.FrontendStages.Declarations
