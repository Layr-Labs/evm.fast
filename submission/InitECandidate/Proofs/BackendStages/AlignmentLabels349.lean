import InitECandidate.Proofs.BackendStages.Alignment349
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_349 : List (Nat × Nat) :=
[(2, 276456), (1, 276448)]
theorem localLabelsFinal_349_eq : LabToTarget.sectionLabels 276448 Alignment349.lines [] = (276456, localLabelsFinal_349) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_349_eq
end InitECandidate.Proofs.BackendStages
