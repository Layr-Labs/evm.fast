import InitECandidate.Proofs.BackendStages.Alignment539
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_539 : List (Nat × Nat) :=
[(17, 400180), (16, 400168), (7, 400160), (6, 400140), (15, 400084), (14, 400056), (5, 400052), (4, 400036),
  (13, 399980), (12, 399952), (11, 399912), (3, 399904), (2, 399884), (10, 399828), (1, 399788), (9, 399788)]
theorem localLabelsFinal_539_eq : LabToTarget.sectionLabels 399772 Alignment539.lines [] = (400180, localLabelsFinal_539) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_539_eq
end InitECandidate.Proofs.BackendStages
