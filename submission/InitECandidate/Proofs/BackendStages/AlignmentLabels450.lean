import InitECandidate.Proofs.BackendStages.Alignment450
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_450 : List (Nat × Nat) :=
[(45, 332544), (44, 332532), (21, 332508), (20, 332472), (43, 332416), (42, 332376), (19, 332356), (18, 332324),
  (41, 332268), (40, 332232), (17, 332196), (16, 332148), (39, 332092), (38, 332056), (15, 332028), (14, 331988),
  (37, 331932), (36, 331848), (13, 331824), (12, 331784), (35, 331728), (34, 331684), (11, 331680), (10, 331660),
  (33, 331604), (32, 331560), (31, 331524), (9, 331508), (8, 331476), (30, 331420), (29, 331376), (7, 331368),
  (6, 331348), (28, 331292), (27, 331252), (5, 331240), (4, 331216), (26, 331160), (25, 331120), (3, 331108),
  (2, 331084), (24, 331028), (1, 330960), (23, 330960)]
theorem localLabelsFinal_450_eq : LabToTarget.sectionLabels 330944 Alignment450.lines [] = (332544, localLabelsFinal_450) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_450_eq
end InitECandidate.Proofs.BackendStages
