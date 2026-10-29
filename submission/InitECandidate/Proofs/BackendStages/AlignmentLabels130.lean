import InitECandidate.Proofs.BackendStages.Alignment130
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_130 : List (Nat × Nat) :=
[(8, 23320), (7, 23308), (3, 23300), (2, 23276), (6, 23220), (1, 23192), (5, 23192)]
theorem localLabelsFinal_130_eq : LabToTarget.sectionLabels 23176 Alignment130.lines [] = (23320, localLabelsFinal_130) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_130_eq
end InitECandidate.Proofs.BackendStages
