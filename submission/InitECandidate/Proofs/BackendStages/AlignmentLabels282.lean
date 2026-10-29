import InitECandidate.Proofs.BackendStages.Alignment282
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_282 : List (Nat × Nat) :=
[(11, 224116), (10, 224104), (9, 224080), (8, 224060), (7, 224040), (3, 224024), (2, 223992), (6, 223936), (1, 223888),
  (5, 223888)]
theorem localLabelsFinal_282_eq : LabToTarget.sectionLabels 223872 Alignment282.lines [] = (224116, localLabelsFinal_282) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_282_eq
end InitECandidate.Proofs.BackendStages
