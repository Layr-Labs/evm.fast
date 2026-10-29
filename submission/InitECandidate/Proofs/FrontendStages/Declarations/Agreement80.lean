import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify80
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement64
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original80_eq : original80 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_u256_byte_length := by
  with_unfolding_all rfl
#print axioms original80_eq
end InitECandidate.Proofs.FrontendStages.Declarations
