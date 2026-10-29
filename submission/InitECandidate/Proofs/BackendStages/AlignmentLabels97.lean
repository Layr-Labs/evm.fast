import InitECandidate.Proofs.BackendStages.Alignment97
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_97 : List (Nat × Nat) :=
[(5, 10456), (3, 10448), (4, 10440), (2, 10416), (1, 10412)]
theorem localLabelsFinal_97_eq : LabToTarget.sectionLabels 10412 Alignment97.lines [] = (10456, localLabelsFinal_97) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_97_eq
end InitECandidate.Proofs.BackendStages
