import InitECandidate.Proofs.BackendStages.Alignment707
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_707 : List (Nat × Nat) :=
[(13, 702712), (12, 702704), (11, 702692), (10, 702684), (9, 702668), (8, 702660), (7, 702644), (6, 702636),
  (5, 702620), (4, 702612), (3, 702596), (2, 702588), (1, 702568)]
theorem localLabelsFinal_707_eq : LabToTarget.sectionLabels 702568 Alignment707.lines [] = (702712, localLabelsFinal_707) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_707_eq
end InitECandidate.Proofs.BackendStages
