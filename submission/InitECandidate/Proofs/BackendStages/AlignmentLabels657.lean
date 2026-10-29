import InitECandidate.Proofs.BackendStages.Alignment657
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_657 : List (Nat × Nat) :=
[(13, 583344), (12, 581732), (5, 581724), (4, 581700), (11, 581644), (10, 580236), (3, 580232), (2, 580212),
  (9, 580156), (8, 580120), (1, 580084), (7, 580084)]
theorem localLabelsFinal_657_eq : LabToTarget.sectionLabels 580068 Alignment657.lines [] = (583344, localLabelsFinal_657) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_657_eq
end InitECandidate.Proofs.BackendStages
