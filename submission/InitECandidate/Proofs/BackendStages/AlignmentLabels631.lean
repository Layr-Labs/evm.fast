import InitECandidate.Proofs.BackendStages.Alignment631
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_631 : List (Nat × Nat) :=
[(42, 528028), (38, 528012), (41, 527984), (40, 527956), (15, 527924), (14, 527880), (39, 527824), (37, 527736),
  (36, 527732), (34, 527732), (13, 527716), (12, 527688), (33, 527632), (35, 527576), (32, 527556), (11, 527548),
  (10, 527528), (31, 527472), (30, 527424), (9, 527420), (8, 527404), (29, 527348), (28, 527292), (27, 527288),
  (26, 527244), (7, 527224), (6, 527192), (25, 527136), (24, 527080), (5, 527056), (4, 527020), (23, 526964),
  (19, 526900), (22, 526880), (21, 526872), (3, 526860), (2, 526836), (20, 526780), (18, 526708), (1, 526532),
  (17, 526532)]
theorem localLabelsFinal_631_eq : LabToTarget.sectionLabels 526516 Alignment631.lines [] = (528028, localLabelsFinal_631) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_631_eq
end InitECandidate.Proofs.BackendStages
