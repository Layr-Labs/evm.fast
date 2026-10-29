import InitECandidate.Proofs.BackendStages.Alignment351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_351 : List (Nat × Nat) :=
[(2, 276496), (1, 276480)]
theorem localLabelsFinal_351_eq : LabToTarget.sectionLabels 276480 Alignment351.lines [] = (276496, localLabelsFinal_351) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_351_eq
end InitECandidate.Proofs.BackendStages
