import InitECandidate.Proofs.BackendStages.Alignment708
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_708 : List (Nat × Nat) :=
[(2, 702872), (1, 702712)]
theorem localLabelsFinal_708_eq : LabToTarget.sectionLabels 702712 Alignment708.lines [] = (702872, localLabelsFinal_708) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_708_eq
end InitECandidate.Proofs.BackendStages
