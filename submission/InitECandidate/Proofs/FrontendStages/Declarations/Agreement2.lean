import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify2
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original2_eq : original2 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestGlobal_journal_n := by
  with_unfolding_all rfl
#print axioms original2_eq
end InitECandidate.Proofs.FrontendStages.Declarations
