import InitECandidate.Proofs.BackendStages.Alignment705
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_705 : List (Nat × Nat) :=
[(3, 702500), (2, 702492), (1, 702456)]
theorem localLabelsFinal_705_eq : LabToTarget.sectionLabels 702456 Alignment705.lines [] = (702500, localLabelsFinal_705) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_705_eq
end InitECandidate.Proofs.BackendStages
