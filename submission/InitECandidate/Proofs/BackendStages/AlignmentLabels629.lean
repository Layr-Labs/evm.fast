import InitECandidate.Proofs.BackendStages.Alignment629
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_629 : List (Nat × Nat) :=
[(6, 524512), (5, 524504), (4, 524484), (3, 524464), (2, 524444), (1, 524420)]
theorem localLabelsFinal_629_eq : LabToTarget.sectionLabels 524420 Alignment629.lines [] = (524512, localLabelsFinal_629) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_629_eq
end InitECandidate.Proofs.BackendStages
