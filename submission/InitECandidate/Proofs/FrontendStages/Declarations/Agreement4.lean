import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify4
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original4_eq : original4 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_trap_with := by
  with_unfolding_all rfl
#print axioms original4_eq
end InitECandidate.Proofs.FrontendStages.Declarations
