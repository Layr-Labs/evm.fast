import InitECandidate.Proofs.BackendStages.Alignment787
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_787 : List (Nat × Nat) :=
[(46, 807124), (45, 807120), (44, 807096), (17, 807084), (16, 807060), (43, 807004), (42, 806968), (41, 806956),
  (15, 806948), (14, 806928), (40, 806872), (39, 806820), (38, 806816), (37, 806800), (36, 806796), (35, 806780),
  (13, 806768), (12, 806740), (34, 806684), (33, 806644), (11, 806636), (10, 806612), (32, 806556), (31, 806516),
  (30, 806496), (9, 806484), (8, 806456), (29, 806400), (28, 806356), (27, 806336), (7, 806320), (6, 806288),
  (26, 806232), (25, 806184), (24, 806164), (5, 806148), (4, 806116), (23, 806060), (22, 806012), (21, 805992),
  (3, 805976), (2, 805944), (20, 805888), (1, 805848), (19, 805848)]
theorem localLabelsFinal_787_eq : LabToTarget.sectionLabels 805832 Alignment787.lines [] = (807124, localLabelsFinal_787) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_787_eq
end InitECandidate.Proofs.BackendStages
