import InitECandidate.Proofs.BackendStages.Alignment506
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_506 : List (Nat × Nat) :=
[(32, 375484), (31, 375472), (15, 375464), (14, 375444), (30, 375388), (29, 375360), (13, 375356), (12, 375340),
  (28, 375284), (27, 375256), (11, 375252), (10, 375232), (26, 375176), (25, 375148), (9, 375112), (8, 375064),
  (24, 375008), (23, 374968), (7, 374964), (6, 374944), (22, 374888), (21, 374844), (5, 374840), (4, 374820),
  (20, 374764), (19, 374724), (3, 374720), (2, 374700), (18, 374644), (1, 374616), (17, 374616)]
theorem localLabelsFinal_506_eq : LabToTarget.sectionLabels 374600 Alignment506.lines [] = (375484, localLabelsFinal_506) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_506_eq
end InitECandidate.Proofs.BackendStages
