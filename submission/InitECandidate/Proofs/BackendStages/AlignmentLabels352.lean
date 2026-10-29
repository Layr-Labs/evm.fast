import InitECandidate.Proofs.BackendStages.Alignment352
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_352 : List (Nat × Nat) :=
[(2, 276520), (1, 276496)]
theorem localLabelsFinal_352_eq : LabToTarget.sectionLabels 276496 Alignment352.lines [] = (276520, localLabelsFinal_352) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_352_eq
end InitECandidate.Proofs.BackendStages
