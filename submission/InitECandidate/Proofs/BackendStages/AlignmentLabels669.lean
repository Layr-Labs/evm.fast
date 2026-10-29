import InitECandidate.Proofs.BackendStages.Alignment669
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_669 : List (Nat × Nat) :=
[(54, 602020), (53, 602008), (21, 602000), (20, 601980), (52, 601924), (51, 601892), (19, 601884), (18, 601864),
  (50, 601808), (49, 601772), (17, 601760), (16, 601736), (48, 601680), (29, 601648), (47, 601624), (46, 601588),
  (44, 601588), (15, 601564), (14, 601524), (43, 601468), (42, 601436), (13, 601384), (12, 601304), (41, 601248),
  (45, 601148), (40, 601120), (11, 601108), (10, 601080), (39, 601024), (33, 600916), (38, 600864), (37, 600840),
  (9, 600832), (8, 600808), (36, 600752), (35, 600720), (7, 600692), (6, 600636), (34, 600580), (32, 600468),
  (31, 600412), (30, 600408), (28, 600368), (27, 600360), (5, 600352), (4, 600328), (26, 600272), (25, 600236),
  (3, 600232), (2, 600212), (24, 600156), (1, 600116), (23, 600116)]
theorem localLabelsFinal_669_eq : LabToTarget.sectionLabels 600100 Alignment669.lines [] = (602020, localLabelsFinal_669) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_669_eq
end InitECandidate.Proofs.BackendStages
