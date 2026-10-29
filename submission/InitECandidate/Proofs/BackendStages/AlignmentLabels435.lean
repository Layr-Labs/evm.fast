import InitECandidate.Proofs.BackendStages.Alignment435
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_435 : List (Nat × Nat) :=
[(12, 323300), (11, 323264), (5, 323248), (4, 323216), (10, 323160), (9, 323116), (3, 323104), (2, 323076), (8, 323020),
  (1, 322976), (7, 322976)]
theorem localLabelsFinal_435_eq : LabToTarget.sectionLabels 322960 Alignment435.lines [] = (323300, localLabelsFinal_435) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_435_eq
end InitECandidate.Proofs.BackendStages
