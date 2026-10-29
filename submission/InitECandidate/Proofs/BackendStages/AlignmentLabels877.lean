import InitECandidate.Proofs.BackendStages.Alignment877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_877 : List (Nat × Nat) :=
[(9, 979140), (8, 979128), (7, 979100), (3, 979080), (2, 979056), (6, 979000), (1, 978956), (5, 978956)]
theorem localLabelsFinal_877_eq : LabToTarget.sectionLabels 978936 Alignment877.lines [] = (979140, localLabelsFinal_877) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_877_eq
end InitECandidate.Proofs.BackendStages
