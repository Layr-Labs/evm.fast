import InitECandidate.Proofs.BackendStages.Alignment681
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_681 : List (Nat × Nat) :=
[(2, 605120), (1, 605104)]
theorem localLabelsFinal_681_eq : LabToTarget.sectionLabels 605104 Alignment681.lines [] = (605120, localLabelsFinal_681) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_681_eq
end InitECandidate.Proofs.BackendStages
