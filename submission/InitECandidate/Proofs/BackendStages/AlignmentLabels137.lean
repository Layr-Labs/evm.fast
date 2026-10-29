import InitECandidate.Proofs.BackendStages.Alignment137
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_137 : List (Nat × Nat) :=
[(14, 26468), (13, 26460), (12, 26456), (11, 26436), (10, 26432), (9, 26412), (8, 26408), (7, 26388), (6, 26384),
  (5, 26364), (4, 26360), (3, 26340), (2, 26336), (1, 26312)]
theorem localLabelsFinal_137_eq : LabToTarget.sectionLabels 26312 Alignment137.lines [] = (26468, localLabelsFinal_137) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_137_eq
end InitECandidate.Proofs.BackendStages
