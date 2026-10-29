import InitECandidate.Proofs.BackendStages.Alignment462
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_462 : List (Nat × Nat) :=
[(3, 356888), (2, 356880), (1, 356852)]
theorem localLabelsFinal_462_eq : LabToTarget.sectionLabels 356852 Alignment462.lines [] = (356888, localLabelsFinal_462) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_462_eq
end InitECandidate.Proofs.BackendStages
