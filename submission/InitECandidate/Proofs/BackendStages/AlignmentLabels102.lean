import InitECandidate.Proofs.BackendStages.Alignment102
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_102 : List (Nat × Nat) :=
[(3, 10740), (2, 10732), (1, 10704)]
theorem localLabelsFinal_102_eq : LabToTarget.sectionLabels 10704 Alignment102.lines [] = (10740, localLabelsFinal_102) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_102_eq
end InitECandidate.Proofs.BackendStages
