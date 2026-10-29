import InitECandidate.Proofs.BackendStages.Alignment614
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_614 : List (Nat × Nat) :=
[(44, 485976), (43, 485964), (21, 485956), (20, 485936), (42, 485880), (41, 485848), (19, 485840), (18, 485820),
  (40, 485764), (39, 485724), (17, 485712), (16, 485688), (38, 485632), (37, 485588), (15, 485556), (14, 485508),
  (36, 485452), (35, 485420), (13, 485416), (12, 485400), (34, 485344), (33, 485296), (11, 485284), (10, 485256),
  (32, 485200), (31, 485152), (9, 485140), (8, 485112), (30, 485056), (29, 485020), (7, 485000), (6, 484964),
  (28, 484908), (27, 484864), (5, 484856), (4, 484832), (26, 484776), (25, 484740), (3, 484736), (2, 484716),
  (24, 484660), (1, 484616), (23, 484616)]
theorem localLabelsFinal_614_eq : LabToTarget.sectionLabels 484600 Alignment614.lines [] = (485976, localLabelsFinal_614) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_614_eq
end InitECandidate.Proofs.BackendStages
