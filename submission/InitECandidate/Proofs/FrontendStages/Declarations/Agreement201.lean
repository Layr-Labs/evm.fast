import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify201
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement185
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original201_eq : original201 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_decode_host_input := by
  with_unfolding_all rfl
#print axioms original201_eq
end InitECandidate.Proofs.FrontendStages.Declarations
