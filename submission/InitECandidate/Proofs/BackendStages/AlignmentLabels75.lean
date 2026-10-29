import InitECandidate.Proofs.BackendStages.Alignment75
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_75 : List (Nat × Nat) :=
[(2, 6284), (1, 6264)]
theorem localLabelsFinal_75_eq : LabToTarget.sectionLabels 6264 Alignment75.lines [] = (6284, localLabelsFinal_75) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_75_eq
end InitECandidate.Proofs.BackendStages
