import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify24
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original24_eq : original24 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_bswap64 := by
  with_unfolding_all rfl
#print axioms original24_eq
end InitECandidate.Proofs.FrontendStages.Declarations
