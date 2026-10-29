import InitECandidate.Proofs.BackendStages.Alignment473
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_473 : List (Nat × Nat) :=
[(2, 358716), (1, 358688)]
theorem localLabelsFinal_473_eq : LabToTarget.sectionLabels 358688 Alignment473.lines [] = (358716, localLabelsFinal_473) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_473_eq
end InitECandidate.Proofs.BackendStages
