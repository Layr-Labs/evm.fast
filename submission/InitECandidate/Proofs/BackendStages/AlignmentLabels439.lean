import InitECandidate.Proofs.BackendStages.Alignment439
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_439 : List (Nat × Nat) :=
[(37, 325768), (36, 325756), (17, 325744), (16, 325720), (35, 325664), (34, 325612), (15, 325600), (14, 325572),
  (33, 325516), (32, 325472), (13, 325464), (12, 325440), (31, 325384), (30, 325340), (11, 325332), (10, 325308),
  (29, 325252), (28, 325208), (9, 325200), (8, 325176), (27, 325120), (26, 325080), (7, 325072), (6, 325048),
  (25, 324992), (24, 324956), (5, 324952), (4, 324932), (23, 324876), (22, 324844), (21, 324824), (3, 324816),
  (2, 324792), (20, 324736), (1, 324684), (19, 324684)]
theorem localLabelsFinal_439_eq : LabToTarget.sectionLabels 324668 Alignment439.lines [] = (325768, localLabelsFinal_439) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_439_eq
end InitECandidate.Proofs.BackendStages
