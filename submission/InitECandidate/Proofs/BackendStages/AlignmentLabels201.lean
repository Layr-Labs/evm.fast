import InitECandidate.Proofs.BackendStages.Alignment201
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_201 : List (Nat × Nat) :=
[(2, 107676), (1, 107668)]
theorem localLabelsFinal_201_eq : LabToTarget.sectionLabels 107668 Alignment201.lines [] = (107676, localLabelsFinal_201) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_201_eq
end InitECandidate.Proofs.BackendStages
