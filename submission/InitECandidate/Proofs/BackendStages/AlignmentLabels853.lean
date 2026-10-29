import InitECandidate.Proofs.BackendStages.Alignment853
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_853 : List (Nat × Nat) :=
[(50, 935620), (49, 935608), (17, 935596), (16, 935568), (48, 935512), (47, 935472), (15, 935460), (14, 935432),
  (46, 935376), (42, 935344), (45, 935292), (44, 935244), (13, 935184), (12, 935108), (43, 935052), (41, 934944),
  (40, 934904), (11, 934888), (10, 934856), (39, 934800), (27, 934768), (38, 934716), (37, 934700), (35, 934700),
  (9, 934664), (8, 934612), (34, 934556), (36, 934484), (33, 934456), (32, 934452), (31, 934436), (30, 934432),
  (29, 934416), (28, 934400), (26, 934352), (25, 934312), (7, 934304), (6, 934284), (24, 934228), (23, 934184),
  (5, 934176), (4, 934152), (22, 934096), (21, 934056), (3, 934048), (2, 934024), (20, 933968), (1, 933928),
  (19, 933928)]
theorem localLabelsFinal_853_eq : LabToTarget.sectionLabels 933912 Alignment853.lines [] = (935620, localLabelsFinal_853) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_853_eq
end InitECandidate.Proofs.BackendStages
