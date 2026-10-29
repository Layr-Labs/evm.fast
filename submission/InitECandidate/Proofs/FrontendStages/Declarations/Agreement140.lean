import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify140
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement124
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original140_eq : original140 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_htab_del := by
  with_unfolding_all rfl
#print axioms original140_eq
end InitECandidate.Proofs.FrontendStages.Declarations
