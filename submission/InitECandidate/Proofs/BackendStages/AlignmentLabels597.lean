import InitECandidate.Proofs.BackendStages.Alignment597
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_597 : List (Nat × Nat) :=
[(14, 469740), (13, 469700), (11, 469656), (5, 469648), (4, 469628), (10, 469572), (12, 469544), (9, 469500),
  (3, 469492), (2, 469472), (8, 469416), (1, 469380), (7, 469380)]
theorem localLabelsFinal_597_eq : LabToTarget.sectionLabels 469364 Alignment597.lines [] = (469740, localLabelsFinal_597) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_597_eq
end InitECandidate.Proofs.BackendStages
