import InitECandidate.Proofs.BackendStages.Alignment237
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_237 : List (Nat × Nat) :=
[(44, 175256), (43, 175244), (17, 175236), (16, 175216), (42, 175160), (41, 175132), (15, 175124), (14, 175104),
  (40, 175048), (36, 175012), (39, 174976), (38, 174952), (13, 174908), (12, 174852), (37, 174796), (35, 174720),
  (34, 174720), (11, 174688), (10, 174644), (33, 174588), (27, 174552), (32, 174496), (31, 174464), (9, 174436),
  (8, 174396), (30, 174340), (29, 174264), (28, 174260), (26, 174232), (25, 174192), (7, 174176), (6, 174144),
  (24, 174088), (23, 174056), (5, 174052), (4, 174032), (22, 173976), (21, 173944), (3, 173940), (2, 173920),
  (20, 173864), (1, 173824), (19, 173824)]
theorem localLabelsFinal_237_eq : LabToTarget.sectionLabels 173808 Alignment237.lines [] = (175256, localLabelsFinal_237) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_237_eq
end InitECandidate.Proofs.BackendStages
