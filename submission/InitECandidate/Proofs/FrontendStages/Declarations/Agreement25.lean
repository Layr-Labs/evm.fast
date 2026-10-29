import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify25
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original25_eq : original25 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_ld_be64 := by
  with_unfolding_all rfl
#print axioms original25_eq
end InitECandidate.Proofs.FrontendStages.Declarations
