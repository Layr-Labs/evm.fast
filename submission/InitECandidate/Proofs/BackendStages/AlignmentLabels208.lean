import InitECandidate.Proofs.BackendStages.Alignment208
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_208 : List (Nat × Nat) :=
[(23, 119448), (11, 119420), (22, 119360), (21, 119304), (19, 119300), (7, 119256), (6, 119196), (18, 119140),
  (20, 119096), (17, 119060), (5, 118996), (4, 118916), (16, 118860), (15, 118812), (13, 118796), (3, 118772),
  (2, 118720), (12, 118664), (14, 118596), (10, 118496), (1, 118420), (9, 118420)]
theorem localLabelsFinal_208_eq : LabToTarget.sectionLabels 118404 Alignment208.lines [] = (119448, localLabelsFinal_208) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_208_eq
end InitECandidate.Proofs.BackendStages
