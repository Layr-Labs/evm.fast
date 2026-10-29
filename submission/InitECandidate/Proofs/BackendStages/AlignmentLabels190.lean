import InitECandidate.Proofs.BackendStages.Alignment190
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_190 : List (Nat × Nat) :=
[(8, 101108), (7, 101044), (3, 101028), (2, 100996), (6, 100940), (1, 100904), (5, 100904)]
theorem localLabelsFinal_190_eq : LabToTarget.sectionLabels 100888 Alignment190.lines [] = (101108, localLabelsFinal_190) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_190_eq
end InitECandidate.Proofs.BackendStages
