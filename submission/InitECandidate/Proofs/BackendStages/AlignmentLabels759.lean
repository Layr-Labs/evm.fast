import InitECandidate.Proofs.BackendStages.Alignment759
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_759 : List (Nat × Nat) :=
[(2, 758024), (1, 758016)]
theorem localLabelsFinal_759_eq : LabToTarget.sectionLabels 758016 Alignment759.lines [] = (758024, localLabelsFinal_759) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_759_eq
end InitECandidate.Proofs.BackendStages
