import InitECandidate.Proofs.BackendStages.Alignment88
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_88 : List (Nat × Nat) :=
[(2, 8928), (1, 8880)]
theorem localLabelsFinal_88_eq : LabToTarget.sectionLabels 8880 Alignment88.lines [] = (8928, localLabelsFinal_88) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_88_eq
end InitECandidate.Proofs.BackendStages
