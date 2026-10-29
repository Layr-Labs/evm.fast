import InitECandidate.Proofs.BackendStages.Alignment404
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_404 : List (Nat × Nat) :=
[(21, 306524), (20, 306512), (9, 306504), (8, 306480), (19, 306424), (18, 306396), (7, 306388), (6, 306368),
  (17, 306312), (16, 306276), (15, 306256), (5, 306244), (4, 306216), (14, 306160), (13, 306112), (3, 306104),
  (2, 306084), (12, 306028), (1, 305968), (11, 305968)]
theorem localLabelsFinal_404_eq : LabToTarget.sectionLabels 305952 Alignment404.lines [] = (306524, localLabelsFinal_404) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_404_eq
end InitECandidate.Proofs.BackendStages
