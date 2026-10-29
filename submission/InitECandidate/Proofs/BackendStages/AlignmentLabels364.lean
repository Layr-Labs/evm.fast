import InitECandidate.Proofs.BackendStages.Alignment364
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_364 : List (Nat × Nat) :=
[(15, 281144), (9, 281128), (14, 281112), (13, 281088), (5, 281060), (4, 281016), (12, 280960), (11, 280928),
  (3, 280924), (2, 280904), (10, 280848), (8, 280788), (1, 280764), (7, 280764)]
theorem localLabelsFinal_364_eq : LabToTarget.sectionLabels 280748 Alignment364.lines [] = (281144, localLabelsFinal_364) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_364_eq
end InitECandidate.Proofs.BackendStages
