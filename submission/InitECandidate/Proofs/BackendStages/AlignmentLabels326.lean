import InitECandidate.Proofs.BackendStages.Alignment326
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_326 : List (Nat × Nat) :=
[(4, 258164), (3, 258160), (2, 258156), (1, 258136)]
theorem localLabelsFinal_326_eq : LabToTarget.sectionLabels 258136 Alignment326.lines [] = (258164, localLabelsFinal_326) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_326_eq
end InitECandidate.Proofs.BackendStages
