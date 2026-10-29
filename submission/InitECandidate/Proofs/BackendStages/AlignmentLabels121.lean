import InitECandidate.Proofs.BackendStages.Alignment121
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_121 : List (Nat × Nat) :=
[(68, 17980), (67, 16900), (33, 16740), (32, 16560), (66, 16504), (65, 16464), (31, 16452), (30, 16424), (64, 16368),
  (63, 16324), (29, 16312), (28, 16284), (62, 16228), (61, 16184), (27, 16164), (26, 16128), (60, 16072), (59, 16028),
  (25, 16008), (24, 15972), (58, 15916), (57, 15868), (23, 15856), (22, 15828), (56, 15772), (55, 15728), (21, 15708),
  (20, 15672), (54, 15616), (53, 15572), (19, 15560), (18, 15532), (52, 15476), (51, 15428), (17, 15408), (16, 15372),
  (50, 15316), (49, 15268), (15, 15240), (14, 15196), (48, 15140), (47, 15096), (13, 15084), (12, 15056), (46, 15000),
  (45, 14952), (11, 14940), (10, 14912), (44, 14856), (43, 14808), (9, 14788), (8, 14752), (42, 14696), (41, 14648),
  (7, 14636), (6, 14608), (40, 14552), (39, 14504), (5, 14476), (4, 14432), (38, 14376), (37, 14328), (3, 14316),
  (2, 14288), (36, 14232), (1, 14168), (35, 14168)]
theorem localLabelsFinal_121_eq : LabToTarget.sectionLabels 14152 Alignment121.lines [] = (17980, localLabelsFinal_121) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_121_eq
end InitECandidate.Proofs.BackendStages
