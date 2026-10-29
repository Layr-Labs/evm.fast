import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify102
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement86
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original102_eq : original102 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_keccak_f1600 := by
  with_unfolding_all rfl
#print axioms original102_eq
end InitECandidate.Proofs.FrontendStages.Declarations
