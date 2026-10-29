import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify802
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement786
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original802_eq : original802 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_bls_lib_init := by
  with_unfolding_all rfl
#print axioms original802_eq
end InitECandidate.Proofs.FrontendStages.Declarations
