import InitECandidate.Proofs.BackendStages.Alignment604
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_604 : List (Nat × Nat) :=
[(2, 477832), (1, 477760)]
theorem localLabelsFinal_604_eq : LabToTarget.sectionLabels 477760 Alignment604.lines [] = (477832, localLabelsFinal_604) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_604_eq
end InitECandidate.Proofs.BackendStages
