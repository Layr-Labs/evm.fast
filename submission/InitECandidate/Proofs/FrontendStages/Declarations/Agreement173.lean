import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify173
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement157
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original173_eq : original173 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_ec_add := by
  with_unfolding_all rfl
#print axioms original173_eq
end InitECandidate.Proofs.FrontendStages.Declarations
