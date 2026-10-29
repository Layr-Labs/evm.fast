import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify805
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement789
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original805_eq : original805 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_bls_g2_add_exec := by
  with_unfolding_all rfl
#print axioms original805_eq
end InitECandidate.Proofs.FrontendStages.Declarations
