import InitECandidate.Proofs.BackendStages.Alignment109
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_109 : List (Nat × Nat) :=
[(2, 11356), (1, 11304)]
theorem localLabelsFinal_109_eq : LabToTarget.sectionLabels 11304 Alignment109.lines [] = (11356, localLabelsFinal_109) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_109_eq
end InitECandidate.Proofs.BackendStages
