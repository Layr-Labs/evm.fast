import InitECandidate.Proofs.BackendStages.Alignment490
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_490 : List (Nat × Nat) :=
[(2, 366680), (1, 366644)]
theorem localLabelsFinal_490_eq : LabToTarget.sectionLabels 366644 Alignment490.lines [] = (366680, localLabelsFinal_490) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_490_eq
end InitECandidate.Proofs.BackendStages
