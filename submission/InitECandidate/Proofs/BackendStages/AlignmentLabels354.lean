import InitECandidate.Proofs.BackendStages.Alignment354
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_354 : List (Nat × Nat) :=
[(3, 276572), (2, 276564), (1, 276544)]
theorem localLabelsFinal_354_eq : LabToTarget.sectionLabels 276544 Alignment354.lines [] = (276572, localLabelsFinal_354) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_354_eq
end InitECandidate.Proofs.BackendStages
