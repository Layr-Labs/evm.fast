import InitECandidate.Proofs.BackendStages.Alignment501
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_501 : List (Nat × Nat) :=
[(28, 371240), (27, 371228), (13, 371220), (12, 371200), (26, 371144), (25, 371116), (11, 371112), (10, 371096),
  (24, 371040), (23, 371012), (9, 371008), (8, 370988), (22, 370932), (21, 370904), (7, 370868), (6, 370820),
  (20, 370764), (19, 370720), (5, 370716), (4, 370696), (18, 370640), (17, 370600), (3, 370596), (2, 370576),
  (16, 370520), (1, 370492), (15, 370492)]
theorem localLabelsFinal_501_eq : LabToTarget.sectionLabels 370476 Alignment501.lines [] = (371240, localLabelsFinal_501) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_501_eq
end InitECandidate.Proofs.BackendStages
