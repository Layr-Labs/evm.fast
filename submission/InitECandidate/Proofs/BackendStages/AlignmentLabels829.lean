import InitECandidate.Proofs.BackendStages.Alignment829
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_829 : List (Nat × Nat) :=
[(17, 896196), (16, 896184), (15, 896160), (14, 896156), (13, 896140), (12, 896136), (11, 896120), (10, 896096),
  (9, 896084), (8, 896040), (7, 896020), (3, 896008), (2, 895980), (6, 895924), (1, 895884), (5, 895884)]
theorem localLabelsFinal_829_eq : LabToTarget.sectionLabels 895868 Alignment829.lines [] = (896196, localLabelsFinal_829) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_829_eq
end InitECandidate.Proofs.BackendStages
