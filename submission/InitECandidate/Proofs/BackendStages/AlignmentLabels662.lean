import InitECandidate.Proofs.BackendStages.Alignment662
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_662 : List (Nat × Nat) :=
[(2, 594960), (1, 594860)]
theorem localLabelsFinal_662_eq : LabToTarget.sectionLabels 594860 Alignment662.lines [] = (594960, localLabelsFinal_662) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_662_eq
end InitECandidate.Proofs.BackendStages
