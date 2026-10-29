import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify200
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement184
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original200_eq : original200 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_precheck_host_ssz_header := by
  with_unfolding_all rfl
#print axioms original200_eq
end InitECandidate.Proofs.FrontendStages.Declarations
