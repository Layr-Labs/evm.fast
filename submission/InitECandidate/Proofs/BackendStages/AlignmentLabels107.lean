import InitECandidate.Proofs.BackendStages.Alignment107
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_107 : List (Nat × Nat) :=
[(2, 11208), (1, 11156)]
theorem localLabelsFinal_107_eq : LabToTarget.sectionLabels 11156 Alignment107.lines [] = (11208, localLabelsFinal_107) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_107_eq
end InitECandidate.Proofs.BackendStages
