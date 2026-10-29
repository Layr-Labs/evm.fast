import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify18
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement2
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original18_eq : original18 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_memzero := by
  with_unfolding_all rfl
#print axioms original18_eq
end InitECandidate.Proofs.FrontendStages.Declarations
