import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify340
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement324
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original340_eq : original340 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_signature_recovery_parameters := by
  with_unfolding_all rfl
#print axioms original340_eq
end InitECandidate.Proofs.FrontendStages.Declarations
