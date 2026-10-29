import InitECandidate.Proofs.BackendStages.Alignment447
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_447 : List (Nat × Nat) :=
[(17, 328876), (16, 328864), (7, 328856), (6, 328832), (15, 328776), (14, 328748), (5, 328740), (4, 328720),
  (13, 328664), (12, 328628), (11, 328608), (3, 328596), (2, 328568), (10, 328512), (1, 328456), (9, 328456)]
theorem localLabelsFinal_447_eq : LabToTarget.sectionLabels 328440 Alignment447.lines [] = (328876, localLabelsFinal_447) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_447_eq
end InitECandidate.Proofs.BackendStages
