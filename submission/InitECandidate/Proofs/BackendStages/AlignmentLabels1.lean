import InitECandidate.Proofs.BackendStages.Alignment1
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_1 : List (Nat × Nat) :=
[(2, 764), (1, 760)]
theorem localLabelsFinal_1_eq : LabToTarget.sectionLabels 756 Alignment1.lines [] = (764, localLabelsFinal_1) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_1_eq
end InitECandidate.Proofs.BackendStages
