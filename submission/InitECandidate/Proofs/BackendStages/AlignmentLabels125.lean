import InitECandidate.Proofs.BackendStages.Alignment125
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_125 : List (Nat × Nat) :=
[(2, 18592), (1, 18520)]
theorem localLabelsFinal_125_eq : LabToTarget.sectionLabels 18520 Alignment125.lines [] = (18592, localLabelsFinal_125) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_125_eq
end InitECandidate.Proofs.BackendStages
