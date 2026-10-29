import InitECandidate.Proofs.BackendStages.Alignment429
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_429 : List (Nat × Nat) :=
[(16, 319456), (15, 319444), (7, 319436), (6, 319416), (14, 319360), (13, 319312), (5, 319288), (4, 319248),
  (12, 319192), (11, 319164), (3, 319160), (2, 319140), (10, 319084), (1, 319036), (9, 319036)]
theorem localLabelsFinal_429_eq : LabToTarget.sectionLabels 319020 Alignment429.lines [] = (319456, localLabelsFinal_429) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_429_eq
end InitECandidate.Proofs.BackendStages
