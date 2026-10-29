import InitECandidate.Proofs.BackendStages.Alignment251
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_251 : List (Nat × Nat) :=
[(50, 184644), (36, 184604), (49, 184584), (48, 184548), (47, 184524), (46, 184512), (44, 184512), (11, 184468),
  (10, 184412), (43, 184356), (45, 184292), (42, 184252), (41, 184248), (40, 184228), (39, 184224), (38, 184212),
  (37, 184208), (35, 184124), (34, 184112), (9, 184084), (8, 184040), (33, 183984), (32, 183952), (30, 183952),
  (7, 183944), (6, 183924), (29, 183868), (31, 183828), (28, 183808), (26, 183808), (5, 183796), (4, 183772),
  (25, 183716), (27, 183676), (24, 183644), (23, 183640), (22, 183628), (21, 183624), (20, 183604), (19, 183600),
  (18, 183532), (16, 183532), (3, 183520), (2, 183496), (15, 183440), (17, 183396), (14, 183376), (1, 183344),
  (13, 183344)]
theorem localLabelsFinal_251_eq : LabToTarget.sectionLabels 183328 Alignment251.lines [] = (184644, localLabelsFinal_251) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_251_eq
end InitECandidate.Proofs.BackendStages
