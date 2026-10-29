import InitECandidate.Proofs.BackendStages.Alignment337
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_337 : List (Nat × Nat) :=
[(12, 266584), (10, 266576), (11, 266568), (9, 266540), (8, 266528), (7, 266508), (3, 266484), (2, 266444), (6, 266388),
  (1, 266344), (5, 266344)]
theorem localLabelsFinal_337_eq : LabToTarget.sectionLabels 266328 Alignment337.lines [] = (266584, localLabelsFinal_337) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_337_eq
end InitECandidate.Proofs.BackendStages
