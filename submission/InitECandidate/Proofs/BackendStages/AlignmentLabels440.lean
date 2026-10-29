import InitECandidate.Proofs.BackendStages.Alignment440
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_440 : List (Nat × Nat) :=
[(12, 326060), (11, 326044), (3, 326032), (2, 326004), (10, 325948), (7, 325916), (9, 325904), (8, 325872), (6, 325808),
  (1, 325784), (5, 325784)]
theorem localLabelsFinal_440_eq : LabToTarget.sectionLabels 325768 Alignment440.lines [] = (326060, localLabelsFinal_440) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_440_eq
end InitECandidate.Proofs.BackendStages
