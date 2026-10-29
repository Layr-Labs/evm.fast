import InitECandidate.Proofs.BackendStages.Alignment474
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_474 : List (Nat × Nat) :=
[(2, 358796), (1, 358716)]
theorem localLabelsFinal_474_eq : LabToTarget.sectionLabels 358716 Alignment474.lines [] = (358796, localLabelsFinal_474) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_474_eq
end InitECandidate.Proofs.BackendStages
