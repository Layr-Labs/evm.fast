import InitECandidate.Proofs.BackendStages.Alignment448
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_448 : List (Nat × Nat) :=
[(17, 329344), (16, 329332), (7, 329324), (6, 329300), (15, 329244), (14, 329216), (5, 329204), (4, 329180),
  (13, 329124), (12, 329088), (11, 329052), (3, 329040), (2, 329012), (10, 328956), (1, 328892), (9, 328892)]
theorem localLabelsFinal_448_eq : LabToTarget.sectionLabels 328876 Alignment448.lines [] = (329344, localLabelsFinal_448) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_448_eq
end InitECandidate.Proofs.BackendStages
