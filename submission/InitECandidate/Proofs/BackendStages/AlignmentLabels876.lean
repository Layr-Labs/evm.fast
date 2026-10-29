import InitECandidate.Proofs.BackendStages.Alignment876
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_876 : List (Nat × Nat) :=
[(9, 978936), (8, 978924), (7, 978872), (3, 978852), (2, 978832), (6, 978776), (1, 978740), (5, 978740)]
theorem localLabelsFinal_876_eq : LabToTarget.sectionLabels 978720 Alignment876.lines [] = (978936, localLabelsFinal_876) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_876_eq
end InitECandidate.Proofs.BackendStages
