import InitECandidate.Proofs.BackendStages.Alignment458
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_458 : List (Nat × Nat) :=
[(12, 341312), (11, 341300), (5, 341284), (4, 341256), (10, 341200), (9, 341156), (3, 341148), (2, 341124), (8, 341068),
  (1, 341036), (7, 341036)]
theorem localLabelsFinal_458_eq : LabToTarget.sectionLabels 341020 Alignment458.lines [] = (341312, localLabelsFinal_458) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_458_eq
end InitECandidate.Proofs.BackendStages
