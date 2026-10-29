import InitECandidate.Proofs.BackendStages.Alignment496
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_496 : List (Nat × Nat) :=
[(10, 367420), (9, 367408), (7, 367408), (3, 367400), (2, 367380), (6, 367324), (8, 367296), (1, 367280), (5, 367280)]
theorem localLabelsFinal_496_eq : LabToTarget.sectionLabels 367264 Alignment496.lines [] = (367420, localLabelsFinal_496) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_496_eq
end InitECandidate.Proofs.BackendStages
