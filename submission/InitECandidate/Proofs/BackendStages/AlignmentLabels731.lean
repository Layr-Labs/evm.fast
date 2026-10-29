import InitECandidate.Proofs.BackendStages.Alignment731
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_731 : List (Nat × Nat) :=
[(2, 733692), (1, 733464)]
theorem localLabelsFinal_731_eq : LabToTarget.sectionLabels 733464 Alignment731.lines [] = (733692, localLabelsFinal_731) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_731_eq
end InitECandidate.Proofs.BackendStages
