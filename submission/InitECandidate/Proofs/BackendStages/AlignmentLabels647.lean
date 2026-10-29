import InitECandidate.Proofs.BackendStages.Alignment647
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_647 : List (Nat × Nat) :=
[(2, 554392), (1, 554332)]
theorem localLabelsFinal_647_eq : LabToTarget.sectionLabels 554332 Alignment647.lines [] = (554392, localLabelsFinal_647) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_647_eq
end InitECandidate.Proofs.BackendStages
