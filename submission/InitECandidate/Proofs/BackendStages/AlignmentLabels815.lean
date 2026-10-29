import InitECandidate.Proofs.BackendStages.Alignment815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_815 : List (Nat × Nat) :=
[(37, 881848), (36, 881836), (17, 881828), (16, 881808), (35, 881752), (34, 881720), (15, 881712), (14, 881692),
  (33, 881636), (32, 881604), (13, 881592), (12, 881568), (31, 881512), (30, 881452), (29, 881440), (11, 881432),
  (10, 881412), (28, 881356), (27, 881308), (9, 881296), (8, 881268), (26, 881212), (25, 881172), (7, 881160),
  (6, 881132), (24, 881076), (23, 881040), (5, 881036), (4, 881016), (22, 880960), (21, 880924), (3, 880920),
  (2, 880900), (20, 880844), (1, 880804), (19, 880804)]
theorem localLabelsFinal_815_eq : LabToTarget.sectionLabels 880788 Alignment815.lines [] = (881848, localLabelsFinal_815) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_815_eq
end InitECandidate.Proofs.BackendStages
