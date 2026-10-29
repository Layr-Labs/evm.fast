import InitECandidate.Proofs.BackendStages.Alignment156
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_156 : List (Nat × Nat) :=
[(6, 86072), (4, 85824), (5, 85720), (3, 84432), (1, 84216), (2, 84216)]
theorem localLabelsFinal_156_eq : LabToTarget.sectionLabels 84200 Alignment156.lines [] = (86072, localLabelsFinal_156) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_156_eq
end InitECandidate.Proofs.BackendStages
