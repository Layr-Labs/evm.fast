import InitECandidate.Proofs.BackendStages.Alignment799
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_799 : List (Nat × Nat) :=
[(28, 846584), (27, 846572), (13, 846564), (12, 846544), (26, 846488), (25, 846456), (11, 846448), (10, 846428),
  (24, 846372), (23, 846316), (9, 846296), (8, 846264), (22, 846208), (21, 846172), (7, 846164), (6, 846144),
  (20, 846088), (19, 846052), (5, 846008), (4, 845948), (18, 845892), (17, 845856), (3, 845852), (2, 845832),
  (16, 845776), (1, 845716), (15, 845716)]
theorem localLabelsFinal_799_eq : LabToTarget.sectionLabels 845700 Alignment799.lines [] = (846584, localLabelsFinal_799) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_799_eq
end InitECandidate.Proofs.BackendStages
