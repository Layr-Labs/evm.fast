import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify365
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement349
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original365_eq : original365 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_record_pre_state_read := by
  with_unfolding_all rfl
#print axioms original365_eq
end InitECandidate.Proofs.FrontendStages.Declarations
