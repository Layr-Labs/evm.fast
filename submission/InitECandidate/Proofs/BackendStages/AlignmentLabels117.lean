import InitECandidate.Proofs.BackendStages.Alignment117
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_117 : List (Nat × Nat) :=
[(2, 12180), (1, 12056)]
theorem localLabelsFinal_117_eq : LabToTarget.sectionLabels 12056 Alignment117.lines [] = (12180, localLabelsFinal_117) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_117_eq
end InitECandidate.Proofs.BackendStages
