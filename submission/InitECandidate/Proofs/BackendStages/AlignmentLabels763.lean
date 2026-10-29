import InitECandidate.Proofs.BackendStages.Alignment763
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_763 : List (Nat × Nat) :=
[(47, 762892), (46, 762880), (19, 762872), (18, 762852), (45, 762796), (44, 762764), (17, 762756), (16, 762736),
  (43, 762680), (33, 762632), (42, 762600), (41, 762580), (39, 762576), (15, 762540), (14, 762492), (38, 762436),
  (40, 762392), (37, 762348), (35, 762348), (13, 762316), (12, 762272), (34, 762216), (36, 762140), (32, 762076),
  (31, 762044), (11, 762036), (10, 762016), (30, 761960), (29, 761924), (9, 761916), (8, 761896), (28, 761840),
  (27, 761796), (7, 761768), (6, 761724), (26, 761668), (25, 761632), (5, 761628), (4, 761608), (24, 761552),
  (23, 761516), (3, 761512), (2, 761492), (22, 761436), (1, 761396), (21, 761396)]
theorem localLabelsFinal_763_eq : LabToTarget.sectionLabels 761380 Alignment763.lines [] = (762892, localLabelsFinal_763) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_763_eq
end InitECandidate.Proofs.BackendStages
