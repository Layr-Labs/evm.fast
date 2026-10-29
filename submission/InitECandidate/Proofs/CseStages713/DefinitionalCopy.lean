import InitECandidate.Proofs.CseStages713.Data4
import InitECandidate.Proofs.CseStages713.Data5
import Lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
namespace InitECandidate.Proofs.CseStages713
open Flapjack.Compiler.Backend
theorem definitionalCopy : WordCopy.copyProp pass713_4 = pass713_5 := by
  with_unfolding_all rfl
#print axioms definitionalCopy
end InitECandidate.Proofs.CseStages713
