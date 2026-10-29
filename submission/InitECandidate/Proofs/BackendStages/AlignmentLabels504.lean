import InitECandidate.Proofs.BackendStages.Alignment504
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_504 : List (Nat × Nat) :=
[(32, 373684), (31, 373672), (15, 373664), (14, 373644), (30, 373588), (29, 373560), (13, 373556), (12, 373540),
  (28, 373484), (27, 373456), (11, 373452), (10, 373432), (26, 373376), (25, 373348), (9, 373296), (8, 373232),
  (24, 373176), (23, 373132), (7, 373128), (6, 373108), (22, 373052), (21, 373012), (5, 373008), (4, 372988),
  (20, 372932), (19, 372892), (3, 372888), (2, 372868), (18, 372812), (1, 372784), (17, 372784)]
theorem localLabelsFinal_504_eq : LabToTarget.sectionLabels 372768 Alignment504.lines [] = (373684, localLabelsFinal_504) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_504_eq
end InitECandidate.Proofs.BackendStages
