import InitECandidate.Proofs.BackendStages.Alignment514
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_514 : List (Nat × Nat) :=
[(24, 381504), (23, 381492), (11, 381484), (10, 381464), (22, 381408), (21, 381380), (9, 381376), (8, 381360),
  (20, 381304), (19, 381264), (7, 381228), (6, 381180), (18, 381124), (17, 381080), (5, 381076), (4, 381056),
  (16, 381000), (15, 380960), (3, 380956), (2, 380936), (14, 380880), (1, 380852), (13, 380852)]
theorem localLabelsFinal_514_eq : LabToTarget.sectionLabels 380836 Alignment514.lines [] = (381504, localLabelsFinal_514) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_514_eq
end InitECandidate.Proofs.BackendStages
