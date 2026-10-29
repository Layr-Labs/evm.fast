import InitECandidate.Proofs.BackendStages.Alignment519
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_519 : List (Nat × Nat) :=
[(32, 385212), (31, 385200), (15, 385192), (14, 385172), (30, 385116), (29, 385088), (13, 385084), (12, 385068),
  (28, 385012), (27, 384984), (11, 384980), (10, 384960), (26, 384904), (25, 384876), (9, 384856), (8, 384820),
  (24, 384764), (23, 384736), (7, 384692), (6, 384636), (22, 384580), (21, 384536), (5, 384532), (4, 384512),
  (20, 384456), (19, 384416), (3, 384412), (2, 384392), (18, 384336), (1, 384308), (17, 384308)]
theorem localLabelsFinal_519_eq : LabToTarget.sectionLabels 384292 Alignment519.lines [] = (385212, localLabelsFinal_519) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_519_eq
end InitECandidate.Proofs.BackendStages
