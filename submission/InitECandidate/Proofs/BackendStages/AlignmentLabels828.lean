import InitECandidate.Proofs.BackendStages.Alignment828
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_828 : List (Nat × Nat) :=
[(18, 895868), (17, 895816), (16, 895792), (7, 895780), (6, 895752), (15, 895696), (14, 895660), (5, 895652),
  (4, 895628), (13, 895572), (12, 895540), (3, 895536), (2, 895520), (11, 895464), (10, 895420), (1, 895372),
  (9, 895372)]
theorem localLabelsFinal_828_eq : LabToTarget.sectionLabels 895356 Alignment828.lines [] = (895868, localLabelsFinal_828) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_828_eq
end InitECandidate.Proofs.BackendStages
