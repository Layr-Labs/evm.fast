import InitECandidate.Proofs.BackendStages.Alignment191
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_191 : List (Nat × Nat) :=
[(28, 102120), (27, 102076), (13, 102056), (12, 102024), (26, 101968), (25, 101920), (11, 101908), (10, 101880),
  (24, 101824), (23, 101776), (9, 101760), (8, 101732), (22, 101676), (21, 101624), (7, 101612), (6, 101584),
  (20, 101528), (19, 101480), (5, 101456), (4, 101420), (18, 101364), (17, 101304), (3, 101288), (2, 101256),
  (16, 101200), (1, 101124), (15, 101124)]
theorem localLabelsFinal_191_eq : LabToTarget.sectionLabels 101108 Alignment191.lines [] = (102120, localLabelsFinal_191) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_191_eq
end InitECandidate.Proofs.BackendStages
