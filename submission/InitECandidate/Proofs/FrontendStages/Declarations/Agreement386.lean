import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify386
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement370
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original386_eq : original386 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_account_exists_and_is_empty := by
  with_unfolding_all rfl
#print axioms original386_eq
end InitECandidate.Proofs.FrontendStages.Declarations
