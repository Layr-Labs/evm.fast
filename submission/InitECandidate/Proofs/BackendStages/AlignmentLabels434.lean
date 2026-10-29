import InitECandidate.Proofs.BackendStages.Alignment434
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_434 : List (Nat × Nat) :=
[(6, 322960), (5, 322952), (4, 322928), (3, 322924), (2, 322916), (1, 322876)]
theorem localLabelsFinal_434_eq : LabToTarget.sectionLabels 322876 Alignment434.lines [] = (322960, localLabelsFinal_434) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_434_eq
end InitECandidate.Proofs.BackendStages
