import InitECandidate.Proofs.BackendStages.Alignment478
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_478 : List (Nat × Nat) :=
[(14, 359912), (13, 359900), (9, 359900), (3, 359892), (2, 359872), (8, 359816), (12, 359772), (11, 359768),
  (5, 359760), (4, 359740), (10, 359684), (1, 359632), (7, 359632)]
theorem localLabelsFinal_478_eq : LabToTarget.sectionLabels 359616 Alignment478.lines [] = (359912, localLabelsFinal_478) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_478_eq
end InitECandidate.Proofs.BackendStages
