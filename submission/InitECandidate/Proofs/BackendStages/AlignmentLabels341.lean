import InitECandidate.Proofs.BackendStages.Alignment341
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_341 : List (Nat × Nat) :=
[(9, 267404), (8, 267388), (7, 267364), (3, 267356), (2, 267332), (6, 267276), (1, 267232), (5, 267232)]
theorem localLabelsFinal_341_eq : LabToTarget.sectionLabels 267216 Alignment341.lines [] = (267404, localLabelsFinal_341) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_341_eq
end InitECandidate.Proofs.BackendStages
