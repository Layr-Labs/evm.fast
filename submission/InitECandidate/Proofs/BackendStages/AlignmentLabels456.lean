import InitECandidate.Proofs.BackendStages.Alignment456
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_456 : List (Nat × Nat) :=
[(11, 337808), (7, 337800), (10, 337792), (9, 337784), (8, 337776), (6, 337740), (5, 337736), (4, 337732), (3, 337708),
  (2, 337700), (1, 337672)]
theorem localLabelsFinal_456_eq : LabToTarget.sectionLabels 337672 Alignment456.lines [] = (337808, localLabelsFinal_456) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_456_eq
end InitECandidate.Proofs.BackendStages
