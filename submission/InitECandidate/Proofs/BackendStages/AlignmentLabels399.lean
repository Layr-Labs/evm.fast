import InitECandidate.Proofs.BackendStages.Alignment399
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_399 : List (Nat × Nat) :=
[(9, 303396), (8, 303384), (7, 303352), (3, 303344), (2, 303320), (6, 303264), (1, 303236), (5, 303236)]
theorem localLabelsFinal_399_eq : LabToTarget.sectionLabels 303220 Alignment399.lines [] = (303396, localLabelsFinal_399) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_399_eq
end InitECandidate.Proofs.BackendStages
