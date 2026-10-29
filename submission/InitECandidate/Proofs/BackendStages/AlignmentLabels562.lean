import InitECandidate.Proofs.BackendStages.Alignment562
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_562 : List (Nat × Nat) :=
[(16, 420460), (15, 420448), (7, 420440), (6, 420420), (14, 420364), (13, 420336), (5, 420332), (4, 420316),
  (12, 420260), (11, 420216), (3, 420212), (2, 420196), (10, 420140), (1, 420108), (9, 420108)]
theorem localLabelsFinal_562_eq : LabToTarget.sectionLabels 420092 Alignment562.lines [] = (420460, localLabelsFinal_562) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_562_eq
end InitECandidate.Proofs.BackendStages
