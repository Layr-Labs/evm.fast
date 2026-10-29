import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify180
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement164
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original180_eq : original180 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_secp256k1_address_of_point := by
  with_unfolding_all rfl
#print axioms original180_eq
end InitECandidate.Proofs.FrontendStages.Declarations
