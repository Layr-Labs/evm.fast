import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify64
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement48
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original64_eq : original64 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_div64by32 := by
  with_unfolding_all rfl
#print axioms original64_eq
end InitECandidate.Proofs.FrontendStages.Declarations
