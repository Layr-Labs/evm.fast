import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify90
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement74
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original90_eq : original90 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestGlobal_sha_st := by
  with_unfolding_all rfl
#print axioms original90_eq
end InitECandidate.Proofs.FrontendStages.Declarations
