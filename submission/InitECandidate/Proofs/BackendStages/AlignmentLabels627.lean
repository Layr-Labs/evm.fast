import InitECandidate.Proofs.BackendStages.Alignment627
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_627 : List (Nat × Nat) :=
[(6, 524296), (5, 524244), (4, 524180), (3, 524120), (2, 524056), (1, 524032)]
theorem localLabelsFinal_627_eq : LabToTarget.sectionLabels 524032 Alignment627.lines [] = (524296, localLabelsFinal_627) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_627_eq
end InitECandidate.Proofs.BackendStages
