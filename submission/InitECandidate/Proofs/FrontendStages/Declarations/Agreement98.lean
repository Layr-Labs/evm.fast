import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify98
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement82
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original98_eq : original98 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestGlobal_keccak_rc := by
  with_unfolding_all rfl
#print axioms original98_eq
end InitECandidate.Proofs.FrontendStages.Declarations
