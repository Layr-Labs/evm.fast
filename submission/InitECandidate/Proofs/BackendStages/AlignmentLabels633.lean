import InitECandidate.Proofs.BackendStages.Alignment633
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_633 : List (Nat × Nat) :=
[(2, 529316), (1, 529140)]
theorem localLabelsFinal_633_eq : LabToTarget.sectionLabels 529140 Alignment633.lines [] = (529316, localLabelsFinal_633) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_633_eq
end InitECandidate.Proofs.BackendStages
