import InitECandidate.Proofs.BackendStages.Alignment598
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_598 : List (Nat × Nat) :=
[(39, 470748), (38, 470736), (36, 470732), (35, 470720), (33, 470720), (13, 470712), (12, 470692), (32, 470636),
  (34, 470608), (31, 470576), (11, 470568), (10, 470544), (30, 470488), (37, 470456), (29, 470436), (27, 470436),
  (25, 470436), (23, 470436), (9, 470428), (8, 470408), (22, 470352), (24, 470312), (21, 470300), (7, 470276),
  (6, 470236), (20, 470180), (19, 470136), (5, 470128), (4, 470108), (18, 470052), (26, 469996), (17, 469984),
  (3, 469960), (2, 469920), (16, 469864), (28, 469796), (1, 469756), (15, 469756)]
theorem localLabelsFinal_598_eq : LabToTarget.sectionLabels 469740 Alignment598.lines [] = (470748, localLabelsFinal_598) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_598_eq
end InitECandidate.Proofs.BackendStages
