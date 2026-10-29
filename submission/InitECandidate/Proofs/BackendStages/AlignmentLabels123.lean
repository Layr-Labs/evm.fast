import InitECandidate.Proofs.BackendStages.Alignment123
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_123 : List (Nat × Nat) :=
[(7, 18324), (3, 18312), (6, 18304), (5, 18300), (4, 18280), (2, 18240), (1, 18228)]
theorem localLabelsFinal_123_eq : LabToTarget.sectionLabels 18228 Alignment123.lines [] = (18324, localLabelsFinal_123) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_123_eq
end InitECandidate.Proofs.BackendStages
