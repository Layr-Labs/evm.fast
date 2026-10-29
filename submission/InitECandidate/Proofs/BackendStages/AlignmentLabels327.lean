import InitECandidate.Proofs.BackendStages.Alignment327
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_327 : List (Nat × Nat) :=
[(13, 258404), (12, 258392), (11, 258372), (9, 258372), (3, 258360), (2, 258336), (8, 258280), (10, 258244),
  (7, 258228), (6, 258204), (1, 258180), (5, 258180)]
theorem localLabelsFinal_327_eq : LabToTarget.sectionLabels 258164 Alignment327.lines [] = (258404, localLabelsFinal_327) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_327_eq
end InitECandidate.Proofs.BackendStages
