import InitECandidate.Proofs.BackendStages.Alignment713
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_713 : List (Nat × Nat) :=
[(2, 704604), (1, 704576)]
theorem localLabelsFinal_713_eq : LabToTarget.sectionLabels 704576 Alignment713.lines [] = (704604, localLabelsFinal_713) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_713_eq
end InitECandidate.Proofs.BackendStages
