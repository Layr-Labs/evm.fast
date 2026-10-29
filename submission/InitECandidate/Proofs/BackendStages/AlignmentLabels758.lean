import InitECandidate.Proofs.BackendStages.Alignment758
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_758 : List (Nat × Nat) :=
[(52, 758016), (51, 758004), (25, 757996), (24, 757976), (50, 757920), (49, 757888), (23, 757880), (22, 757860),
  (48, 757804), (47, 757772), (21, 757748), (20, 757712), (46, 757656), (45, 757620), (19, 757612), (18, 757592),
  (44, 757536), (43, 757496), (17, 757472), (16, 757436), (42, 757380), (41, 757340), (15, 757328), (14, 757304),
  (40, 757248), (39, 757212), (13, 757172), (12, 757120), (38, 757064), (37, 757024), (11, 757012), (10, 756988),
  (36, 756932), (35, 756892), (9, 756840), (8, 756776), (34, 756720), (33, 756668), (7, 756652), (6, 756624),
  (32, 756568), (31, 756492), (5, 756480), (4, 756452), (30, 756396), (29, 756360), (3, 756356), (2, 756336),
  (28, 756280), (1, 756236), (27, 756236)]
theorem localLabelsFinal_758_eq : LabToTarget.sectionLabels 756220 Alignment758.lines [] = (758016, localLabelsFinal_758) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_758_eq
end InitECandidate.Proofs.BackendStages
