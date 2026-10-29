import InitECandidate.Proofs.BackendStages.Alignment635
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_635 : List (Nat × Nat) :=
[(8, 531868), (6, 531860), (7, 531852), (5, 531788), (3, 531784), (4, 531776), (2, 531748), (1, 531736)]
theorem localLabelsFinal_635_eq : LabToTarget.sectionLabels 531736 Alignment635.lines [] = (531868, localLabelsFinal_635) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_635_eq
end InitECandidate.Proofs.BackendStages
