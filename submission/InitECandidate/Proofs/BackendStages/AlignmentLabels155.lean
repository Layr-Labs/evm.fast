import InitECandidate.Proofs.BackendStages.Alignment155
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_155 : List (Nat × Nat) :=
[(16, 84200), (15, 83416), (7, 83408), (6, 83384), (14, 83328), (13, 83280), (5, 83276), (4, 83256), (12, 83200),
  (11, 83152), (3, 83148), (2, 83128), (10, 83072), (1, 83040), (9, 83040)]
theorem localLabelsFinal_155_eq : LabToTarget.sectionLabels 83024 Alignment155.lines [] = (84200, localLabelsFinal_155) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_155_eq
end InitECandidate.Proofs.BackendStages
