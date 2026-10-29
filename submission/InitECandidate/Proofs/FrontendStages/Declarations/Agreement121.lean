import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify121
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement105
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original121_eq : original121 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_rlp_write_header := by
  with_unfolding_all rfl
#print axioms original121_eq
end InitECandidate.Proofs.FrontendStages.Declarations
