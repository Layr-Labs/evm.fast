import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify686
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement670
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original686_eq : original686 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_bn254_pairing := by
  with_unfolding_all rfl
#print axioms original686_eq
end InitECandidate.Proofs.FrontendStages.Declarations
