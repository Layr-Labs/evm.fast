import InitECandidate.Proofs.BackendStages.Alignment558
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_558 : List (Nat × Nat) :=
[(44, 417484), (43, 417472), (21, 417464), (20, 417444), (42, 417388), (41, 417360), (19, 417356), (18, 417340),
  (40, 417284), (39, 417256), (17, 417236), (16, 417204), (38, 417148), (37, 417104), (15, 417096), (14, 417072),
  (36, 417016), (35, 416984), (13, 416976), (12, 416956), (34, 416900), (33, 416860), (11, 416840), (10, 416804),
  (32, 416748), (31, 416716), (9, 416712), (8, 416692), (30, 416636), (29, 416608), (7, 416604), (6, 416584),
  (28, 416528), (27, 416476), (5, 416456), (4, 416424), (26, 416368), (25, 416324), (3, 416320), (2, 416300),
  (24, 416244), (1, 416216), (23, 416216)]
theorem localLabelsFinal_558_eq : LabToTarget.sectionLabels 416200 Alignment558.lines [] = (417484, localLabelsFinal_558) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_558_eq
end InitECandidate.Proofs.BackendStages
