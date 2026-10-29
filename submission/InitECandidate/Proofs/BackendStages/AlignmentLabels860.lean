import InitECandidate.Proofs.BackendStages.Alignment860
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_860 : List (Nat × Nat) :=
[(56, 943076), (55, 943064), (53, 943064), (25, 943052), (24, 943028), (52, 942972), (51, 942936), (23, 942928),
  (22, 942908), (50, 942852), (49, 942820), (47, 942808), (21, 942792), (20, 942764), (46, 942708), (45, 942664),
  (19, 942652), (18, 942624), (44, 942568), (48, 942524), (54, 942504), (43, 942484), (17, 942476), (16, 942456),
  (42, 942400), (41, 942368), (15, 942364), (14, 942344), (40, 942288), (39, 942248), (13, 942240), (12, 942216),
  (38, 942160), (37, 942112), (11, 942104), (10, 942080), (36, 942024), (35, 941856), (9, 941828), (8, 941784),
  (34, 941728), (33, 941592), (7, 941584), (6, 941560), (32, 941504), (31, 941468), (5, 941464), (4, 941444),
  (30, 941388), (29, 941352), (3, 941344), (2, 941324), (28, 941268), (1, 941224), (27, 941224)]
theorem localLabelsFinal_860_eq : LabToTarget.sectionLabels 941208 Alignment860.lines [] = (943076, localLabelsFinal_860) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_860_eq
end InitECandidate.Proofs.BackendStages
