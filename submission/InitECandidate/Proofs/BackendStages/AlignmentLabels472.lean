import InitECandidate.Proofs.BackendStages.Alignment472
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_472 : List (Nat × Nat) :=
[(8, 358688), (7, 358604), (3, 358588), (2, 358556), (6, 358500), (1, 358444), (5, 358444)]
theorem localLabelsFinal_472_eq : LabToTarget.sectionLabels 358428 Alignment472.lines [] = (358688, localLabelsFinal_472) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_472_eq
end InitECandidate.Proofs.BackendStages
