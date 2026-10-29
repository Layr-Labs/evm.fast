import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify820
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement804
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original820_eq : original820 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_pre_bls_map_fp_to_g1 := by
  with_unfolding_all rfl
#print axioms original820_eq
end InitECandidate.Proofs.FrontendStages.Declarations
