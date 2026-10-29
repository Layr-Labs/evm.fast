import InitECandidate.Proofs.BackendStages.Alignment340
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_340 : List (Nat × Nat) :=
[(11, 267216), (10, 267204), (9, 267180), (8, 267160), (7, 267136), (3, 267128), (2, 267104), (6, 267048), (1, 267004),
  (5, 267004)]
theorem localLabelsFinal_340_eq : LabToTarget.sectionLabels 266988 Alignment340.lines [] = (267216, localLabelsFinal_340) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_340_eq
end InitECandidate.Proofs.BackendStages
