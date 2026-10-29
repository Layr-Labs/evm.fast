import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify42
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement26
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original42_eq : original42 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_u256_fits_word := by
  with_unfolding_all rfl
#print axioms original42_eq
end InitECandidate.Proofs.FrontendStages.Declarations
