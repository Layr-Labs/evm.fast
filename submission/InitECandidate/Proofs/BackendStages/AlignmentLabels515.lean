import InitECandidate.Proofs.BackendStages.Alignment515
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_515 : List (Nat × Nat) :=
[(24, 382172), (23, 382160), (11, 382152), (10, 382132), (22, 382076), (21, 382048), (9, 382044), (8, 382028),
  (20, 381972), (19, 381932), (7, 381896), (6, 381848), (18, 381792), (17, 381748), (5, 381744), (4, 381724),
  (16, 381668), (15, 381628), (3, 381624), (2, 381604), (14, 381548), (1, 381520), (13, 381520)]
theorem localLabelsFinal_515_eq : LabToTarget.sectionLabels 381504 Alignment515.lines [] = (382172, localLabelsFinal_515) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_515_eq
end InitECandidate.Proofs.BackendStages
