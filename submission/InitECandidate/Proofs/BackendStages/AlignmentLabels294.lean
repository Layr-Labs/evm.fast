import InitECandidate.Proofs.BackendStages.Alignment294
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_294 : List (Nat × Nat) :=
[(9, 232616), (8, 232596), (7, 232568), (3, 232560), (2, 232532), (6, 232476), (1, 232448), (5, 232448)]
theorem localLabelsFinal_294_eq : LabToTarget.sectionLabels 232432 Alignment294.lines [] = (232616, localLabelsFinal_294) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_294_eq
end InitECandidate.Proofs.BackendStages
