import InitECandidate.Proofs.BackendStages.Alignment489
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_489 : List (Nat × Nat) :=
[(48, 366644), (47, 366576), (23, 366564), (22, 366536), (46, 366480), (45, 366440), (21, 366428), (20, 366400),
  (44, 366344), (43, 366276), (19, 366264), (18, 366236), (42, 366180), (41, 366112), (17, 366100), (16, 366072),
  (40, 366016), (39, 365972), (15, 365964), (14, 365940), (38, 365884), (37, 365768), (13, 365752), (12, 365720),
  (36, 365664), (35, 365604), (11, 365584), (10, 365548), (34, 365492), (33, 365464), (9, 365460), (8, 365444),
  (32, 365388), (31, 365352), (7, 365348), (6, 365328), (30, 365272), (29, 365240), (5, 365236), (4, 365216),
  (28, 365160), (27, 365132), (3, 365128), (2, 365108), (26, 365052), (1, 365020), (25, 365020)]
theorem localLabelsFinal_489_eq : LabToTarget.sectionLabels 365004 Alignment489.lines [] = (366644, localLabelsFinal_489) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_489_eq
end InitECandidate.Proofs.BackendStages
