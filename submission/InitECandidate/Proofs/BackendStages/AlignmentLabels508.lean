import InitECandidate.Proofs.BackendStages.Alignment508
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_508 : List (Nat × Nat) :=
[(28, 377168), (27, 377156), (13, 377148), (12, 377128), (26, 377072), (25, 377044), (11, 377040), (10, 377024),
  (24, 376968), (23, 376940), (9, 376936), (8, 376916), (22, 376860), (21, 376832), (7, 376796), (6, 376748),
  (20, 376692), (19, 376648), (5, 376644), (4, 376624), (18, 376568), (17, 376528), (3, 376524), (2, 376504),
  (16, 376448), (1, 376420), (15, 376420)]
theorem localLabelsFinal_508_eq : LabToTarget.sectionLabels 376404 Alignment508.lines [] = (377168, localLabelsFinal_508) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_508_eq
end InitECandidate.Proofs.BackendStages
