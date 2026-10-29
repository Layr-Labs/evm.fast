import InitECandidate.Proofs.BackendStages.Alignment686
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_686 : List (Nat × Nat) :=
[(23, 627128), (13, 627112), (22, 627096), (21, 627008), (20, 627004), (19, 626992), (18, 626988), (17, 626972),
  (7, 626936), (6, 626876), (16, 626820), (15, 626788), (5, 626728), (4, 626640), (14, 626584), (12, 626444),
  (11, 626440), (3, 626424), (2, 626396), (10, 626340), (1, 626292), (9, 626292)]
theorem localLabelsFinal_686_eq : LabToTarget.sectionLabels 626276 Alignment686.lines [] = (627128, localLabelsFinal_686) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_686_eq
end InitECandidate.Proofs.BackendStages
