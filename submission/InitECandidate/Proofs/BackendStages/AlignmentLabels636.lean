import InitECandidate.Proofs.BackendStages.Alignment636
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_636 : List (Nat × Nat) :=
[(7, 531964), (3, 531956), (6, 531948), (5, 531932), (4, 531904), (2, 531876), (1, 531868)]
theorem localLabelsFinal_636_eq : LabToTarget.sectionLabels 531868 Alignment636.lines [] = (531964, localLabelsFinal_636) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_636_eq
end InitECandidate.Proofs.BackendStages
