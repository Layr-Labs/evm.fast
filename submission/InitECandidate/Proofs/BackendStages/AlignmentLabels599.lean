import InitECandidate.Proofs.BackendStages.Alignment599
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_599 : List (Nat × Nat) :=
[(15, 471072), (14, 471060), (13, 471032), (12, 471020), (10, 471020), (4, 471008), (3, 470984), (9, 470928),
  (11, 470896), (5, 470884), (2, 470860), (8, 470804), (1, 470764), (7, 470764)]
theorem localLabelsFinal_599_eq : LabToTarget.sectionLabels 470748 Alignment599.lines [] = (471072, localLabelsFinal_599) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_599_eq
end InitECandidate.Proofs.BackendStages
