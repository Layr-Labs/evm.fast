import InitECandidate.Proofs.BackendStages.Alignment761
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_761 : List (Nat × Nat) :=
[(48, 759836), (47, 759824), (23, 759816), (22, 759796), (46, 759740), (45, 759708), (21, 759700), (20, 759680),
  (44, 759624), (43, 759588), (19, 759572), (18, 759544), (42, 759488), (41, 759448), (17, 759424), (16, 759388),
  (40, 759332), (39, 759288), (15, 759272), (14, 759244), (38, 759188), (37, 759152), (13, 759144), (12, 759124),
  (36, 759068), (35, 759032), (11, 758992), (10, 758940), (34, 758884), (33, 758848), (9, 758840), (8, 758820),
  (32, 758764), (31, 758716), (7, 758704), (6, 758680), (30, 758624), (29, 758564), (5, 758556), (4, 758532),
  (28, 758476), (27, 758440), (3, 758436), (2, 758416), (26, 758360), (1, 758320), (25, 758320)]
theorem localLabelsFinal_761_eq : LabToTarget.sectionLabels 758304 Alignment761.lines [] = (759836, localLabelsFinal_761) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_761_eq
end InitECandidate.Proofs.BackendStages
