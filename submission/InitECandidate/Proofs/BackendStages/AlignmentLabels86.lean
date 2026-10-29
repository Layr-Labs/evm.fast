import InitECandidate.Proofs.BackendStages.Alignment86
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_86 : List (Nat × Nat) :=
[(2, 8608), (1, 8560)]
theorem localLabelsFinal_86_eq : LabToTarget.sectionLabels 8560 Alignment86.lines [] = (8608, localLabelsFinal_86) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_86_eq
end InitECandidate.Proofs.BackendStages
