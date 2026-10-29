import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify101
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement85
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original101_eq : original101 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_keccak_init := by
  with_unfolding_all rfl
#print axioms original101_eq
end InitECandidate.Proofs.FrontendStages.Declarations
