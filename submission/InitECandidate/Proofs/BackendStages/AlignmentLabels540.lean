import InitECandidate.Proofs.BackendStages.Alignment540
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_540 : List (Nat × Nat) :=
[(3, 400240), (2, 400232), (1, 400180)]
theorem localLabelsFinal_540_eq : LabToTarget.sectionLabels 400180 Alignment540.lines [] = (400240, localLabelsFinal_540) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_540_eq
end InitECandidate.Proofs.BackendStages
