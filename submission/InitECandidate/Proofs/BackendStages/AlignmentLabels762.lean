import InitECandidate.Proofs.BackendStages.Alignment762
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_762 : List (Nat × Nat) :=
[(48, 761380), (47, 761368), (23, 761360), (22, 761340), (46, 761284), (45, 761228), (21, 761220), (20, 761200),
  (44, 761144), (43, 761104), (19, 761092), (18, 761068), (42, 761012), (41, 760952), (17, 760944), (16, 760924),
  (40, 760868), (39, 760824), (15, 760812), (14, 760788), (38, 760732), (37, 760672), (13, 760664), (12, 760644),
  (36, 760588), (35, 760544), (11, 760532), (10, 760508), (34, 760452), (33, 760392), (9, 760384), (8, 760364),
  (32, 760308), (31, 760264), (7, 760252), (6, 760228), (30, 760172), (29, 760112), (5, 760104), (4, 760084),
  (28, 760028), (27, 759984), (3, 759972), (2, 759948), (26, 759892), (1, 759852), (25, 759852)]
theorem localLabelsFinal_762_eq : LabToTarget.sectionLabels 759836 Alignment762.lines [] = (761380, localLabelsFinal_762) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_762_eq
end InitECandidate.Proofs.BackendStages
