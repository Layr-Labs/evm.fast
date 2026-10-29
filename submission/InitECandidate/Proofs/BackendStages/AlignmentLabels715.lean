import InitECandidate.Proofs.BackendStages.Alignment715
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_715 : List (Nat × Nat) :=
[(2, 722752), (1, 722724)]
theorem localLabelsFinal_715_eq : LabToTarget.sectionLabels 722724 Alignment715.lines [] = (722752, localLabelsFinal_715) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_715_eq
end InitECandidate.Proofs.BackendStages
