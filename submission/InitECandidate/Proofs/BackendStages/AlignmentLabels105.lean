import InitECandidate.Proofs.BackendStages.Alignment105
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_105 : List (Nat × Nat) :=
[(3, 11060), (2, 11052), (1, 11008)]
theorem localLabelsFinal_105_eq : LabToTarget.sectionLabels 11008 Alignment105.lines [] = (11060, localLabelsFinal_105) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_105_eq
end InitECandidate.Proofs.BackendStages
