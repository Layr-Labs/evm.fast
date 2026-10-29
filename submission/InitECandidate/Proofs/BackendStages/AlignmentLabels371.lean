import InitECandidate.Proofs.BackendStages.Alignment371
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_371 : List (Nat × Nat) :=
[(2, 287144), (1, 287128)]
theorem localLabelsFinal_371_eq : LabToTarget.sectionLabels 287128 Alignment371.lines [] = (287144, localLabelsFinal_371) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_371_eq
end InitECandidate.Proofs.BackendStages
