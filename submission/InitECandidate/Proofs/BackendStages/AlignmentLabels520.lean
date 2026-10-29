import InitECandidate.Proofs.BackendStages.Alignment520
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_520 : List (Nat × Nat) :=
[(32, 386132), (31, 386120), (15, 386112), (14, 386092), (30, 386036), (29, 386008), (13, 386004), (12, 385988),
  (28, 385932), (27, 385904), (11, 385900), (10, 385880), (26, 385824), (25, 385796), (9, 385776), (8, 385740),
  (24, 385684), (23, 385656), (7, 385612), (6, 385556), (22, 385500), (21, 385456), (5, 385452), (4, 385432),
  (20, 385376), (19, 385336), (3, 385332), (2, 385312), (18, 385256), (1, 385228), (17, 385228)]
theorem localLabelsFinal_520_eq : LabToTarget.sectionLabels 385212 Alignment520.lines [] = (386132, localLabelsFinal_520) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_520_eq
end InitECandidate.Proofs.BackendStages
