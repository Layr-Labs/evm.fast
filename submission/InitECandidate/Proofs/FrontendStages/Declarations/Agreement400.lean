import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify400
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement384
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original400_eq : original400 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_set_code := by
  with_unfolding_all rfl
#print axioms original400_eq
end InitECandidate.Proofs.FrontendStages.Declarations
