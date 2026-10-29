import InitECandidate.Proofs.BackendStages.Alignment372
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_372 : List (Nat × Nat) :=
[(2, 287160), (1, 287144)]
theorem localLabelsFinal_372_eq : LabToTarget.sectionLabels 287144 Alignment372.lines [] = (287160, localLabelsFinal_372) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_372_eq
end InitECandidate.Proofs.BackendStages
