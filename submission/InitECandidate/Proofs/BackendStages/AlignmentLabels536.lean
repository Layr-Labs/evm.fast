import InitECandidate.Proofs.BackendStages.Alignment536
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_536 : List (Nat × Nat) :=
[(42, 399204), (41, 399192), (19, 399184), (18, 399164), (40, 399108), (39, 399080), (17, 399072), (16, 399052),
  (38, 398996), (37, 398968), (15, 398940), (14, 398900), (36, 398844), (35, 398800), (13, 398792), (12, 398768),
  (34, 398712), (33, 398680), (11, 398660), (10, 398628), (32, 398572), (31, 398508), (9, 398500), (8, 398476),
  (30, 398420), (29, 398388), (7, 398384), (6, 398364), (28, 398308), (27, 398284), (23, 398284), (3, 398280),
  (2, 398264), (22, 398208), (26, 398172), (25, 398168), (5, 398164), (4, 398148), (24, 398092), (1, 398044),
  (21, 398044)]
theorem localLabelsFinal_536_eq : LabToTarget.sectionLabels 398028 Alignment536.lines [] = (399204, localLabelsFinal_536) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_536_eq
end InitECandidate.Proofs.BackendStages
