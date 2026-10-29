import InitECandidate.Proofs.BackendStages.Alignment379
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_379 : List (Nat × Nat) :=
[(25, 291984), (24, 291972), (23, 291948), (11, 291936), (10, 291912), (22, 291856), (21, 291824), (9, 291816),
  (8, 291792), (20, 291736), (19, 291676), (7, 291660), (6, 291628), (18, 291572), (17, 291536), (5, 291516),
  (4, 291480), (16, 291424), (15, 291392), (3, 291388), (2, 291368), (14, 291312), (1, 291272), (13, 291272)]
theorem localLabelsFinal_379_eq : LabToTarget.sectionLabels 291256 Alignment379.lines [] = (291984, localLabelsFinal_379) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_379_eq
end InitECandidate.Proofs.BackendStages
