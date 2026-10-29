import InitECandidate.Proofs.BackendStages.Alignment0
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_0 : List (Nat × Nat) :=
[(6, 756), (1, 752), (5, 108), (4, 52), (3, 48), (2, 44)]
theorem localLabelsFinal_0_eq : LabToTarget.sectionLabels 0 Alignment0.lines [] = (756, localLabelsFinal_0) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_0_eq
end InitECandidate.Proofs.BackendStages
