import InitECandidate.Proofs.BackendStages.Alignment602
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_602 : List (Nat × Nat) :=
[(39, 476460), (15, 476444), (38, 476432), (37, 476424), (35, 476424), (34, 476388), (33, 476384), (31, 476384),
  (10, 476372), (9, 476348), (30, 476292), (32, 476260), (11, 476248), (8, 476224), (29, 476168), (28, 476112),
  (7, 476108), (6, 476092), (27, 476036), (36, 476008), (26, 475988), (25, 475980), (24, 475976), (23, 475968),
  (22, 475964), (21, 475956), (20, 475952), (18, 475936), (4, 475928), (3, 475908), (17, 475852), (19, 475796),
  (5, 475784), (2, 475756), (16, 475700), (14, 475584), (1, 475576), (13, 475576)]
theorem localLabelsFinal_602_eq : LabToTarget.sectionLabels 475560 Alignment602.lines [] = (476460, localLabelsFinal_602) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_602_eq
end InitECandidate.Proofs.BackendStages
