import InitECandidate.Proofs.BackendStages.Alignment122
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_122 : List (Nat × Nat) :=
[(12, 18228), (11, 18220), (10, 18216), (9, 18176), (8, 18168), (7, 18128), (6, 18120), (5, 18080), (4, 18072),
  (3, 18032), (2, 18024), (1, 17980)]
theorem localLabelsFinal_122_eq : LabToTarget.sectionLabels 17980 Alignment122.lines [] = (18228, localLabelsFinal_122) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_122_eq
end InitECandidate.Proofs.BackendStages
