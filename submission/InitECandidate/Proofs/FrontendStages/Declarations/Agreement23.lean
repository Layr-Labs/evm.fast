import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify23
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original23_eq : original23 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_ld_be32 := by
  with_unfolding_all rfl
#print axioms original23_eq
end InitECandidate.Proofs.FrontendStages.Declarations
