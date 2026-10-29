import InitECandidate.Proofs.BackendStages.Alignment589
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_589 : List (Nat × Nat) :=
[(9, 444676), (8, 444664), (7, 444644), (3, 444632), (2, 444604), (6, 444548), (1, 444512), (5, 444512)]
theorem localLabelsFinal_589_eq : LabToTarget.sectionLabels 444496 Alignment589.lines [] = (444676, localLabelsFinal_589) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_589_eq
end InitECandidate.Proofs.BackendStages
