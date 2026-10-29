import InitECandidate.Proofs.BackendStages.Alignment124
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_124 : List (Nat × Nat) :=
[(2, 18520), (1, 18324)]
theorem localLabelsFinal_124_eq : LabToTarget.sectionLabels 18324 Alignment124.lines [] = (18520, localLabelsFinal_124) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_124_eq
end InitECandidate.Proofs.BackendStages
