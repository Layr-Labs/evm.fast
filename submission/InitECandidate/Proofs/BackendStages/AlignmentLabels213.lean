import InitECandidate.Proofs.BackendStages.Alignment213
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_213 : List (Nat × Nat) :=
[(2, 123900), (1, 123860)]
theorem localLabelsFinal_213_eq : LabToTarget.sectionLabels 123860 Alignment213.lines [] = (123900, localLabelsFinal_213) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_213_eq
end InitECandidate.Proofs.BackendStages
