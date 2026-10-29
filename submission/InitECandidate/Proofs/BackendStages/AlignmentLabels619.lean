import InitECandidate.Proofs.BackendStages.Alignment619
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_619 : List (Nat × Nat) :=
[(35, 496628), (34, 496616), (15, 496608), (14, 496588), (33, 496532), (32, 496492), (13, 496468), (12, 496428),
  (31, 496372), (30, 496332), (11, 496232), (10, 496116), (29, 496060), (28, 496028), (9, 496024), (8, 496004),
  (27, 495948), (26, 495892), (25, 495880), (7, 495872), (6, 495852), (24, 495796), (23, 495752), (21, 495752),
  (5, 495748), (4, 495732), (20, 495676), (22, 495632), (19, 495528), (3, 495480), (2, 495420), (18, 495364),
  (1, 495228), (17, 495228)]
theorem localLabelsFinal_619_eq : LabToTarget.sectionLabels 495212 Alignment619.lines [] = (496628, localLabelsFinal_619) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_619_eq
end InitECandidate.Proofs.BackendStages
