import InitECandidate.Proofs.BackendStages.Alignment798
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_798 : List (Nat × Nat) :=
[(63, 845700), (62, 845688), (29, 845680), (28, 845660), (61, 845604), (60, 845492), (27, 845432), (26, 845356),
  (59, 845300), (58, 845224), (25, 845116), (24, 844992), (57, 844936), (56, 844836), (23, 844784), (22, 844716),
  (55, 844660), (54, 844604), (21, 844480), (20, 844320), (53, 844264), (52, 844188), (19, 844032), (18, 843860),
  (51, 843804), (50, 843728), (17, 843524), (16, 843304), (49, 843248), (48, 843148), (15, 843032), (14, 842900),
  (47, 842844), (46, 842756), (13, 842620), (12, 842452), (45, 842396), (44, 842268), (11, 842236), (10, 842184),
  (43, 842128), (42, 842000), (9, 841968), (8, 841916), (41, 841860), (37, 841752), (40, 841644), (39, 841560),
  (7, 841520), (6, 841456), (38, 841400), (36, 841324), (35, 841144), (5, 841136), (4, 841112), (34, 841056),
  (33, 841020), (3, 841016), (2, 840996), (32, 840940), (1, 840900), (31, 840900)]
theorem localLabelsFinal_798_eq : LabToTarget.sectionLabels 840884 Alignment798.lines [] = (845700, localLabelsFinal_798) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_798_eq
end InitECandidate.Proofs.BackendStages
