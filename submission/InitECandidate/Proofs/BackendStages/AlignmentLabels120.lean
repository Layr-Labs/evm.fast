import InitECandidate.Proofs.BackendStages.Alignment120
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_120 : List (Nat × Nat) :=
[(33, 14152), (32, 13792), (15, 13712), (14, 13612), (31, 13556), (30, 13508), (13, 13496), (12, 13468), (29, 13412),
  (28, 13364), (11, 13344), (10, 13308), (27, 13252), (26, 13204), (9, 13192), (8, 13164), (25, 13108), (24, 13060),
  (7, 13048), (6, 13020), (23, 12964), (22, 12916), (5, 12904), (4, 12876), (21, 12820), (20, 12748), (19, 12728),
  (3, 12720), (2, 12696), (18, 12640), (1, 12580), (17, 12580)]
theorem localLabelsFinal_120_eq : LabToTarget.sectionLabels 12564 Alignment120.lines [] = (14152, localLabelsFinal_120) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_120_eq
end InitECandidate.Proofs.BackendStages
