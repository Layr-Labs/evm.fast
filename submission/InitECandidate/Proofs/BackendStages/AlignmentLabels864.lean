import InitECandidate.Proofs.BackendStages.Alignment864
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_864 : List (Nat × Nat) :=
[(8, 964000), (7, 963988), (3, 963976), (2, 963952), (6, 963896), (1, 963856), (5, 963856)]
theorem localLabelsFinal_864_eq : LabToTarget.sectionLabels 963836 Alignment864.lines [] = (964000, localLabelsFinal_864) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_864_eq
end InitECandidate.Proofs.BackendStages
