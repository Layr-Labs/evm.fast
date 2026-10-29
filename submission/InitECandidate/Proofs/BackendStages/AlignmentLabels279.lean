import InitECandidate.Proofs.BackendStages.Alignment279
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_279 : List (Nat × Nat) :=
[(61, 222404), (60, 222392), (27, 222384), (26, 222360), (59, 222304), (41, 222256), (58, 222156), (57, 222084),
  (25, 221968), (24, 221836), (56, 221780), (55, 221728), (23, 221720), (22, 221696), (54, 221640), (53, 221612),
  (21, 221568), (20, 221496), (52, 221440), (51, 221396), (19, 221368), (18, 221324), (50, 221268), (49, 221236),
  (47, 221236), (17, 221228), (16, 221208), (46, 221152), (48, 221108), (45, 221064), (15, 221060), (14, 221040),
  (44, 220984), (43, 220912), (13, 220868), (12, 220808), (42, 220752), (40, 220600), (39, 220596), (11, 220480),
  (10, 220348), (38, 220292), (37, 220176), (9, 220172), (8, 220152), (36, 220096), (35, 220052), (7, 220032),
  (6, 219996), (34, 219940), (33, 219892), (5, 219868), (4, 219828), (32, 219772), (31, 219724), (3, 219716),
  (2, 219692), (30, 219636), (1, 219592), (29, 219592)]
theorem localLabelsFinal_279_eq : LabToTarget.sectionLabels 219576 Alignment279.lines [] = (222404, localLabelsFinal_279) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_279_eq
end InitECandidate.Proofs.BackendStages
