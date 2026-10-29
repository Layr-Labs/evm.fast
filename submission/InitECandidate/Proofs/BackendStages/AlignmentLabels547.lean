import InitECandidate.Proofs.BackendStages.Alignment547
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_547 : List (Nat × Nat) :=
[(12, 406244), (11, 406232), (5, 406224), (4, 406200), (10, 406144), (9, 406100), (3, 406096), (2, 406076), (8, 406020),
  (1, 405992), (7, 405992)]
theorem localLabelsFinal_547_eq : LabToTarget.sectionLabels 405976 Alignment547.lines [] = (406244, localLabelsFinal_547) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_547_eq
end InitECandidate.Proofs.BackendStages
