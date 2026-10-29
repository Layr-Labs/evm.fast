import InitECandidate.Proofs.BackendStages.Alignment742
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_742 : List (Nat × Nat) :=
[(12, 742164), (11, 742100), (5, 742064), (4, 742012), (10, 741956), (9, 741880), (3, 741820), (2, 741744), (8, 741688),
  (1, 741524), (7, 741524)]
theorem localLabelsFinal_742_eq : LabToTarget.sectionLabels 741508 Alignment742.lines [] = (742164, localLabelsFinal_742) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_742_eq
end InitECandidate.Proofs.BackendStages
