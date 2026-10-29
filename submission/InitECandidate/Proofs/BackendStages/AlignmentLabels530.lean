import InitECandidate.Proofs.BackendStages.Alignment530
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_530 : List (Nat × Nat) :=
[(28, 393256), (27, 393244), (13, 393236), (12, 393216), (26, 393160), (25, 393132), (11, 393128), (10, 393112),
  (24, 393056), (23, 393004), (9, 392984), (8, 392948), (22, 392892), (21, 392864), (7, 392820), (6, 392764),
  (20, 392708), (19, 392632), (5, 392612), (4, 392564), (18, 392508), (17, 392468), (3, 392464), (2, 392444),
  (16, 392388), (1, 392360), (15, 392360)]
theorem localLabelsFinal_530_eq : LabToTarget.sectionLabels 392344 Alignment530.lines [] = (393256, localLabelsFinal_530) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_530_eq
end InitECandidate.Proofs.BackendStages
