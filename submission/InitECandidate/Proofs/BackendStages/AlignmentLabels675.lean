import InitECandidate.Proofs.BackendStages.Alignment675
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_675 : List (Nat × Nat) :=
[(11, 604184), (7, 604168), (10, 604152), (9, 604112), (3, 604084), (2, 604040), (8, 603984), (6, 603900), (1, 603876),
  (5, 603876)]
theorem localLabelsFinal_675_eq : LabToTarget.sectionLabels 603860 Alignment675.lines [] = (604184, localLabelsFinal_675) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_675_eq
end InitECandidate.Proofs.BackendStages
