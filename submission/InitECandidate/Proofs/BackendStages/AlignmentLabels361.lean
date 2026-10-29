import InitECandidate.Proofs.BackendStages.Alignment361
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_361 : List (Nat × Nat) :=
[(38, 279564), (23, 279540), (37, 279516), (33, 279484), (36, 279440), (35, 279392), (15, 279336), (14, 279264),
  (34, 279208), (32, 279120), (31, 279104), (13, 279048), (12, 278976), (30, 278920), (29, 278884), (11, 278832),
  (10, 278764), (28, 278708), (27, 278664), (9, 278652), (8, 278624), (26, 278568), (25, 278520), (7, 278508),
  (6, 278480), (24, 278424), (22, 278304), (21, 278288), (5, 278272), (4, 278240), (20, 278184), (19, 278148),
  (3, 278140), (2, 278116), (18, 278060), (1, 278012), (17, 278012)]
theorem localLabelsFinal_361_eq : LabToTarget.sectionLabels 277996 Alignment361.lines [] = (279564, localLabelsFinal_361) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_361_eq
end InitECandidate.Proofs.BackendStages
