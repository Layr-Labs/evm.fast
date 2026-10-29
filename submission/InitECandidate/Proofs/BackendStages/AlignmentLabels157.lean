import InitECandidate.Proofs.BackendStages.Alignment157
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_157 : List (Nat × Nat) :=
[(16, 86444), (15, 86432), (3, 86424), (2, 86404), (14, 86348), (13, 86324), (7, 86324), (8, 86316), (6, 86276),
  (12, 86272), (10, 86268), (11, 86260), (9, 86108), (1, 86088), (5, 86088)]
theorem localLabelsFinal_157_eq : LabToTarget.sectionLabels 86072 Alignment157.lines [] = (86444, localLabelsFinal_157) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_157_eq
end InitECandidate.Proofs.BackendStages
