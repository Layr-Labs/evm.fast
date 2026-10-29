import InitECandidate.Proofs.BackendStages.Alignment785
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_785 : List (Nat × Nat) :=
[(41, 804640), (40, 804628), (19, 804620), (18, 804600), (39, 804544), (38, 804512), (17, 804504), (16, 804484),
  (37, 804428), (36, 804392), (15, 804376), (14, 804348), (35, 804292), (34, 804248), (13, 804232), (12, 804204),
  (33, 804148), (32, 804104), (31, 804092), (11, 804084), (10, 804064), (30, 804008), (29, 803976), (9, 803968),
  (8, 803948), (28, 803892), (27, 803832), (7, 803820), (6, 803792), (26, 803736), (25, 803696), (5, 803688),
  (4, 803664), (24, 803608), (23, 803572), (3, 803568), (2, 803548), (22, 803492), (1, 803452), (21, 803452)]
theorem localLabelsFinal_785_eq : LabToTarget.sectionLabels 803436 Alignment785.lines [] = (804640, localLabelsFinal_785) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_785_eq
end InitECandidate.Proofs.BackendStages
