import InitECandidate.Proofs.BackendStages.Alignment560
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_560 : List (Nat × Nat) :=
[(58, 419920), (57, 419908), (27, 419900), (26, 419880), (56, 419824), (55, 419796), (53, 419796), (25, 419792),
  (24, 419776), (52, 419720), (51, 419668), (23, 419648), (22, 419612), (50, 419556), (49, 419524), (21, 419480),
  (20, 419420), (48, 419364), (54, 419332), (47, 419320), (19, 419256), (18, 419180), (46, 419124), (45, 419096),
  (17, 419088), (16, 419068), (44, 419012), (43, 418984), (15, 418980), (14, 418960), (42, 418904), (41, 418856),
  (13, 418820), (12, 418764), (40, 418708), (39, 418660), (11, 418560), (10, 418444), (38, 418388), (37, 418356),
  (9, 418352), (8, 418332), (36, 418276), (35, 418232), (7, 418228), (6, 418208), (34, 418152), (33, 418112),
  (5, 418108), (4, 418088), (32, 418032), (31, 417992), (3, 417988), (2, 417968), (30, 417912), (1, 417872),
  (29, 417872)]
theorem localLabelsFinal_560_eq : LabToTarget.sectionLabels 417856 Alignment560.lines [] = (419920, localLabelsFinal_560) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_560_eq
end InitECandidate.Proofs.BackendStages
