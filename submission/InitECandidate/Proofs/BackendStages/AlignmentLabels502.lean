import InitECandidate.Proofs.BackendStages.Alignment502
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_502 : List (Nat × Nat) :=
[(28, 372004), (27, 371992), (13, 371984), (12, 371964), (26, 371908), (25, 371880), (11, 371876), (10, 371860),
  (24, 371804), (23, 371776), (9, 371772), (8, 371752), (22, 371696), (21, 371668), (7, 371632), (6, 371584),
  (20, 371528), (19, 371484), (5, 371480), (4, 371460), (18, 371404), (17, 371364), (3, 371360), (2, 371340),
  (16, 371284), (1, 371256), (15, 371256)]
theorem localLabelsFinal_502_eq : LabToTarget.sectionLabels 371240 Alignment502.lines [] = (372004, localLabelsFinal_502) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_502_eq
end InitECandidate.Proofs.BackendStages
