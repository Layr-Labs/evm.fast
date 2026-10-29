import InitECandidate.Proofs.BackendStages.Alignment347
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_347 : List (Nat × Nat) :=
[(2, 276424), (1, 276416)]
theorem localLabelsFinal_347_eq : LabToTarget.sectionLabels 276416 Alignment347.lines [] = (276424, localLabelsFinal_347) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_347_eq
end InitECandidate.Proofs.BackendStages
