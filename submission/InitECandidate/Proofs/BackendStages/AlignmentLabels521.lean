import InitECandidate.Proofs.BackendStages.Alignment521
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_521 : List (Nat × Nat) :=
[(32, 387052), (31, 387040), (15, 387032), (14, 387012), (30, 386956), (29, 386928), (13, 386924), (12, 386908),
  (28, 386852), (27, 386824), (11, 386820), (10, 386800), (26, 386744), (25, 386716), (9, 386696), (8, 386660),
  (24, 386604), (23, 386576), (7, 386532), (6, 386476), (22, 386420), (21, 386376), (5, 386372), (4, 386352),
  (20, 386296), (19, 386256), (3, 386252), (2, 386232), (18, 386176), (1, 386148), (17, 386148)]
theorem localLabelsFinal_521_eq : LabToTarget.sectionLabels 386132 Alignment521.lines [] = (387052, localLabelsFinal_521) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_521_eq
end InitECandidate.Proofs.BackendStages
