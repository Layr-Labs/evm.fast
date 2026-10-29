import InitECandidate.Proofs.BackendStages.Alignment188
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_188 : List (Nat × Nat) :=
[(11, 100460), (10, 100436), (8, 100436), (3, 100424), (2, 100400), (7, 100344), (9, 100308), (6, 100288), (1, 100240),
  (5, 100240)]
theorem localLabelsFinal_188_eq : LabToTarget.sectionLabels 100224 Alignment188.lines [] = (100460, localLabelsFinal_188) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_188_eq
end InitECandidate.Proofs.BackendStages
