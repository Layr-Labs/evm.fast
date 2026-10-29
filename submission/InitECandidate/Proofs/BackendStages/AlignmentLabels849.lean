import InitECandidate.Proofs.BackendStages.Alignment849
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_849 : List (Nat × Nat) :=
[(13, 921948), (12, 921936), (5, 921928), (4, 921904), (11, 921848), (10, 921812), (9, 921780), (3, 921768),
  (2, 921740), (8, 921684), (1, 921648), (7, 921648)]
theorem localLabelsFinal_849_eq : LabToTarget.sectionLabels 921632 Alignment849.lines [] = (921948, localLabelsFinal_849) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_849_eq
end InitECandidate.Proofs.BackendStages
