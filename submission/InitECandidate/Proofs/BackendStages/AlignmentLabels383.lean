import InitECandidate.Proofs.BackendStages.Alignment383
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_383 : List (Nat × Nat) :=
[(7, 294128), (3, 294112), (6, 294104), (5, 294096), (4, 294092), (2, 294068), (1, 294060)]
theorem localLabelsFinal_383_eq : LabToTarget.sectionLabels 294060 Alignment383.lines [] = (294128, localLabelsFinal_383) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_383_eq
end InitECandidate.Proofs.BackendStages
