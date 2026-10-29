import InitECandidate.Proofs.BackendStages.Alignment468
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_468 : List (Nat × Nat) :=
[(10, 357968), (9, 357960), (8, 357936), (7, 357932), (6, 357908), (5, 357904), (4, 357880), (3, 357876), (2, 357856),
  (1, 357836)]
theorem localLabelsFinal_468_eq : LabToTarget.sectionLabels 357836 Alignment468.lines [] = (357968, localLabelsFinal_468) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_468_eq
end InitECandidate.Proofs.BackendStages
