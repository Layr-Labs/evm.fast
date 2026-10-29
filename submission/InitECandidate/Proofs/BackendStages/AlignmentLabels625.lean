import InitECandidate.Proofs.BackendStages.Alignment625
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_625 : List (Nat × Nat) :=
[(35, 522712), (34, 522676), (32, 522668), (31, 522664), (33, 522624), (30, 522592), (13, 522576), (12, 522544),
  (29, 522488), (28, 522380), (24, 522380), (9, 522372), (8, 522348), (23, 522292), (22, 522244), (21, 522164),
  (7, 522144), (6, 522108), (20, 522052), (27, 522012), (26, 522008), (11, 522000), (10, 521976), (25, 521920),
  (19, 521876), (5, 521868), (4, 521848), (18, 521792), (17, 521752), (3, 521748), (2, 521728), (16, 521672),
  (1, 521628), (15, 521628)]
theorem localLabelsFinal_625_eq : LabToTarget.sectionLabels 521612 Alignment625.lines [] = (522712, localLabelsFinal_625) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_625_eq
end InitECandidate.Proofs.BackendStages
