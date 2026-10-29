import InitECandidate.Proofs.BackendStages.Alignment637
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_637 : List (Nat × Nat) :=
[(11, 532184), (6, 532176), (10, 532168), (8, 532148), (9, 532140), (7, 532052), (5, 532024), (3, 532020), (4, 532012),
  (2, 531980), (1, 531964)]
theorem localLabelsFinal_637_eq : LabToTarget.sectionLabels 531964 Alignment637.lines [] = (532184, localLabelsFinal_637) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_637_eq
end InitECandidate.Proofs.BackendStages
