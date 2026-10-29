import InitECandidate.Proofs.BackendStages.Alignment663
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_663 : List (Nat × Nat) :=
[(2, 594980), (1, 594960)]
theorem localLabelsFinal_663_eq : LabToTarget.sectionLabels 594960 Alignment663.lines [] = (594980, localLabelsFinal_663) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_663_eq
end InitECandidate.Proofs.BackendStages
