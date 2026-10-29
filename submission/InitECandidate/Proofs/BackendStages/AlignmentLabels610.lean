import InitECandidate.Proofs.BackendStages.Alignment610
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_610 : List (Nat × Nat) :=
[(21, 483232), (20, 483220), (7, 483212), (6, 483192), (19, 483136), (15, 483056), (18, 483032), (17, 483012),
  (5, 482984), (4, 482944), (16, 482888), (14, 482800), (13, 482716), (12, 482712), (11, 482648), (3, 482640),
  (2, 482620), (10, 482564), (1, 482528), (9, 482528)]
theorem localLabelsFinal_610_eq : LabToTarget.sectionLabels 482512 Alignment610.lines [] = (483232, localLabelsFinal_610) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_610_eq
end InitECandidate.Proofs.BackendStages
