import InitECandidate.Proofs.BackendStages.Alignment278
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_278 : List (Nat × Nat) :=
[(32, 219576), (27, 219556), (31, 219540), (30, 219524), (29, 219500), (11, 219472), (10, 219428), (28, 219372),
  (26, 219288), (20, 219268), (25, 219244), (24, 219228), (9, 219200), (8, 219160), (23, 219104), (22, 219028),
  (7, 219008), (6, 218972), (21, 218916), (19, 218832), (18, 218820), (5, 218808), (4, 218780), (17, 218724),
  (16, 218684), (3, 218676), (2, 218652), (15, 218596), (14, 218552), (1, 218524), (13, 218524)]
theorem localLabelsFinal_278_eq : LabToTarget.sectionLabels 218508 Alignment278.lines [] = (219576, localLabelsFinal_278) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_278_eq
end InitECandidate.Proofs.BackendStages
