import InitECandidate.Proofs.BackendStages.Alignment772
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_772 : List (Nat × Nat) :=
[(47, 786108), (46, 786096), (19, 786088), (18, 786068), (45, 786012), (44, 785980), (17, 785972), (16, 785952),
  (43, 785896), (33, 785848), (42, 785812), (41, 785788), (39, 785784), (15, 785744), (14, 785692), (38, 785636),
  (40, 785588), (37, 785528), (35, 785528), (13, 785488), (12, 785436), (34, 785380), (36, 785300), (32, 785228),
  (31, 785216), (11, 785180), (10, 785132), (30, 785076), (29, 785040), (9, 785032), (8, 785012), (28, 784956),
  (27, 784916), (7, 784892), (6, 784852), (26, 784796), (25, 784760), (5, 784756), (4, 784736), (24, 784680),
  (23, 784644), (3, 784640), (2, 784620), (22, 784564), (1, 784516), (21, 784516)]
theorem localLabelsFinal_772_eq : LabToTarget.sectionLabels 784500 Alignment772.lines [] = (786108, localLabelsFinal_772) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_772_eq
end InitECandidate.Proofs.BackendStages
