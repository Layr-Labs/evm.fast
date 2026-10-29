import InitECandidate.Proofs.BackendStages.Alignment84
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_84 : List (Nat × Nat) :=
[(2, 8420), (1, 8268)]
theorem localLabelsFinal_84_eq : LabToTarget.sectionLabels 8268 Alignment84.lines [] = (8420, localLabelsFinal_84) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_84_eq
end InitECandidate.Proofs.BackendStages
