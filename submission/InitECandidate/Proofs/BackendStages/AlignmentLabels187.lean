import InitECandidate.Proofs.BackendStages.Alignment187
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_187 : List (Nat × Nat) :=
[(13, 100224), (12, 100212), (5, 100204), (4, 100180), (11, 100124), (10, 100064), (9, 100044), (3, 100028), (2, 99996),
  (8, 99940), (1, 99904), (7, 99904)]
theorem localLabelsFinal_187_eq : LabToTarget.sectionLabels 99888 Alignment187.lines [] = (100224, localLabelsFinal_187) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_187_eq
end InitECandidate.Proofs.BackendStages
