import InitECandidate.Proofs.BackendStages.Alignment769
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_769 : List (Nat × Nat) :=
[(10, 767916), (9, 767876), (8, 767776), (7, 767768), (3, 767752), (2, 767700), (6, 767644), (1, 767572), (5, 767572)]
theorem localLabelsFinal_769_eq : LabToTarget.sectionLabels 767556 Alignment769.lines [] = (767916, localLabelsFinal_769) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_769_eq
end InitECandidate.Proofs.BackendStages
