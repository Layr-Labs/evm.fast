import InitECandidate.Proofs.BackendStages.Alignment350
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_350 : List (Nat × Nat) :=
[(2, 276480), (1, 276456)]
theorem localLabelsFinal_350_eq : LabToTarget.sectionLabels 276456 Alignment350.lines [] = (276480, localLabelsFinal_350) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_350_eq
end InitECandidate.Proofs.BackendStages
