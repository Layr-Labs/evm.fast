import InitECandidate.Proofs.BackendStages.Alignment368
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_368 : List (Nat × Nat) :=
[(2, 286436), (1, 286424)]
theorem localLabelsFinal_368_eq : LabToTarget.sectionLabels 286424 Alignment368.lines [] = (286436, localLabelsFinal_368) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_368_eq
end InitECandidate.Proofs.BackendStages
