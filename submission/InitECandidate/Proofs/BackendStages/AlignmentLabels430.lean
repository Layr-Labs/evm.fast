import InitECandidate.Proofs.BackendStages.Alignment430
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_430 : List (Nat × Nat) :=
[(16, 319836), (15, 319824), (7, 319816), (6, 319796), (14, 319740), (13, 319700), (5, 319692), (4, 319668),
  (12, 319612), (11, 319584), (3, 319580), (2, 319560), (10, 319504), (1, 319472), (9, 319472)]
theorem localLabelsFinal_430_eq : LabToTarget.sectionLabels 319456 Alignment430.lines [] = (319836, localLabelsFinal_430) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_430_eq
end InitECandidate.Proofs.BackendStages
