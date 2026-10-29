import InitECandidate.Proofs.BackendStages.Alignment425
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_425 : List (Nat × Nat) :=
[(8, 316216), (7, 316204), (3, 316196), (2, 316176), (6, 316120), (1, 316064), (5, 316064)]
theorem localLabelsFinal_425_eq : LabToTarget.sectionLabels 316048 Alignment425.lines [] = (316216, localLabelsFinal_425) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_425_eq
end InitECandidate.Proofs.BackendStages
