import InitECandidate.Proofs.BackendStages.Alignment644
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_644 : List (Nat × Nat) :=
[(9, 541908), (8, 541896), (7, 541820), (3, 541796), (2, 541756), (6, 541700), (1, 541596), (5, 541596)]
theorem localLabelsFinal_644_eq : LabToTarget.sectionLabels 541580 Alignment644.lines [] = (541908, localLabelsFinal_644) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_644_eq
end InitECandidate.Proofs.BackendStages
