import InitECandidate.Proofs.BackendStages.Alignment402
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_402 : List (Nat × Nat) :=
[(14, 305660), (13, 305644), (12, 305620), (5, 305612), (4, 305588), (11, 305532), (10, 305480), (9, 305456),
  (3, 305444), (2, 305416), (8, 305360), (1, 305308), (7, 305308)]
theorem localLabelsFinal_402_eq : LabToTarget.sectionLabels 305292 Alignment402.lines [] = (305660, localLabelsFinal_402) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_402_eq
end InitECandidate.Proofs.BackendStages
