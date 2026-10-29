import InitECandidate.Proofs.BackendStages.Alignment674
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_674 : List (Nat × Nat) :=
[(11, 603860), (7, 603844), (10, 603828), (9, 603788), (3, 603764), (2, 603724), (8, 603668), (6, 603596), (1, 603576),
  (5, 603576)]
theorem localLabelsFinal_674_eq : LabToTarget.sectionLabels 603560 Alignment674.lines [] = (603860, localLabelsFinal_674) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_674_eq
end InitECandidate.Proofs.BackendStages
