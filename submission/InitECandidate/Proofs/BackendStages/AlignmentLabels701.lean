import InitECandidate.Proofs.BackendStages.Alignment701
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_701 : List (Nat × Nat) :=
[(33, 665060), (32, 665008), (31, 664984), (15, 664968), (14, 664940), (30, 664884), (29, 664848), (13, 664840),
  (12, 664816), (28, 664760), (27, 664724), (11, 664712), (10, 664688), (26, 664632), (25, 664584), (9, 664576),
  (8, 664552), (24, 664496), (23, 664460), (7, 664456), (6, 664436), (22, 664380), (21, 664348), (5, 664344),
  (4, 664324), (20, 664268), (19, 664236), (3, 664232), (2, 664216), (18, 664160), (1, 664100), (17, 664100)]
theorem localLabelsFinal_701_eq : LabToTarget.sectionLabels 664084 Alignment701.lines [] = (665060, localLabelsFinal_701) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_701_eq
end InitECandidate.Proofs.BackendStages
