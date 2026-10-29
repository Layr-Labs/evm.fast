import InitECandidate.Proofs.BackendStages.Alignment821
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_821 : List (Nat × Nat) :=
[(18, 891272), (17, 891220), (16, 891196), (7, 891184), (6, 891156), (15, 891100), (14, 891064), (5, 891056),
  (4, 891032), (13, 890976), (12, 890944), (3, 890940), (2, 890924), (11, 890868), (10, 890828), (1, 890780),
  (9, 890780)]
theorem localLabelsFinal_821_eq : LabToTarget.sectionLabels 890764 Alignment821.lines [] = (891272, localLabelsFinal_821) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_821_eq
end InitECandidate.Proofs.BackendStages
