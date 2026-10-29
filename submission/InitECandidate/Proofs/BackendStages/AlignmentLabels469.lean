import InitECandidate.Proofs.BackendStages.Alignment469
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_469 : List (Nat × Nat) :=
[(3, 358016), (2, 358008), (1, 357968)]
theorem localLabelsFinal_469_eq : LabToTarget.sectionLabels 357968 Alignment469.lines [] = (358016, localLabelsFinal_469) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_469_eq
end InitECandidate.Proofs.BackendStages
