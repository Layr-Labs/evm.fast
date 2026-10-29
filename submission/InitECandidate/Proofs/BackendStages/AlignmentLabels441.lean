import InitECandidate.Proofs.BackendStages.Alignment441
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_441 : List (Nat × Nat) :=
[(26, 326856), (25, 326824), (11, 326800), (10, 326760), (24, 326704), (23, 326672), (21, 326672), (9, 326636),
  (8, 326588), (20, 326532), (19, 326500), (7, 326488), (6, 326460), (18, 326404), (22, 326372), (17, 326332),
  (5, 326328), (4, 326308), (16, 326252), (15, 326216), (3, 326208), (2, 326184), (14, 326128), (1, 326076),
  (13, 326076)]
theorem localLabelsFinal_441_eq : LabToTarget.sectionLabels 326060 Alignment441.lines [] = (326856, localLabelsFinal_441) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_441_eq
end InitECandidate.Proofs.BackendStages
