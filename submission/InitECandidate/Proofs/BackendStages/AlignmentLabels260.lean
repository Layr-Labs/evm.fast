import InitECandidate.Proofs.BackendStages.Alignment260
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_260 : List (Nat × Nat) :=
[(40, 200004), (39, 199992), (19, 199984), (18, 199964), (38, 199908), (37, 199880), (17, 199872), (16, 199852),
  (36, 199796), (35, 199760), (15, 199748), (14, 199724), (34, 199668), (33, 199632), (13, 199620), (12, 199596),
  (32, 199540), (31, 199496), (11, 199484), (10, 199460), (30, 199404), (29, 199364), (9, 199352), (8, 199328),
  (28, 199272), (27, 199228), (7, 199216), (6, 199192), (26, 199136), (25, 199096), (5, 199088), (4, 199064),
  (24, 199008), (23, 198976), (3, 198972), (2, 198952), (22, 198896), (1, 198860), (21, 198860)]
theorem localLabelsFinal_260_eq : LabToTarget.sectionLabels 198844 Alignment260.lines [] = (200004, localLabelsFinal_260) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_260_eq
end InitECandidate.Proofs.BackendStages
