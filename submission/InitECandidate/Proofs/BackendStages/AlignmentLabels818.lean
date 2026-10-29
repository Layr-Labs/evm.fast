import InitECandidate.Proofs.BackendStages.Alignment818
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_818 : List (Nat × Nat) :=
[(13, 890648), (12, 886524), (5, 886516), (4, 886492), (11, 886436), (10, 886400), (3, 886396), (2, 886380),
  (9, 886324), (8, 886292), (1, 886256), (7, 886256)]
theorem localLabelsFinal_818_eq : LabToTarget.sectionLabels 886240 Alignment818.lines [] = (890648, localLabelsFinal_818) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_818_eq
end InitECandidate.Proofs.BackendStages
