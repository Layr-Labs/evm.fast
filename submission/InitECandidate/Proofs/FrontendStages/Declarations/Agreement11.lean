import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify11
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original11_eq : original11 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_frame_mem_alloc := by
  with_unfolding_all rfl
#print axioms original11_eq
end InitECandidate.Proofs.FrontendStages.Declarations
