import InitECandidate.Proofs.BackendStages.Alignment322
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_322 : List (Nat × Nat) :=
[(62, 256028), (61, 256000), (52, 256000), (48, 255996), (17, 255976), (16, 255940), (47, 255884), (51, 255836),
  (50, 255828), (19, 255808), (18, 255772), (49, 255716), (46, 255660), (15, 255640), (14, 255604), (45, 255548),
  (60, 255476), (59, 255468), (23, 255448), (22, 255412), (58, 255356), (54, 255308), (57, 255272), (56, 255236),
  (21, 255192), (20, 255132), (55, 255076), (53, 254980), (44, 254932), (13, 254904), (12, 254864), (43, 254808),
  (42, 254772), (11, 254740), (10, 254692), (41, 254636), (40, 254600), (9, 254592), (8, 254568), (39, 254512),
  (38, 254484), (36, 254480), (7, 254472), (6, 254448), (35, 254392), (31, 254356), (34, 254324), (33, 254308),
  (5, 254292), (4, 254260), (32, 254204), (30, 254152), (37, 254140), (29, 254120), (27, 254112), (3, 254100),
  (2, 254072), (26, 254016), (28, 253960), (1, 253904), (25, 253904)]
theorem localLabelsFinal_322_eq : LabToTarget.sectionLabels 253888 Alignment322.lines [] = (256028, localLabelsFinal_322) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_322_eq
end InitECandidate.Proofs.BackendStages
