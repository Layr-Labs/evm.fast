import InitECandidate.Proofs.BackendStages.Alignment499
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_499 : List (Nat × Nat) :=
[(28, 369712), (27, 369700), (13, 369692), (12, 369672), (26, 369616), (25, 369588), (11, 369584), (10, 369568),
  (24, 369512), (23, 369484), (9, 369480), (8, 369460), (22, 369404), (21, 369376), (7, 369340), (6, 369292),
  (20, 369236), (19, 369192), (5, 369188), (4, 369168), (18, 369112), (17, 369072), (3, 369068), (2, 369048),
  (16, 368992), (1, 368964), (15, 368964)]
theorem localLabelsFinal_499_eq : LabToTarget.sectionLabels 368948 Alignment499.lines [] = (369712, localLabelsFinal_499) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_499_eq
end InitECandidate.Proofs.BackendStages
