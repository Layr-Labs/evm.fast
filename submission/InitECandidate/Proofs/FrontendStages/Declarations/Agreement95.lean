import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify95
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement79
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original95_eq : original95 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_sha256_finish := by
  with_unfolding_all rfl
#print axioms original95_eq
end InitECandidate.Proofs.FrontendStages.Declarations
