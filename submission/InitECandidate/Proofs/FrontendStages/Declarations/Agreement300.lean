import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify300
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement284
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original300_eq : original300 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_tx_bytes_item := by
  with_unfolding_all rfl
#print axioms original300_eq
end InitECandidate.Proofs.FrontendStages.Declarations
