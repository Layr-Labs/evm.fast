import InitECandidate.Proofs.BackendStages.Alignment510
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_510 : List (Nat × Nat) :=
[(28, 378696), (27, 378684), (13, 378676), (12, 378656), (26, 378600), (25, 378572), (11, 378568), (10, 378552),
  (24, 378496), (23, 378468), (9, 378464), (8, 378444), (22, 378388), (21, 378360), (7, 378324), (6, 378276),
  (20, 378220), (19, 378176), (5, 378172), (4, 378152), (18, 378096), (17, 378056), (3, 378052), (2, 378032),
  (16, 377976), (1, 377948), (15, 377948)]
theorem localLabelsFinal_510_eq : LabToTarget.sectionLabels 377932 Alignment510.lines [] = (378696, localLabelsFinal_510) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_510_eq
end InitECandidate.Proofs.BackendStages
