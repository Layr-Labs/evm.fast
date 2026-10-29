import InitECandidate.Proofs.BackendStages.Alignment70
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_70 : List (Nat × Nat) :=
[(2, 5440), (1, 5412)]
theorem localLabelsFinal_70_eq : LabToTarget.sectionLabels 5412 Alignment70.lines [] = (5440, localLabelsFinal_70) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_70_eq
end InitECandidate.Proofs.BackendStages
