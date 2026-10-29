import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original7_eq : original7 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_mem_init := by
  with_unfolding_all rfl
#print axioms original7_eq
end InitECandidate.Proofs.FrontendStages.Declarations
