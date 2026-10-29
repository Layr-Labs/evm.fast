import InitECandidate.Proofs.BackendStages.Alignment753
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_753 : List (Nat × Nat) :=
[(32, 751780), (31, 751768), (15, 751760), (14, 751740), (30, 751684), (29, 751652), (13, 751644), (12, 751624),
  (28, 751568), (27, 751536), (11, 751524), (10, 751500), (26, 751444), (25, 751408), (9, 751380), (8, 751340),
  (24, 751284), (23, 751240), (7, 751228), (6, 751204), (22, 751148), (21, 751104), (5, 751096), (4, 751072),
  (20, 751016), (19, 750980), (3, 750976), (2, 750956), (18, 750900), (1, 750860), (17, 750860)]
theorem localLabelsFinal_753_eq : LabToTarget.sectionLabels 750844 Alignment753.lines [] = (751780, localLabelsFinal_753) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_753_eq
end InitECandidate.Proofs.BackendStages
