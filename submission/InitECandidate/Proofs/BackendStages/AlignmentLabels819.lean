import InitECandidate.Proofs.BackendStages.Alignment819
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_819 : List (Nat × Nat) :=
[(3, 890704), (2, 890668), (1, 890648)]
theorem localLabelsFinal_819_eq : LabToTarget.sectionLabels 890648 Alignment819.lines [] = (890704, localLabelsFinal_819) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_819_eq
end InitECandidate.Proofs.BackendStages
