import InitECandidate.Proofs.BackendStages.Alignment687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_687 : List (Nat × Nat) :=
[(8, 627408), (7, 627292), (3, 627276), (2, 627248), (6, 627192), (1, 627144), (5, 627144)]
theorem localLabelsFinal_687_eq : LabToTarget.sectionLabels 627128 Alignment687.lines [] = (627408, localLabelsFinal_687) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_687_eq
end InitECandidate.Proofs.BackendStages
