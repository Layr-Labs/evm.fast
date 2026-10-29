import InitECandidate.Proofs.BackendStages.Alignment200
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_200 : List (Nat × Nat) :=
[(36, 107668), (35, 107648), (17, 107632), (16, 107604), (34, 107548), (33, 107504), (15, 107484), (14, 107448),
  (32, 107392), (31, 107344), (13, 107328), (12, 107300), (30, 107244), (29, 107192), (11, 107180), (10, 107152),
  (28, 107096), (27, 107048), (9, 107032), (8, 107004), (26, 106948), (25, 106888), (7, 106872), (6, 106840),
  (24, 106784), (23, 106736), (5, 106724), (4, 106700), (22, 106644), (21, 106604), (3, 106596), (2, 106572),
  (20, 106516), (1, 106460), (19, 106460)]
theorem localLabelsFinal_200_eq : LabToTarget.sectionLabels 106444 Alignment200.lines [] = (107668, localLabelsFinal_200) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_200_eq
end InitECandidate.Proofs.BackendStages
