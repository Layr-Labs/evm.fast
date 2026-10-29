import InitECandidate.Proofs.BackendStages.Alignment525
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_525 : List (Nat × Nat) :=
[(17, 390436), (16, 390404), (15, 390380), (7, 390368), (6, 390340), (14, 390284), (13, 390252), (5, 390232),
  (4, 390200), (12, 390144), (11, 390100), (3, 390096), (2, 390076), (10, 390020), (1, 389992), (9, 389992)]
theorem localLabelsFinal_525_eq : LabToTarget.sectionLabels 389976 Alignment525.lines [] = (390436, localLabelsFinal_525) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_525_eq
end InitECandidate.Proofs.BackendStages
