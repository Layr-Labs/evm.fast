import InitECandidate.Proofs.BackendStages.Alignment385
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_385 : List (Nat × Nat) :=
[(22, 295688), (21, 295676), (20, 295652), (19, 295628), (5, 295604), (4, 295564), (18, 295508), (17, 295452),
  (16, 295424), (15, 295396), (13, 295396), (14, 295364), (12, 295348), (11, 295324), (10, 295296), (9, 295248),
  (3, 295240), (2, 295216), (8, 295160), (1, 295128), (7, 295128)]
theorem localLabelsFinal_385_eq : LabToTarget.sectionLabels 295112 Alignment385.lines [] = (295688, localLabelsFinal_385) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_385_eq
end InitECandidate.Proofs.BackendStages
