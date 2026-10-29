import InitECandidate.Proofs.BackendStages.Alignment143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_143 : List (Nat × Nat) :=
[(22, 29520), (21, 29508), (19, 29508), (17, 29508), (7, 29500), (6, 29476), (16, 29420), (15, 29392), (5, 29372),
  (4, 29324), (14, 29268), (18, 29192), (20, 29176), (13, 29160), (3, 29148), (2, 29120), (12, 29064), (11, 29012),
  (10, 28988), (1, 28928), (9, 28928)]
theorem localLabelsFinal_143_eq : LabToTarget.sectionLabels 28912 Alignment143.lines [] = (29520, localLabelsFinal_143) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_143_eq
end InitECandidate.Proofs.BackendStages
