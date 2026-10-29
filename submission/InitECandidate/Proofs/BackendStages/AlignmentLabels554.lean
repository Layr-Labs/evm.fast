import InitECandidate.Proofs.BackendStages.Alignment554
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_554 : List (Nat × Nat) :=
[(36, 414852), (35, 414840), (17, 414832), (16, 414812), (34, 414756), (33, 414728), (15, 414724), (14, 414708),
  (32, 414652), (31, 414612), (13, 414608), (12, 414588), (30, 414532), (29, 414504), (11, 414496), (10, 414476),
  (28, 414420), (27, 414388), (9, 414376), (8, 414352), (26, 414296), (25, 414264), (7, 414260), (6, 414240),
  (24, 414184), (23, 414152), (5, 414148), (4, 414128), (22, 414072), (21, 414044), (3, 414040), (2, 414020),
  (20, 413964), (1, 413936), (19, 413936)]
theorem localLabelsFinal_554_eq : LabToTarget.sectionLabels 413920 Alignment554.lines [] = (414852, localLabelsFinal_554) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_554_eq
end InitECandidate.Proofs.BackendStages
