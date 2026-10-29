import InitECandidate.Proofs.BackendStages.Alignment87
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_87 : List (Nat × Nat) :=
[(12, 8880), (11, 8868), (5, 8860), (4, 8840), (10, 8784), (9, 8752), (3, 8740), (2, 8716), (8, 8660), (1, 8624),
  (7, 8624)]
theorem localLabelsFinal_87_eq : LabToTarget.sectionLabels 8608 Alignment87.lines [] = (8880, localLabelsFinal_87) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_87_eq
end InitECandidate.Proofs.BackendStages
