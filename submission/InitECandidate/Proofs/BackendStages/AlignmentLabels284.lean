import InitECandidate.Proofs.BackendStages.Alignment284
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_284 : List (Nat × Nat) :=
[(13, 227204), (12, 227192), (5, 227184), (4, 227164), (11, 227108), (10, 227056), (3, 227052), (2, 227032),
  (9, 226976), (8, 226944), (1, 226908), (7, 226908)]
theorem localLabelsFinal_284_eq : LabToTarget.sectionLabels 226892 Alignment284.lines [] = (227204, localLabelsFinal_284) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_284_eq
end InitECandidate.Proofs.BackendStages
