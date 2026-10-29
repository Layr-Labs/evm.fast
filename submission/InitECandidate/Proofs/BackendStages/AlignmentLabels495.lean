import InitECandidate.Proofs.BackendStages.Alignment495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_495 : List (Nat × Nat) :=
[(9, 367264), (8, 367248), (7, 367228), (3, 367220), (2, 367196), (6, 367140), (1, 367112), (5, 367112)]
theorem localLabelsFinal_495_eq : LabToTarget.sectionLabels 367096 Alignment495.lines [] = (367264, localLabelsFinal_495) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_495_eq
end InitECandidate.Proofs.BackendStages
