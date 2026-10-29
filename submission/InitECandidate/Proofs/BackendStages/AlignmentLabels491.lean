import InitECandidate.Proofs.BackendStages.Alignment491
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_491 : List (Nat × Nat) :=
[(2, 366704), (1, 366680)]
theorem localLabelsFinal_491_eq : LabToTarget.sectionLabels 366680 Alignment491.lines [] = (366704, localLabelsFinal_491) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_491_eq
end InitECandidate.Proofs.BackendStages
