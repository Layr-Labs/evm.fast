import InitECandidate.Proofs.BackendStages.Alignment676
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_676 : List (Nat × Nat) :=
[(2, 604200), (1, 604184)]
theorem localLabelsFinal_676_eq : LabToTarget.sectionLabels 604184 Alignment676.lines [] = (604200, localLabelsFinal_676) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_676_eq
end InitECandidate.Proofs.BackendStages
