import InitECandidate.Proofs.BackendStages.Alignment793
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_793 : List (Nat × Nat) :=
[(65, 825700), (64, 825688), (29, 825680), (28, 825660), (63, 825604), (62, 825572), (27, 825564), (26, 825544),
  (61, 825488), (47, 825456), (60, 825376), (59, 825304), (57, 825304), (25, 825220), (24, 825124), (56, 825068),
  (55, 824980), (23, 824920), (22, 824848), (54, 824792), (58, 824728), (53, 824648), (21, 824616), (20, 824572),
  (52, 824516), (51, 824428), (19, 824368), (18, 824296), (50, 824240), (49, 824200), (17, 824172), (16, 824132),
  (48, 824076), (46, 823916), (45, 823888), (15, 823856), (14, 823812), (44, 823756), (43, 823720), (13, 823712),
  (12, 823692), (42, 823636), (41, 823600), (11, 823584), (10, 823556), (40, 823500), (39, 823456), (9, 823444),
  (8, 823420), (38, 823364), (37, 823320), (7, 823308), (6, 823280), (36, 823224), (35, 823188), (5, 823184),
  (4, 823164), (34, 823108), (33, 823072), (3, 823068), (2, 823048), (32, 822992), (1, 822904), (31, 822904)]
theorem localLabelsFinal_793_eq : LabToTarget.sectionLabels 822888 Alignment793.lines [] = (825700, localLabelsFinal_793) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_793_eq
end InitECandidate.Proofs.BackendStages
