import InitECandidate.Proofs.BackendStages.Alignment729
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_729 : List (Nat × Nat) :=
[(8, 733316), (7, 733304), (3, 733296), (2, 733276), (6, 733220), (1, 733184), (5, 733184)]
theorem localLabelsFinal_729_eq : LabToTarget.sectionLabels 733168 Alignment729.lines [] = (733316, localLabelsFinal_729) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_729_eq
end InitECandidate.Proofs.BackendStages
