import InitECandidate.Proofs.BackendStages.Alignment386
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_386 : List (Nat × Nat) :=
[(56, 297620), (55, 297564), (27, 297556), (26, 297532), (54, 297476), (53, 297408), (25, 297404), (24, 297384),
  (52, 297328), (51, 297276), (23, 297272), (22, 297252), (50, 297196), (49, 297108), (21, 297104), (20, 297084),
  (48, 297028), (47, 296972), (19, 296968), (18, 296948), (46, 296892), (45, 296836), (17, 296832), (16, 296812),
  (44, 296756), (43, 296700), (15, 296696), (14, 296676), (42, 296620), (41, 296564), (13, 296560), (12, 296540),
  (40, 296484), (39, 296428), (11, 296424), (10, 296404), (38, 296348), (37, 296284), (9, 296280), (8, 296260),
  (36, 296204), (35, 296152), (7, 296148), (6, 296128), (34, 296072), (33, 296016), (5, 296012), (4, 295992),
  (32, 295936), (31, 295856), (3, 295840), (2, 295808), (30, 295752), (1, 295704), (29, 295704)]
theorem localLabelsFinal_386_eq : LabToTarget.sectionLabels 295688 Alignment386.lines [] = (297620, localLabelsFinal_386) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_386_eq
end InitECandidate.Proofs.BackendStages
