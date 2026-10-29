import InitECandidate.Proofs.BackendStages.Alignment76
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_76 : List (Nat × Nat) :=
[(2, 6312), (1, 6284)]
theorem localLabelsFinal_76_eq : LabToTarget.sectionLabels 6284 Alignment76.lines [] = (6312, localLabelsFinal_76) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_76_eq
end InitECandidate.Proofs.BackendStages
