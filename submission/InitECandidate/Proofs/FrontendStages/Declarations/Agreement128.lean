import Guest.SoftwareAst
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify128
import InitECandidate.Proofs.FrontendStages.Declarations.Agreement112
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem original128_eq : original128 = Flapjack.Pancake.PanLang.declToHOL Guest.Software.guestFn_rlp_word_encoded_len := by
  with_unfolding_all rfl
#print axioms original128_eq
end InitECandidate.Proofs.FrontendStages.Declarations
