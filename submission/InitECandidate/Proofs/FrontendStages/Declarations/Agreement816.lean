import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify816
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement800
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original816_eq : original816 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_pre_bls_g1_msm := by
  with_unfolding_all rfl
#print axioms original816_eq
end InitECandidate.Proofs.FrontendStages.Declarations
