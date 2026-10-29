import InitECandidate.Proofs.BackendStages.Alignment522
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_522 : List (Nat × Nat) :=
[(24, 387668), (23, 387656), (11, 387648), (10, 387628), (22, 387572), (21, 387544), (9, 387540), (8, 387524),
  (20, 387468), (19, 387436), (7, 387432), (6, 387412), (18, 387356), (17, 387328), (5, 387308), (4, 387276),
  (16, 387220), (15, 387176), (3, 387172), (2, 387152), (14, 387096), (1, 387068), (13, 387068)]
theorem localLabelsFinal_522_eq : LabToTarget.sectionLabels 387052 Alignment522.lines [] = (387668, localLabelsFinal_522) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_522_eq
end InitECandidate.Proofs.BackendStages
