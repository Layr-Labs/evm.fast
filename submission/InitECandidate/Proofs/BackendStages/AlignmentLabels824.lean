import InitECandidate.Proofs.BackendStages.Alignment824
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_824 : List (Nat × Nat) :=
[(31, 893644), (30, 893592), (29, 893568), (13, 893556), (12, 893528), (28, 893472), (27, 893436), (11, 893424),
  (10, 893396), (26, 893340), (25, 893308), (9, 893304), (8, 893288), (24, 893232), (23, 893200), (7, 893196),
  (6, 893176), (22, 893120), (21, 893048), (5, 893040), (4, 893016), (20, 892960), (19, 892924), (18, 892900),
  (3, 892896), (2, 892876), (17, 892820), (16, 892776), (1, 892728), (15, 892728)]
theorem localLabelsFinal_824_eq : LabToTarget.sectionLabels 892712 Alignment824.lines [] = (893644, localLabelsFinal_824) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_824_eq
end InitECandidate.Proofs.BackendStages
