import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify401
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement385
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original401_eq : original401 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_htab_union_into := by
  with_unfolding_all rfl
#print axioms original401_eq
end InitECandidate.Proofs.FrontendStages.Declarations
