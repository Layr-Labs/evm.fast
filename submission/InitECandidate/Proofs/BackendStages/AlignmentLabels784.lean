import InitECandidate.Proofs.BackendStages.Alignment784
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_784 : List (Nat × Nat) :=
[(39, 803436), (38, 803424), (15, 803416), (14, 803396), (37, 803340), (36, 803308), (13, 803300), (12, 803280),
  (35, 803224), (25, 803176), (34, 803144), (33, 803124), (31, 803120), (11, 803084), (10, 803036), (30, 802980),
  (32, 802932), (29, 802876), (27, 802876), (9, 802844), (8, 802800), (26, 802744), (28, 802672), (24, 802608),
  (23, 802596), (7, 802560), (6, 802512), (22, 802456), (21, 802420), (5, 802416), (4, 802396), (20, 802340),
  (19, 802304), (3, 802300), (2, 802280), (18, 802224), (1, 802176), (17, 802176)]
theorem localLabelsFinal_784_eq : LabToTarget.sectionLabels 802160 Alignment784.lines [] = (803436, localLabelsFinal_784) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_784_eq
end InitECandidate.Proofs.BackendStages
