import InitECandidate.Proofs.BackendStages.Alignment720
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_720 : List (Nat × Nat) :=
[(61, 728024), (28, 727992), (60, 727900), (54, 727796), (17, 727716), (16, 727604), (53, 727548), (52, 727448),
  (15, 727332), (14, 727200), (51, 727144), (59, 727040), (58, 726988), (21, 726888), (20, 726764), (57, 726708),
  (56, 726608), (19, 726556), (18, 726488), (55, 726432), (50, 726272), (13, 726084), (12, 725880), (49, 725824),
  (43, 725748), (48, 725644), (47, 725592), (11, 725540), (10, 725472), (46, 725416), (45, 725340), (9, 725296),
  (8, 725236), (44, 725180), (42, 725092), (36, 725068), (41, 724968), (40, 724916), (7, 724888), (6, 724844),
  (39, 724788), (38, 724712), (5, 724636), (4, 724544), (37, 724488), (35, 724424), (34, 724240), (32, 724140),
  (33, 724096), (31, 724068), (29, 723972), (30, 723932), (27, 723904), (26, 723600), (25, 723560), (3, 723540),
  (2, 723504), (24, 723448), (1, 723392), (23, 723392)]
theorem localLabelsFinal_720_eq : LabToTarget.sectionLabels 723376 Alignment720.lines [] = (728024, localLabelsFinal_720) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_720_eq
end InitECandidate.Proofs.BackendStages
