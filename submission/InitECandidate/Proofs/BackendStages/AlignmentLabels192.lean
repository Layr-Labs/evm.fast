import InitECandidate.Proofs.BackendStages.Alignment192
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_192 : List (Nat × Nat) :=
[(42, 103672), (41, 103660), (40, 103652), (39, 103648), (38, 103640), (37, 103604), (36, 103588), (35, 103488),
  (13, 103456), (12, 103408), (34, 103352), (33, 103312), (11, 103300), (10, 103272), (32, 103216), (27, 103184),
  (31, 103160), (30, 103148), (29, 103128), (28, 103064), (26, 103020), (25, 102992), (9, 102956), (8, 102904),
  (24, 102848), (23, 102756), (22, 102708), (7, 102664), (6, 102604), (21, 102548), (20, 102480), (19, 102460),
  (5, 102448), (4, 102420), (18, 102364), (17, 102304), (3, 102284), (2, 102248), (16, 102192), (1, 102136),
  (15, 102136)]
theorem localLabelsFinal_192_eq : LabToTarget.sectionLabels 102120 Alignment192.lines [] = (103672, localLabelsFinal_192) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_192_eq
end InitECandidate.Proofs.BackendStages
