import InitECandidate.Proofs.BackendStages.Alignment151
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_151 : List (Nat × Nat) :=
[(3, 51600), (1, 33288), (2, 33288)]
theorem localLabelsFinal_151_eq : LabToTarget.sectionLabels 33272 Alignment151.lines [] = (51600, localLabelsFinal_151) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_151_eq
end InitECandidate.Proofs.BackendStages
