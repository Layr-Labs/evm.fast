import InitECandidate.Proofs.BackendStages.Alignment83
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_83 : List (Nat × Nat) :=
[(2, 8268), (1, 8212)]
theorem localLabelsFinal_83_eq : LabToTarget.sectionLabels 8212 Alignment83.lines [] = (8268, localLabelsFinal_83) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_83_eq
end InitECandidate.Proofs.BackendStages
