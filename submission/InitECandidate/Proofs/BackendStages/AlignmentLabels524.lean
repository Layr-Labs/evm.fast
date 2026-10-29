import InitECandidate.Proofs.BackendStages.Alignment524
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_524 : List (Nat × Nat) :=
[(8, 389976), (7, 389964), (3, 389956), (2, 389936), (6, 389880), (1, 389820), (5, 389820)]
theorem localLabelsFinal_524_eq : LabToTarget.sectionLabels 389804 Alignment524.lines [] = (389976, localLabelsFinal_524) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_524_eq
end InitECandidate.Proofs.BackendStages
