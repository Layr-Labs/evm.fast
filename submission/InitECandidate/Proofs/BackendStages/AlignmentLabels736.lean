import InitECandidate.Proofs.BackendStages.Alignment736
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_736 : List (Nat × Nat) :=
[(12, 736028), (11, 735964), (5, 735928), (4, 735876), (10, 735820), (9, 735744), (3, 735716), (2, 735672), (8, 735616),
  (1, 735500), (7, 735500)]
theorem localLabelsFinal_736_eq : LabToTarget.sectionLabels 735484 Alignment736.lines [] = (736028, localLabelsFinal_736) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_736_eq
end InitECandidate.Proofs.BackendStages
