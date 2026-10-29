import InitECandidate.Proofs.BackendStages.Alignment79
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_79 : List (Nat × Nat) :=
[(53, 7976), (50, 7968), (52, 7960), (51, 7952), (49, 7920), (39, 7920), (48, 7912), (47, 7904), (46, 7876), (45, 7848),
  (44, 7820), (43, 7792), (42, 7764), (41, 7736), (40, 7708), (38, 7672), (37, 7672), (33, 7672), (35, 7664),
  (34, 7656), (32, 7620), (26, 7620), (31, 7612), (30, 7604), (29, 7584), (28, 7564), (27, 7544), (25, 7508),
  (24, 7492), (23, 7484), (22, 7456), (21, 7428), (20, 7400), (19, 7372), (18, 7352), (17, 7332), (16, 7312),
  (15, 7292), (14, 7272), (13, 7236), (12, 7228), (11, 7208), (10, 7188), (9, 7168), (8, 7132), (7, 7124), (6, 7096),
  (5, 7068), (4, 7040), (3, 7012), (2, 6992), (36, 6964), (1, 6936)]
theorem localLabelsFinal_79_eq : LabToTarget.sectionLabels 6936 Alignment79.lines [] = (7976, localLabelsFinal_79) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_79_eq
end InitECandidate.Proofs.BackendStages
