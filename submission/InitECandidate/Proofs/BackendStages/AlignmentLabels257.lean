import InitECandidate.Proofs.BackendStages.Alignment257
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_257 : List (Nat × Nat) :=
[(36, 193872), (35, 193860), (17, 193852), (16, 193832), (34, 193776), (33, 193748), (15, 193740), (14, 193720),
  (32, 193664), (31, 193628), (13, 193616), (12, 193592), (30, 193536), (29, 193500), (11, 193488), (10, 193464),
  (28, 193408), (27, 193364), (9, 193352), (8, 193328), (26, 193272), (25, 193232), (7, 193220), (6, 193196),
  (24, 193140), (23, 193104), (5, 193096), (4, 193072), (22, 193016), (21, 192984), (3, 192980), (2, 192960),
  (20, 192904), (1, 192868), (19, 192868)]
theorem localLabelsFinal_257_eq : LabToTarget.sectionLabels 192852 Alignment257.lines [] = (193872, localLabelsFinal_257) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_257_eq
end InitECandidate.Proofs.BackendStages
