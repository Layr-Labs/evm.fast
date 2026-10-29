import InitECandidate.Proofs.BackendStages.Alignment142
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_142 : List (Nat × Nat) :=
[(11, 28912), (10, 28892), (9, 28816), (8, 28804), (7, 28788), (6, 28776), (5, 28760), (4, 28748), (3, 28732),
  (2, 28712), (1, 28668)]
theorem localLabelsFinal_142_eq : LabToTarget.sectionLabels 28668 Alignment142.lines [] = (28912, localLabelsFinal_142) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_142_eq
end InitECandidate.Proofs.BackendStages
