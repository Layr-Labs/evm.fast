import InitECandidate.Proofs.BackendStages.Alignment678
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_678 : List (Nat × Nat) :=
[(8, 604376), (7, 604364), (3, 604356), (2, 604336), (6, 604280), (1, 604236), (5, 604236)]
theorem localLabelsFinal_678_eq : LabToTarget.sectionLabels 604220 Alignment678.lines [] = (604376, localLabelsFinal_678) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_678_eq
end InitECandidate.Proofs.BackendStages
