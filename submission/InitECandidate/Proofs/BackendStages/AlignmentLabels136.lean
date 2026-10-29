import InitECandidate.Proofs.BackendStages.Alignment136
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_136 : List (Nat × Nat) :=
[(27, 26312), (26, 26296), (11, 26268), (10, 26228), (25, 26172), (24, 26140), (9, 26100), (8, 26048), (23, 25992),
  (22, 25932), (7, 25924), (6, 25896), (21, 25840), (20, 25788), (19, 25772), (5, 25744), (4, 25704), (18, 25648),
  (17, 25600), (16, 25548), (3, 25536), (2, 25508), (15, 25452), (14, 25304), (1, 25244), (13, 25244)]
theorem localLabelsFinal_136_eq : LabToTarget.sectionLabels 25228 Alignment136.lines [] = (26312, localLabelsFinal_136) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_136_eq
end InitECandidate.Proofs.BackendStages
