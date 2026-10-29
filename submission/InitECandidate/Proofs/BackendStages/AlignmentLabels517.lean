import InitECandidate.Proofs.BackendStages.Alignment517
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_517 : List (Nat × Nat) :=
[(20, 383356), (19, 383344), (9, 383336), (8, 383316), (18, 383260), (17, 383232), (7, 383228), (6, 383212),
  (16, 383156), (15, 383116), (5, 383096), (4, 383064), (14, 383008), (13, 382964), (3, 382960), (2, 382940),
  (12, 382884), (1, 382856), (11, 382856)]
theorem localLabelsFinal_517_eq : LabToTarget.sectionLabels 382840 Alignment517.lines [] = (383356, localLabelsFinal_517) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_517_eq
end InitECandidate.Proofs.BackendStages
