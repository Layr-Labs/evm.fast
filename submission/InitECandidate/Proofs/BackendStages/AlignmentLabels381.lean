import InitECandidate.Proofs.BackendStages.Alignment381
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_381 : List (Nat × Nat) :=
[(28, 293376), (27, 293364), (13, 293356), (12, 293336), (26, 293280), (25, 293252), (11, 293244), (10, 293224),
  (24, 293168), (23, 293140), (9, 293128), (8, 293104), (22, 293048), (21, 293004), (7, 292984), (6, 292948),
  (20, 292892), (19, 292860), (5, 292856), (4, 292836), (18, 292780), (17, 292752), (3, 292748), (2, 292732),
  (16, 292676), (1, 292640), (15, 292640)]
theorem localLabelsFinal_381_eq : LabToTarget.sectionLabels 292624 Alignment381.lines [] = (293376, localLabelsFinal_381) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_381_eq
end InitECandidate.Proofs.BackendStages
