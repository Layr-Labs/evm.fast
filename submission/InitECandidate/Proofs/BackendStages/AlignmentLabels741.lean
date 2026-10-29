import InitECandidate.Proofs.BackendStages.Alignment741
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_741 : List (Nat × Nat) :=
[(12, 741508), (11, 741444), (5, 741408), (4, 741356), (10, 741300), (9, 741224), (3, 741164), (2, 741088), (8, 741032),
  (1, 740892), (7, 740892)]
theorem localLabelsFinal_741_eq : LabToTarget.sectionLabels 740876 Alignment741.lines [] = (741508, localLabelsFinal_741) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_741_eq
end InitECandidate.Proofs.BackendStages
