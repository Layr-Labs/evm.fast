import InitECandidate.Proofs.BackendStages.Alignment245
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_245 : List (Nat × Nat) :=
[(2, 179136), (1, 179124)]
theorem localLabelsFinal_245_eq : LabToTarget.sectionLabels 179124 Alignment245.lines [] = (179136, localLabelsFinal_245) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_245_eq
end InitECandidate.Proofs.BackendStages
