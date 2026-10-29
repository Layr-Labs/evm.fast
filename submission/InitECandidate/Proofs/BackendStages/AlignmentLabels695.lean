import InitECandidate.Proofs.BackendStages.Alignment695
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_695 : List (Nat × Nat) :=
[(64, 649132), (63, 648968), (62, 648948), (29, 648904), (28, 648844), (61, 648788), (60, 648756), (27, 648712),
  (26, 648640), (59, 648584), (58, 648456), (25, 648452), (24, 648432), (57, 648376), (56, 648328), (23, 648308),
  (22, 648272), (55, 648216), (54, 648140), (21, 648120), (20, 648084), (53, 648028), (52, 647968), (19, 647964),
  (18, 647944), (51, 647888), (50, 647828), (17, 647808), (16, 647772), (49, 647716), (48, 647684), (47, 647672),
  (15, 647664), (14, 647644), (46, 647588), (45, 647532), (13, 647476), (12, 647404), (44, 647348), (43, 647296),
  (11, 647276), (10, 647240), (42, 647184), (41, 647132), (40, 647112), (9, 647080), (8, 647032), (39, 646976),
  (38, 646828), (37, 646808), (7, 646784), (6, 646744), (36, 646688), (35, 646528), (5, 646508), (4, 646460),
  (34, 646404), (33, 646352), (3, 646344), (2, 646316), (32, 646260), (1, 646212), (31, 646212)]
theorem localLabelsFinal_695_eq : LabToTarget.sectionLabels 646196 Alignment695.lines [] = (649132, localLabelsFinal_695) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_695_eq
end InitECandidate.Proofs.BackendStages
