import InitECandidate.Proofs.BackendStages.Alignment488
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_488 : List (Nat × Nat) :=
[(12, 365004), (11, 364992), (5, 364980), (4, 364956), (10, 364900), (9, 364864), (3, 364860), (2, 364840), (8, 364784),
  (1, 364752), (7, 364752)]
theorem localLabelsFinal_488_eq : LabToTarget.sectionLabels 364736 Alignment488.lines [] = (365004, localLabelsFinal_488) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_488_eq
end InitECandidate.Proofs.BackendStages
