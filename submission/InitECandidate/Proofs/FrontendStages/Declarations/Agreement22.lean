import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify22
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement6
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original22_eq : original22 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_ld_le64 := by
  with_unfolding_all rfl
#print axioms original22_eq
end InitECandidate.Proofs.FrontendStages.Declarations
