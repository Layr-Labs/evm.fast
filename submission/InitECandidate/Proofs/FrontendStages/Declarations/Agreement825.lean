import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify825
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement809
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original825_eq : original825 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_pre_sha256 := by
  with_unfolding_all rfl
#print axioms original825_eq
end InitECandidate.Proofs.FrontendStages.Declarations
