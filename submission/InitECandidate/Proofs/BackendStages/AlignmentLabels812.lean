import InitECandidate.Proofs.BackendStages.Alignment812
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_812 : List (Nat × Nat) :=
[(43, 875924), (42, 875912), (19, 875904), (18, 875884), (41, 875828), (40, 875796), (17, 875788), (16, 875768),
  (39, 875712), (38, 875680), (15, 875660), (14, 875628), (37, 875572), (36, 875536), (35, 875524), (13, 875516),
  (12, 875496), (34, 875440), (33, 875392), (31, 875392), (11, 875364), (10, 875320), (30, 875264), (32, 875224),
  (29, 875192), (9, 875172), (8, 875136), (28, 875080), (27, 875036), (7, 875024), (6, 874996), (26, 874940),
  (25, 874904), (5, 874900), (4, 874880), (24, 874824), (23, 874788), (3, 874784), (2, 874764), (22, 874708),
  (1, 874668), (21, 874668)]
theorem localLabelsFinal_812_eq : LabToTarget.sectionLabels 874652 Alignment812.lines [] = (875924, localLabelsFinal_812) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_812_eq
end InitECandidate.Proofs.BackendStages
