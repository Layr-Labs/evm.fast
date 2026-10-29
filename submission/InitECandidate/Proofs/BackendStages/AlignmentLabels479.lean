import InitECandidate.Proofs.BackendStages.Alignment479
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_479 : List (Nat × Nat) :=
[(17, 360332), (16, 360320), (7, 360312), (6, 360288), (15, 360232), (14, 360184), (13, 360164), (5, 360152),
  (4, 360124), (12, 360068), (11, 360036), (3, 360032), (2, 360012), (10, 359956), (1, 359928), (9, 359928)]
theorem localLabelsFinal_479_eq : LabToTarget.sectionLabels 359912 Alignment479.lines [] = (360332, localLabelsFinal_479) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_479_eq
end InitECandidate.Proofs.BackendStages
