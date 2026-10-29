import InitECandidate.Proofs.BackendStages.Alignment656
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_656 : List (Nat × Nat) :=
[(43, 580068), (42, 580056), (40, 580004), (19, 579992), (18, 579968), (39, 579912), (38, 579872), (17, 579868),
  (16, 579848), (37, 579792), (41, 579760), (36, 579744), (15, 579740), (14, 579720), (35, 579664), (34, 579632),
  (13, 579576), (12, 579492), (33, 579436), (32, 579380), (11, 579372), (10, 579344), (31, 579288), (30, 579232),
  (9, 579224), (8, 579196), (29, 579140), (28, 579084), (7, 579076), (6, 579048), (27, 578992), (26, 578944),
  (25, 578880), (5, 578868), (4, 578840), (24, 578784), (23, 578752), (3, 578748), (2, 578732), (22, 578676),
  (1, 578612), (21, 578612)]
theorem localLabelsFinal_656_eq : LabToTarget.sectionLabels 578596 Alignment656.lines [] = (580068, localLabelsFinal_656) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_656_eq
end InitECandidate.Proofs.BackendStages
