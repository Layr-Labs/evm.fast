import InitECandidate.Proofs.BackendStages.Alignment671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_671 : List (Nat × Nat) :=
[(13, 602848), (12, 602836), (5, 602828), (4, 602808), (11, 602752), (10, 602712), (9, 602700), (3, 602692),
  (2, 602672), (8, 602616), (1, 602560), (7, 602560)]
theorem localLabelsFinal_671_eq : LabToTarget.sectionLabels 602544 Alignment671.lines [] = (602848, localLabelsFinal_671) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_671_eq
end InitECandidate.Proofs.BackendStages
