import InitECandidate.Proofs.BackendStages.Alignment748
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_748 : List (Nat × Nat) :=
[(16, 746672), (15, 746660), (7, 746652), (6, 746632), (14, 746576), (13, 746544), (5, 746536), (4, 746516),
  (12, 746460), (11, 746424), (3, 746416), (2, 746396), (10, 746340), (1, 746304), (9, 746304)]
theorem localLabelsFinal_748_eq : LabToTarget.sectionLabels 746288 Alignment748.lines [] = (746672, localLabelsFinal_748) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_748_eq
end InitECandidate.Proofs.BackendStages
