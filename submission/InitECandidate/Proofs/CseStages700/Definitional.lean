import InitECandidate.Proofs.CseStages700.Data3
import InitECandidate.Proofs.CseStages700.Data4
import Lean
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
namespace InitECandidate.Proofs.CseStages700
open Flapjack.Compiler.Backend
theorem definitional : WordCse.wordCommonSubexpElim pass700_3 = pass700_4 := by
  with_unfolding_all rfl
#print axioms definitional
end InitECandidate.Proofs.CseStages700
