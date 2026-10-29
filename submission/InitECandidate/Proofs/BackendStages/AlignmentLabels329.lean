import InitECandidate.Proofs.BackendStages.Alignment329
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_329 : List (Nat × Nat) :=
[(29, 259616), (28, 259604), (11, 259596), (10, 259576), (27, 259520), (26, 259480), (9, 259472), (8, 259448),
  (25, 259392), (24, 259364), (23, 259352), (7, 259340), (6, 259316), (22, 259260), (21, 259204), (19, 259204),
  (5, 259196), (4, 259176), (18, 259120), (20, 259088), (17, 259068), (16, 259056), (3, 259048), (2, 259028),
  (15, 258972), (14, 258904), (1, 258872), (13, 258872)]
theorem localLabelsFinal_329_eq : LabToTarget.sectionLabels 258856 Alignment329.lines [] = (259616, localLabelsFinal_329) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_329_eq
end InitECandidate.Proofs.BackendStages
