import InitECandidate.Proofs.BackendStages.Alignment579
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_579 : List (Nat × Nat) :=
[(20, 433952), (19, 433940), (9, 433932), (8, 433912), (18, 433856), (17, 433828), (7, 433824), (6, 433808),
  (16, 433752), (15, 433724), (5, 433720), (4, 433700), (14, 433644), (13, 433620), (3, 433616), (2, 433600),
  (12, 433544), (1, 433512), (11, 433512)]
theorem localLabelsFinal_579_eq : LabToTarget.sectionLabels 433496 Alignment579.lines [] = (433952, localLabelsFinal_579) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_579_eq
end InitECandidate.Proofs.BackendStages
