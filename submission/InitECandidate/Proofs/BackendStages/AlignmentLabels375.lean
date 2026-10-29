import InitECandidate.Proofs.BackendStages.Alignment375
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_375 : List (Nat × Nat) :=
[(2, 287208), (1, 287192)]
theorem localLabelsFinal_375_eq : LabToTarget.sectionLabels 287192 Alignment375.lines [] = (287208, localLabelsFinal_375) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_375_eq
end InitECandidate.Proofs.BackendStages
