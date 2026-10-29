import InitECandidate.Proofs.BackendStages.Alignment98
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_98 : List (Nat × Nat) :=
[(10, 10652), (9, 10640), (7, 10620), (3, 10612), (2, 10588), (6, 10532), (8, 10500), (1, 10472), (5, 10472)]
theorem localLabelsFinal_98_eq : LabToTarget.sectionLabels 10456 Alignment98.lines [] = (10652, localLabelsFinal_98) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_98_eq
end InitECandidate.Proofs.BackendStages
