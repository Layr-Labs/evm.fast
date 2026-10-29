import InitECandidate.Proofs.BackendStages.Alignment93
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_93 : List (Nat × Nat) :=
[(3, 9836), (2, 9828), (1, 9820)]
theorem localLabelsFinal_93_eq : LabToTarget.sectionLabels 9820 Alignment93.lines [] = (9836, localLabelsFinal_93) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_93_eq
end InitECandidate.Proofs.BackendStages
