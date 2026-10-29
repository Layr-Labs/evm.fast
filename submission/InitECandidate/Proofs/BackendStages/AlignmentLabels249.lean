import InitECandidate.Proofs.BackendStages.Alignment249
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_249 : List (Nat × Nat) :=
[(13, 182668), (12, 182664), (11, 182644), (5, 182636), (4, 182612), (10, 182556), (9, 182532), (3, 182528),
  (2, 182512), (8, 182456), (1, 182428), (7, 182428)]
theorem localLabelsFinal_249_eq : LabToTarget.sectionLabels 182412 Alignment249.lines [] = (182668, localLabelsFinal_249) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_249_eq
end InitECandidate.Proofs.BackendStages
