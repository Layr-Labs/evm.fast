import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify800
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement784
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original800_eq : original800 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_kzg_neg_scalar := by
  with_unfolding_all rfl
#print axioms original800_eq
end InitECandidate.Proofs.FrontendStages.Declarations
