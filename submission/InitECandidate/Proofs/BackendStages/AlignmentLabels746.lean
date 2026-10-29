import InitECandidate.Proofs.BackendStages.Alignment746
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_746 : List (Nat × Nat) :=
[(8, 746140), (7, 746128), (3, 746120), (2, 746100), (6, 746044), (1, 746008), (5, 746008)]
theorem localLabelsFinal_746_eq : LabToTarget.sectionLabels 745992 Alignment746.lines [] = (746140, localLabelsFinal_746) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_746_eq
end InitECandidate.Proofs.BackendStages
