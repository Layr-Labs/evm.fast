import InitECandidate.Proofs.BackendStages.Alignment677
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_677 : List (Nat × Nat) :=
[(2, 604220), (1, 604200)]
theorem localLabelsFinal_677_eq : LabToTarget.sectionLabels 604200 Alignment677.lines [] = (604220, localLabelsFinal_677) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_677_eq
end InitECandidate.Proofs.BackendStages
