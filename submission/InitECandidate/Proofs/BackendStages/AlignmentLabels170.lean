import InitECandidate.Proofs.BackendStages.Alignment170
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_170 : List (Nat × Nat) :=
[(23, 95628), (21, 95620), (22, 95612), (20, 95584), (19, 95576), (17, 95576), (5, 95560), (4, 95532), (16, 95476),
  (18, 95440), (15, 95420), (14, 95416), (13, 95396), (12, 95392), (11, 95376), (9, 95376), (3, 95364), (2, 95340),
  (8, 95284), (10, 95244), (1, 95224), (7, 95224)]
theorem localLabelsFinal_170_eq : LabToTarget.sectionLabels 95208 Alignment170.lines [] = (95628, localLabelsFinal_170) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_170_eq
end InitECandidate.Proofs.BackendStages
