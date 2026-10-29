import InitECandidate.Proofs.BackendStages.Alignment178
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_178 : List (Nat × Nat) :=
[(2, 97368), (1, 97356)]
theorem localLabelsFinal_178_eq : LabToTarget.sectionLabels 97356 Alignment178.lines [] = (97368, localLabelsFinal_178) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_178_eq
end InitECandidate.Proofs.BackendStages
