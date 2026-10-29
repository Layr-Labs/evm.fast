import InitECandidate.Proofs.BackendStages.Alignment71
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_71 : List (Nat × Nat) :=
[(16, 5836), (15, 5804), (13, 5804), (5, 5788), (4, 5760), (12, 5704), (14, 5668), (11, 5628), (9, 5628), (3, 5616),
  (2, 5592), (8, 5536), (10, 5496), (1, 5456), (7, 5456)]
theorem localLabelsFinal_71_eq : LabToTarget.sectionLabels 5440 Alignment71.lines [] = (5836, localLabelsFinal_71) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_71_eq
end InitECandidate.Proofs.BackendStages
