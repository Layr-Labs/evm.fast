import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify92
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement76
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original92_eq : original92 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_sha256_init := by
  with_unfolding_all rfl
#print axioms original92_eq
end InitECandidate.Proofs.FrontendStages.Declarations
