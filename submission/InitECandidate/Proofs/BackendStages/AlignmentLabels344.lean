import InitECandidate.Proofs.BackendStages.Alignment344
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_344 : List (Nat × Nat) :=
[(49, 271732), (29, 271712), (48, 271688), (47, 271644), (21, 271608), (20, 271556), (46, 271500), (45, 271440),
  (19, 271428), (18, 271400), (44, 271344), (43, 271292), (17, 271280), (16, 271252), (42, 271196), (41, 271140),
  (15, 271128), (14, 271100), (40, 271044), (39, 270988), (13, 270976), (12, 270948), (38, 270892), (37, 270832),
  (11, 270820), (10, 270792), (36, 270736), (35, 270664), (34, 270640), (9, 270628), (8, 270600), (33, 270544),
  (32, 270512), (31, 270488), (7, 270484), (6, 270464), (30, 270408), (28, 270312), (27, 270304), (5, 270292),
  (4, 270264), (26, 270208), (25, 270152), (3, 270148), (2, 270128), (24, 270072), (1, 270036), (23, 270036)]
theorem localLabelsFinal_344_eq : LabToTarget.sectionLabels 270020 Alignment344.lines [] = (271732, localLabelsFinal_344) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_344_eq
end InitECandidate.Proofs.BackendStages
