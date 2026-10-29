import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify165
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement149
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original165_eq : original165 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_fn_pow := by
  with_unfolding_all rfl
#print axioms original165_eq
end InitECandidate.Proofs.FrontendStages.Declarations
