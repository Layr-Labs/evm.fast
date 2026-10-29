import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify250
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement234
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original250_eq : original250 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_compact_to_nibbles := by
  with_unfolding_all rfl
#print axioms original250_eq
end InitECandidate.Proofs.FrontendStages.Declarations
