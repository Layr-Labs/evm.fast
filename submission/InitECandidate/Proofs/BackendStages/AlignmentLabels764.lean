import InitECandidate.Proofs.BackendStages.Alignment764
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_764 : List (Nat × Nat) :=
[(12, 763156), (11, 763144), (5, 763136), (4, 763116), (10, 763060), (9, 763028), (3, 763020), (2, 763000), (8, 762944),
  (1, 762908), (7, 762908)]
theorem localLabelsFinal_764_eq : LabToTarget.sectionLabels 762892 Alignment764.lines [] = (763156, localLabelsFinal_764) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_764_eq
end InitECandidate.Proofs.BackendStages
