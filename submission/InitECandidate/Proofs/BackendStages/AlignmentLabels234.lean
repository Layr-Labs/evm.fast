import InitECandidate.Proofs.BackendStages.Alignment234
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_234 : List (Nat × Nat) :=
[(17, 170936), (16, 161772), (7, 161764), (6, 161740), (15, 161684), (14, 161632), (5, 161628), (4, 161608),
  (13, 161552), (12, 161504), (3, 161500), (2, 161480), (11, 161424), (10, 161392), (1, 161356), (9, 161356)]
theorem localLabelsFinal_234_eq : LabToTarget.sectionLabels 161340 Alignment234.lines [] = (170936, localLabelsFinal_234) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_234_eq
end InitECandidate.Proofs.BackendStages
