import InitECandidate.Proofs.BackendStages.Alignment2
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_2 : List (Nat × Nat) :=
[(2, 772), (1, 768)]
theorem localLabelsFinal_2_eq : LabToTarget.sectionLabels 764 Alignment2.lines [] = (772, localLabelsFinal_2) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_2_eq
end InitECandidate.Proofs.BackendStages
