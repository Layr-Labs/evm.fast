import InitECandidate.Proofs.BackendStages.Alignment638
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_638 : List (Nat × Nat) :=
[(52, 534860), (50, 534848), (51, 534840), (49, 534744), (47, 534740), (48, 534732), (46, 534704), (25, 534644),
  (45, 534596), (44, 534552), (41, 534464), (42, 534448), (40, 534356), (43, 534284), (38, 534200), (39, 534192),
  (37, 534052), (31, 534012), (36, 534004), (35, 534000), (33, 534000), (32, 533988), (34, 533940), (30, 533880),
  (29, 533856), (28, 533732), (27, 533728), (7, 533656), (6, 533564), (26, 533508), (24, 533316), (22, 533208),
  (23, 533192), (21, 533084), (19, 532992), (20, 532984), (18, 532884), (17, 532880), (5, 532840), (4, 532784),
  (16, 532728), (15, 532644), (11, 532620), (14, 532576), (13, 532524), (3, 532472), (2, 532400), (12, 532344),
  (10, 532264), (1, 532200), (9, 532200)]
theorem localLabelsFinal_638_eq : LabToTarget.sectionLabels 532184 Alignment638.lines [] = (534860, localLabelsFinal_638) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_638_eq
end InitECandidate.Proofs.BackendStages
