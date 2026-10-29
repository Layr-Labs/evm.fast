import InitECandidate.Proofs.BackendStages.Alignment709
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_709 : List (Nat × Nat) :=
[(2, 703056), (1, 702872)]
theorem localLabelsFinal_709_eq : LabToTarget.sectionLabels 702872 Alignment709.lines [] = (703056, localLabelsFinal_709) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_709_eq
end InitECandidate.Proofs.BackendStages
