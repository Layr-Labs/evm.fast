import InitECandidate.Proofs.BackendStages.Alignment684
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_684 : List (Nat × Nat) :=
[(55, 620044), (54, 620032), (23, 620024), (22, 620004), (53, 619948), (52, 619916), (21, 619908), (20, 619888),
  (51, 619832), (39, 619776), (50, 619736), (49, 619708), (47, 619708), (19, 619648), (18, 619576), (46, 619520),
  (48, 619464), (45, 619412), (43, 619412), (17, 619392), (16, 619360), (42, 619304), (44, 619256), (41, 619236),
  (15, 619224), (14, 619196), (40, 619140), (38, 619020), (37, 619016), (13, 618948), (12, 618864), (36, 618808),
  (35, 618760), (11, 618740), (10, 618708), (34, 618652), (33, 618608), (9, 618592), (8, 618564), (32, 618508),
  (31, 618464), (7, 618444), (6, 618408), (30, 618352), (29, 618312), (5, 618304), (4, 618280), (28, 618224),
  (27, 618184), (3, 618176), (2, 618152), (26, 618096), (1, 618004), (25, 618004)]
theorem localLabelsFinal_684_eq : LabToTarget.sectionLabels 617988 Alignment684.lines [] = (620044, localLabelsFinal_684) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_684_eq
end InitECandidate.Proofs.BackendStages
