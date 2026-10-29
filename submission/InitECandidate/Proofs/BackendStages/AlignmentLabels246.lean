import InitECandidate.Proofs.BackendStages.Alignment246
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_246 : List (Nat × Nat) :=
[(2, 179176), (1, 179136)]
theorem localLabelsFinal_246_eq : LabToTarget.sectionLabels 179136 Alignment246.lines [] = (179176, localLabelsFinal_246) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_246_eq
end InitECandidate.Proofs.BackendStages
