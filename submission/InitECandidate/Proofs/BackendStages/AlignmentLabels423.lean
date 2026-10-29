import InitECandidate.Proofs.BackendStages.Alignment423
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_423 : List (Nat × Nat) :=
[(18, 315532), (17, 315520), (15, 315520), (7, 315512), (6, 315492), (14, 315436), (16, 315408), (13, 315392),
  (5, 315384), (4, 315360), (12, 315304), (11, 315276), (3, 315260), (2, 315232), (10, 315176), (1, 315140),
  (9, 315140)]
theorem localLabelsFinal_423_eq : LabToTarget.sectionLabels 315124 Alignment423.lines [] = (315532, localLabelsFinal_423) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_423_eq
end InitECandidate.Proofs.BackendStages
