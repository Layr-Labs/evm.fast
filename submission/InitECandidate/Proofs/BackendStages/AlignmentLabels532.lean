import InitECandidate.Proofs.BackendStages.Alignment532
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_532 : List (Nat × Nat) :=
[(28, 394752), (27, 394740), (13, 394732), (12, 394712), (26, 394656), (25, 394628), (11, 394624), (10, 394608),
  (24, 394552), (23, 394524), (9, 394520), (8, 394500), (22, 394444), (21, 394392), (7, 394388), (6, 394368),
  (20, 394312), (19, 394284), (5, 394264), (4, 394232), (18, 394176), (17, 394100), (3, 394096), (2, 394076),
  (16, 394020), (1, 393992), (15, 393992)]
theorem localLabelsFinal_532_eq : LabToTarget.sectionLabels 393976 Alignment532.lines [] = (394752, localLabelsFinal_532) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_532_eq
end InitECandidate.Proofs.BackendStages
