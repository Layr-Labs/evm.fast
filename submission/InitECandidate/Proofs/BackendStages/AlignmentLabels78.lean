import InitECandidate.Proofs.BackendStages.Alignment78
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_78 : List (Nat × Nat) :=
[(16, 6936), (14, 6928), (15, 6920), (13, 6896), (11, 6896), (12, 6888), (10, 6776), (9, 6776), (6, 6776), (7, 6768),
  (5, 6740), (3, 6740), (4, 6732), (2, 6668), (8, 6668), (1, 6648)]
theorem localLabelsFinal_78_eq : LabToTarget.sectionLabels 6648 Alignment78.lines [] = (6936, localLabelsFinal_78) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_78_eq
end InitECandidate.Proofs.BackendStages
