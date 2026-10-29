import InitECandidate.Proofs.BackendStages.Alignment480
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_480 : List (Nat × Nat) :=
[(40, 361628), (39, 361612), (38, 361588), (17, 361568), (16, 361532), (37, 361476), (36, 361440), (15, 361432),
  (14, 361408), (35, 361352), (34, 361312), (33, 361292), (13, 361280), (12, 361252), (32, 361196), (31, 361164),
  (11, 361156), (10, 361132), (30, 361076), (29, 361024), (28, 361000), (9, 360992), (8, 360968), (27, 360912),
  (26, 360884), (7, 360876), (6, 360852), (25, 360796), (24, 360764), (5, 360744), (4, 360708), (23, 360652),
  (22, 360616), (21, 360592), (3, 360544), (2, 360480), (20, 360424), (1, 360348), (19, 360348)]
theorem localLabelsFinal_480_eq : LabToTarget.sectionLabels 360332 Alignment480.lines [] = (361628, localLabelsFinal_480) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_480_eq
end InitECandidate.Proofs.BackendStages
