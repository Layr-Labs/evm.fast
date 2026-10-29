import InitECandidate.Proofs.BackendStages.Alignment543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_543 : List (Nat × Nat) :=
[(25, 401564), (24, 401552), (11, 401544), (10, 401524), (23, 401468), (22, 401440), (9, 401436), (8, 401420),
  (21, 401364), (20, 401336), (19, 401292), (7, 401288), (6, 401268), (18, 401212), (17, 401184), (5, 401180),
  (4, 401160), (16, 401104), (15, 401080), (3, 401076), (2, 401060), (14, 401004), (1, 400972), (13, 400972)]
theorem localLabelsFinal_543_eq : LabToTarget.sectionLabels 400956 Alignment543.lines [] = (401564, localLabelsFinal_543) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_543_eq
end InitECandidate.Proofs.BackendStages
