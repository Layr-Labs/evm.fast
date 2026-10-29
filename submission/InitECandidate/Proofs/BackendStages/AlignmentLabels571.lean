import InitECandidate.Proofs.BackendStages.Alignment571
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_571 : List (Nat × Nat) :=
[(20, 429128), (19, 429116), (9, 429108), (8, 429088), (18, 429032), (17, 429004), (7, 429000), (6, 428984),
  (16, 428928), (15, 428888), (5, 428884), (4, 428864), (14, 428808), (13, 428760), (3, 428756), (2, 428740),
  (12, 428684), (1, 428652), (11, 428652)]
theorem localLabelsFinal_571_eq : LabToTarget.sectionLabels 428636 Alignment571.lines [] = (429128, localLabelsFinal_571) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_571_eq
end InitECandidate.Proofs.BackendStages
