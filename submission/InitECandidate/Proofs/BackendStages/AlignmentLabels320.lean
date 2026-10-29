import InitECandidate.Proofs.BackendStages.Alignment320
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_320 : List (Nat × Nat) :=
[(22, 253156), (21, 253140), (17, 253140), (5, 253128), (4, 253100), (16, 253044), (20, 253004), (19, 253000),
  (7, 252988), (6, 252960), (18, 252904), (15, 252852), (14, 252848), (13, 252832), (12, 252828), (11, 252808),
  (3, 252792), (2, 252760), (10, 252704), (1, 252664), (9, 252664)]
theorem localLabelsFinal_320_eq : LabToTarget.sectionLabels 252648 Alignment320.lines [] = (253156, localLabelsFinal_320) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_320_eq
end InitECandidate.Proofs.BackendStages
