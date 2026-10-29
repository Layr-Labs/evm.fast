import InitECandidate.Proofs.BackendStages.Alignment154
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_154 : List (Nat × Nat) :=
[(3, 83024), (1, 53136), (2, 53136)]
theorem localLabelsFinal_154_eq : LabToTarget.sectionLabels 53120 Alignment154.lines [] = (83024, localLabelsFinal_154) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_154_eq
end InitECandidate.Proofs.BackendStages
