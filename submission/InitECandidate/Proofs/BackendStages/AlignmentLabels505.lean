import InitECandidate.Proofs.BackendStages.Alignment505
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_505 : List (Nat × Nat) :=
[(32, 374600), (31, 374588), (15, 374580), (14, 374560), (30, 374504), (29, 374476), (13, 374472), (12, 374456),
  (28, 374400), (27, 374372), (11, 374368), (10, 374348), (26, 374292), (25, 374264), (9, 374212), (8, 374148),
  (24, 374092), (23, 374048), (7, 374044), (6, 374024), (22, 373968), (21, 373928), (5, 373924), (4, 373904),
  (20, 373848), (19, 373808), (3, 373804), (2, 373784), (18, 373728), (1, 373700), (17, 373700)]
theorem localLabelsFinal_505_eq : LabToTarget.sectionLabels 373684 Alignment505.lines [] = (374600, localLabelsFinal_505) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_505_eq
end InitECandidate.Proofs.BackendStages
