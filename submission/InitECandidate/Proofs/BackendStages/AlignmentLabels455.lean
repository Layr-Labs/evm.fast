import InitECandidate.Proofs.BackendStages.Alignment455
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_455 : List (Nat × Nat) :=
[(12, 337672), (11, 337660), (5, 337652), (4, 337632), (10, 337576), (9, 337552), (3, 337548), (2, 337532), (8, 337476),
  (1, 337448), (7, 337448)]
theorem localLabelsFinal_455_eq : LabToTarget.sectionLabels 337432 Alignment455.lines [] = (337672, localLabelsFinal_455) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_455_eq
end InitECandidate.Proofs.BackendStages
