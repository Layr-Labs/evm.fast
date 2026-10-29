import InitECandidate.Proofs.BackendStages.Alignment67
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_67 : List (Nat × Nat) :=
[(2, 4968), (1, 4872)]
theorem localLabelsFinal_67_eq : LabToTarget.sectionLabels 4872 Alignment67.lines [] = (4968, localLabelsFinal_67) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_67_eq
end InitECandidate.Proofs.BackendStages
