import InitECandidate.Proofs.BackendStages.Alignment778
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_778 : List (Nat × Nat) :=
[(16, 791084), (15, 791072), (7, 791064), (6, 791044), (14, 790988), (13, 790956), (5, 790948), (4, 790928),
  (12, 790872), (11, 790836), (3, 790828), (2, 790808), (10, 790752), (1, 790716), (9, 790716)]
theorem localLabelsFinal_778_eq : LabToTarget.sectionLabels 790700 Alignment778.lines [] = (791084, localLabelsFinal_778) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_778_eq
end InitECandidate.Proofs.BackendStages
