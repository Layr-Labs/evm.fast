import InitECandidate.Proofs.BackendStages.Alignment470
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_470 : List (Nat × Nat) :=
[(3, 358100), (2, 358060), (1, 358016)]
theorem localLabelsFinal_470_eq : LabToTarget.sectionLabels 358016 Alignment470.lines [] = (358100, localLabelsFinal_470) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_470_eq
end InitECandidate.Proofs.BackendStages
