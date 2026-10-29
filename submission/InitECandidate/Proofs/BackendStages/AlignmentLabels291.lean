import InitECandidate.Proofs.BackendStages.Alignment291
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_291 : List (Nat × Nat) :=
[(12, 231344), (9, 231332), (11, 231324), (10, 231312), (8, 231280), (7, 231276), (3, 231252), (2, 231212), (6, 231156),
  (1, 231104), (5, 231104)]
theorem localLabelsFinal_291_eq : LabToTarget.sectionLabels 231088 Alignment291.lines [] = (231344, localLabelsFinal_291) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_291_eq
end InitECandidate.Proofs.BackendStages
