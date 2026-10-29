import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify30
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement14
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original30_eq : original30 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_input_blob := by
  with_unfolding_all rfl
#print axioms original30_eq
end InitECandidate.Proofs.FrontendStages.Declarations
