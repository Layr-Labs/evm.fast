import InitECandidate.Proofs.BackendStages.Alignment90
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_90 : List (Nat × Nat) :=
[(17, 9732), (15, 9720), (16, 9712), (14, 9676), (13, 9668), (5, 9656), (4, 9628), (12, 9572), (11, 9540), (9, 9540),
  (3, 9532), (2, 9512), (8, 9456), (10, 9420), (1, 9388), (7, 9388)]
theorem localLabelsFinal_90_eq : LabToTarget.sectionLabels 9372 Alignment90.lines [] = (9732, localLabelsFinal_90) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_90_eq
end InitECandidate.Proofs.BackendStages
