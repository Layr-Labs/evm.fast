import InitECandidate.Proofs.BackendStages.Alignment642
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_642 : List (Nat × Nat) :=
[(14, 541028), (13, 541016), (12, 540940), (5, 540916), (4, 540876), (11, 540820), (10, 540716), (9, 540640),
  (3, 540632), (2, 540608), (8, 540552), (1, 540520), (7, 540520)]
theorem localLabelsFinal_642_eq : LabToTarget.sectionLabels 540504 Alignment642.lines [] = (541028, localLabelsFinal_642) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_642_eq
end InitECandidate.Proofs.BackendStages
