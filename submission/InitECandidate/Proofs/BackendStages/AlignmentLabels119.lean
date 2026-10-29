import InitECandidate.Proofs.BackendStages.Alignment119
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_119 : List (Nat × Nat) :=
[(2, 12564), (1, 12320)]
theorem localLabelsFinal_119_eq : LabToTarget.sectionLabels 12320 Alignment119.lines [] = (12564, localLabelsFinal_119) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_119_eq
end InitECandidate.Proofs.BackendStages
