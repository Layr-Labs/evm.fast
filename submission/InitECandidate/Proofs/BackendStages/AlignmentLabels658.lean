import InitECandidate.Proofs.BackendStages.Alignment658
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_658 : List (Nat × Nat) :=
[(13, 583864), (12, 583852), (11, 583736), (5, 583712), (4, 583672), (10, 583616), (9, 583472), (3, 583468),
  (2, 583448), (8, 583392), (1, 583360), (7, 583360)]
theorem localLabelsFinal_658_eq : LabToTarget.sectionLabels 583344 Alignment658.lines [] = (583864, localLabelsFinal_658) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_658_eq
end InitECandidate.Proofs.BackendStages
